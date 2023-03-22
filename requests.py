import mysql.connector
from mysql.connector import errorcode
import json 
import numpy
import tensorflow as tf
import keras as k
import csv

def out_dict_list(dict_list):
    print("[")
    for d in dict_list:
        print("  {")
        for key in d:
            print("     " + str(key) + ": " + str(d[key]) + ",")
        print("  },")
    print("]\n")
        
try:
    Тестовый сервер
    conn = mysql.connector.connect(
        host='****',
        port=3306,
        user='****',
        password='****',
        database='****'
    )
    
    data = []
    with open(r'Данные\BP_USERS-20220120_1541_test.csv') as csvfile:
       reader = csv.reader(csvfile, delimiter=';')
       tmp_data = []
       for row in reader:
           try:
               tmp_data.append(list(map( float, row)))
           except:
               pass
       data.extend(tmp_data)
    
    #print(data)
    
    # elerning.marsu.ru
    # conn = mysql.connector.connect(
    #     host='****',
    #     user='****',
    #     password='****',
    #     database='****'
    # )
    
    cursor = conn.cursor(dictionary=True)
   
    # Оценки за задания + клики по заданию
    result_iterator1 = cursor.execute("""
        #SET @userid = 18455;
        SET @courseid = 11;
        SET @log_start_date = '2020-01-01';
        SET @log_end_date = '2020-09-01';
                                     
        SELECT
          u.id AS `idu`, CONCAT(u.lastname, ' ',u.firstname) AS `student`,
          c.id AS `idc`, c.fullname AS `course`,
          items.iteminstance AS `id_element`,
          IF(items.iteminstance IS NULL, NULL, m.name) AS `element`,
          items.itemname AS `element_name`,
          IF(gr.finalgrade IS NULL, 0, gr.finalgrade/items.grademax*5) AS `grade`,
          IF(gr.finalgrade IS NULL, 0, From_UNIXTIME(gr.timemodified)) AS `time_grade`,
          
          (
          SELECT
           	COUNT(log.id)
          FROM `mdl_logstore_standard_log` as log
          WHERE
           	log.`component`='mod_assign'
           	AND log.`timecreated`>=UNIX_TIMESTAMP(@log_start_date) AND log.`timecreated`<=UNIX_TIMESTAMP(@log_end_date)
              AND log.userid = u.id AND log.courseid = c.id
              AND cm.id = log.contextinstanceid
          ) as `clicks`
          
          FROM
           	mdl_role AS r,
           	mdl_role_assignments AS ra,
           	mdl_context AS cn,
           	mdl_course AS c
          
          JOIN mdl_user AS u #ON (u.id = @userid)
          
          JOIN mdl_course_modules cm ON (c.id = cm.course)
          JOIN mdl_modules m ON (cm.module = m.id AND m.id IN (1)) #идентификатор модулей активности -  assign
          LEFT JOIN mdl_grade_items items ON (cm.instance = items.iteminstance AND items.courseid=c.id AND items.itemmodule = m.name)
          LEFT JOIN mdl_grade_grades gr ON (gr.itemid=items.id AND gr.userid=u.id)
          #LEFT JOIN mdl_grade_grades_history grh on (gr.id IS NULL AND grh.action<>3 AND grh.source LIKE 'mod/%' AND grh.itemid=items.id AND grh.userid=@userid)
          
          WHERE ra.roleid = r.id
           	AND ra.userid = u.id
           	AND cn.id = ra.contextid
           	AND c.id = cn.instanceid
           	AND r.id =5 #роль student
           	and c.id = @courseid
          	
          GROUP BY
           	u.id, c.id, items.iteminstance
           
          ORDER BY
           	c.fullname, items.iteminstance, gr.timemodified;
          
          #LIMIT 0, 1500
    """, multi=True)
    
    for res in result_iterator1:
        if res.with_rows:
            fetch_result1 = res.fetchall()
            # print("\nОценки за задания + клики по заданию:")
            # print(fetch_result1)
            # print(json.dumps(fetch_result1, indent=4))
            # out_dict_list(fetch_result1)
    
    grades_by_stud = {}
    
    for grade in fetch_result1:
        if not(grade['idu'] in grades_by_stud.keys()):
            grades_by_stud[grade['idu']] = []
        
        grades_by_stud[grade['idu']].append([float(grade['grade']), float(grade['clicks'])])
            
    # print(grades_by_stud)
    
    # Кол-во кликов на чат/форум курса
    result_iterator2 = cursor.execute("""
        #SET @userid = 18455;
        SET @courseid = 11;
        SET @log_start_date = '2020-01-01';
        SET @log_end_date = '2020-09-01';
                                     
        SELECT
        u.id AS `idu`, CONCAT(u.lastname, ' ',u.firstname) AS `student`, ##`ФИО студента`
        c.id AS `idc`, c.fullname AS `course`, ##`Курс`
        #cm.instance AS `id_element`, ##`Тип элемента`
        #m.name AS `element`,
        #items.itemname as `element_name`,
        Sum((
            SELECT
                COUNT(log.id)
            FROM `mdl_logstore_standard_log` as log
            WHERE
                log.`timecreated`>=UNIX_TIMESTAMP(@log_start_date) AND log.`timecreated`<=UNIX_TIMESTAMP(@log_end_date)
                AND log.userid = u.id AND log.courseid = c.id
                AND cm.id = log.contextinstanceid
        )) as `clicks` ##`Кликов по элементу`
         
        FROM
         	mdl_role AS r,
         	mdl_role_assignments AS ra,
         	mdl_context AS cn,
         	mdl_course AS c
        
        JOIN mdl_user AS u #ON (u.id = @userid)
        
        JOIN mdl_course_modules cm ON (c.id = cm.course)
        JOIN mdl_modules m ON (cm.module = m.id AND m.id IN (4,9)) #идентификатор модулей активности -  chat, forum
        #LEFT JOIN mdl_grade_items items ON (cm.instance = items.iteminstance AND items.courseid=c.id AND items.itemmodule = m.name)
        
        
        WHERE ra.roleid = r.id
         	AND ra.userid = u.id
         	AND cn.id = ra.contextid
         	AND c.id = cn.instanceid
         	AND r.id =5 #роль student
         	and c.id = @courseid
        	
        GROUP BY
         	u.id, c.id
         
        ORDER BY
         	c.fullname
    """, multi=True)

    for res in result_iterator2:
        if res.with_rows:
            fetch_result2 = res.fetchall()
            # print("\nКол-во кликов на чат/форум курса: ")
            # print(fetch_result2)
            # out_dict_list(fetch_result2)
    
    clicks_forum_by_stud = {}
    
    for clicks_forum in fetch_result2:
        clicks_forum_by_stud[clicks_forum['idu']] = float(clicks_forum['clicks'])
    
    # print(clicks_forum_by_stud)
    
    # Общее время, проведенное в системе + итоговая оценка
    result_iterator3 = cursor.execute("""
        #SET @userid = 18455;
        SET @courseid = 11;
        SET @log_start_date = '2020-01-01';
        SET @log_end_date = '2020-09-01';
        
        #таблица содержит логи по выбранным студентам
        CREATE TEMPORARY TABLE vremtable_logged AS (
        SELECT
            students.id as `idu`, CONCAT(students.lastname, ' ',students.firstname) AS `student`,
            #c.id AS `idc`, c.fullname AS `course`,
            log.id as `logid`, log.eventname as `eventname`,
            log.`timecreated` as `timecreated`,
            (
                SELECT
                    gr.finalgrade/items.grademax*5
                FROM
                    mdl_grade_items AS items,
                    mdl_grade_grades gr
                WHERE
                    gr.itemid=items.id
                    #AND (From_UNIXTIME(gr.timemodified) > @log_start_date or From_UNIXTIME(gr.timecreated) > @log_start_date)
                    #AND (From_UNIXTIME(gr.timemodified) < @log_end_date or From_UNIXTIME(gr.timecreated) < @log_end_date)
                    AND gr.userid = students.id
                    AND items.courseid = @courseid AND items.itemtype = 'course'
            ) AS `grade`
        
        FROM
         	mdl_logstore_standard_log as log
            #,mdl_user AS u
            #,mdl_course AS c
        
            JOIN (
                SELECT
                 	u.id AS `id`,u.lastname, u.firstname
                FROM
                    mdl_user AS u,
                    mdl_role AS r,
                    mdl_role_assignments AS ra,
                    mdl_context AS cn
                WHERE ra.roleid = r.id
                    AND ra.userid = u.id
                    AND cn.id = ra.contextid
                    AND cn.instanceid = @courseid
                    AND r.id =5 #роль student
                    #AND u.id = @userid
            ) AS students ON (students.id = log.userid)
        WHERE
            log.`timecreated`>=UNIX_TIMESTAMP(@log_start_date) AND log.`timecreated`<=UNIX_TIMESTAMP(@log_end_date)
            #AND log.courseid IN (c.id)
        
        ORDER BY
        	 log.id, students.id
        );
        
        #добавление столбца времени последнего входа в систему:
        SET @last_logged_in = NULL;
        ALTER TABLE vremtable_logged add last_logged_in INT;
        UPDATE vremtable_logged SET last_logged_in = IF (vremtable_logged.eventname LIKE '%user_loggedin%', @last_logged_in:=vremtable_logged.timecreated, @last_logged_in);
        
        #SELECT * FROM vremtable_logged LIMIT 0,1000;
        
        #добавление столбца длительности и удаление строк, кроме последнего действия в сеансе для пользователя
        CREATE TEMPORARY TABLE vremtable_logged_in_out AS (
        SELECT
         	idu, student,
            #from_unixtime(MAX(timecreated)) as `последняя активность`, from_unixtime(last_logged_in) as `время входа`, eventname,
            (MAX(timecreated)-last_logged_in) as `duration`, grade
        FROM vremtable_logged
        GROUP BY idu, last_logged_in
        );
        
        SELECT
         	idu, student as `fio`,
            IF(grade IS NULL, 0, grade) AS `final_grade`,
            IF((SUM(duration) / 60) IS NULL, 0, SUM(duration) / 60) AS `total_time`
        FROM vremtable_logged_in_out
        GROUP BY idu
        #LIMIT 0,1000;
    """, multi=True)
    
    for res in result_iterator3:
        if res.with_rows:
            fetch_result3 = res.fetchall()
            # print("\nОбщее время, проведенное в системе + итоговая оценка:")
            # print(fetch_result3)
            # out_dict_list(fetch_result3)

    time_grade_by_stud = {}
    
    for time_grade in fetch_result3:
        time_grade_by_stud[time_grade['idu']] = [float(time_grade['final_grade']), float(time_grade['total_time'])]
    
    # print(time_grade_by_stud)

    # Кол-во кликов по всем файлам с теорией (в разбивке на темы)
    result_iterator4 = cursor.execute("""
        #SET @userid = 18455;
        SET @courseid = 11;
        SET @log_start_date = '2020-01-01';
        SET @log_end_date = '2020-09-01';
        
        SELECT
            u.id AS `idu`, CONCAT(u.lastname, ' ',u.firstname) AS `student`,
            c.id AS `idc`, c.fullname AS `course`,
            #cm.instance AS `id_element`,
            #cm.id as `cmid`,
            #m.name AS `element`,
            #items.itemname as `element_name`,
            SUM((SELECT
                COUNT(log.id)
              FROM `mdl_logstore_standard_log` as log
              WHERE
                log.`timecreated`>=UNIX_TIMESTAMP(@log_start_date) AND log.`timecreated`<=UNIX_TIMESTAMP(@log_end_date)
                AND log.userid = u.id AND log.courseid = c.id
                AND cm.id = log.contextinstanceid
            )) as `clicks`,
            (SELECT section.name
              FROM mdl_course_sections AS section
              WHERE section.course = c.id AND INSTR(CONCAT(',',section.sequence,','), CONCAT(',',cm.id,','))
              LIMIT 0,1
            ) AS `section`
        
        FROM
         	mdl_role AS r,
         	mdl_role_assignments AS ra,
         	mdl_context AS cn,
         	mdl_course AS c
        
        JOIN mdl_user AS u #ON (u.id = @userid)
        
        JOIN mdl_course_modules cm ON (c.id = cm.course)
        JOIN mdl_modules m ON (cm.module = m.id AND m.id IN (17)) #идентификатор модулей активности -  resource
        #LEFT JOIN mdl_grade_items items ON (cm.instance = items.iteminstance AND items.courseid=c.id AND items.itemmodule = m.name)
        
        WHERE ra.roleid = r.id
         	AND ra.userid = u.id
         	AND cn.id = ra.contextid
         	AND c.id = cn.instanceid
         	AND r.id =5 #роль student
         	and c.id = @courseid
        	
        GROUP BY
         	u.id, c.id , cm.instance #, section
         
        ORDER BY
         	c.fullname, cm.instance
        
        #LIMIT 0, 1500
    """, multi=True)
    
    for res in result_iterator4:
        if res.with_rows:
            fetch_result4 = res.fetchall()
            # print("\nКол-во кликов по всем файлам с теорией (в разбивке на темы):")
            # print(fetch_result4)
            # out_dict_list(fetch_result4)
    
    clicks_theory_by_stud = {}
    
    for clicks_theory in fetch_result4:
        if not(clicks_theory['idu'] in clicks_theory_by_stud.keys()):
            clicks_theory_by_stud[clicks_theory['idu']] = []
        
        clicks_theory_by_stud[clicks_theory['idu']].append([float(clicks_theory['clicks'])])

    # print(clicks_theory_by_stud)
    
    course_studs_info = {}
    
    for idu in clicks_forum_by_stud.keys():
        if not(idu in course_studs_info.keys()): course_studs_info[idu] = []
        course_studs_info[idu].append(clicks_forum_by_stud[idu])
    
    for idu in time_grade_by_stud.keys():
        if not(idu in course_studs_info.keys()): course_studs_info[idu] = []
        course_studs_info[idu].append(time_grade_by_stud[idu][1])
        
    for idu in clicks_theory_by_stud.keys():
        if not(idu in course_studs_info.keys()): course_studs_info[idu] = []
        for item in clicks_theory_by_stud[idu]:
            course_studs_info[idu].extend(item)
            
    for idu in grades_by_stud.keys():
        if not(idu in course_studs_info.keys()): course_studs_info[idu] = []
        for item in grades_by_stud[idu]:
            course_studs_info[idu].extend(item)
    
    # print(course_studs_info)
    
    course_studs_info_l_x = []
    for idu in course_studs_info.keys():
        course_studs_info_l_x.append(course_studs_info[idu])

    # for i, val in enumerate(course_studs_info_l_x):
    #     print(type(val))
    #     course_studs_info_l_x.insert(i, k.preprocessing.sequence.pad_sequences([val], maxlen=17, value=1))

    # course_studs_info_l_x = k.preprocessing.sequence.pad_sequences(course_studs_info_l_x, maxlen=17, value=-1, dtype='double', padding='post')
    # print(course_studs_info_l_x)
    
    # course_studs_info_l_x = numpy.expand_dims(course_studs_info_l_x, axis=2)
    
    # print(course_studs_info_l_x[1])
    
    from socket import socket, AF_INET, SOCK_STREAM

    sock = socket(AF_INET, SOCK_STREAM)
    sock.connect(('****', 5001))
    # data = '[[[10.0], [413.3], [18.0], [8.0], [5.0], [6.0], [12.0], [5.0], [6.0], [2.0], [5.0], [12.0], [10.0], [5.0], [12.0], [10.0], [5.0]]]'.encode()
    # print(data)
    data = k.preprocessing.sequence.pad_sequences(course_studs_info_l_x[1], maxlen=17, value=-1)
    # print(data)
    data = json.dumps(numpy.expand_dims(course_studs_info_l_x[1], axis=0).tolist())
    # data = str.encode(data)
    # print(data)
    data = numpy.expand_dims(data, axis=2)
    data = json.dumps(numpy.expand_dims(data[0], axis=0).tolist())
    data = str.encode(data)
    # print(data)
    sock.send(data)
    data = sock.recv(1024)  # читаем ответ от серверного сокета
    sock.close()  # закрываем соединение
    # print(data)
    
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Something is wrong with your user name or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database does not exist")
    else:
      print(err)
else:
    cursor.close()
    conn.close()