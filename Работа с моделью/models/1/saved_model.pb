��)
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��'
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	�*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
�
/bidirectional_5/forward_rnn/lstm_cell_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*@
shared_name1/bidirectional_5/forward_rnn/lstm_cell_19/kernel
�
Cbidirectional_5/forward_rnn/lstm_cell_19/kernel/Read/ReadVariableOpReadVariableOp/bidirectional_5/forward_rnn/lstm_cell_19/kernel*
_output_shapes
:	�*
dtype0
�
9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*J
shared_name;9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel
�
Mbidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpReadVariableOp9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel*
_output_shapes
:	@�*
dtype0
�
-bidirectional_5/forward_rnn/lstm_cell_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-bidirectional_5/forward_rnn/lstm_cell_19/bias
�
Abidirectional_5/forward_rnn/lstm_cell_19/bias/Read/ReadVariableOpReadVariableOp-bidirectional_5/forward_rnn/lstm_cell_19/bias*
_output_shapes	
:�*
dtype0
�
0bidirectional_5/backward_rnn/lstm_cell_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*A
shared_name20bidirectional_5/backward_rnn/lstm_cell_19/kernel
�
Dbidirectional_5/backward_rnn/lstm_cell_19/kernel/Read/ReadVariableOpReadVariableOp0bidirectional_5/backward_rnn/lstm_cell_19/kernel*
_output_shapes
:	�*
dtype0
�
:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*K
shared_name<:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel
�
Nbidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpReadVariableOp:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel*
_output_shapes
:	@�*
dtype0
�
.bidirectional_5/backward_rnn/lstm_cell_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*?
shared_name0.bidirectional_5/backward_rnn/lstm_cell_19/bias
�
Bbidirectional_5/backward_rnn/lstm_cell_19/bias/Read/ReadVariableOpReadVariableOp.bidirectional_5/backward_rnn/lstm_cell_19/bias*
_output_shapes	
:�*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
R
		variables

trainable_variables
regularization_losses
	keras_api
y
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
8
0
1
2
3
4
5
6
7
8
0
1
2
3
4
5
6
7
 
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
�
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
		variables

trainable_variables
regularization_losses
l
)cell
*
state_spec
+	variables
,trainable_variables
-regularization_losses
.	keras_api
l
/cell
0
state_spec
1	variables
2trainable_variables
3regularization_losses
4	keras_api
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
ki
VARIABLE_VALUE/bidirectional_5/forward_rnn/lstm_cell_19/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE-bidirectional_5/forward_rnn/lstm_cell_19/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0bidirectional_5/backward_rnn/lstm_cell_19/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.bidirectional_5/backward_rnn/lstm_cell_19/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
 
 
 
 
 
�
?
state_size

kernel
recurrent_kernel
bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
 

0
1
2

0
1
2
 
�

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
+	variables
,trainable_variables
-regularization_losses
�
J
state_size

kernel
recurrent_kernel
bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
 

0
1
2

0
1
2
 
�

Ostates
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
1	variables
2trainable_variables
3regularization_losses
 

0
1
 
 
 
 
 
 
 
 
 

0
1
2

0
1
2
 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
 
 

)0
 
 
 
 

0
1
2

0
1
2
 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
 
 

/0
 
 
 
 
 
 
 
 
 
 
 
 
 
�
(serving_default_custom_embedding_7_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall(serving_default_custom_embedding_7_input/bidirectional_5/forward_rnn/lstm_cell_19/kernel9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel-bidirectional_5/forward_rnn/lstm_cell_19/bias0bidirectional_5/backward_rnn/lstm_cell_19/kernel:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel.bidirectional_5/backward_rnn/lstm_cell_19/biasdense_6/kerneldense_6/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_48753
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpCbidirectional_5/forward_rnn/lstm_cell_19/kernel/Read/ReadVariableOpMbidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpAbidirectional_5/forward_rnn/lstm_cell_19/bias/Read/ReadVariableOpDbidirectional_5/backward_rnn/lstm_cell_19/kernel/Read/ReadVariableOpNbidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpBbidirectional_5/backward_rnn/lstm_cell_19/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_51189
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/bias/bidirectional_5/forward_rnn/lstm_cell_19/kernel9bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel-bidirectional_5/forward_rnn/lstm_cell_19/bias0bidirectional_5/backward_rnn/lstm_cell_19/kernel:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel.bidirectional_5/backward_rnn/lstm_cell_19/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_51223܅'
�	
�
B__inference_dense_6_layer_call_and_return_conditional_losses_50298

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�<
�
F__inference_forward_rnn_layer_call_and_return_conditional_losses_47190

inputs%
lstm_cell_19_47109:	�%
lstm_cell_19_47111:	@�!
lstm_cell_19_47113:	�
identity��$lstm_cell_19/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_47109lstm_cell_19_47111lstm_cell_19_47113*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47108n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_47109lstm_cell_19_47111lstm_cell_19_47113*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_47122*
condR
while_cond_47121*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
ъ
�
:sequential_6_bidirectional_5_backward_rnn_while_body_46924p
lsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_loop_counterv
rsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_maximum_iterations?
;sequential_6_bidirectional_5_backward_rnn_while_placeholderA
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_1A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_2A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_3A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_4o
ksequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_strided_slice_1_0�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0p
]sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�r
_sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�m
^sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�<
8sequential_6_bidirectional_5_backward_rnn_while_identity>
:sequential_6_bidirectional_5_backward_rnn_while_identity_1>
:sequential_6_bidirectional_5_backward_rnn_while_identity_2>
:sequential_6_bidirectional_5_backward_rnn_while_identity_3>
:sequential_6_bidirectional_5_backward_rnn_while_identity_4>
:sequential_6_bidirectional_5_backward_rnn_while_identity_5>
:sequential_6_bidirectional_5_backward_rnn_while_identity_6m
isequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_strided_slice_1�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorn
[sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�p
]sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�k
\sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Ssequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Rsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Tsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
asequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ssequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0;sequential_6_bidirectional_5_backward_rnn_while_placeholderjsequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
csequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Usequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0;sequential_6_bidirectional_5_backward_rnn_while_placeholderlsequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Rsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp]sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
Csequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMulMatMulZsequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Zsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Tsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp_sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
Esequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1MatMul=sequential_6_bidirectional_5_backward_rnn_while_placeholder_3\sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
@sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/addAddV2Msequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul:product:0Osequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Ssequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp^sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
Dsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAddBiasAddDsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/add:z:0[sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Lsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Bsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/splitSplitUsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dim:output:0Msequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
Dsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/SigmoidSigmoidKsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1SigmoidKsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
@sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mulMulJsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1:y:0=sequential_6_bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Asequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/TanhTanhKsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
Bsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1MulHsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid:y:0Esequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
Bsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/add_1AddV2Dsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul:z:0Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2SigmoidKsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
Csequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1TanhFsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
Bsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2MulJsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0Gsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
>sequential_6/bidirectional_5/backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
4sequential_6/bidirectional_5/backward_rnn/while/TileTile\sequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Gsequential_6/bidirectional_5/backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
8sequential_6/bidirectional_5/backward_rnn/while/SelectV2SelectV2=sequential_6/bidirectional_5/backward_rnn/while/Tile:output:0Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:0=sequential_6_bidirectional_5_backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
@sequential_6/bidirectional_5/backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_6/bidirectional_5/backward_rnn/while/Tile_1Tile\sequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Isequential_6/bidirectional_5/backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
@sequential_6/bidirectional_5/backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_6/bidirectional_5/backward_rnn/while/Tile_2Tile\sequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Isequential_6/bidirectional_5/backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
:sequential_6/bidirectional_5/backward_rnn/while/SelectV2_1SelectV2?sequential_6/bidirectional_5/backward_rnn/while/Tile_1:output:0Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:0=sequential_6_bidirectional_5_backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
:sequential_6/bidirectional_5/backward_rnn/while/SelectV2_2SelectV2?sequential_6/bidirectional_5/backward_rnn/while/Tile_2:output:0Fsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:0=sequential_6_bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Tsequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem=sequential_6_bidirectional_5_backward_rnn_while_placeholder_1;sequential_6_bidirectional_5_backward_rnn_while_placeholderAsequential_6/bidirectional_5/backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���w
5sequential_6/bidirectional_5/backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
3sequential_6/bidirectional_5/backward_rnn/while/addAddV2;sequential_6_bidirectional_5_backward_rnn_while_placeholder>sequential_6/bidirectional_5/backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: y
7sequential_6/bidirectional_5/backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
5sequential_6/bidirectional_5/backward_rnn/while/add_1AddV2lsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_loop_counter@sequential_6/bidirectional_5/backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
8sequential_6/bidirectional_5/backward_rnn/while/IdentityIdentity9sequential_6/bidirectional_5/backward_rnn/while/add_1:z:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
:sequential_6/bidirectional_5/backward_rnn/while/Identity_1Identityrsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_maximum_iterations5^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
:sequential_6/bidirectional_5/backward_rnn/while/Identity_2Identity7sequential_6/bidirectional_5/backward_rnn/while/add:z:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
:sequential_6/bidirectional_5/backward_rnn/while/Identity_3Identitydsequential_6/bidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
:sequential_6/bidirectional_5/backward_rnn/while/Identity_4IdentityAsequential_6/bidirectional_5/backward_rnn/while/SelectV2:output:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
:sequential_6/bidirectional_5/backward_rnn/while/Identity_5IdentityCsequential_6/bidirectional_5/backward_rnn/while/SelectV2_1:output:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
:sequential_6/bidirectional_5/backward_rnn/while/Identity_6IdentityCsequential_6/bidirectional_5/backward_rnn/while/SelectV2_2:output:05^sequential_6/bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
4sequential_6/bidirectional_5/backward_rnn/while/NoOpNoOpT^sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpS^sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpU^sequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "}
8sequential_6_bidirectional_5_backward_rnn_while_identityAsequential_6/bidirectional_5/backward_rnn/while/Identity:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_1Csequential_6/bidirectional_5/backward_rnn/while/Identity_1:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_2Csequential_6/bidirectional_5/backward_rnn/while/Identity_2:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_3Csequential_6/bidirectional_5/backward_rnn/while/Identity_3:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_4Csequential_6/bidirectional_5/backward_rnn/while/Identity_4:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_5Csequential_6/bidirectional_5/backward_rnn/while/Identity_5:output:0"�
:sequential_6_bidirectional_5_backward_rnn_while_identity_6Csequential_6/bidirectional_5/backward_rnn/while/Identity_6:output:0"�
\sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource^sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
]sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
[sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource]sequential_6_bidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
isequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_strided_slice_1ksequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_strided_slice_1_0"�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�sequential_6_bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Ssequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpSsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Rsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpRsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Tsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpTsequential_6/bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47474

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51110

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�

�
/__inference_bidirectional_5_layer_call_fn_49555

inputs
mask

unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48136p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�v
�
-bidirectional_5_backward_rnn_while_body_49416V
Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter\
Xbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations2
.bidirectional_5_backward_rnn_while_placeholder4
0bidirectional_5_backward_rnn_while_placeholder_14
0bidirectional_5_backward_rnn_while_placeholder_24
0bidirectional_5_backward_rnn_while_placeholder_34
0bidirectional_5_backward_rnn_while_placeholder_4U
Qbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1_0�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0c
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�e
Rbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�`
Qbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�/
+bidirectional_5_backward_rnn_while_identity1
-bidirectional_5_backward_rnn_while_identity_11
-bidirectional_5_backward_rnn_while_identity_21
-bidirectional_5_backward_rnn_while_identity_31
-bidirectional_5_backward_rnn_while_identity_41
-bidirectional_5_backward_rnn_while_identity_51
-bidirectional_5_backward_rnn_while_identity_6S
Obidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensora
Nbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�c
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�^
Obidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Tbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0.bidirectional_5_backward_rnn_while_placeholder]bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Vbidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Hbidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0.bidirectional_5_backward_rnn_while_placeholder_bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpPbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
6bidirectional_5/backward_rnn/while/lstm_cell_19/MatMulMatMulMbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Mbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpRbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
8bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1MatMul0bidirectional_5_backward_rnn_while_placeholder_3Obidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3bidirectional_5/backward_rnn/while/lstm_cell_19/addAddV2@bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul:product:0Bbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpQbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
7bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAddBiasAdd7bidirectional_5/backward_rnn/while/lstm_cell_19/add:z:0Nbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?bidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
5bidirectional_5/backward_rnn/while/lstm_cell_19/splitSplitHbidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dim:output:0@bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
7bidirectional_5/backward_rnn/while/lstm_cell_19/SigmoidSigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/while/lstm_cell_19/mulMul=bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1:y:00bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
4bidirectional_5/backward_rnn/while/lstm_cell_19/TanhTanh>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1Mul;bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid:y:08bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/add_1AddV27bidirectional_5/backward_rnn/while/lstm_cell_19/mul:z:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
6bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1Tanh9bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2Mul=bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0:bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
1bidirectional_5/backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
'bidirectional_5/backward_rnn/while/TileTileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0:bidirectional_5/backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
+bidirectional_5/backward_rnn/while/SelectV2SelectV20bidirectional_5/backward_rnn/while/Tile:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:00bidirectional_5_backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)bidirectional_5/backward_rnn/while/Tile_1TileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0<bidirectional_5/backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
3bidirectional_5/backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)bidirectional_5/backward_rnn/while/Tile_2TileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0<bidirectional_5/backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
-bidirectional_5/backward_rnn/while/SelectV2_1SelectV22bidirectional_5/backward_rnn/while/Tile_1:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:00bidirectional_5_backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/SelectV2_2SelectV22bidirectional_5/backward_rnn/while/Tile_2:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:00bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Gbidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0bidirectional_5_backward_rnn_while_placeholder_1.bidirectional_5_backward_rnn_while_placeholder4bidirectional_5/backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���j
(bidirectional_5/backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
&bidirectional_5/backward_rnn/while/addAddV2.bidirectional_5_backward_rnn_while_placeholder1bidirectional_5/backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: l
*bidirectional_5/backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
(bidirectional_5/backward_rnn/while/add_1AddV2Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter3bidirectional_5/backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
+bidirectional_5/backward_rnn/while/IdentityIdentity,bidirectional_5/backward_rnn/while/add_1:z:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_1IdentityXbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_2Identity*bidirectional_5/backward_rnn/while/add:z:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_3IdentityWbidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_4Identity4bidirectional_5/backward_rnn/while/SelectV2:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/Identity_5Identity6bidirectional_5/backward_rnn/while/SelectV2_1:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/Identity_6Identity6bidirectional_5/backward_rnn/while/SelectV2_2:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
'bidirectional_5/backward_rnn/while/NoOpNoOpG^bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpF^bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpH^bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Obidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1Qbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1_0"c
+bidirectional_5_backward_rnn_while_identity4bidirectional_5/backward_rnn/while/Identity:output:0"g
-bidirectional_5_backward_rnn_while_identity_16bidirectional_5/backward_rnn/while/Identity_1:output:0"g
-bidirectional_5_backward_rnn_while_identity_26bidirectional_5/backward_rnn/while/Identity_2:output:0"g
-bidirectional_5_backward_rnn_while_identity_36bidirectional_5/backward_rnn/while/Identity_3:output:0"g
-bidirectional_5_backward_rnn_while_identity_46bidirectional_5/backward_rnn/while/Identity_4:output:0"g
-bidirectional_5_backward_rnn_while_identity_56bidirectional_5/backward_rnn/while/Identity_5:output:0"g
-bidirectional_5_backward_rnn_while_identity_66bidirectional_5/backward_rnn/while/Identity_6:output:0"�
Obidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceQbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceRbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
Nbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resourcePbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpFbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpEbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpGbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�^
�
backward_rnn_while_body_501766
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_45
1backward_rnn_while_backward_rnn_strided_slice_1_0q
mbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0u
qbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0S
@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�U
Bbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�P
Abackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
backward_rnn_while_identity!
backward_rnn_while_identity_1!
backward_rnn_while_identity_2!
backward_rnn_while_identity_3!
backward_rnn_while_identity_4!
backward_rnn_while_identity_5!
backward_rnn_while_identity_63
/backward_rnn_while_backward_rnn_strided_slice_1o
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensors
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorQ
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�S
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�N
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Dbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0backward_rnn_while_placeholderMbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Fbackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0backward_rnn_while_placeholderObackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&backward_rnn/while/lstm_cell_19/MatMulMatMul=backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
(backward_rnn/while/lstm_cell_19/MatMul_1MatMul backward_rnn_while_placeholder_3?backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#backward_rnn/while/lstm_cell_19/addAddV20backward_rnn/while/lstm_cell_19/MatMul:product:02backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'backward_rnn/while/lstm_cell_19/BiasAddBiasAdd'backward_rnn/while/lstm_cell_19/add:z:0>backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%backward_rnn/while/lstm_cell_19/splitSplit8backward_rnn/while/lstm_cell_19/split/split_dim:output:00backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
'backward_rnn/while/lstm_cell_19/SigmoidSigmoid.backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid.backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
#backward_rnn/while/lstm_cell_19/mulMul-backward_rnn/while/lstm_cell_19/Sigmoid_1:y:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
$backward_rnn/while/lstm_cell_19/TanhTanh.backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_1Mul+backward_rnn/while/lstm_cell_19/Sigmoid:y:0(backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/add_1AddV2'backward_rnn/while/lstm_cell_19/mul:z:0)backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid.backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
&backward_rnn/while/lstm_cell_19/Tanh_1Tanh)backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_2Mul-backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0*backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@r
!backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/TileTile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2SelectV2 backward_rnn/while/Tile:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@t
#backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_1Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������t
#backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_2Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2_1SelectV2"backward_rnn/while/Tile_1:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
backward_rnn/while/SelectV2_2SelectV2"backward_rnn/while/Tile_2:output:0)backward_rnn/while/lstm_cell_19/add_1:z:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
7backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem backward_rnn_while_placeholder_1backward_rnn_while_placeholder$backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Z
backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/addAddV2backward_rnn_while_placeholder!backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: \
backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/add_1AddV22backward_rnn_while_backward_rnn_while_loop_counter#backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_rnn/while/IdentityIdentitybackward_rnn/while/add_1:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_1Identity8backward_rnn_while_backward_rnn_while_maximum_iterations^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_2Identitybackward_rnn/while/add:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_3IdentityGbackward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_4Identity$backward_rnn/while/SelectV2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_5Identity&backward_rnn/while/SelectV2_1:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_6Identity&backward_rnn/while/SelectV2_2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/NoOpNoOp7^backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6^backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp8^backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/backward_rnn_while_backward_rnn_strided_slice_11backward_rnn_while_backward_rnn_strided_slice_1_0"C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0"G
backward_rnn_while_identity_1&backward_rnn/while/Identity_1:output:0"G
backward_rnn_while_identity_2&backward_rnn/while/Identity_2:output:0"G
backward_rnn_while_identity_3&backward_rnn/while/Identity_3:output:0"G
backward_rnn_while_identity_4&backward_rnn/while/Identity_4:output:0"G
backward_rnn_while_identity_5&backward_rnn/while/Identity_5:output:0"G
backward_rnn_while_identity_6&backward_rnn/while/Identity_6:output:0"�
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensormbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2p
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2n
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2r
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
while_cond_50386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50386___redundant_placeholder03
/while_while_cond_50386___redundant_placeholder13
/while_while_cond_50386___redundant_placeholder23
/while_while_cond_50386___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�>
�
G__inference_backward_rnn_layer_call_and_return_conditional_losses_47756

inputs%
lstm_cell_19_47675:	�%
lstm_cell_19_47677:	@�!
lstm_cell_19_47679:	�
identity��$lstm_cell_19/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_47675lstm_cell_19_47677lstm_cell_19_47679*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47619n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_47675lstm_cell_19_47677lstm_cell_19_47679*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_47688*
condR
while_cond_47687*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�&
�
!__inference__traced_restore_51223
file_prefix2
assignvariableop_dense_6_kernel:	�-
assignvariableop_1_dense_6_bias:U
Bassignvariableop_2_bidirectional_5_forward_rnn_lstm_cell_19_kernel:	�_
Lassignvariableop_3_bidirectional_5_forward_rnn_lstm_cell_19_recurrent_kernel:	@�O
@assignvariableop_4_bidirectional_5_forward_rnn_lstm_cell_19_bias:	�V
Cassignvariableop_5_bidirectional_5_backward_rnn_lstm_cell_19_kernel:	�`
Massignvariableop_6_bidirectional_5_backward_rnn_lstm_cell_19_recurrent_kernel:	@�P
Aassignvariableop_7_bidirectional_5_backward_rnn_lstm_cell_19_bias:	�

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpBassignvariableop_2_bidirectional_5_forward_rnn_lstm_cell_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpLassignvariableop_3_bidirectional_5_forward_rnn_lstm_cell_19_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp@assignvariableop_4_bidirectional_5_forward_rnn_lstm_cell_19_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpCassignvariableop_5_bidirectional_5_backward_rnn_lstm_cell_19_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpMassignvariableop_6_bidirectional_5_backward_rnn_lstm_cell_19_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpAassignvariableop_7_bidirectional_5_backward_rnn_lstm_cell_19_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�\
�
forward_rnn_while_body_478584
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_43
/forward_rnn_while_forward_rnn_strided_slice_1_0o
kforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0s
oforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0R
?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�T
Aforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�O
@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
forward_rnn_while_identity 
forward_rnn_while_identity_1 
forward_rnn_while_identity_2 
forward_rnn_while_identity_3 
forward_rnn_while_identity_4 
forward_rnn_while_identity_5 
forward_rnn_while_identity_61
-forward_rnn_while_forward_rnn_strided_slice_1m
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorq
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensorP
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�R
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�M
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Cforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0forward_rnn_while_placeholderLforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Eforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemoforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0forward_rnn_while_placeholderNforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
%forward_rnn/while/lstm_cell_19/MatMulMatMul<forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
'forward_rnn/while/lstm_cell_19/MatMul_1MatMulforward_rnn_while_placeholder_3>forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"forward_rnn/while/lstm_cell_19/addAddV2/forward_rnn/while/lstm_cell_19/MatMul:product:01forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&forward_rnn/while/lstm_cell_19/BiasAddBiasAdd&forward_rnn/while/lstm_cell_19/add:z:0=forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$forward_rnn/while/lstm_cell_19/splitSplit7forward_rnn/while/lstm_cell_19/split/split_dim:output:0/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
&forward_rnn/while/lstm_cell_19/SigmoidSigmoid-forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid-forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
"forward_rnn/while/lstm_cell_19/mulMul,forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
#forward_rnn/while/lstm_cell_19/TanhTanh-forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_1Mul*forward_rnn/while/lstm_cell_19/Sigmoid:y:0'forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/add_1AddV2&forward_rnn/while/lstm_cell_19/mul:z:0(forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid-forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
%forward_rnn/while/lstm_cell_19/Tanh_1Tanh(forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_2Mul,forward_rnn/while/lstm_cell_19/Sigmoid_2:y:0)forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@q
 forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/TileTile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0)forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2SelectV2forward_rnn/while/Tile:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@s
"forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_1Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������s
"forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_2Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2_1SelectV2!forward_rnn/while/Tile_1:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
forward_rnn/while/SelectV2_2SelectV2!forward_rnn/while/Tile_2:output:0(forward_rnn/while/lstm_cell_19/add_1:z:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
6forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemforward_rnn_while_placeholder_1forward_rnn_while_placeholder#forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Y
forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/addAddV2forward_rnn_while_placeholder forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: [
forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/add_1AddV20forward_rnn_while_forward_rnn_while_loop_counter"forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: }
forward_rnn/while/IdentityIdentityforward_rnn/while/add_1:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_1Identity6forward_rnn_while_forward_rnn_while_maximum_iterations^forward_rnn/while/NoOp*
T0*
_output_shapes
: }
forward_rnn/while/Identity_2Identityforward_rnn/while/add:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_3IdentityFforward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_4Identity#forward_rnn/while/SelectV2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_5Identity%forward_rnn/while/SelectV2_1:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_6Identity%forward_rnn/while/SelectV2_2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/NoOpNoOp6^forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5^forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp7^forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "`
-forward_rnn_while_forward_rnn_strided_slice_1/forward_rnn_while_forward_rnn_strided_slice_1_0"A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0"E
forward_rnn_while_identity_1%forward_rnn/while/Identity_1:output:0"E
forward_rnn_while_identity_2%forward_rnn/while/Identity_2:output:0"E
forward_rnn_while_identity_3%forward_rnn/while/Identity_3:output:0"E
forward_rnn_while_identity_4%forward_rnn/while/Identity_4:output:0"E
forward_rnn_while_identity_5%forward_rnn/while/Identity_5:output:0"E
forward_rnn_while_identity_6%forward_rnn/while/Identity_6:output:0"�
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensoroforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2n
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2l
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2p
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�\
�
forward_rnn_while_body_482934
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_43
/forward_rnn_while_forward_rnn_strided_slice_1_0o
kforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0s
oforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0R
?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�T
Aforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�O
@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
forward_rnn_while_identity 
forward_rnn_while_identity_1 
forward_rnn_while_identity_2 
forward_rnn_while_identity_3 
forward_rnn_while_identity_4 
forward_rnn_while_identity_5 
forward_rnn_while_identity_61
-forward_rnn_while_forward_rnn_strided_slice_1m
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorq
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensorP
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�R
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�M
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Cforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0forward_rnn_while_placeholderLforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Eforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemoforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0forward_rnn_while_placeholderNforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
%forward_rnn/while/lstm_cell_19/MatMulMatMul<forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
'forward_rnn/while/lstm_cell_19/MatMul_1MatMulforward_rnn_while_placeholder_3>forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"forward_rnn/while/lstm_cell_19/addAddV2/forward_rnn/while/lstm_cell_19/MatMul:product:01forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&forward_rnn/while/lstm_cell_19/BiasAddBiasAdd&forward_rnn/while/lstm_cell_19/add:z:0=forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$forward_rnn/while/lstm_cell_19/splitSplit7forward_rnn/while/lstm_cell_19/split/split_dim:output:0/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
&forward_rnn/while/lstm_cell_19/SigmoidSigmoid-forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid-forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
"forward_rnn/while/lstm_cell_19/mulMul,forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
#forward_rnn/while/lstm_cell_19/TanhTanh-forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_1Mul*forward_rnn/while/lstm_cell_19/Sigmoid:y:0'forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/add_1AddV2&forward_rnn/while/lstm_cell_19/mul:z:0(forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid-forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
%forward_rnn/while/lstm_cell_19/Tanh_1Tanh(forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_2Mul,forward_rnn/while/lstm_cell_19/Sigmoid_2:y:0)forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@q
 forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/TileTile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0)forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2SelectV2forward_rnn/while/Tile:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@s
"forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_1Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������s
"forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_2Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2_1SelectV2!forward_rnn/while/Tile_1:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
forward_rnn/while/SelectV2_2SelectV2!forward_rnn/while/Tile_2:output:0(forward_rnn/while/lstm_cell_19/add_1:z:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
6forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemforward_rnn_while_placeholder_1forward_rnn_while_placeholder#forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Y
forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/addAddV2forward_rnn_while_placeholder forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: [
forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/add_1AddV20forward_rnn_while_forward_rnn_while_loop_counter"forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: }
forward_rnn/while/IdentityIdentityforward_rnn/while/add_1:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_1Identity6forward_rnn_while_forward_rnn_while_maximum_iterations^forward_rnn/while/NoOp*
T0*
_output_shapes
: }
forward_rnn/while/Identity_2Identityforward_rnn/while/add:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_3IdentityFforward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_4Identity#forward_rnn/while/SelectV2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_5Identity%forward_rnn/while/SelectV2_1:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_6Identity%forward_rnn/while/SelectV2_2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/NoOpNoOp6^forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5^forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp7^forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "`
-forward_rnn_while_forward_rnn_strided_slice_1/forward_rnn_while_forward_rnn_strided_slice_1_0"A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0"E
forward_rnn_while_identity_1%forward_rnn/while/Identity_1:output:0"E
forward_rnn_while_identity_2%forward_rnn/while/Identity_2:output:0"E
forward_rnn_while_identity_3%forward_rnn/while/Identity_3:output:0"E
forward_rnn_while_identity_4%forward_rnn/while/Identity_4:output:0"E
forward_rnn_while_identity_5%forward_rnn/while/Identity_5:output:0"E
forward_rnn_while_identity_6%forward_rnn/while/Identity_6:output:0"�
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensoroforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2n
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2l
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2p
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47253

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
forward_rnn_while_cond_478574
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_46
2forward_rnn_while_less_forward_rnn_strided_slice_1K
Gforward_rnn_while_forward_rnn_while_cond_47857___redundant_placeholder0K
Gforward_rnn_while_forward_rnn_while_cond_47857___redundant_placeholder1K
Gforward_rnn_while_forward_rnn_while_cond_47857___redundant_placeholder2K
Gforward_rnn_while_forward_rnn_while_cond_47857___redundant_placeholder3K
Gforward_rnn_while_forward_rnn_while_cond_47857___redundant_placeholder4
forward_rnn_while_identity
�
forward_rnn/while/LessLessforward_rnn_while_placeholder2forward_rnn_while_less_forward_rnn_strided_slice_1*
T0*
_output_shapes
: c
forward_rnn/while/IdentityIdentityforward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�

�
,__inference_sequential_6_layer_call_fn_48186
custom_embedding_7_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcustom_embedding_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_48167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input
�"
�
while_body_47320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_47344_0:	�-
while_lstm_cell_19_47346_0:	@�)
while_lstm_cell_19_47348_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_47344:	�+
while_lstm_cell_19_47346:	@�'
while_lstm_cell_19_47348:	���*while/lstm_cell_19/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_47344_0while_lstm_cell_19_47346_0while_lstm_cell_19_47348_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47253�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@�
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_19_47344while_lstm_cell_19_47344_0"6
while_lstm_cell_19_47346while_lstm_cell_19_47346_0"6
while_lstm_cell_19_47348while_lstm_cell_19_47348_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�O
�
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50470
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	�@
-lstm_cell_19_matmul_1_readvariableop_resource:	@�;
,lstm_cell_19_biasadd_readvariableop_resource:	�
identity��#lstm_cell_19/BiasAdd/ReadVariableOp�"lstm_cell_19/MatMul/ReadVariableOp�$lstm_cell_19/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@h
lstm_cell_19/TanhTanhlstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@|
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@e
lstm_cell_19/Tanh_1Tanhlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_50387*
condR
while_cond_50386*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�\
�
forward_rnn_while_body_496484
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_43
/forward_rnn_while_forward_rnn_strided_slice_1_0o
kforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0s
oforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0R
?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�T
Aforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�O
@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
forward_rnn_while_identity 
forward_rnn_while_identity_1 
forward_rnn_while_identity_2 
forward_rnn_while_identity_3 
forward_rnn_while_identity_4 
forward_rnn_while_identity_5 
forward_rnn_while_identity_61
-forward_rnn_while_forward_rnn_strided_slice_1m
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorq
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensorP
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�R
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�M
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Cforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0forward_rnn_while_placeholderLforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Eforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemoforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0forward_rnn_while_placeholderNforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
%forward_rnn/while/lstm_cell_19/MatMulMatMul<forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
'forward_rnn/while/lstm_cell_19/MatMul_1MatMulforward_rnn_while_placeholder_3>forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"forward_rnn/while/lstm_cell_19/addAddV2/forward_rnn/while/lstm_cell_19/MatMul:product:01forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&forward_rnn/while/lstm_cell_19/BiasAddBiasAdd&forward_rnn/while/lstm_cell_19/add:z:0=forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$forward_rnn/while/lstm_cell_19/splitSplit7forward_rnn/while/lstm_cell_19/split/split_dim:output:0/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
&forward_rnn/while/lstm_cell_19/SigmoidSigmoid-forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid-forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
"forward_rnn/while/lstm_cell_19/mulMul,forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
#forward_rnn/while/lstm_cell_19/TanhTanh-forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_1Mul*forward_rnn/while/lstm_cell_19/Sigmoid:y:0'forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/add_1AddV2&forward_rnn/while/lstm_cell_19/mul:z:0(forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid-forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
%forward_rnn/while/lstm_cell_19/Tanh_1Tanh(forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_2Mul,forward_rnn/while/lstm_cell_19/Sigmoid_2:y:0)forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@q
 forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/TileTile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0)forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2SelectV2forward_rnn/while/Tile:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@s
"forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_1Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������s
"forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_2Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2_1SelectV2!forward_rnn/while/Tile_1:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
forward_rnn/while/SelectV2_2SelectV2!forward_rnn/while/Tile_2:output:0(forward_rnn/while/lstm_cell_19/add_1:z:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
6forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemforward_rnn_while_placeholder_1forward_rnn_while_placeholder#forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Y
forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/addAddV2forward_rnn_while_placeholder forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: [
forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/add_1AddV20forward_rnn_while_forward_rnn_while_loop_counter"forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: }
forward_rnn/while/IdentityIdentityforward_rnn/while/add_1:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_1Identity6forward_rnn_while_forward_rnn_while_maximum_iterations^forward_rnn/while/NoOp*
T0*
_output_shapes
: }
forward_rnn/while/Identity_2Identityforward_rnn/while/add:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_3IdentityFforward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_4Identity#forward_rnn/while/SelectV2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_5Identity%forward_rnn/while/SelectV2_1:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_6Identity%forward_rnn/while/SelectV2_2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/NoOpNoOp6^forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5^forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp7^forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "`
-forward_rnn_while_forward_rnn_strided_slice_1/forward_rnn_while_forward_rnn_strided_slice_1_0"A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0"E
forward_rnn_while_identity_1%forward_rnn/while/Identity_1:output:0"E
forward_rnn_while_identity_2%forward_rnn/while/Identity_2:output:0"E
forward_rnn_while_identity_3%forward_rnn/while/Identity_3:output:0"E
forward_rnn_while_identity_4%forward_rnn/while/Identity_4:output:0"E
forward_rnn_while_identity_5%forward_rnn/while/Identity_5:output:0"E
forward_rnn_while_identity_6%forward_rnn/while/Identity_6:output:0"�
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensoroforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2n
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2l
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2p
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�7
�
while_body_50863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	�F
3while_lstm_cell_19_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_19_biasadd_readvariableop_resource:	���)while/lstm_cell_19/BiasAdd/ReadVariableOp�(while/lstm_cell_19/MatMul/ReadVariableOp�*while/lstm_cell_19/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@t
while/lstm_cell_19/TanhTanh!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@q
while/lstm_cell_19/Tanh_1Tanhwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_50710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50710___redundant_placeholder03
/while_while_cond_50710___redundant_placeholder13
/while_while_cond_50710___redundant_placeholder23
/while_while_cond_50710___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_47488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_47512_0:	�-
while_lstm_cell_19_47514_0:	@�)
while_lstm_cell_19_47516_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_47512:	�+
while_lstm_cell_19_47514:	@�'
while_lstm_cell_19_47516:	���*while/lstm_cell_19/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_47512_0while_lstm_cell_19_47514_0while_lstm_cell_19_47516_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47474�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@�
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_19_47512while_lstm_cell_19_47512_0"6
while_lstm_cell_19_47514while_lstm_cell_19_47514_0"6
while_lstm_cell_19_47516while_lstm_cell_19_47516_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
��
�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48136

inputs
mask
J
7forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�L
9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�G
8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�K
8backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�M
:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�H
9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�
identity��0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�backward_rnn/while�/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�forward_rnn/whileG
forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:i
forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_sliceStridedSliceforward_rnn/Shape:output:0(forward_rnn/strided_slice/stack:output:0*forward_rnn/strided_slice/stack_1:output:0*forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/mulMul"forward_rnn/strided_slice:output:0 forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: [
forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�}
forward_rnn/zeros/LessLessforward_rnn/zeros/mul:z:0!forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: \
forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/packedPack"forward_rnn/strided_slice:output:0#forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zerosFill!forward_rnn/zeros/packed:output:0 forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@[
forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/mulMul"forward_rnn/strided_slice:output:0"forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ]
forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
forward_rnn/zeros_1/LessLessforward_rnn/zeros_1/mul:z:0#forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ^
forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/packedPack"forward_rnn/strided_slice:output:0%forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zeros_1Fill#forward_rnn/zeros_1/packed:output:0"forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@o
forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose	Transposeinputs#forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������\
forward_rnn/Shape_1Shapeforward_rnn/transpose:y:0*
T0*
_output_shapes
:k
!forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_1StridedSliceforward_rnn/Shape_1:output:0*forward_rnn/strided_slice_1/stack:output:0,forward_rnn/strided_slice_1/stack_1:output:0,forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_1	Transposemask%forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������r
'forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2TensorListReserve0forward_rnn/TensorArrayV2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Aforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_rnn/transpose:y:0Jforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_2StridedSliceforward_rnn/transpose:y:0*forward_rnn/strided_slice_2/stack:output:0,forward_rnn/strided_slice_2/stack_1:output:0,forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp7forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
forward_rnn/lstm_cell_19/MatMulMatMul$forward_rnn/strided_slice_2:output:06forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
!forward_rnn/lstm_cell_19/MatMul_1MatMulforward_rnn/zeros:output:08forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_rnn/lstm_cell_19/addAddV2)forward_rnn/lstm_cell_19/MatMul:product:0+forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 forward_rnn/lstm_cell_19/BiasAddBiasAdd forward_rnn/lstm_cell_19/add:z:07forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/lstm_cell_19/splitSplit1forward_rnn/lstm_cell_19/split/split_dim:output:0)forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
 forward_rnn/lstm_cell_19/SigmoidSigmoid'forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid'forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mulMul&forward_rnn/lstm_cell_19/Sigmoid_1:y:0forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/TanhTanh'forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_1Mul$forward_rnn/lstm_cell_19/Sigmoid:y:0!forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/add_1AddV2 forward_rnn/lstm_cell_19/mul:z:0"forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid'forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@}
forward_rnn/lstm_cell_19/Tanh_1Tanh"forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_2Mul&forward_rnn/lstm_cell_19/Sigmoid_2:y:0#forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@z
)forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
forward_rnn/TensorArrayV2_1TensorListReserve2forward_rnn/TensorArrayV2_1/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2_2TensorListReserve2forward_rnn/TensorArrayV2_2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Cforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorforward_rnn/transpose_1:y:0Lforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���y
forward_rnn/zeros_like	ZerosLike"forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@o
$forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_rnn/whileWhile'forward_rnn/while/loop_counter:output:0-forward_rnn/while/maximum_iterations:output:0forward_rnn/time:output:0$forward_rnn/TensorArrayV2_1:handle:0forward_rnn/zeros_like:y:0forward_rnn/zeros:output:0forward_rnn/zeros_1:output:0$forward_rnn/strided_slice_1:output:0Cforward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07forward_rnn_lstm_cell_19_matmul_readvariableop_resource9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *(
body R
forward_rnn_while_body_47858*(
cond R
forward_rnn_while_cond_47857*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
<forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
.forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackforward_rnn/while:output:3Eforward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0t
!forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_3StridedSlice7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0*forward_rnn/strided_slice_3/stack:output:0,forward_rnn/strided_slice_3/stack_1:output:0,forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskq
forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_2	Transpose7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0%forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@H
backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:j
 backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_sliceStridedSlicebackward_rnn/Shape:output:0)backward_rnn/strided_slice/stack:output:0+backward_rnn/strided_slice/stack_1:output:0+backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/mulMul#backward_rnn/strided_slice:output:0!backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: \
backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros/LessLessbackward_rnn/zeros/mul:z:0"backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/packedPack#backward_rnn/strided_slice:output:0$backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zerosFill"backward_rnn/zeros/packed:output:0!backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@\
backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/mulMul#backward_rnn/strided_slice:output:0#backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ^
backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros_1/LessLessbackward_rnn/zeros_1/mul:z:0$backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: _
backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/packedPack#backward_rnn/strided_slice:output:0&backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zeros_1Fill$backward_rnn/zeros_1/packed:output:0#backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@p
backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose	Transposeinputs$backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
backward_rnn/Shape_1Shapebackward_rnn/transpose:y:0*
T0*
_output_shapes
:l
"backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_1StridedSlicebackward_rnn/Shape_1:output:0+backward_rnn/strided_slice_1/stack:output:0-backward_rnn/strided_slice_1/stack_1:output:0-backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_1	Transposemask&backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������s
(backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2TensorListReserve1backward_rnn/TensorArrayV2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���e
backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2	ReverseV2backward_rnn/transpose:y:0$backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Bbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorbackward_rnn/ReverseV2:output:0Kbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_2StridedSlicebackward_rnn/transpose:y:0+backward_rnn/strided_slice_2/stack:output:0-backward_rnn/strided_slice_2/stack_1:output:0-backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp8backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 backward_rnn/lstm_cell_19/MatMulMatMul%backward_rnn/strided_slice_2:output:07backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
"backward_rnn/lstm_cell_19/MatMul_1MatMulbackward_rnn/zeros:output:09backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_rnn/lstm_cell_19/addAddV2*backward_rnn/lstm_cell_19/MatMul:product:0,backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!backward_rnn/lstm_cell_19/BiasAddBiasAdd!backward_rnn/lstm_cell_19/add:z:08backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/lstm_cell_19/splitSplit2backward_rnn/lstm_cell_19/split/split_dim:output:0*backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
!backward_rnn/lstm_cell_19/SigmoidSigmoid(backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid(backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mulMul'backward_rnn/lstm_cell_19/Sigmoid_1:y:0backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/TanhTanh(backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_1Mul%backward_rnn/lstm_cell_19/Sigmoid:y:0"backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/add_1AddV2!backward_rnn/lstm_cell_19/mul:z:0#backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid(backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@
 backward_rnn/lstm_cell_19/Tanh_1Tanh#backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_2Mul'backward_rnn/lstm_cell_19/Sigmoid_2:y:0$backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@{
*backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
backward_rnn/TensorArrayV2_1TensorListReserve3backward_rnn/TensorArrayV2_1/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2_1	ReverseV2backward_rnn/transpose_1:y:0&backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:���������u
*backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2_2TensorListReserve3backward_rnn/TensorArrayV2_2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Dbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor!backward_rnn/ReverseV2_1:output:0Mbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���{
backward_rnn/zeros_like	ZerosLike#backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@p
%backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_rnn/whileWhile(backward_rnn/while/loop_counter:output:0.backward_rnn/while/maximum_iterations:output:0backward_rnn/time:output:0%backward_rnn/TensorArrayV2_1:handle:0backward_rnn/zeros_like:y:0backward_rnn/zeros:output:0backward_rnn/zeros_1:output:0%backward_rnn/strided_slice_1:output:0Dbackward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:08backward_rnn_lstm_cell_19_matmul_readvariableop_resource:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *)
body!R
backward_rnn_while_body_48033*)
cond!R
backward_rnn_while_cond_48032*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
=backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackbackward_rnn/while:output:3Fbackward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0u
"backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_3StridedSlice8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0+backward_rnn/strided_slice_3/stack:output:0-backward_rnn/strided_slice_3/stack_1:output:0-backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskr
backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_2	Transpose8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0&backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2$forward_rnn/strided_slice_3:output:0%backward_rnn/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp1^backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0^backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2^backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^backward_rnn/while0^forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/^forward_rnn/lstm_cell_19/MatMul/ReadVariableOp1^forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^forward_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 2d
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2b
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2f
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2(
backward_rnn/whilebackward_rnn/while2b
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2`
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2d
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2&
forward_rnn/whileforward_rnn/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�"
�
while_body_47122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_47146_0:	�-
while_lstm_cell_19_47148_0:	@�)
while_lstm_cell_19_47150_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_47146:	�+
while_lstm_cell_19_47148:	@�'
while_lstm_cell_19_47150:	���*while/lstm_cell_19/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_47146_0while_lstm_cell_19_47148_0while_lstm_cell_19_47150_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47108�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@�
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_19_47146while_lstm_cell_19_47146_0"6
while_lstm_cell_19_47148while_lstm_cell_19_47148_0"6
while_lstm_cell_19_47150while_lstm_cell_19_47150_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�	
�
B__inference_dense_6_layer_call_and_return_conditional_losses_48160

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47619

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
��
�
9sequential_6_bidirectional_5_forward_rnn_while_body_46747n
jsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_loop_countert
psequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_maximum_iterations>
:sequential_6_bidirectional_5_forward_rnn_while_placeholder@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_1@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_2@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_3@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_4m
isequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_strided_slice_1_0�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0o
\sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�q
^sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�l
]sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�;
7sequential_6_bidirectional_5_forward_rnn_while_identity=
9sequential_6_bidirectional_5_forward_rnn_while_identity_1=
9sequential_6_bidirectional_5_forward_rnn_while_identity_2=
9sequential_6_bidirectional_5_forward_rnn_while_identity_3=
9sequential_6_bidirectional_5_forward_rnn_while_identity_4=
9sequential_6_bidirectional_5_forward_rnn_while_identity_5=
9sequential_6_bidirectional_5_forward_rnn_while_identity_6k
gsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_strided_slice_1�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensorm
Zsequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�o
\sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�j
[sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Rsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Qsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Ssequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
`sequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Rsequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0:sequential_6_bidirectional_5_forward_rnn_while_placeholderisequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
bsequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Tsequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0:sequential_6_bidirectional_5_forward_rnn_while_placeholderksequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Qsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp\sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
Bsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMulMatMulYsequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Ysequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ssequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp^sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
Dsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1MatMul<sequential_6_bidirectional_5_forward_rnn_while_placeholder_3[sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/addAddV2Lsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul:product:0Nsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Rsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp]sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
Csequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAddBiasAddCsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/add:z:0Zsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Asequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/splitSplitTsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dim:output:0Lsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
Csequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/SigmoidSigmoidJsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1SigmoidJsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
?sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mulMulIsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0<sequential_6_bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
@sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/TanhTanhJsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
Asequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1MulGsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid:y:0Dsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
Asequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/add_1AddV2Csequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul:z:0Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2SigmoidJsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
Bsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1TanhEsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
Asequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2MulIsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2:y:0Fsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
=sequential_6/bidirectional_5/forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
3sequential_6/bidirectional_5/forward_rnn/while/TileTile[sequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Fsequential_6/bidirectional_5/forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
7sequential_6/bidirectional_5/forward_rnn/while/SelectV2SelectV2<sequential_6/bidirectional_5/forward_rnn/while/Tile:output:0Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0<sequential_6_bidirectional_5_forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
?sequential_6/bidirectional_5/forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
5sequential_6/bidirectional_5/forward_rnn/while/Tile_1Tile[sequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Hsequential_6/bidirectional_5/forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
?sequential_6/bidirectional_5/forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
5sequential_6/bidirectional_5/forward_rnn/while/Tile_2Tile[sequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0Hsequential_6/bidirectional_5/forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
9sequential_6/bidirectional_5/forward_rnn/while/SelectV2_1SelectV2>sequential_6/bidirectional_5/forward_rnn/while/Tile_1:output:0Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0<sequential_6_bidirectional_5_forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
9sequential_6/bidirectional_5/forward_rnn/while/SelectV2_2SelectV2>sequential_6/bidirectional_5/forward_rnn/while/Tile_2:output:0Esequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0<sequential_6_bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Ssequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem<sequential_6_bidirectional_5_forward_rnn_while_placeholder_1:sequential_6_bidirectional_5_forward_rnn_while_placeholder@sequential_6/bidirectional_5/forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���v
4sequential_6/bidirectional_5/forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
2sequential_6/bidirectional_5/forward_rnn/while/addAddV2:sequential_6_bidirectional_5_forward_rnn_while_placeholder=sequential_6/bidirectional_5/forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: x
6sequential_6/bidirectional_5/forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_6/bidirectional_5/forward_rnn/while/add_1AddV2jsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_loop_counter?sequential_6/bidirectional_5/forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
7sequential_6/bidirectional_5/forward_rnn/while/IdentityIdentity8sequential_6/bidirectional_5/forward_rnn/while/add_1:z:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
9sequential_6/bidirectional_5/forward_rnn/while/Identity_1Identitypsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_maximum_iterations4^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
9sequential_6/bidirectional_5/forward_rnn/while/Identity_2Identity6sequential_6/bidirectional_5/forward_rnn/while/add:z:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
9sequential_6/bidirectional_5/forward_rnn/while/Identity_3Identitycsequential_6/bidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
9sequential_6/bidirectional_5/forward_rnn/while/Identity_4Identity@sequential_6/bidirectional_5/forward_rnn/while/SelectV2:output:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
9sequential_6/bidirectional_5/forward_rnn/while/Identity_5IdentityBsequential_6/bidirectional_5/forward_rnn/while/SelectV2_1:output:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
9sequential_6/bidirectional_5/forward_rnn/while/Identity_6IdentityBsequential_6/bidirectional_5/forward_rnn/while/SelectV2_2:output:04^sequential_6/bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
3sequential_6/bidirectional_5/forward_rnn/while/NoOpNoOpS^sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpR^sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpT^sequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "{
7sequential_6_bidirectional_5_forward_rnn_while_identity@sequential_6/bidirectional_5/forward_rnn/while/Identity:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_1Bsequential_6/bidirectional_5/forward_rnn/while/Identity_1:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_2Bsequential_6/bidirectional_5/forward_rnn/while/Identity_2:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_3Bsequential_6/bidirectional_5/forward_rnn/while/Identity_3:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_4Bsequential_6/bidirectional_5/forward_rnn/while/Identity_4:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_5Bsequential_6/bidirectional_5/forward_rnn/while/Identity_5:output:0"
9sequential_6_bidirectional_5_forward_rnn_while_identity_6Bsequential_6/bidirectional_5/forward_rnn/while/Identity_6:output:0"�
[sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource]sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
\sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource^sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
Zsequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource\sequential_6_bidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
gsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_strided_slice_1isequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_strided_slice_1_0"�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�sequential_6_bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_6_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Rsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpRsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Qsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpQsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Ssequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpSsequential_6/bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
while_cond_47687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47687___redundant_placeholder03
/while_while_cond_47687___redundant_placeholder13
/while_while_cond_47687___redundant_placeholder23
/while_while_cond_47687___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
forward_rnn_while_cond_482924
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_46
2forward_rnn_while_less_forward_rnn_strided_slice_1K
Gforward_rnn_while_forward_rnn_while_cond_48292___redundant_placeholder0K
Gforward_rnn_while_forward_rnn_while_cond_48292___redundant_placeholder1K
Gforward_rnn_while_forward_rnn_while_cond_48292___redundant_placeholder2K
Gforward_rnn_while_forward_rnn_while_cond_48292___redundant_placeholder3K
Gforward_rnn_while_forward_rnn_while_cond_48292___redundant_placeholder4
forward_rnn_while_identity
�
forward_rnn/while/LessLessforward_rnn_while_placeholder2forward_rnn_while_less_forward_rnn_strided_slice_1*
T0*
_output_shapes
: c
forward_rnn/while/IdentityIdentityforward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�	
,bidirectional_5_forward_rnn_while_cond_48873T
Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counterZ
Vbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations1
-bidirectional_5_forward_rnn_while_placeholder3
/bidirectional_5_forward_rnn_while_placeholder_13
/bidirectional_5_forward_rnn_while_placeholder_23
/bidirectional_5_forward_rnn_while_placeholder_33
/bidirectional_5_forward_rnn_while_placeholder_4V
Rbidirectional_5_forward_rnn_while_less_bidirectional_5_forward_rnn_strided_slice_1k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_48873___redundant_placeholder0k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_48873___redundant_placeholder1k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_48873___redundant_placeholder2k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_48873___redundant_placeholder3k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_48873___redundant_placeholder4.
*bidirectional_5_forward_rnn_while_identity
�
&bidirectional_5/forward_rnn/while/LessLess-bidirectional_5_forward_rnn_while_placeholderRbidirectional_5_forward_rnn_while_less_bidirectional_5_forward_rnn_strided_slice_1*
T0*
_output_shapes
: �
*bidirectional_5/forward_rnn/while/IdentityIdentity*bidirectional_5/forward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "a
*bidirectional_5_forward_rnn_while_identity3bidirectional_5/forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
backward_rnn_while_cond_501756
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_48
4backward_rnn_while_less_backward_rnn_strided_slice_1M
Ibackward_rnn_while_backward_rnn_while_cond_50175___redundant_placeholder0M
Ibackward_rnn_while_backward_rnn_while_cond_50175___redundant_placeholder1M
Ibackward_rnn_while_backward_rnn_while_cond_50175___redundant_placeholder2M
Ibackward_rnn_while_backward_rnn_while_cond_50175___redundant_placeholder3M
Ibackward_rnn_while_backward_rnn_while_cond_50175___redundant_placeholder4
backward_rnn_while_identity
�
backward_rnn/while/LessLessbackward_rnn_while_placeholder4backward_rnn_while_less_backward_rnn_strided_slice_1*
T0*
_output_shapes
: e
backward_rnn/while/IdentityIdentitybackward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
��
�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_50279

inputs
mask
J
7forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�L
9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�G
8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�K
8backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�M
:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�H
9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�
identity��0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�backward_rnn/while�/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�forward_rnn/whileG
forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:i
forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_sliceStridedSliceforward_rnn/Shape:output:0(forward_rnn/strided_slice/stack:output:0*forward_rnn/strided_slice/stack_1:output:0*forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/mulMul"forward_rnn/strided_slice:output:0 forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: [
forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�}
forward_rnn/zeros/LessLessforward_rnn/zeros/mul:z:0!forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: \
forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/packedPack"forward_rnn/strided_slice:output:0#forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zerosFill!forward_rnn/zeros/packed:output:0 forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@[
forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/mulMul"forward_rnn/strided_slice:output:0"forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ]
forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
forward_rnn/zeros_1/LessLessforward_rnn/zeros_1/mul:z:0#forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ^
forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/packedPack"forward_rnn/strided_slice:output:0%forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zeros_1Fill#forward_rnn/zeros_1/packed:output:0"forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@o
forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose	Transposeinputs#forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������\
forward_rnn/Shape_1Shapeforward_rnn/transpose:y:0*
T0*
_output_shapes
:k
!forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_1StridedSliceforward_rnn/Shape_1:output:0*forward_rnn/strided_slice_1/stack:output:0,forward_rnn/strided_slice_1/stack_1:output:0,forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_1	Transposemask%forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������r
'forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2TensorListReserve0forward_rnn/TensorArrayV2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Aforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_rnn/transpose:y:0Jforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_2StridedSliceforward_rnn/transpose:y:0*forward_rnn/strided_slice_2/stack:output:0,forward_rnn/strided_slice_2/stack_1:output:0,forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp7forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
forward_rnn/lstm_cell_19/MatMulMatMul$forward_rnn/strided_slice_2:output:06forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
!forward_rnn/lstm_cell_19/MatMul_1MatMulforward_rnn/zeros:output:08forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_rnn/lstm_cell_19/addAddV2)forward_rnn/lstm_cell_19/MatMul:product:0+forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 forward_rnn/lstm_cell_19/BiasAddBiasAdd forward_rnn/lstm_cell_19/add:z:07forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/lstm_cell_19/splitSplit1forward_rnn/lstm_cell_19/split/split_dim:output:0)forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
 forward_rnn/lstm_cell_19/SigmoidSigmoid'forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid'forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mulMul&forward_rnn/lstm_cell_19/Sigmoid_1:y:0forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/TanhTanh'forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_1Mul$forward_rnn/lstm_cell_19/Sigmoid:y:0!forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/add_1AddV2 forward_rnn/lstm_cell_19/mul:z:0"forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid'forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@}
forward_rnn/lstm_cell_19/Tanh_1Tanh"forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_2Mul&forward_rnn/lstm_cell_19/Sigmoid_2:y:0#forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@z
)forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
forward_rnn/TensorArrayV2_1TensorListReserve2forward_rnn/TensorArrayV2_1/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2_2TensorListReserve2forward_rnn/TensorArrayV2_2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Cforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorforward_rnn/transpose_1:y:0Lforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���y
forward_rnn/zeros_like	ZerosLike"forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@o
$forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_rnn/whileWhile'forward_rnn/while/loop_counter:output:0-forward_rnn/while/maximum_iterations:output:0forward_rnn/time:output:0$forward_rnn/TensorArrayV2_1:handle:0forward_rnn/zeros_like:y:0forward_rnn/zeros:output:0forward_rnn/zeros_1:output:0$forward_rnn/strided_slice_1:output:0Cforward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07forward_rnn_lstm_cell_19_matmul_readvariableop_resource9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *(
body R
forward_rnn_while_body_50001*(
cond R
forward_rnn_while_cond_50000*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
<forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
.forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackforward_rnn/while:output:3Eforward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0t
!forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_3StridedSlice7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0*forward_rnn/strided_slice_3/stack:output:0,forward_rnn/strided_slice_3/stack_1:output:0,forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskq
forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_2	Transpose7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0%forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@H
backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:j
 backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_sliceStridedSlicebackward_rnn/Shape:output:0)backward_rnn/strided_slice/stack:output:0+backward_rnn/strided_slice/stack_1:output:0+backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/mulMul#backward_rnn/strided_slice:output:0!backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: \
backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros/LessLessbackward_rnn/zeros/mul:z:0"backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/packedPack#backward_rnn/strided_slice:output:0$backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zerosFill"backward_rnn/zeros/packed:output:0!backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@\
backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/mulMul#backward_rnn/strided_slice:output:0#backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ^
backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros_1/LessLessbackward_rnn/zeros_1/mul:z:0$backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: _
backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/packedPack#backward_rnn/strided_slice:output:0&backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zeros_1Fill$backward_rnn/zeros_1/packed:output:0#backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@p
backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose	Transposeinputs$backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
backward_rnn/Shape_1Shapebackward_rnn/transpose:y:0*
T0*
_output_shapes
:l
"backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_1StridedSlicebackward_rnn/Shape_1:output:0+backward_rnn/strided_slice_1/stack:output:0-backward_rnn/strided_slice_1/stack_1:output:0-backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_1	Transposemask&backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������s
(backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2TensorListReserve1backward_rnn/TensorArrayV2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���e
backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2	ReverseV2backward_rnn/transpose:y:0$backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Bbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorbackward_rnn/ReverseV2:output:0Kbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_2StridedSlicebackward_rnn/transpose:y:0+backward_rnn/strided_slice_2/stack:output:0-backward_rnn/strided_slice_2/stack_1:output:0-backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp8backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 backward_rnn/lstm_cell_19/MatMulMatMul%backward_rnn/strided_slice_2:output:07backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
"backward_rnn/lstm_cell_19/MatMul_1MatMulbackward_rnn/zeros:output:09backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_rnn/lstm_cell_19/addAddV2*backward_rnn/lstm_cell_19/MatMul:product:0,backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!backward_rnn/lstm_cell_19/BiasAddBiasAdd!backward_rnn/lstm_cell_19/add:z:08backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/lstm_cell_19/splitSplit2backward_rnn/lstm_cell_19/split/split_dim:output:0*backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
!backward_rnn/lstm_cell_19/SigmoidSigmoid(backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid(backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mulMul'backward_rnn/lstm_cell_19/Sigmoid_1:y:0backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/TanhTanh(backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_1Mul%backward_rnn/lstm_cell_19/Sigmoid:y:0"backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/add_1AddV2!backward_rnn/lstm_cell_19/mul:z:0#backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid(backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@
 backward_rnn/lstm_cell_19/Tanh_1Tanh#backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_2Mul'backward_rnn/lstm_cell_19/Sigmoid_2:y:0$backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@{
*backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
backward_rnn/TensorArrayV2_1TensorListReserve3backward_rnn/TensorArrayV2_1/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2_1	ReverseV2backward_rnn/transpose_1:y:0&backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:���������u
*backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2_2TensorListReserve3backward_rnn/TensorArrayV2_2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Dbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor!backward_rnn/ReverseV2_1:output:0Mbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���{
backward_rnn/zeros_like	ZerosLike#backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@p
%backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_rnn/whileWhile(backward_rnn/while/loop_counter:output:0.backward_rnn/while/maximum_iterations:output:0backward_rnn/time:output:0%backward_rnn/TensorArrayV2_1:handle:0backward_rnn/zeros_like:y:0backward_rnn/zeros:output:0backward_rnn/zeros_1:output:0%backward_rnn/strided_slice_1:output:0Dbackward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:08backward_rnn_lstm_cell_19_matmul_readvariableop_resource:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *)
body!R
backward_rnn_while_body_50176*)
cond!R
backward_rnn_while_cond_50175*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
=backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackbackward_rnn/while:output:3Fbackward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0u
"backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_3StridedSlice8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0+backward_rnn/strided_slice_3/stack:output:0-backward_rnn/strided_slice_3/stack_1:output:0-backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskr
backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_2	Transpose8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0&backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2$forward_rnn/strided_slice_3:output:0%backward_rnn/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp1^backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0^backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2^backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^backward_rnn/while0^forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/^forward_rnn/lstm_cell_19/MatMul/ReadVariableOp1^forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^forward_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 2d
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2b
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2f
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2(
backward_rnn/whilebackward_rnn/while2b
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2`
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2d
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2&
forward_rnn/whileforward_rnn/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�7
�
while_body_50387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	�F
3while_lstm_cell_19_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_19_biasadd_readvariableop_resource:	���)while/lstm_cell_19/BiasAdd/ReadVariableOp�(while/lstm_cell_19/MatMul/ReadVariableOp�*while/lstm_cell_19/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@t
while/lstm_cell_19/TanhTanh!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@q
while/lstm_cell_19/Tanh_1Tanhwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
9sequential_6_bidirectional_5_forward_rnn_while_cond_46746n
jsequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_loop_countert
psequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_maximum_iterations>
:sequential_6_bidirectional_5_forward_rnn_while_placeholder@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_1@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_2@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_3@
<sequential_6_bidirectional_5_forward_rnn_while_placeholder_4p
lsequential_6_bidirectional_5_forward_rnn_while_less_sequential_6_bidirectional_5_forward_rnn_strided_slice_1�
�sequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_cond_46746___redundant_placeholder0�
�sequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_cond_46746___redundant_placeholder1�
�sequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_cond_46746___redundant_placeholder2�
�sequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_cond_46746___redundant_placeholder3�
�sequential_6_bidirectional_5_forward_rnn_while_sequential_6_bidirectional_5_forward_rnn_while_cond_46746___redundant_placeholder4;
7sequential_6_bidirectional_5_forward_rnn_while_identity
�
3sequential_6/bidirectional_5/forward_rnn/while/LessLess:sequential_6_bidirectional_5_forward_rnn_while_placeholderlsequential_6_bidirectional_5_forward_rnn_while_less_sequential_6_bidirectional_5_forward_rnn_strided_slice_1*
T0*
_output_shapes
: �
7sequential_6/bidirectional_5/forward_rnn/while/IdentityIdentity7sequential_6/bidirectional_5/forward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "{
7sequential_6_bidirectional_5_forward_rnn_while_identity@sequential_6/bidirectional_5/forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�v
�
-bidirectional_5_backward_rnn_while_body_49051V
Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter\
Xbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations2
.bidirectional_5_backward_rnn_while_placeholder4
0bidirectional_5_backward_rnn_while_placeholder_14
0bidirectional_5_backward_rnn_while_placeholder_24
0bidirectional_5_backward_rnn_while_placeholder_34
0bidirectional_5_backward_rnn_while_placeholder_4U
Qbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1_0�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0c
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�e
Rbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�`
Qbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�/
+bidirectional_5_backward_rnn_while_identity1
-bidirectional_5_backward_rnn_while_identity_11
-bidirectional_5_backward_rnn_while_identity_21
-bidirectional_5_backward_rnn_while_identity_31
-bidirectional_5_backward_rnn_while_identity_41
-bidirectional_5_backward_rnn_while_identity_51
-bidirectional_5_backward_rnn_while_identity_6S
Obidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensora
Nbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�c
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�^
Obidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Tbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0.bidirectional_5_backward_rnn_while_placeholder]bidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Vbidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Hbidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0.bidirectional_5_backward_rnn_while_placeholder_bidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpPbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
6bidirectional_5/backward_rnn/while/lstm_cell_19/MatMulMatMulMbidirectional_5/backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Mbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpRbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
8bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1MatMul0bidirectional_5_backward_rnn_while_placeholder_3Obidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3bidirectional_5/backward_rnn/while/lstm_cell_19/addAddV2@bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul:product:0Bbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpQbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
7bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAddBiasAdd7bidirectional_5/backward_rnn/while/lstm_cell_19/add:z:0Nbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?bidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
5bidirectional_5/backward_rnn/while/lstm_cell_19/splitSplitHbidirectional_5/backward_rnn/while/lstm_cell_19/split/split_dim:output:0@bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
7bidirectional_5/backward_rnn/while/lstm_cell_19/SigmoidSigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/while/lstm_cell_19/mulMul=bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_1:y:00bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
4bidirectional_5/backward_rnn/while/lstm_cell_19/TanhTanh>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1Mul;bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid:y:08bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/add_1AddV27bidirectional_5/backward_rnn/while/lstm_cell_19/mul:z:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid>bidirectional_5/backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
6bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1Tanh9bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2Mul=bidirectional_5/backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0:bidirectional_5/backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
1bidirectional_5/backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
'bidirectional_5/backward_rnn/while/TileTileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0:bidirectional_5/backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
+bidirectional_5/backward_rnn/while/SelectV2SelectV20bidirectional_5/backward_rnn/while/Tile:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:00bidirectional_5_backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)bidirectional_5/backward_rnn/while/Tile_1TileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0<bidirectional_5/backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
3bidirectional_5/backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)bidirectional_5/backward_rnn/while/Tile_2TileObidirectional_5/backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0<bidirectional_5/backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
-bidirectional_5/backward_rnn/while/SelectV2_1SelectV22bidirectional_5/backward_rnn/while/Tile_1:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/mul_2:z:00bidirectional_5_backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/SelectV2_2SelectV22bidirectional_5/backward_rnn/while/Tile_2:output:09bidirectional_5/backward_rnn/while/lstm_cell_19/add_1:z:00bidirectional_5_backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Gbidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0bidirectional_5_backward_rnn_while_placeholder_1.bidirectional_5_backward_rnn_while_placeholder4bidirectional_5/backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���j
(bidirectional_5/backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
&bidirectional_5/backward_rnn/while/addAddV2.bidirectional_5_backward_rnn_while_placeholder1bidirectional_5/backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: l
*bidirectional_5/backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
(bidirectional_5/backward_rnn/while/add_1AddV2Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter3bidirectional_5/backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
+bidirectional_5/backward_rnn/while/IdentityIdentity,bidirectional_5/backward_rnn/while/add_1:z:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_1IdentityXbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_2Identity*bidirectional_5/backward_rnn/while/add:z:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_3IdentityWbidirectional_5/backward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*
_output_shapes
: �
-bidirectional_5/backward_rnn/while/Identity_4Identity4bidirectional_5/backward_rnn/while/SelectV2:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/Identity_5Identity6bidirectional_5/backward_rnn/while/SelectV2_1:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/while/Identity_6Identity6bidirectional_5/backward_rnn/while/SelectV2_2:output:0(^bidirectional_5/backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
'bidirectional_5/backward_rnn/while/NoOpNoOpG^bidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpF^bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpH^bidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Obidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1Qbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_strided_slice_1_0"c
+bidirectional_5_backward_rnn_while_identity4bidirectional_5/backward_rnn/while/Identity:output:0"g
-bidirectional_5_backward_rnn_while_identity_16bidirectional_5/backward_rnn/while/Identity_1:output:0"g
-bidirectional_5_backward_rnn_while_identity_26bidirectional_5/backward_rnn/while/Identity_2:output:0"g
-bidirectional_5_backward_rnn_while_identity_36bidirectional_5/backward_rnn/while/Identity_3:output:0"g
-bidirectional_5_backward_rnn_while_identity_46bidirectional_5/backward_rnn/while/Identity_4:output:0"g
-bidirectional_5_backward_rnn_while_identity_56bidirectional_5/backward_rnn/while/Identity_5:output:0"g
-bidirectional_5_backward_rnn_while_identity_66bidirectional_5/backward_rnn/while/Identity_6:output:0"�
Obidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceQbidirectional_5_backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
Pbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceRbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
Nbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resourcePbidirectional_5_backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor�bidirectional_5_backward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor�bidirectional_5_backward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Fbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpFbidirectional_5/backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Ebidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpEbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Gbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpGbidirectional_5/backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�"
�
while_body_47688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_47712_0:	�-
while_lstm_cell_19_47714_0:	@�)
while_lstm_cell_19_47716_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_47712:	�+
while_lstm_cell_19_47714:	@�'
while_lstm_cell_19_47716:	���*while/lstm_cell_19/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_47712_0while_lstm_cell_19_47714_0while_lstm_cell_19_47716_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47619�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@�
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_19_47712while_lstm_cell_19_47712_0"6
while_lstm_cell_19_47714while_lstm_cell_19_47714_0"6
while_lstm_cell_19_47716while_lstm_cell_19_47716_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_47121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47121___redundant_placeholder03
/while_while_cond_47121___redundant_placeholder13
/while_while_cond_47121___redundant_placeholder23
/while_while_cond_47121___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
,__inference_backward_rnn_layer_call_fn_50631
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_backward_rnn_layer_call_and_return_conditional_losses_47556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
+__inference_forward_rnn_layer_call_fn_50320
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_forward_rnn_layer_call_and_return_conditional_losses_47388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_47487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47487___redundant_placeholder03
/while_while_cond_47487___redundant_placeholder13
/while_while_cond_47487___redundant_placeholder23
/while_while_cond_47487___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�	
,bidirectional_5_forward_rnn_while_cond_49238T
Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counterZ
Vbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations1
-bidirectional_5_forward_rnn_while_placeholder3
/bidirectional_5_forward_rnn_while_placeholder_13
/bidirectional_5_forward_rnn_while_placeholder_23
/bidirectional_5_forward_rnn_while_placeholder_33
/bidirectional_5_forward_rnn_while_placeholder_4V
Rbidirectional_5_forward_rnn_while_less_bidirectional_5_forward_rnn_strided_slice_1k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_49238___redundant_placeholder0k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_49238___redundant_placeholder1k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_49238___redundant_placeholder2k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_49238___redundant_placeholder3k
gbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_cond_49238___redundant_placeholder4.
*bidirectional_5_forward_rnn_while_identity
�
&bidirectional_5/forward_rnn/while/LessLess-bidirectional_5_forward_rnn_while_placeholderRbidirectional_5_forward_rnn_while_less_bidirectional_5_forward_rnn_strided_slice_1*
T0*
_output_shapes
: �
*bidirectional_5/forward_rnn/while/IdentityIdentity*bidirectional_5/forward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "a
*bidirectional_5_forward_rnn_while_identity3bidirectional_5/forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
backward_rnn_while_cond_498226
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_48
4backward_rnn_while_less_backward_rnn_strided_slice_1M
Ibackward_rnn_while_backward_rnn_while_cond_49822___redundant_placeholder0M
Ibackward_rnn_while_backward_rnn_while_cond_49822___redundant_placeholder1M
Ibackward_rnn_while_backward_rnn_while_cond_49822___redundant_placeholder2M
Ibackward_rnn_while_backward_rnn_while_cond_49822___redundant_placeholder3M
Ibackward_rnn_while_backward_rnn_while_cond_49822___redundant_placeholder4
backward_rnn_while_identity
�
backward_rnn/while/LessLessbackward_rnn_while_placeholder4backward_rnn_while_less_backward_rnn_strided_slice_1*
T0*
_output_shapes
: e
backward_rnn/while/IdentityIdentitybackward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51142

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51012

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
+__inference_forward_rnn_layer_call_fn_50309
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_forward_rnn_layer_call_and_return_conditional_losses_47190o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
'__inference_dense_6_layer_call_fn_50288

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_48160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51044

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
��
�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_49926

inputs
mask
J
7forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�L
9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�G
8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�K
8backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�M
:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�H
9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�
identity��0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�backward_rnn/while�/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�forward_rnn/whileG
forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:i
forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_sliceStridedSliceforward_rnn/Shape:output:0(forward_rnn/strided_slice/stack:output:0*forward_rnn/strided_slice/stack_1:output:0*forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/mulMul"forward_rnn/strided_slice:output:0 forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: [
forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�}
forward_rnn/zeros/LessLessforward_rnn/zeros/mul:z:0!forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: \
forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/packedPack"forward_rnn/strided_slice:output:0#forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zerosFill!forward_rnn/zeros/packed:output:0 forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@[
forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/mulMul"forward_rnn/strided_slice:output:0"forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ]
forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
forward_rnn/zeros_1/LessLessforward_rnn/zeros_1/mul:z:0#forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ^
forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/packedPack"forward_rnn/strided_slice:output:0%forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zeros_1Fill#forward_rnn/zeros_1/packed:output:0"forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@o
forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose	Transposeinputs#forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������\
forward_rnn/Shape_1Shapeforward_rnn/transpose:y:0*
T0*
_output_shapes
:k
!forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_1StridedSliceforward_rnn/Shape_1:output:0*forward_rnn/strided_slice_1/stack:output:0,forward_rnn/strided_slice_1/stack_1:output:0,forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_1	Transposemask%forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������r
'forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2TensorListReserve0forward_rnn/TensorArrayV2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Aforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_rnn/transpose:y:0Jforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_2StridedSliceforward_rnn/transpose:y:0*forward_rnn/strided_slice_2/stack:output:0,forward_rnn/strided_slice_2/stack_1:output:0,forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp7forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
forward_rnn/lstm_cell_19/MatMulMatMul$forward_rnn/strided_slice_2:output:06forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
!forward_rnn/lstm_cell_19/MatMul_1MatMulforward_rnn/zeros:output:08forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_rnn/lstm_cell_19/addAddV2)forward_rnn/lstm_cell_19/MatMul:product:0+forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 forward_rnn/lstm_cell_19/BiasAddBiasAdd forward_rnn/lstm_cell_19/add:z:07forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/lstm_cell_19/splitSplit1forward_rnn/lstm_cell_19/split/split_dim:output:0)forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
 forward_rnn/lstm_cell_19/SigmoidSigmoid'forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid'forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mulMul&forward_rnn/lstm_cell_19/Sigmoid_1:y:0forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/TanhTanh'forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_1Mul$forward_rnn/lstm_cell_19/Sigmoid:y:0!forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/add_1AddV2 forward_rnn/lstm_cell_19/mul:z:0"forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid'forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@}
forward_rnn/lstm_cell_19/Tanh_1Tanh"forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_2Mul&forward_rnn/lstm_cell_19/Sigmoid_2:y:0#forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@z
)forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
forward_rnn/TensorArrayV2_1TensorListReserve2forward_rnn/TensorArrayV2_1/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2_2TensorListReserve2forward_rnn/TensorArrayV2_2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Cforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorforward_rnn/transpose_1:y:0Lforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���y
forward_rnn/zeros_like	ZerosLike"forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@o
$forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_rnn/whileWhile'forward_rnn/while/loop_counter:output:0-forward_rnn/while/maximum_iterations:output:0forward_rnn/time:output:0$forward_rnn/TensorArrayV2_1:handle:0forward_rnn/zeros_like:y:0forward_rnn/zeros:output:0forward_rnn/zeros_1:output:0$forward_rnn/strided_slice_1:output:0Cforward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07forward_rnn_lstm_cell_19_matmul_readvariableop_resource9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *(
body R
forward_rnn_while_body_49648*(
cond R
forward_rnn_while_cond_49647*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
<forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
.forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackforward_rnn/while:output:3Eforward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0t
!forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_3StridedSlice7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0*forward_rnn/strided_slice_3/stack:output:0,forward_rnn/strided_slice_3/stack_1:output:0,forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskq
forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_2	Transpose7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0%forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@H
backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:j
 backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_sliceStridedSlicebackward_rnn/Shape:output:0)backward_rnn/strided_slice/stack:output:0+backward_rnn/strided_slice/stack_1:output:0+backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/mulMul#backward_rnn/strided_slice:output:0!backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: \
backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros/LessLessbackward_rnn/zeros/mul:z:0"backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/packedPack#backward_rnn/strided_slice:output:0$backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zerosFill"backward_rnn/zeros/packed:output:0!backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@\
backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/mulMul#backward_rnn/strided_slice:output:0#backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ^
backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros_1/LessLessbackward_rnn/zeros_1/mul:z:0$backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: _
backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/packedPack#backward_rnn/strided_slice:output:0&backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zeros_1Fill$backward_rnn/zeros_1/packed:output:0#backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@p
backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose	Transposeinputs$backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
backward_rnn/Shape_1Shapebackward_rnn/transpose:y:0*
T0*
_output_shapes
:l
"backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_1StridedSlicebackward_rnn/Shape_1:output:0+backward_rnn/strided_slice_1/stack:output:0-backward_rnn/strided_slice_1/stack_1:output:0-backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_1	Transposemask&backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������s
(backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2TensorListReserve1backward_rnn/TensorArrayV2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���e
backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2	ReverseV2backward_rnn/transpose:y:0$backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Bbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorbackward_rnn/ReverseV2:output:0Kbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_2StridedSlicebackward_rnn/transpose:y:0+backward_rnn/strided_slice_2/stack:output:0-backward_rnn/strided_slice_2/stack_1:output:0-backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp8backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 backward_rnn/lstm_cell_19/MatMulMatMul%backward_rnn/strided_slice_2:output:07backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
"backward_rnn/lstm_cell_19/MatMul_1MatMulbackward_rnn/zeros:output:09backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_rnn/lstm_cell_19/addAddV2*backward_rnn/lstm_cell_19/MatMul:product:0,backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!backward_rnn/lstm_cell_19/BiasAddBiasAdd!backward_rnn/lstm_cell_19/add:z:08backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/lstm_cell_19/splitSplit2backward_rnn/lstm_cell_19/split/split_dim:output:0*backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
!backward_rnn/lstm_cell_19/SigmoidSigmoid(backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid(backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mulMul'backward_rnn/lstm_cell_19/Sigmoid_1:y:0backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/TanhTanh(backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_1Mul%backward_rnn/lstm_cell_19/Sigmoid:y:0"backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/add_1AddV2!backward_rnn/lstm_cell_19/mul:z:0#backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid(backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@
 backward_rnn/lstm_cell_19/Tanh_1Tanh#backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_2Mul'backward_rnn/lstm_cell_19/Sigmoid_2:y:0$backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@{
*backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
backward_rnn/TensorArrayV2_1TensorListReserve3backward_rnn/TensorArrayV2_1/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2_1	ReverseV2backward_rnn/transpose_1:y:0&backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:���������u
*backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2_2TensorListReserve3backward_rnn/TensorArrayV2_2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Dbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor!backward_rnn/ReverseV2_1:output:0Mbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���{
backward_rnn/zeros_like	ZerosLike#backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@p
%backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_rnn/whileWhile(backward_rnn/while/loop_counter:output:0.backward_rnn/while/maximum_iterations:output:0backward_rnn/time:output:0%backward_rnn/TensorArrayV2_1:handle:0backward_rnn/zeros_like:y:0backward_rnn/zeros:output:0backward_rnn/zeros_1:output:0%backward_rnn/strided_slice_1:output:0Dbackward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:08backward_rnn_lstm_cell_19_matmul_readvariableop_resource:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *)
body!R
backward_rnn_while_body_49823*)
cond!R
backward_rnn_while_cond_49822*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
=backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackbackward_rnn/while:output:3Fbackward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0u
"backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_3StridedSlice8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0+backward_rnn/strided_slice_3/stack:output:0-backward_rnn/strided_slice_3/stack_1:output:0-backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskr
backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_2	Transpose8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0&backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2$forward_rnn/strided_slice_3:output:0%backward_rnn/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp1^backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0^backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2^backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^backward_rnn/while0^forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/^forward_rnn/lstm_cell_19/MatMul/ReadVariableOp1^forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^forward_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 2d
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2b
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2f
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2(
backward_rnn/whilebackward_rnn/while2b
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2`
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2d
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2&
forward_rnn/whileforward_rnn/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�

�
/__inference_bidirectional_5_layer_call_fn_49573

inputs
mask

unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48571p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�
�
,__inference_lstm_cell_19_layer_call_fn_51078

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�	
�
,__inference_sequential_6_layer_call_fn_48795

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_48640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_48705
custom_embedding_7_input(
bidirectional_5_48686:	�(
bidirectional_5_48688:	@�$
bidirectional_5_48690:	�(
bidirectional_5_48692:	�(
bidirectional_5_48694:	@�$
bidirectional_5_48696:	� 
dense_6_48699:	�
dense_6_48701:
identity��'bidirectional_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
"custom_embedding_7/PartitionedCallPartitionedCallcustom_embedding_7_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779a
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreatercustom_embedding_7_input%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall+custom_embedding_7/PartitionedCall:output:0custom_embedding_7/Greater:z:0bidirectional_5_48686bidirectional_5_48688bidirectional_5_48690bidirectional_5_48692bidirectional_5_48694bidirectional_5_48696*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48136�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_6_48699dense_6_48701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_48160w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input
�7
�
while_body_50711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	�F
3while_lstm_cell_19_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_19_biasadd_readvariableop_resource:	���)while/lstm_cell_19/BiasAdd/ReadVariableOp�(while/lstm_cell_19/MatMul/ReadVariableOp�*while/lstm_cell_19/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@t
while/lstm_cell_19/TanhTanh!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@q
while/lstm_cell_19/Tanh_1Tanhwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
forward_rnn_while_cond_500004
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_46
2forward_rnn_while_less_forward_rnn_strided_slice_1K
Gforward_rnn_while_forward_rnn_while_cond_50000___redundant_placeholder0K
Gforward_rnn_while_forward_rnn_while_cond_50000___redundant_placeholder1K
Gforward_rnn_while_forward_rnn_while_cond_50000___redundant_placeholder2K
Gforward_rnn_while_forward_rnn_while_cond_50000___redundant_placeholder3K
Gforward_rnn_while_forward_rnn_while_cond_50000___redundant_placeholder4
forward_rnn_while_identity
�
forward_rnn/while/LessLessforward_rnn_while_placeholder2forward_rnn_while_less_forward_rnn_strided_slice_1*
T0*
_output_shapes
: c
forward_rnn/while/IdentityIdentityforward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_48640

inputs(
bidirectional_5_48621:	�(
bidirectional_5_48623:	@�$
bidirectional_5_48625:	�(
bidirectional_5_48627:	�(
bidirectional_5_48629:	@�$
bidirectional_5_48631:	� 
dense_6_48634:	�
dense_6_48636:
identity��'bidirectional_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
"custom_embedding_7/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779a
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreaterinputs%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall+custom_embedding_7/PartitionedCall:output:0custom_embedding_7/Greater:z:0bidirectional_5_48621bidirectional_5_48623bidirectional_5_48625bidirectional_5_48627bidirectional_5_48629bidirectional_5_48631*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48571�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_6_48634dense_6_48636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_48160w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�^
�
backward_rnn_while_body_498236
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_45
1backward_rnn_while_backward_rnn_strided_slice_1_0q
mbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0u
qbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0S
@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�U
Bbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�P
Abackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
backward_rnn_while_identity!
backward_rnn_while_identity_1!
backward_rnn_while_identity_2!
backward_rnn_while_identity_3!
backward_rnn_while_identity_4!
backward_rnn_while_identity_5!
backward_rnn_while_identity_63
/backward_rnn_while_backward_rnn_strided_slice_1o
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensors
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorQ
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�S
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�N
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Dbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0backward_rnn_while_placeholderMbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Fbackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0backward_rnn_while_placeholderObackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&backward_rnn/while/lstm_cell_19/MatMulMatMul=backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
(backward_rnn/while/lstm_cell_19/MatMul_1MatMul backward_rnn_while_placeholder_3?backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#backward_rnn/while/lstm_cell_19/addAddV20backward_rnn/while/lstm_cell_19/MatMul:product:02backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'backward_rnn/while/lstm_cell_19/BiasAddBiasAdd'backward_rnn/while/lstm_cell_19/add:z:0>backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%backward_rnn/while/lstm_cell_19/splitSplit8backward_rnn/while/lstm_cell_19/split/split_dim:output:00backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
'backward_rnn/while/lstm_cell_19/SigmoidSigmoid.backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid.backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
#backward_rnn/while/lstm_cell_19/mulMul-backward_rnn/while/lstm_cell_19/Sigmoid_1:y:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
$backward_rnn/while/lstm_cell_19/TanhTanh.backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_1Mul+backward_rnn/while/lstm_cell_19/Sigmoid:y:0(backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/add_1AddV2'backward_rnn/while/lstm_cell_19/mul:z:0)backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid.backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
&backward_rnn/while/lstm_cell_19/Tanh_1Tanh)backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_2Mul-backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0*backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@r
!backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/TileTile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2SelectV2 backward_rnn/while/Tile:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@t
#backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_1Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������t
#backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_2Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2_1SelectV2"backward_rnn/while/Tile_1:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
backward_rnn/while/SelectV2_2SelectV2"backward_rnn/while/Tile_2:output:0)backward_rnn/while/lstm_cell_19/add_1:z:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
7backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem backward_rnn_while_placeholder_1backward_rnn_while_placeholder$backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Z
backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/addAddV2backward_rnn_while_placeholder!backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: \
backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/add_1AddV22backward_rnn_while_backward_rnn_while_loop_counter#backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_rnn/while/IdentityIdentitybackward_rnn/while/add_1:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_1Identity8backward_rnn_while_backward_rnn_while_maximum_iterations^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_2Identitybackward_rnn/while/add:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_3IdentityGbackward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_4Identity$backward_rnn/while/SelectV2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_5Identity&backward_rnn/while/SelectV2_1:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_6Identity&backward_rnn/while/SelectV2_2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/NoOpNoOp7^backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6^backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp8^backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/backward_rnn_while_backward_rnn_strided_slice_11backward_rnn_while_backward_rnn_strided_slice_1_0"C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0"G
backward_rnn_while_identity_1&backward_rnn/while/Identity_1:output:0"G
backward_rnn_while_identity_2&backward_rnn/while/Identity_2:output:0"G
backward_rnn_while_identity_3&backward_rnn/while/Identity_3:output:0"G
backward_rnn_while_identity_4&backward_rnn/while/Identity_4:output:0"G
backward_rnn_while_identity_5&backward_rnn/while/Identity_5:output:0"G
backward_rnn_while_identity_6&backward_rnn/while/Identity_6:output:0"�
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensormbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2p
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2n
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2r
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�>
�
G__inference_backward_rnn_layer_call_and_return_conditional_losses_47556

inputs%
lstm_cell_19_47475:	�%
lstm_cell_19_47477:	@�!
lstm_cell_19_47479:	�
identity��$lstm_cell_19/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_47475lstm_cell_19_47477lstm_cell_19_47479*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47474n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_47475lstm_cell_19_47477lstm_cell_19_47479*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_47488*
condR
while_cond_47487*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
,__inference_backward_rnn_layer_call_fn_50642
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_backward_rnn_layer_call_and_return_conditional_losses_47756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
,__inference_lstm_cell_19_layer_call_fn_50963

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47108o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47108

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:���������@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:���������@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:���������@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:���������@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
__inference__traced_save_51189
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableopN
Jsavev2_bidirectional_5_forward_rnn_lstm_cell_19_kernel_read_readvariableopX
Tsavev2_bidirectional_5_forward_rnn_lstm_cell_19_recurrent_kernel_read_readvariableopL
Hsavev2_bidirectional_5_forward_rnn_lstm_cell_19_bias_read_readvariableopO
Ksavev2_bidirectional_5_backward_rnn_lstm_cell_19_kernel_read_readvariableopY
Usavev2_bidirectional_5_backward_rnn_lstm_cell_19_recurrent_kernel_read_readvariableopM
Isavev2_bidirectional_5_backward_rnn_lstm_cell_19_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableopJsavev2_bidirectional_5_forward_rnn_lstm_cell_19_kernel_read_readvariableopTsavev2_bidirectional_5_forward_rnn_lstm_cell_19_recurrent_kernel_read_readvariableopHsavev2_bidirectional_5_forward_rnn_lstm_cell_19_bias_read_readvariableopKsavev2_bidirectional_5_backward_rnn_lstm_cell_19_kernel_read_readvariableopUsavev2_bidirectional_5_backward_rnn_lstm_cell_19_recurrent_kernel_read_readvariableopIsavev2_bidirectional_5_backward_rnn_lstm_cell_19_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*b
_input_shapesQ
O: :	�::	�:	@�:�:	�:	@�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	@�:!

_output_shapes	
:�:%!

_output_shapes
:	�:%!

_output_shapes
:	@�:!

_output_shapes	
:�:	

_output_shapes
: 
�
�	
-bidirectional_5_backward_rnn_while_cond_49415V
Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter\
Xbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations2
.bidirectional_5_backward_rnn_while_placeholder4
0bidirectional_5_backward_rnn_while_placeholder_14
0bidirectional_5_backward_rnn_while_placeholder_24
0bidirectional_5_backward_rnn_while_placeholder_34
0bidirectional_5_backward_rnn_while_placeholder_4X
Tbidirectional_5_backward_rnn_while_less_bidirectional_5_backward_rnn_strided_slice_1m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49415___redundant_placeholder0m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49415___redundant_placeholder1m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49415___redundant_placeholder2m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49415___redundant_placeholder3m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49415___redundant_placeholder4/
+bidirectional_5_backward_rnn_while_identity
�
'bidirectional_5/backward_rnn/while/LessLess.bidirectional_5_backward_rnn_while_placeholderTbidirectional_5_backward_rnn_while_less_bidirectional_5_backward_rnn_strided_slice_1*
T0*
_output_shapes
: �
+bidirectional_5/backward_rnn/while/IdentityIdentity+bidirectional_5/backward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "c
+bidirectional_5_backward_rnn_while_identity4bidirectional_5/backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�Q
�
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50794
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	�@
-lstm_cell_19_matmul_1_readvariableop_resource:	@�;
,lstm_cell_19_biasadd_readvariableop_resource:	�
identity��#lstm_cell_19/BiasAdd/ReadVariableOp�"lstm_cell_19/MatMul/ReadVariableOp�$lstm_cell_19/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@h
lstm_cell_19/TanhTanhlstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@|
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@e
lstm_cell_19/Tanh_1Tanhlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_50711*
condR
while_cond_50710*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�\
�
forward_rnn_while_body_500014
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_43
/forward_rnn_while_forward_rnn_strided_slice_1_0o
kforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0s
oforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0R
?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�T
Aforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�O
@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
forward_rnn_while_identity 
forward_rnn_while_identity_1 
forward_rnn_while_identity_2 
forward_rnn_while_identity_3 
forward_rnn_while_identity_4 
forward_rnn_while_identity_5 
forward_rnn_while_identity_61
-forward_rnn_while_forward_rnn_strided_slice_1m
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorq
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensorP
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�R
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�M
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Cforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0forward_rnn_while_placeholderLforward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Eforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemoforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0forward_rnn_while_placeholderNforward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
%forward_rnn/while/lstm_cell_19/MatMulMatMul<forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
'forward_rnn/while/lstm_cell_19/MatMul_1MatMulforward_rnn_while_placeholder_3>forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"forward_rnn/while/lstm_cell_19/addAddV2/forward_rnn/while/lstm_cell_19/MatMul:product:01forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&forward_rnn/while/lstm_cell_19/BiasAddBiasAdd&forward_rnn/while/lstm_cell_19/add:z:0=forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$forward_rnn/while/lstm_cell_19/splitSplit7forward_rnn/while/lstm_cell_19/split/split_dim:output:0/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
&forward_rnn/while/lstm_cell_19/SigmoidSigmoid-forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid-forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
"forward_rnn/while/lstm_cell_19/mulMul,forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
#forward_rnn/while/lstm_cell_19/TanhTanh-forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_1Mul*forward_rnn/while/lstm_cell_19/Sigmoid:y:0'forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/add_1AddV2&forward_rnn/while/lstm_cell_19/mul:z:0(forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
(forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid-forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
%forward_rnn/while/lstm_cell_19/Tanh_1Tanh(forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
$forward_rnn/while/lstm_cell_19/mul_2Mul,forward_rnn/while/lstm_cell_19/Sigmoid_2:y:0)forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@q
 forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/TileTile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0)forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2SelectV2forward_rnn/while/Tile:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@s
"forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_1Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������s
"forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
forward_rnn/while/Tile_2Tile>forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0+forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
forward_rnn/while/SelectV2_1SelectV2!forward_rnn/while/Tile_1:output:0(forward_rnn/while/lstm_cell_19/mul_2:z:0forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
forward_rnn/while/SelectV2_2SelectV2!forward_rnn/while/Tile_2:output:0(forward_rnn/while/lstm_cell_19/add_1:z:0forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
6forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemforward_rnn_while_placeholder_1forward_rnn_while_placeholder#forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Y
forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/addAddV2forward_rnn_while_placeholder forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: [
forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/while/add_1AddV20forward_rnn_while_forward_rnn_while_loop_counter"forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: }
forward_rnn/while/IdentityIdentityforward_rnn/while/add_1:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_1Identity6forward_rnn_while_forward_rnn_while_maximum_iterations^forward_rnn/while/NoOp*
T0*
_output_shapes
: }
forward_rnn/while/Identity_2Identityforward_rnn/while/add:z:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_3IdentityFforward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_rnn/while/NoOp*
T0*
_output_shapes
: �
forward_rnn/while/Identity_4Identity#forward_rnn/while/SelectV2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_5Identity%forward_rnn/while/SelectV2_1:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/Identity_6Identity%forward_rnn/while/SelectV2_2:output:0^forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
forward_rnn/while/NoOpNoOp6^forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5^forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp7^forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "`
-forward_rnn_while_forward_rnn_strided_slice_1/forward_rnn_while_forward_rnn_strided_slice_1_0"A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0"E
forward_rnn_while_identity_1%forward_rnn/while/Identity_1:output:0"E
forward_rnn_while_identity_2%forward_rnn/while/Identity_2:output:0"E
forward_rnn_while_identity_3%forward_rnn/while/Identity_3:output:0"E
forward_rnn_while_identity_4%forward_rnn/while/Identity_4:output:0"E
forward_rnn_while_identity_5%forward_rnn/while/Identity_5:output:0"E
forward_rnn_while_identity_6%forward_rnn/while/Identity_6:output:0"�
>forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource@forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
?forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceAforward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
=forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource?forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
mforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensoroforward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
iforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensorkforward_rnn_while_tensorarrayv2read_tensorlistgetitem_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2n
5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp5forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2l
4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp4forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2p
6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp6forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
i
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_49537

inputs
identityN
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��d
GreaterGreaterinputsGreater/y:output:0*
T0*+
_output_shapes
:���������q
SqueezeSqueezeGreater:z:0*
T0
*'
_output_shapes
:���������*
squeeze_dims

���������R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
backward_rnn_while_cond_480326
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_48
4backward_rnn_while_less_backward_rnn_strided_slice_1M
Ibackward_rnn_while_backward_rnn_while_cond_48032___redundant_placeholder0M
Ibackward_rnn_while_backward_rnn_while_cond_48032___redundant_placeholder1M
Ibackward_rnn_while_backward_rnn_while_cond_48032___redundant_placeholder2M
Ibackward_rnn_while_backward_rnn_while_cond_48032___redundant_placeholder3M
Ibackward_rnn_while_backward_rnn_while_cond_48032___redundant_placeholder4
backward_rnn_while_identity
�
backward_rnn/while/LessLessbackward_rnn_while_placeholder4backward_rnn_while_less_backward_rnn_strided_slice_1*
T0*
_output_shapes
: e
backward_rnn/while/IdentityIdentitybackward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
while_cond_50536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50536___redundant_placeholder03
/while_while_cond_50536___redundant_placeholder13
/while_while_cond_50536___redundant_placeholder23
/while_while_cond_50536___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�	
�
,__inference_sequential_6_layer_call_fn_48774

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_48167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�	
-bidirectional_5_backward_rnn_while_cond_49050V
Rbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_loop_counter\
Xbidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_maximum_iterations2
.bidirectional_5_backward_rnn_while_placeholder4
0bidirectional_5_backward_rnn_while_placeholder_14
0bidirectional_5_backward_rnn_while_placeholder_24
0bidirectional_5_backward_rnn_while_placeholder_34
0bidirectional_5_backward_rnn_while_placeholder_4X
Tbidirectional_5_backward_rnn_while_less_bidirectional_5_backward_rnn_strided_slice_1m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49050___redundant_placeholder0m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49050___redundant_placeholder1m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49050___redundant_placeholder2m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49050___redundant_placeholder3m
ibidirectional_5_backward_rnn_while_bidirectional_5_backward_rnn_while_cond_49050___redundant_placeholder4/
+bidirectional_5_backward_rnn_while_identity
�
'bidirectional_5/backward_rnn/while/LessLess.bidirectional_5_backward_rnn_while_placeholderTbidirectional_5_backward_rnn_while_less_bidirectional_5_backward_rnn_strided_slice_1*
T0*
_output_shapes
: �
+bidirectional_5/backward_rnn/while/IdentityIdentity+bidirectional_5/backward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "c
+bidirectional_5_backward_rnn_while_identity4bidirectional_5/backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
N
2__inference_custom_embedding_7_layer_call_fn_49530

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�O
�
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50620
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	�@
-lstm_cell_19_matmul_1_readvariableop_resource:	@�;
,lstm_cell_19_biasadd_readvariableop_resource:	�
identity��#lstm_cell_19/BiasAdd/ReadVariableOp�"lstm_cell_19/MatMul/ReadVariableOp�$lstm_cell_19/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@h
lstm_cell_19/TanhTanhlstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@|
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@e
lstm_cell_19/Tanh_1Tanhlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_50537*
condR
while_cond_50536*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
forward_rnn_while_cond_496474
0forward_rnn_while_forward_rnn_while_loop_counter:
6forward_rnn_while_forward_rnn_while_maximum_iterations!
forward_rnn_while_placeholder#
forward_rnn_while_placeholder_1#
forward_rnn_while_placeholder_2#
forward_rnn_while_placeholder_3#
forward_rnn_while_placeholder_46
2forward_rnn_while_less_forward_rnn_strided_slice_1K
Gforward_rnn_while_forward_rnn_while_cond_49647___redundant_placeholder0K
Gforward_rnn_while_forward_rnn_while_cond_49647___redundant_placeholder1K
Gforward_rnn_while_forward_rnn_while_cond_49647___redundant_placeholder2K
Gforward_rnn_while_forward_rnn_while_cond_49647___redundant_placeholder3K
Gforward_rnn_while_forward_rnn_while_cond_49647___redundant_placeholder4
forward_rnn_while_identity
�
forward_rnn/while/LessLessforward_rnn_while_placeholder2forward_rnn_while_less_forward_rnn_strided_slice_1*
T0*
_output_shapes
: c
forward_rnn/while/IdentityIdentityforward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "A
forward_rnn_while_identity#forward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�^
�
backward_rnn_while_body_480336
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_45
1backward_rnn_while_backward_rnn_strided_slice_1_0q
mbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0u
qbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0S
@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�U
Bbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�P
Abackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
backward_rnn_while_identity!
backward_rnn_while_identity_1!
backward_rnn_while_identity_2!
backward_rnn_while_identity_3!
backward_rnn_while_identity_4!
backward_rnn_while_identity_5!
backward_rnn_while_identity_63
/backward_rnn_while_backward_rnn_strided_slice_1o
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensors
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorQ
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�S
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�N
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Dbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0backward_rnn_while_placeholderMbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Fbackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0backward_rnn_while_placeholderObackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&backward_rnn/while/lstm_cell_19/MatMulMatMul=backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
(backward_rnn/while/lstm_cell_19/MatMul_1MatMul backward_rnn_while_placeholder_3?backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#backward_rnn/while/lstm_cell_19/addAddV20backward_rnn/while/lstm_cell_19/MatMul:product:02backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'backward_rnn/while/lstm_cell_19/BiasAddBiasAdd'backward_rnn/while/lstm_cell_19/add:z:0>backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%backward_rnn/while/lstm_cell_19/splitSplit8backward_rnn/while/lstm_cell_19/split/split_dim:output:00backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
'backward_rnn/while/lstm_cell_19/SigmoidSigmoid.backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid.backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
#backward_rnn/while/lstm_cell_19/mulMul-backward_rnn/while/lstm_cell_19/Sigmoid_1:y:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
$backward_rnn/while/lstm_cell_19/TanhTanh.backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_1Mul+backward_rnn/while/lstm_cell_19/Sigmoid:y:0(backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/add_1AddV2'backward_rnn/while/lstm_cell_19/mul:z:0)backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid.backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
&backward_rnn/while/lstm_cell_19/Tanh_1Tanh)backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_2Mul-backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0*backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@r
!backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/TileTile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2SelectV2 backward_rnn/while/Tile:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@t
#backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_1Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������t
#backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_2Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2_1SelectV2"backward_rnn/while/Tile_1:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
backward_rnn/while/SelectV2_2SelectV2"backward_rnn/while/Tile_2:output:0)backward_rnn/while/lstm_cell_19/add_1:z:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
7backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem backward_rnn_while_placeholder_1backward_rnn_while_placeholder$backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Z
backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/addAddV2backward_rnn_while_placeholder!backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: \
backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/add_1AddV22backward_rnn_while_backward_rnn_while_loop_counter#backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_rnn/while/IdentityIdentitybackward_rnn/while/add_1:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_1Identity8backward_rnn_while_backward_rnn_while_maximum_iterations^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_2Identitybackward_rnn/while/add:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_3IdentityGbackward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_4Identity$backward_rnn/while/SelectV2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_5Identity&backward_rnn/while/SelectV2_1:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_6Identity&backward_rnn/while/SelectV2_2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/NoOpNoOp7^backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6^backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp8^backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/backward_rnn_while_backward_rnn_strided_slice_11backward_rnn_while_backward_rnn_strided_slice_1_0"C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0"G
backward_rnn_while_identity_1&backward_rnn/while/Identity_1:output:0"G
backward_rnn_while_identity_2&backward_rnn/while/Identity_2:output:0"G
backward_rnn_while_identity_3&backward_rnn/while/Identity_3:output:0"G
backward_rnn_while_identity_4&backward_rnn/while/Identity_4:output:0"G
backward_rnn_while_identity_5&backward_rnn/while/Identity_5:output:0"G
backward_rnn_while_identity_6&backward_rnn/while/Identity_6:output:0"�
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensormbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2p
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2n
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2r
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
backward_rnn_while_cond_484676
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_48
4backward_rnn_while_less_backward_rnn_strided_slice_1M
Ibackward_rnn_while_backward_rnn_while_cond_48467___redundant_placeholder0M
Ibackward_rnn_while_backward_rnn_while_cond_48467___redundant_placeholder1M
Ibackward_rnn_while_backward_rnn_while_cond_48467___redundant_placeholder2M
Ibackward_rnn_while_backward_rnn_while_cond_48467___redundant_placeholder3M
Ibackward_rnn_while_backward_rnn_while_cond_48467___redundant_placeholder4
backward_rnn_while_identity
�
backward_rnn/while/LessLessbackward_rnn_while_placeholder4backward_rnn_while_less_backward_rnn_strided_slice_1*
T0*
_output_shapes
: e
backward_rnn/while/IdentityIdentitybackward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
i
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779

inputs
identityN
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��d
GreaterGreaterinputsGreater/y:output:0*
T0*+
_output_shapes
:���������q
SqueezeSqueezeGreater:z:0*
T0
*'
_output_shapes
:���������*
squeeze_dims

���������R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_48730
custom_embedding_7_input(
bidirectional_5_48711:	�(
bidirectional_5_48713:	@�$
bidirectional_5_48715:	�(
bidirectional_5_48717:	�(
bidirectional_5_48719:	@�$
bidirectional_5_48721:	� 
dense_6_48724:	�
dense_6_48726:
identity��'bidirectional_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
"custom_embedding_7/PartitionedCallPartitionedCallcustom_embedding_7_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779a
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreatercustom_embedding_7_input%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall+custom_embedding_7/PartitionedCall:output:0custom_embedding_7/Greater:z:0bidirectional_5_48711bidirectional_5_48713bidirectional_5_48715bidirectional_5_48717bidirectional_5_48719bidirectional_5_48721*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48571�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_6_48724dense_6_48726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_48160w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input
�
�
while_cond_47319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47319___redundant_placeholder03
/while_while_cond_47319___redundant_placeholder13
/while_while_cond_47319___redundant_placeholder23
/while_while_cond_47319___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_50862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50862___redundant_placeholder03
/while_while_cond_50862___redundant_placeholder13
/while_while_cond_50862___redundant_placeholder23
/while_while_cond_50862___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
��
�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48571

inputs
mask
J
7forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�L
9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�G
8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�K
8backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�M
:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�H
9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�
identity��0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�backward_rnn/while�/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�forward_rnn/whileG
forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:i
forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_sliceStridedSliceforward_rnn/Shape:output:0(forward_rnn/strided_slice/stack:output:0*forward_rnn/strided_slice/stack_1:output:0*forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/mulMul"forward_rnn/strided_slice:output:0 forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: [
forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�}
forward_rnn/zeros/LessLessforward_rnn/zeros/mul:z:0!forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: \
forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros/packedPack"forward_rnn/strided_slice:output:0#forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zerosFill!forward_rnn/zeros/packed:output:0 forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@[
forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/mulMul"forward_rnn/strided_slice:output:0"forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ]
forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
forward_rnn/zeros_1/LessLessforward_rnn/zeros_1/mul:z:0#forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ^
forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
forward_rnn/zeros_1/packedPack"forward_rnn/strided_slice:output:0%forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_rnn/zeros_1Fill#forward_rnn/zeros_1/packed:output:0"forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@o
forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose	Transposeinputs#forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������\
forward_rnn/Shape_1Shapeforward_rnn/transpose:y:0*
T0*
_output_shapes
:k
!forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_1StridedSliceforward_rnn/Shape_1:output:0*forward_rnn/strided_slice_1/stack:output:0,forward_rnn/strided_slice_1/stack_1:output:0,forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_1	Transposemask%forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������r
'forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2TensorListReserve0forward_rnn/TensorArrayV2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Aforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_rnn/transpose:y:0Jforward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_2StridedSliceforward_rnn/transpose:y:0*forward_rnn/strided_slice_2/stack:output:0,forward_rnn/strided_slice_2/stack_1:output:0,forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp7forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
forward_rnn/lstm_cell_19/MatMulMatMul$forward_rnn/strided_slice_2:output:06forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
!forward_rnn/lstm_cell_19/MatMul_1MatMulforward_rnn/zeros:output:08forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_rnn/lstm_cell_19/addAddV2)forward_rnn/lstm_cell_19/MatMul:product:0+forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 forward_rnn/lstm_cell_19/BiasAddBiasAdd forward_rnn/lstm_cell_19/add:z:07forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_rnn/lstm_cell_19/splitSplit1forward_rnn/lstm_cell_19/split/split_dim:output:0)forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
 forward_rnn/lstm_cell_19/SigmoidSigmoid'forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid'forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mulMul&forward_rnn/lstm_cell_19/Sigmoid_1:y:0forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/TanhTanh'forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_1Mul$forward_rnn/lstm_cell_19/Sigmoid:y:0!forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/add_1AddV2 forward_rnn/lstm_cell_19/mul:z:0"forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
"forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid'forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@}
forward_rnn/lstm_cell_19/Tanh_1Tanh"forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
forward_rnn/lstm_cell_19/mul_2Mul&forward_rnn/lstm_cell_19/Sigmoid_2:y:0#forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@z
)forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
forward_rnn/TensorArrayV2_1TensorListReserve2forward_rnn/TensorArrayV2_1/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_rnn/TensorArrayV2_2TensorListReserve2forward_rnn/TensorArrayV2_2/element_shape:output:0$forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Cforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorforward_rnn/transpose_1:y:0Lforward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���y
forward_rnn/zeros_like	ZerosLike"forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@o
$forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_rnn/whileWhile'forward_rnn/while/loop_counter:output:0-forward_rnn/while/maximum_iterations:output:0forward_rnn/time:output:0$forward_rnn/TensorArrayV2_1:handle:0forward_rnn/zeros_like:y:0forward_rnn/zeros:output:0forward_rnn/zeros_1:output:0$forward_rnn/strided_slice_1:output:0Cforward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07forward_rnn_lstm_cell_19_matmul_readvariableop_resource9forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource8forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *(
body R
forward_rnn_while_body_48293*(
cond R
forward_rnn_while_cond_48292*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
<forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
.forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackforward_rnn/while:output:3Eforward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0t
!forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_rnn/strided_slice_3StridedSlice7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0*forward_rnn/strided_slice_3/stack:output:0,forward_rnn/strided_slice_3/stack_1:output:0,forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskq
forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_rnn/transpose_2	Transpose7forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0%forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@H
backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:j
 backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_sliceStridedSlicebackward_rnn/Shape:output:0)backward_rnn/strided_slice/stack:output:0+backward_rnn/strided_slice/stack_1:output:0+backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/mulMul#backward_rnn/strided_slice:output:0!backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: \
backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros/LessLessbackward_rnn/zeros/mul:z:0"backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros/packedPack#backward_rnn/strided_slice:output:0$backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zerosFill"backward_rnn/zeros/packed:output:0!backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@\
backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/mulMul#backward_rnn/strided_slice:output:0#backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: ^
backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
backward_rnn/zeros_1/LessLessbackward_rnn/zeros_1/mul:z:0$backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: _
backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
backward_rnn/zeros_1/packedPack#backward_rnn/strided_slice:output:0&backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_rnn/zeros_1Fill$backward_rnn/zeros_1/packed:output:0#backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@p
backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose	Transposeinputs$backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
backward_rnn/Shape_1Shapebackward_rnn/transpose:y:0*
T0*
_output_shapes
:l
"backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_1StridedSlicebackward_rnn/Shape_1:output:0+backward_rnn/strided_slice_1/stack:output:0-backward_rnn/strided_slice_1/stack_1:output:0-backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_1	Transposemask&backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:���������s
(backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2TensorListReserve1backward_rnn/TensorArrayV2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���e
backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2	ReverseV2backward_rnn/transpose:y:0$backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Bbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorbackward_rnn/ReverseV2:output:0Kbackward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_2StridedSlicebackward_rnn/transpose:y:0+backward_rnn/strided_slice_2/stack:output:0-backward_rnn/strided_slice_2/stack_1:output:0-backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp8backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 backward_rnn/lstm_cell_19/MatMulMatMul%backward_rnn/strided_slice_2:output:07backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
"backward_rnn/lstm_cell_19/MatMul_1MatMulbackward_rnn/zeros:output:09backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_rnn/lstm_cell_19/addAddV2*backward_rnn/lstm_cell_19/MatMul:product:0,backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!backward_rnn/lstm_cell_19/BiasAddBiasAdd!backward_rnn/lstm_cell_19/add:z:08backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/lstm_cell_19/splitSplit2backward_rnn/lstm_cell_19/split/split_dim:output:0*backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
!backward_rnn/lstm_cell_19/SigmoidSigmoid(backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid(backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mulMul'backward_rnn/lstm_cell_19/Sigmoid_1:y:0backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/TanhTanh(backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_1Mul%backward_rnn/lstm_cell_19/Sigmoid:y:0"backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/add_1AddV2!backward_rnn/lstm_cell_19/mul:z:0#backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
#backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid(backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@
 backward_rnn/lstm_cell_19/Tanh_1Tanh#backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
backward_rnn/lstm_cell_19/mul_2Mul'backward_rnn/lstm_cell_19/Sigmoid_2:y:0$backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@{
*backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
backward_rnn/TensorArrayV2_1TensorListReserve3backward_rnn/TensorArrayV2_1/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_rnn/ReverseV2_1	ReverseV2backward_rnn/transpose_1:y:0&backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:���������u
*backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_rnn/TensorArrayV2_2TensorListReserve3backward_rnn/TensorArrayV2_2/element_shape:output:0%backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Dbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor!backward_rnn/ReverseV2_1:output:0Mbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���{
backward_rnn/zeros_like	ZerosLike#backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@p
%backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_rnn/whileWhile(backward_rnn/while/loop_counter:output:0.backward_rnn/while/maximum_iterations:output:0backward_rnn/time:output:0%backward_rnn/TensorArrayV2_1:handle:0backward_rnn/zeros_like:y:0backward_rnn/zeros:output:0backward_rnn/zeros_1:output:0%backward_rnn/strided_slice_1:output:0Dbackward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:08backward_rnn_lstm_cell_19_matmul_readvariableop_resource:backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource9backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *)
body!R
backward_rnn_while_body_48468*)
cond!R
backward_rnn_while_cond_48467*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
=backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStackbackward_rnn/while:output:3Fbackward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0u
"backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_rnn/strided_slice_3StridedSlice8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0+backward_rnn/strided_slice_3/stack:output:0-backward_rnn/strided_slice_3/stack_1:output:0-backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maskr
backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_rnn/transpose_2	Transpose8backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0&backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2$forward_rnn/strided_slice_3:output:0%backward_rnn/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp1^backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0^backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2^backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^backward_rnn/while0^forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/^forward_rnn/lstm_cell_19/MatMul/ReadVariableOp1^forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp^forward_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������: : : : : : 2d
0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp0backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2b
/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2f
1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp1backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2(
backward_rnn/whilebackward_rnn/while2b
/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2`
.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp.forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2d
0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp0forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2&
forward_rnn/whileforward_rnn/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:QM
+
_output_shapes
:���������

_user_specified_namemask
�
�
:sequential_6_bidirectional_5_backward_rnn_while_cond_46923p
lsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_loop_counterv
rsequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_maximum_iterations?
;sequential_6_bidirectional_5_backward_rnn_while_placeholderA
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_1A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_2A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_3A
=sequential_6_bidirectional_5_backward_rnn_while_placeholder_4r
nsequential_6_bidirectional_5_backward_rnn_while_less_sequential_6_bidirectional_5_backward_rnn_strided_slice_1�
�sequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_cond_46923___redundant_placeholder0�
�sequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_cond_46923___redundant_placeholder1�
�sequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_cond_46923___redundant_placeholder2�
�sequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_cond_46923___redundant_placeholder3�
�sequential_6_bidirectional_5_backward_rnn_while_sequential_6_bidirectional_5_backward_rnn_while_cond_46923___redundant_placeholder4<
8sequential_6_bidirectional_5_backward_rnn_while_identity
�
4sequential_6/bidirectional_5/backward_rnn/while/LessLess;sequential_6_bidirectional_5_backward_rnn_while_placeholdernsequential_6_bidirectional_5_backward_rnn_while_less_sequential_6_bidirectional_5_backward_rnn_strided_slice_1*
T0*
_output_shapes
: �
8sequential_6/bidirectional_5/backward_rnn/while/IdentityIdentity8sequential_6/bidirectional_5/backward_rnn/while/Less:z:0*
T0
*
_output_shapes
: "}
8sequential_6_bidirectional_5_backward_rnn_while_identityAsequential_6/bidirectional_5/backward_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :���������@:���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�u
�
,bidirectional_5_forward_rnn_while_body_49239T
Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counterZ
Vbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations1
-bidirectional_5_forward_rnn_while_placeholder3
/bidirectional_5_forward_rnn_while_placeholder_13
/bidirectional_5_forward_rnn_while_placeholder_23
/bidirectional_5_forward_rnn_while_placeholder_33
/bidirectional_5_forward_rnn_while_placeholder_4S
Obidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1_0�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0b
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�d
Qbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�_
Pbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�.
*bidirectional_5_forward_rnn_while_identity0
,bidirectional_5_forward_rnn_while_identity_10
,bidirectional_5_forward_rnn_while_identity_20
,bidirectional_5_forward_rnn_while_identity_30
,bidirectional_5_forward_rnn_while_identity_40
,bidirectional_5_forward_rnn_while_identity_50
,bidirectional_5_forward_rnn_while_identity_6Q
Mbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor`
Mbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�b
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�]
Nbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Sbidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ebidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0-bidirectional_5_forward_rnn_while_placeholder\bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Ubidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0-bidirectional_5_forward_rnn_while_placeholder^bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpObidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
5bidirectional_5/forward_rnn/while/lstm_cell_19/MatMulMatMulLbidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Lbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpQbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
7bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1MatMul/bidirectional_5_forward_rnn_while_placeholder_3Nbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2bidirectional_5/forward_rnn/while/lstm_cell_19/addAddV2?bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul:product:0Abidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpPbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
6bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAddBiasAdd6bidirectional_5/forward_rnn/while/lstm_cell_19/add:z:0Mbidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>bidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
4bidirectional_5/forward_rnn/while/lstm_cell_19/splitSplitGbidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dim:output:0?bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
6bidirectional_5/forward_rnn/while/lstm_cell_19/SigmoidSigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
8bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/while/lstm_cell_19/mulMul<bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0/bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
3bidirectional_5/forward_rnn/while/lstm_cell_19/TanhTanh=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1Mul:bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid:y:07bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/add_1AddV26bidirectional_5/forward_rnn/while/lstm_cell_19/mul:z:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
8bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
5bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1Tanh8bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2Mul<bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2:y:09bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
0bidirectional_5/forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
&bidirectional_5/forward_rnn/while/TileTileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:09bidirectional_5/forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
*bidirectional_5/forward_rnn/while/SelectV2SelectV2/bidirectional_5/forward_rnn/while/Tile:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0/bidirectional_5_forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
(bidirectional_5/forward_rnn/while/Tile_1TileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0;bidirectional_5/forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
2bidirectional_5/forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
(bidirectional_5/forward_rnn/while/Tile_2TileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0;bidirectional_5/forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
,bidirectional_5/forward_rnn/while/SelectV2_1SelectV21bidirectional_5/forward_rnn/while/Tile_1:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0/bidirectional_5_forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/SelectV2_2SelectV21bidirectional_5/forward_rnn/while/Tile_2:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0/bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Fbidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/bidirectional_5_forward_rnn_while_placeholder_1-bidirectional_5_forward_rnn_while_placeholder3bidirectional_5/forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���i
'bidirectional_5/forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%bidirectional_5/forward_rnn/while/addAddV2-bidirectional_5_forward_rnn_while_placeholder0bidirectional_5/forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: k
)bidirectional_5/forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'bidirectional_5/forward_rnn/while/add_1AddV2Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counter2bidirectional_5/forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
*bidirectional_5/forward_rnn/while/IdentityIdentity+bidirectional_5/forward_rnn/while/add_1:z:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_1IdentityVbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_2Identity)bidirectional_5/forward_rnn/while/add:z:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_3IdentityVbidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_4Identity3bidirectional_5/forward_rnn/while/SelectV2:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/Identity_5Identity5bidirectional_5/forward_rnn/while/SelectV2_1:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/Identity_6Identity5bidirectional_5/forward_rnn/while/SelectV2_2:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
&bidirectional_5/forward_rnn/while/NoOpNoOpF^bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpE^bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpG^bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Mbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1Obidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1_0"a
*bidirectional_5_forward_rnn_while_identity3bidirectional_5/forward_rnn/while/Identity:output:0"e
,bidirectional_5_forward_rnn_while_identity_15bidirectional_5/forward_rnn/while/Identity_1:output:0"e
,bidirectional_5_forward_rnn_while_identity_25bidirectional_5/forward_rnn/while/Identity_2:output:0"e
,bidirectional_5_forward_rnn_while_identity_35bidirectional_5/forward_rnn/while/Identity_3:output:0"e
,bidirectional_5_forward_rnn_while_identity_45bidirectional_5/forward_rnn/while/Identity_4:output:0"e
,bidirectional_5_forward_rnn_while_identity_55bidirectional_5/forward_rnn/while/Identity_5:output:0"e
,bidirectional_5_forward_rnn_while_identity_65bidirectional_5/forward_rnn/while/Identity_6:output:0"�
Nbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourcePbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceQbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
Mbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resourceObidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpEbidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpDbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpFbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
��
�

G__inference_sequential_6_layer_call_and_return_conditional_losses_49525

inputsZ
Gbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�\
Ibidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�W
Hbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�[
Hbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�]
Jbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�X
Ibidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�5
'dense_6_biasadd_readvariableop_resource:
identity��@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�"bidirectional_5/backward_rnn/while�?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�!bidirectional_5/forward_rnn/while�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOpa
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreaterinputs%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
custom_embedding_7/SqueezeSqueezecustom_embedding_7/Greater:z:0*
T0
*'
_output_shapes
:���������*
squeeze_dims

���������W
!bidirectional_5/forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:y
/bidirectional_5/forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1bidirectional_5/forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1bidirectional_5/forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)bidirectional_5/forward_rnn/strided_sliceStridedSlice*bidirectional_5/forward_rnn/Shape:output:08bidirectional_5/forward_rnn/strided_slice/stack:output:0:bidirectional_5/forward_rnn/strided_slice/stack_1:output:0:bidirectional_5/forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'bidirectional_5/forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
%bidirectional_5/forward_rnn/zeros/mulMul2bidirectional_5/forward_rnn/strided_slice:output:00bidirectional_5/forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: k
(bidirectional_5/forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
&bidirectional_5/forward_rnn/zeros/LessLess)bidirectional_5/forward_rnn/zeros/mul:z:01bidirectional_5/forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: l
*bidirectional_5/forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
(bidirectional_5/forward_rnn/zeros/packedPack2bidirectional_5/forward_rnn/strided_slice:output:03bidirectional_5/forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'bidirectional_5/forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!bidirectional_5/forward_rnn/zerosFill1bidirectional_5/forward_rnn/zeros/packed:output:00bidirectional_5/forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@k
)bidirectional_5/forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
'bidirectional_5/forward_rnn/zeros_1/mulMul2bidirectional_5/forward_rnn/strided_slice:output:02bidirectional_5/forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: m
*bidirectional_5/forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
(bidirectional_5/forward_rnn/zeros_1/LessLess+bidirectional_5/forward_rnn/zeros_1/mul:z:03bidirectional_5/forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: n
,bidirectional_5/forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
*bidirectional_5/forward_rnn/zeros_1/packedPack2bidirectional_5/forward_rnn/strided_slice:output:05bidirectional_5/forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:n
)bidirectional_5/forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#bidirectional_5/forward_rnn/zeros_1Fill3bidirectional_5/forward_rnn/zeros_1/packed:output:02bidirectional_5/forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@
*bidirectional_5/forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%bidirectional_5/forward_rnn/transpose	Transposeinputs3bidirectional_5/forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������|
#bidirectional_5/forward_rnn/Shape_1Shape)bidirectional_5/forward_rnn/transpose:y:0*
T0*
_output_shapes
:{
1bidirectional_5/forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional_5/forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_1StridedSlice,bidirectional_5/forward_rnn/Shape_1:output:0:bidirectional_5/forward_rnn/strided_slice_1/stack:output:0<bidirectional_5/forward_rnn/strided_slice_1/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*bidirectional_5/forward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
&bidirectional_5/forward_rnn/ExpandDims
ExpandDims#custom_embedding_7/Squeeze:output:03bidirectional_5/forward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
,bidirectional_5/forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'bidirectional_5/forward_rnn/transpose_1	Transpose/bidirectional_5/forward_rnn/ExpandDims:output:05bidirectional_5/forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
7bidirectional_5/forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)bidirectional_5/forward_rnn/TensorArrayV2TensorListReserve@bidirectional_5/forward_rnn/TensorArrayV2/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Cbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)bidirectional_5/forward_rnn/transpose:y:0Zbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1bidirectional_5/forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional_5/forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_2StridedSlice)bidirectional_5/forward_rnn/transpose:y:0:bidirectional_5/forward_rnn/strided_slice_2/stack:output:0<bidirectional_5/forward_rnn/strided_slice_2/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpGbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
/bidirectional_5/forward_rnn/lstm_cell_19/MatMulMatMul4bidirectional_5/forward_rnn/strided_slice_2:output:0Fbidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpIbidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
1bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1MatMul*bidirectional_5/forward_rnn/zeros:output:0Hbidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,bidirectional_5/forward_rnn/lstm_cell_19/addAddV29bidirectional_5/forward_rnn/lstm_cell_19/MatMul:product:0;bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpHbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0bidirectional_5/forward_rnn/lstm_cell_19/BiasAddBiasAdd0bidirectional_5/forward_rnn/lstm_cell_19/add:z:0Gbidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
8bidirectional_5/forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
.bidirectional_5/forward_rnn/lstm_cell_19/splitSplitAbidirectional_5/forward_rnn/lstm_cell_19/split/split_dim:output:09bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
0bidirectional_5/forward_rnn/lstm_cell_19/SigmoidSigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/lstm_cell_19/mulMul6bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1:y:0,bidirectional_5/forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
-bidirectional_5/forward_rnn/lstm_cell_19/TanhTanh7bidirectional_5/forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/mul_1Mul4bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid:y:01bidirectional_5/forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/add_1AddV20bidirectional_5/forward_rnn/lstm_cell_19/mul:z:02bidirectional_5/forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
/bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1Tanh2bidirectional_5/forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/mul_2Mul6bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2:y:03bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
+bidirectional_5/forward_rnn/TensorArrayV2_1TensorListReserveBbidirectional_5/forward_rnn/TensorArrayV2_1/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 bidirectional_5/forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : �
9bidirectional_5/forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
+bidirectional_5/forward_rnn/TensorArrayV2_2TensorListReserveBbidirectional_5/forward_rnn/TensorArrayV2_2/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Sbidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ebidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor+bidirectional_5/forward_rnn/transpose_1:y:0\bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
&bidirectional_5/forward_rnn/zeros_like	ZerosLike2bidirectional_5/forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@
4bidirectional_5/forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.bidirectional_5/forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

!bidirectional_5/forward_rnn/whileWhile7bidirectional_5/forward_rnn/while/loop_counter:output:0=bidirectional_5/forward_rnn/while/maximum_iterations:output:0)bidirectional_5/forward_rnn/time:output:04bidirectional_5/forward_rnn/TensorArrayV2_1:handle:0*bidirectional_5/forward_rnn/zeros_like:y:0*bidirectional_5/forward_rnn/zeros:output:0,bidirectional_5/forward_rnn/zeros_1:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0Sbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ubidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Gbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resourceIbidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceHbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *8
body0R.
,bidirectional_5_forward_rnn_while_body_49239*8
cond0R.
,bidirectional_5_forward_rnn_while_cond_49238*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Lbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
>bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack*bidirectional_5/forward_rnn/while:output:3Ubidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
1bidirectional_5/forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3bidirectional_5/forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_3StridedSliceGbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_5/forward_rnn/strided_slice_3/stack:output:0<bidirectional_5/forward_rnn/strided_slice_3/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
,bidirectional_5/forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'bidirectional_5/forward_rnn/transpose_2	TransposeGbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:05bidirectional_5/forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@X
"bidirectional_5/backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:z
0bidirectional_5/backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional_5/backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional_5/backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*bidirectional_5/backward_rnn/strided_sliceStridedSlice+bidirectional_5/backward_rnn/Shape:output:09bidirectional_5/backward_rnn/strided_slice/stack:output:0;bidirectional_5/backward_rnn/strided_slice/stack_1:output:0;bidirectional_5/backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(bidirectional_5/backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
&bidirectional_5/backward_rnn/zeros/mulMul3bidirectional_5/backward_rnn/strided_slice:output:01bidirectional_5/backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: l
)bidirectional_5/backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
'bidirectional_5/backward_rnn/zeros/LessLess*bidirectional_5/backward_rnn/zeros/mul:z:02bidirectional_5/backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: m
+bidirectional_5/backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
)bidirectional_5/backward_rnn/zeros/packedPack3bidirectional_5/backward_rnn/strided_slice:output:04bidirectional_5/backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(bidirectional_5/backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"bidirectional_5/backward_rnn/zerosFill2bidirectional_5/backward_rnn/zeros/packed:output:01bidirectional_5/backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@l
*bidirectional_5/backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
(bidirectional_5/backward_rnn/zeros_1/mulMul3bidirectional_5/backward_rnn/strided_slice:output:03bidirectional_5/backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: n
+bidirectional_5/backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
)bidirectional_5/backward_rnn/zeros_1/LessLess,bidirectional_5/backward_rnn/zeros_1/mul:z:04bidirectional_5/backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: o
-bidirectional_5/backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
+bidirectional_5/backward_rnn/zeros_1/packedPack3bidirectional_5/backward_rnn/strided_slice:output:06bidirectional_5/backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:o
*bidirectional_5/backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$bidirectional_5/backward_rnn/zeros_1Fill4bidirectional_5/backward_rnn/zeros_1/packed:output:03bidirectional_5/backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@�
+bidirectional_5/backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
&bidirectional_5/backward_rnn/transpose	Transposeinputs4bidirectional_5/backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������~
$bidirectional_5/backward_rnn/Shape_1Shape*bidirectional_5/backward_rnn/transpose:y:0*
T0*
_output_shapes
:|
2bidirectional_5/backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_1StridedSlice-bidirectional_5/backward_rnn/Shape_1:output:0;bidirectional_5/backward_rnn/strided_slice_1/stack:output:0=bidirectional_5/backward_rnn/strided_slice_1/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+bidirectional_5/backward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
'bidirectional_5/backward_rnn/ExpandDims
ExpandDims#custom_embedding_7/Squeeze:output:04bidirectional_5/backward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
-bidirectional_5/backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(bidirectional_5/backward_rnn/transpose_1	Transpose0bidirectional_5/backward_rnn/ExpandDims:output:06bidirectional_5/backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
8bidirectional_5/backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
*bidirectional_5/backward_rnn/TensorArrayV2TensorListReserveAbidirectional_5/backward_rnn/TensorArrayV2/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+bidirectional_5/backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
&bidirectional_5/backward_rnn/ReverseV2	ReverseV2*bidirectional_5/backward_rnn/transpose:y:04bidirectional_5/backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Rbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Dbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor/bidirectional_5/backward_rnn/ReverseV2:output:0[bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���|
2bidirectional_5/backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_2StridedSlice*bidirectional_5/backward_rnn/transpose:y:0;bidirectional_5/backward_rnn/strided_slice_2/stack:output:0=bidirectional_5/backward_rnn/strided_slice_2/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpHbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
0bidirectional_5/backward_rnn/lstm_cell_19/MatMulMatMul5bidirectional_5/backward_rnn/strided_slice_2:output:0Gbidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpJbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
2bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1MatMul+bidirectional_5/backward_rnn/zeros:output:0Ibidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-bidirectional_5/backward_rnn/lstm_cell_19/addAddV2:bidirectional_5/backward_rnn/lstm_cell_19/MatMul:product:0<bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpIbidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1bidirectional_5/backward_rnn/lstm_cell_19/BiasAddBiasAdd1bidirectional_5/backward_rnn/lstm_cell_19/add:z:0Hbidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9bidirectional_5/backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/bidirectional_5/backward_rnn/lstm_cell_19/splitSplitBbidirectional_5/backward_rnn/lstm_cell_19/split/split_dim:output:0:bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
1bidirectional_5/backward_rnn/lstm_cell_19/SigmoidSigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/lstm_cell_19/mulMul7bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1:y:0-bidirectional_5/backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/backward_rnn/lstm_cell_19/TanhTanh8bidirectional_5/backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/mul_1Mul5bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid:y:02bidirectional_5/backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/add_1AddV21bidirectional_5/backward_rnn/lstm_cell_19/mul:z:03bidirectional_5/backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
0bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1Tanh3bidirectional_5/backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/mul_2Mul7bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2:y:04bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
:bidirectional_5/backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
,bidirectional_5/backward_rnn/TensorArrayV2_1TensorListReserveCbidirectional_5/backward_rnn/TensorArrayV2_1/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
!bidirectional_5/backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : w
-bidirectional_5/backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
(bidirectional_5/backward_rnn/ReverseV2_1	ReverseV2,bidirectional_5/backward_rnn/transpose_1:y:06bidirectional_5/backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:����������
:bidirectional_5/backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
,bidirectional_5/backward_rnn/TensorArrayV2_2TensorListReserveCbidirectional_5/backward_rnn/TensorArrayV2_2/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Tbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor1bidirectional_5/backward_rnn/ReverseV2_1:output:0]bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
'bidirectional_5/backward_rnn/zeros_like	ZerosLike3bidirectional_5/backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������q
/bidirectional_5/backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

"bidirectional_5/backward_rnn/whileWhile8bidirectional_5/backward_rnn/while/loop_counter:output:0>bidirectional_5/backward_rnn/while/maximum_iterations:output:0*bidirectional_5/backward_rnn/time:output:05bidirectional_5/backward_rnn/TensorArrayV2_1:handle:0+bidirectional_5/backward_rnn/zeros_like:y:0+bidirectional_5/backward_rnn/zeros:output:0-bidirectional_5/backward_rnn/zeros_1:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0Tbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Hbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resourceJbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceIbidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *9
body1R/
-bidirectional_5_backward_rnn_while_body_49416*9
cond1R/
-bidirectional_5_backward_rnn_while_cond_49415*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Mbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
?bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack+bidirectional_5/backward_rnn/while:output:3Vbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
2bidirectional_5/backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������~
4bidirectional_5/backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_3StridedSliceHbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_5/backward_rnn/strided_slice_3/stack:output:0=bidirectional_5/backward_rnn/strided_slice_3/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
-bidirectional_5/backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(bidirectional_5/backward_rnn/transpose_2	TransposeHbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:06bidirectional_5/backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@]
bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
bidirectional_5/concatConcatV24bidirectional_5/forward_rnn/strided_slice_3:output:05bidirectional_5/backward_rnn/strided_slice_3:output:0$bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_6/MatMulMatMulbidirectional_5/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpA^bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp@^bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpB^bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp#^bidirectional_5/backward_rnn/while@^bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp?^bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpA^bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp"^bidirectional_5/forward_rnn/while^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2�
@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpAbidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2H
"bidirectional_5/backward_rnn/while"bidirectional_5/backward_rnn/while2�
?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2F
!bidirectional_5/forward_rnn/while!bidirectional_5/forward_rnn/while2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
F__inference_forward_rnn_layer_call_and_return_conditional_losses_47388

inputs%
lstm_cell_19_47307:	�%
lstm_cell_19_47309:	@�!
lstm_cell_19_47311:	�
identity��$lstm_cell_19/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_47307lstm_cell_19_47309lstm_cell_19_47311*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47253n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_47307lstm_cell_19_47309lstm_cell_19_47311*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_47320*
condR
while_cond_47319*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_47033
custom_embedding_7_inputg
Tsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�i
Vsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�d
Usequential_6_bidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�h
Usequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�j
Wsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�e
Vsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�F
3sequential_6_dense_6_matmul_readvariableop_resource:	�B
4sequential_6_dense_6_biasadd_readvariableop_resource:
identity��Msequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�Lsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�Nsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�/sequential_6/bidirectional_5/backward_rnn/while�Lsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�Ksequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�Msequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�.sequential_6/bidirectional_5/forward_rnn/while�+sequential_6/dense_6/BiasAdd/ReadVariableOp�*sequential_6/dense_6/MatMul/ReadVariableOpn
)sequential_6/custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
'sequential_6/custom_embedding_7/GreaterGreatercustom_embedding_7_input2sequential_6/custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
'sequential_6/custom_embedding_7/SqueezeSqueeze+sequential_6/custom_embedding_7/Greater:z:0*
T0
*'
_output_shapes
:���������*
squeeze_dims

���������v
.sequential_6/bidirectional_5/forward_rnn/ShapeShapecustom_embedding_7_input*
T0*
_output_shapes
:�
<sequential_6/bidirectional_5/forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_6/bidirectional_5/forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_6/bidirectional_5/forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_6/bidirectional_5/forward_rnn/strided_sliceStridedSlice7sequential_6/bidirectional_5/forward_rnn/Shape:output:0Esequential_6/bidirectional_5/forward_rnn/strided_slice/stack:output:0Gsequential_6/bidirectional_5/forward_rnn/strided_slice/stack_1:output:0Gsequential_6/bidirectional_5/forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4sequential_6/bidirectional_5/forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
2sequential_6/bidirectional_5/forward_rnn/zeros/mulMul?sequential_6/bidirectional_5/forward_rnn/strided_slice:output:0=sequential_6/bidirectional_5/forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: x
5sequential_6/bidirectional_5/forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
3sequential_6/bidirectional_5/forward_rnn/zeros/LessLess6sequential_6/bidirectional_5/forward_rnn/zeros/mul:z:0>sequential_6/bidirectional_5/forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: y
7sequential_6/bidirectional_5/forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
5sequential_6/bidirectional_5/forward_rnn/zeros/packedPack?sequential_6/bidirectional_5/forward_rnn/strided_slice:output:0@sequential_6/bidirectional_5/forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential_6/bidirectional_5/forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_6/bidirectional_5/forward_rnn/zerosFill>sequential_6/bidirectional_5/forward_rnn/zeros/packed:output:0=sequential_6/bidirectional_5/forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@x
6sequential_6/bidirectional_5/forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
4sequential_6/bidirectional_5/forward_rnn/zeros_1/mulMul?sequential_6/bidirectional_5/forward_rnn/strided_slice:output:0?sequential_6/bidirectional_5/forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: z
7sequential_6/bidirectional_5/forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
5sequential_6/bidirectional_5/forward_rnn/zeros_1/LessLess8sequential_6/bidirectional_5/forward_rnn/zeros_1/mul:z:0@sequential_6/bidirectional_5/forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: {
9sequential_6/bidirectional_5/forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
7sequential_6/bidirectional_5/forward_rnn/zeros_1/packedPack?sequential_6/bidirectional_5/forward_rnn/strided_slice:output:0Bsequential_6/bidirectional_5/forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:{
6sequential_6/bidirectional_5/forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0sequential_6/bidirectional_5/forward_rnn/zeros_1Fill@sequential_6/bidirectional_5/forward_rnn/zeros_1/packed:output:0?sequential_6/bidirectional_5/forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@�
7sequential_6/bidirectional_5/forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
2sequential_6/bidirectional_5/forward_rnn/transpose	Transposecustom_embedding_7_input@sequential_6/bidirectional_5/forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:����������
0sequential_6/bidirectional_5/forward_rnn/Shape_1Shape6sequential_6/bidirectional_5/forward_rnn/transpose:y:0*
T0*
_output_shapes
:�
>sequential_6/bidirectional_5/forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@sequential_6/bidirectional_5/forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_6/bidirectional_5/forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential_6/bidirectional_5/forward_rnn/strided_slice_1StridedSlice9sequential_6/bidirectional_5/forward_rnn/Shape_1:output:0Gsequential_6/bidirectional_5/forward_rnn/strided_slice_1/stack:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_1/stack_1:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_6/bidirectional_5/forward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
3sequential_6/bidirectional_5/forward_rnn/ExpandDims
ExpandDims0sequential_6/custom_embedding_7/Squeeze:output:0@sequential_6/bidirectional_5/forward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
9sequential_6/bidirectional_5/forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
4sequential_6/bidirectional_5/forward_rnn/transpose_1	Transpose<sequential_6/bidirectional_5/forward_rnn/ExpandDims:output:0Bsequential_6/bidirectional_5/forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
Dsequential_6/bidirectional_5/forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
6sequential_6/bidirectional_5/forward_rnn/TensorArrayV2TensorListReserveMsequential_6/bidirectional_5/forward_rnn/TensorArrayV2/element_shape:output:0Asequential_6/bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
^sequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Psequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor6sequential_6/bidirectional_5/forward_rnn/transpose:y:0gsequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>sequential_6/bidirectional_5/forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@sequential_6/bidirectional_5/forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_6/bidirectional_5/forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential_6/bidirectional_5/forward_rnn/strided_slice_2StridedSlice6sequential_6/bidirectional_5/forward_rnn/transpose:y:0Gsequential_6/bidirectional_5/forward_rnn/strided_slice_2/stack:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_2/stack_1:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Ksequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpTsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
<sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMulMatMulAsequential_6/bidirectional_5/forward_rnn/strided_slice_2:output:0Ssequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Msequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpVsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
>sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1MatMul7sequential_6/bidirectional_5/forward_rnn/zeros:output:0Usequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/addAddV2Fsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul:product:0Hsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Lsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpUsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAddBiasAdd=sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/add:z:0Tsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Esequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/splitSplitNsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split/split_dim:output:0Fsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
=sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/SigmoidSigmoidDsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
?sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1SigmoidDsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
9sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mulMulCsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1:y:09sequential_6/bidirectional_5/forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
:sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/TanhTanhDsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
;sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mul_1MulAsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid:y:0>sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
;sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/add_1AddV2=sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mul:z:0?sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
?sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2SigmoidDsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
<sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1Tanh?sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
;sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mul_2MulCsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2:y:0@sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
Fsequential_6/bidirectional_5/forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
8sequential_6/bidirectional_5/forward_rnn/TensorArrayV2_1TensorListReserveOsequential_6/bidirectional_5/forward_rnn/TensorArrayV2_1/element_shape:output:0Asequential_6/bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
-sequential_6/bidirectional_5/forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : �
Fsequential_6/bidirectional_5/forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
8sequential_6/bidirectional_5/forward_rnn/TensorArrayV2_2TensorListReserveOsequential_6/bidirectional_5/forward_rnn/TensorArrayV2_2/element_shape:output:0Asequential_6/bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
`sequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Rsequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor8sequential_6/bidirectional_5/forward_rnn/transpose_1:y:0isequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
3sequential_6/bidirectional_5/forward_rnn/zeros_like	ZerosLike?sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@�
Asequential_6/bidirectional_5/forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������}
;sequential_6/bidirectional_5/forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
.sequential_6/bidirectional_5/forward_rnn/whileWhileDsequential_6/bidirectional_5/forward_rnn/while/loop_counter:output:0Jsequential_6/bidirectional_5/forward_rnn/while/maximum_iterations:output:06sequential_6/bidirectional_5/forward_rnn/time:output:0Asequential_6/bidirectional_5/forward_rnn/TensorArrayV2_1:handle:07sequential_6/bidirectional_5/forward_rnn/zeros_like:y:07sequential_6/bidirectional_5/forward_rnn/zeros:output:09sequential_6/bidirectional_5/forward_rnn/zeros_1:output:0Asequential_6/bidirectional_5/forward_rnn/strided_slice_1:output:0`sequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0bsequential_6/bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Tsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resourceVsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceUsequential_6_bidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *E
body=R;
9sequential_6_bidirectional_5_forward_rnn_while_body_46747*E
cond=R;
9sequential_6_bidirectional_5_forward_rnn_while_cond_46746*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Ysequential_6/bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
Ksequential_6/bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack7sequential_6/bidirectional_5/forward_rnn/while:output:3bsequential_6/bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
>sequential_6/bidirectional_5/forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
@sequential_6/bidirectional_5/forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
@sequential_6/bidirectional_5/forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential_6/bidirectional_5/forward_rnn/strided_slice_3StridedSliceTsequential_6/bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Gsequential_6/bidirectional_5/forward_rnn/strided_slice_3/stack:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_3/stack_1:output:0Isequential_6/bidirectional_5/forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
9sequential_6/bidirectional_5/forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
4sequential_6/bidirectional_5/forward_rnn/transpose_2	TransposeTsequential_6/bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Bsequential_6/bidirectional_5/forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@w
/sequential_6/bidirectional_5/backward_rnn/ShapeShapecustom_embedding_7_input*
T0*
_output_shapes
:�
=sequential_6/bidirectional_5/backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?sequential_6/bidirectional_5/backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_6/bidirectional_5/backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_6/bidirectional_5/backward_rnn/strided_sliceStridedSlice8sequential_6/bidirectional_5/backward_rnn/Shape:output:0Fsequential_6/bidirectional_5/backward_rnn/strided_slice/stack:output:0Hsequential_6/bidirectional_5/backward_rnn/strided_slice/stack_1:output:0Hsequential_6/bidirectional_5/backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5sequential_6/bidirectional_5/backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
3sequential_6/bidirectional_5/backward_rnn/zeros/mulMul@sequential_6/bidirectional_5/backward_rnn/strided_slice:output:0>sequential_6/bidirectional_5/backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: y
6sequential_6/bidirectional_5/backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
4sequential_6/bidirectional_5/backward_rnn/zeros/LessLess7sequential_6/bidirectional_5/backward_rnn/zeros/mul:z:0?sequential_6/bidirectional_5/backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: z
8sequential_6/bidirectional_5/backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
6sequential_6/bidirectional_5/backward_rnn/zeros/packedPack@sequential_6/bidirectional_5/backward_rnn/strided_slice:output:0Asequential_6/bidirectional_5/backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_6/bidirectional_5/backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
/sequential_6/bidirectional_5/backward_rnn/zerosFill?sequential_6/bidirectional_5/backward_rnn/zeros/packed:output:0>sequential_6/bidirectional_5/backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@y
7sequential_6/bidirectional_5/backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
5sequential_6/bidirectional_5/backward_rnn/zeros_1/mulMul@sequential_6/bidirectional_5/backward_rnn/strided_slice:output:0@sequential_6/bidirectional_5/backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: {
8sequential_6/bidirectional_5/backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
6sequential_6/bidirectional_5/backward_rnn/zeros_1/LessLess9sequential_6/bidirectional_5/backward_rnn/zeros_1/mul:z:0Asequential_6/bidirectional_5/backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: |
:sequential_6/bidirectional_5/backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
8sequential_6/bidirectional_5/backward_rnn/zeros_1/packedPack@sequential_6/bidirectional_5/backward_rnn/strided_slice:output:0Csequential_6/bidirectional_5/backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:|
7sequential_6/bidirectional_5/backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
1sequential_6/bidirectional_5/backward_rnn/zeros_1FillAsequential_6/bidirectional_5/backward_rnn/zeros_1/packed:output:0@sequential_6/bidirectional_5/backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@�
8sequential_6/bidirectional_5/backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
3sequential_6/bidirectional_5/backward_rnn/transpose	Transposecustom_embedding_7_inputAsequential_6/bidirectional_5/backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:����������
1sequential_6/bidirectional_5/backward_rnn/Shape_1Shape7sequential_6/bidirectional_5/backward_rnn/transpose:y:0*
T0*
_output_shapes
:�
?sequential_6/bidirectional_5/backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Asequential_6/bidirectional_5/backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential_6/bidirectional_5/backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_6/bidirectional_5/backward_rnn/strided_slice_1StridedSlice:sequential_6/bidirectional_5/backward_rnn/Shape_1:output:0Hsequential_6/bidirectional_5/backward_rnn/strided_slice_1/stack:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_1/stack_1:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8sequential_6/bidirectional_5/backward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
4sequential_6/bidirectional_5/backward_rnn/ExpandDims
ExpandDims0sequential_6/custom_embedding_7/Squeeze:output:0Asequential_6/bidirectional_5/backward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
:sequential_6/bidirectional_5/backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
5sequential_6/bidirectional_5/backward_rnn/transpose_1	Transpose=sequential_6/bidirectional_5/backward_rnn/ExpandDims:output:0Csequential_6/bidirectional_5/backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
Esequential_6/bidirectional_5/backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
7sequential_6/bidirectional_5/backward_rnn/TensorArrayV2TensorListReserveNsequential_6/bidirectional_5/backward_rnn/TensorArrayV2/element_shape:output:0Bsequential_6/bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
8sequential_6/bidirectional_5/backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
3sequential_6/bidirectional_5/backward_rnn/ReverseV2	ReverseV27sequential_6/bidirectional_5/backward_rnn/transpose:y:0Asequential_6/bidirectional_5/backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
_sequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Qsequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor<sequential_6/bidirectional_5/backward_rnn/ReverseV2:output:0hsequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
?sequential_6/bidirectional_5/backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Asequential_6/bidirectional_5/backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential_6/bidirectional_5/backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_6/bidirectional_5/backward_rnn/strided_slice_2StridedSlice7sequential_6/bidirectional_5/backward_rnn/transpose:y:0Hsequential_6/bidirectional_5/backward_rnn/strided_slice_2/stack:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_2/stack_1:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Lsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpUsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
=sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMulMatMulBsequential_6/bidirectional_5/backward_rnn/strided_slice_2:output:0Tsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Nsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpWsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
?sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1MatMul8sequential_6/bidirectional_5/backward_rnn/zeros:output:0Vsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
:sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/addAddV2Gsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul:product:0Isequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Msequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpVsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAddBiasAdd>sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/add:z:0Usequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Fsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
<sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/splitSplitOsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split/split_dim:output:0Gsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
>sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/SigmoidSigmoidEsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
@sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1SigmoidEsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
:sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mulMulDsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1:y:0:sequential_6/bidirectional_5/backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
;sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/TanhTanhEsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
<sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mul_1MulBsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid:y:0?sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
<sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/add_1AddV2>sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mul:z:0@sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
@sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2SigmoidEsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
=sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1Tanh@sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
<sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mul_2MulDsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2:y:0Asequential_6/bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
Gsequential_6/bidirectional_5/backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
9sequential_6/bidirectional_5/backward_rnn/TensorArrayV2_1TensorListReservePsequential_6/bidirectional_5/backward_rnn/TensorArrayV2_1/element_shape:output:0Bsequential_6/bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
.sequential_6/bidirectional_5/backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : �
:sequential_6/bidirectional_5/backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
5sequential_6/bidirectional_5/backward_rnn/ReverseV2_1	ReverseV29sequential_6/bidirectional_5/backward_rnn/transpose_1:y:0Csequential_6/bidirectional_5/backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:����������
Gsequential_6/bidirectional_5/backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
9sequential_6/bidirectional_5/backward_rnn/TensorArrayV2_2TensorListReservePsequential_6/bidirectional_5/backward_rnn/TensorArrayV2_2/element_shape:output:0Bsequential_6/bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
asequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ssequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor>sequential_6/bidirectional_5/backward_rnn/ReverseV2_1:output:0jsequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
4sequential_6/bidirectional_5/backward_rnn/zeros_like	ZerosLike@sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@�
Bsequential_6/bidirectional_5/backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������~
<sequential_6/bidirectional_5/backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
/sequential_6/bidirectional_5/backward_rnn/whileWhileEsequential_6/bidirectional_5/backward_rnn/while/loop_counter:output:0Ksequential_6/bidirectional_5/backward_rnn/while/maximum_iterations:output:07sequential_6/bidirectional_5/backward_rnn/time:output:0Bsequential_6/bidirectional_5/backward_rnn/TensorArrayV2_1:handle:08sequential_6/bidirectional_5/backward_rnn/zeros_like:y:08sequential_6/bidirectional_5/backward_rnn/zeros:output:0:sequential_6/bidirectional_5/backward_rnn/zeros_1:output:0Bsequential_6/bidirectional_5/backward_rnn/strided_slice_1:output:0asequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0csequential_6/bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Usequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resourceWsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceVsequential_6_bidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *F
body>R<
:sequential_6_bidirectional_5_backward_rnn_while_body_46924*F
cond>R<
:sequential_6_bidirectional_5_backward_rnn_while_cond_46923*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Zsequential_6/bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
Lsequential_6/bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack8sequential_6/bidirectional_5/backward_rnn/while:output:3csequential_6/bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
?sequential_6/bidirectional_5/backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Asequential_6/bidirectional_5/backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Asequential_6/bidirectional_5/backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_6/bidirectional_5/backward_rnn/strided_slice_3StridedSliceUsequential_6/bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Hsequential_6/bidirectional_5/backward_rnn/strided_slice_3/stack:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_3/stack_1:output:0Jsequential_6/bidirectional_5/backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
:sequential_6/bidirectional_5/backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
5sequential_6/bidirectional_5/backward_rnn/transpose_2	TransposeUsequential_6/bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Csequential_6/bidirectional_5/backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@j
(sequential_6/bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_6/bidirectional_5/concatConcatV2Asequential_6/bidirectional_5/forward_rnn/strided_slice_3:output:0Bsequential_6/bidirectional_5/backward_rnn/strided_slice_3:output:01sequential_6/bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
*sequential_6/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_6_dense_6_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_6/dense_6/MatMulMatMul,sequential_6/bidirectional_5/concat:output:02sequential_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_6/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_6/dense_6/BiasAddBiasAdd%sequential_6/dense_6/MatMul:product:03sequential_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%sequential_6/dense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpN^sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpM^sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpO^sequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp0^sequential_6/bidirectional_5/backward_rnn/whileM^sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpL^sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpN^sequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp/^sequential_6/bidirectional_5/forward_rnn/while,^sequential_6/dense_6/BiasAdd/ReadVariableOp+^sequential_6/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2�
Msequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpMsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
Lsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpLsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
Nsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpNsequential_6/bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2b
/sequential_6/bidirectional_5/backward_rnn/while/sequential_6/bidirectional_5/backward_rnn/while2�
Lsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpLsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
Ksequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpKsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
Msequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpMsequential_6/bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2`
.sequential_6/bidirectional_5/forward_rnn/while.sequential_6/bidirectional_5/forward_rnn/while2Z
+sequential_6/dense_6/BiasAdd/ReadVariableOp+sequential_6/dense_6/BiasAdd/ReadVariableOp2X
*sequential_6/dense_6/MatMul/ReadVariableOp*sequential_6/dense_6/MatMul/ReadVariableOp:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input
�	
�
#__inference_signature_wrapper_48753
custom_embedding_7_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcustom_embedding_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_47033o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input
�
�
,__inference_lstm_cell_19_layer_call_fn_51061

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47474o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�7
�
while_body_50537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	�F
3while_lstm_cell_19_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_19_biasadd_readvariableop_resource:	���)while/lstm_cell_19/BiasAdd/ReadVariableOp�(while/lstm_cell_19/MatMul/ReadVariableOp�*while/lstm_cell_19/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@t
while/lstm_cell_19/TanhTanh!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@q
while/lstm_cell_19/Tanh_1Tanhwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_lstm_cell_19_layer_call_fn_50980

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_47253o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�u
�
,bidirectional_5_forward_rnn_while_body_48874T
Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counterZ
Vbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations1
-bidirectional_5_forward_rnn_while_placeholder3
/bidirectional_5_forward_rnn_while_placeholder_13
/bidirectional_5_forward_rnn_while_placeholder_23
/bidirectional_5_forward_rnn_while_placeholder_33
/bidirectional_5_forward_rnn_while_placeholder_4S
Obidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1_0�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0b
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�d
Qbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�_
Pbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�.
*bidirectional_5_forward_rnn_while_identity0
,bidirectional_5_forward_rnn_while_identity_10
,bidirectional_5_forward_rnn_while_identity_20
,bidirectional_5_forward_rnn_while_identity_30
,bidirectional_5_forward_rnn_while_identity_40
,bidirectional_5_forward_rnn_while_identity_50
,bidirectional_5_forward_rnn_while_identity_6Q
Mbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor`
Mbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�b
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�]
Nbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Sbidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ebidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0-bidirectional_5_forward_rnn_while_placeholder\bidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Ubidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0-bidirectional_5_forward_rnn_while_placeholder^bidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpObidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
5bidirectional_5/forward_rnn/while/lstm_cell_19/MatMulMatMulLbidirectional_5/forward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Lbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpQbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
7bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1MatMul/bidirectional_5_forward_rnn_while_placeholder_3Nbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2bidirectional_5/forward_rnn/while/lstm_cell_19/addAddV2?bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul:product:0Abidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpPbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
6bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAddBiasAdd6bidirectional_5/forward_rnn/while/lstm_cell_19/add:z:0Mbidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>bidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
4bidirectional_5/forward_rnn/while/lstm_cell_19/splitSplitGbidirectional_5/forward_rnn/while/lstm_cell_19/split/split_dim:output:0?bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
6bidirectional_5/forward_rnn/while/lstm_cell_19/SigmoidSigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
8bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/while/lstm_cell_19/mulMul<bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_1:y:0/bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
3bidirectional_5/forward_rnn/while/lstm_cell_19/TanhTanh=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1Mul:bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid:y:07bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/add_1AddV26bidirectional_5/forward_rnn/while/lstm_cell_19/mul:z:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
8bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid=bidirectional_5/forward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
5bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1Tanh8bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
4bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2Mul<bidirectional_5/forward_rnn/while/lstm_cell_19/Sigmoid_2:y:09bidirectional_5/forward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
0bidirectional_5/forward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
&bidirectional_5/forward_rnn/while/TileTileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:09bidirectional_5/forward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
*bidirectional_5/forward_rnn/while/SelectV2SelectV2/bidirectional_5/forward_rnn/while/Tile:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0/bidirectional_5_forward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
(bidirectional_5/forward_rnn/while/Tile_1TileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0;bidirectional_5/forward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
2bidirectional_5/forward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
(bidirectional_5/forward_rnn/while/Tile_2TileNbidirectional_5/forward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0;bidirectional_5/forward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
,bidirectional_5/forward_rnn/while/SelectV2_1SelectV21bidirectional_5/forward_rnn/while/Tile_1:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/mul_2:z:0/bidirectional_5_forward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/SelectV2_2SelectV21bidirectional_5/forward_rnn/while/Tile_2:output:08bidirectional_5/forward_rnn/while/lstm_cell_19/add_1:z:0/bidirectional_5_forward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
Fbidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/bidirectional_5_forward_rnn_while_placeholder_1-bidirectional_5_forward_rnn_while_placeholder3bidirectional_5/forward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���i
'bidirectional_5/forward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%bidirectional_5/forward_rnn/while/addAddV2-bidirectional_5_forward_rnn_while_placeholder0bidirectional_5/forward_rnn/while/add/y:output:0*
T0*
_output_shapes
: k
)bidirectional_5/forward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'bidirectional_5/forward_rnn/while/add_1AddV2Pbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_loop_counter2bidirectional_5/forward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
*bidirectional_5/forward_rnn/while/IdentityIdentity+bidirectional_5/forward_rnn/while/add_1:z:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_1IdentityVbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_while_maximum_iterations'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_2Identity)bidirectional_5/forward_rnn/while/add:z:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_3IdentityVbidirectional_5/forward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*
_output_shapes
: �
,bidirectional_5/forward_rnn/while/Identity_4Identity3bidirectional_5/forward_rnn/while/SelectV2:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/Identity_5Identity5bidirectional_5/forward_rnn/while/SelectV2_1:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/while/Identity_6Identity5bidirectional_5/forward_rnn/while/SelectV2_2:output:0'^bidirectional_5/forward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
&bidirectional_5/forward_rnn/while/NoOpNoOpF^bidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpE^bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpG^bidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Mbidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1Obidirectional_5_forward_rnn_while_bidirectional_5_forward_rnn_strided_slice_1_0"a
*bidirectional_5_forward_rnn_while_identity3bidirectional_5/forward_rnn/while/Identity:output:0"e
,bidirectional_5_forward_rnn_while_identity_15bidirectional_5/forward_rnn/while/Identity_1:output:0"e
,bidirectional_5_forward_rnn_while_identity_25bidirectional_5/forward_rnn/while/Identity_2:output:0"e
,bidirectional_5_forward_rnn_while_identity_35bidirectional_5/forward_rnn/while/Identity_3:output:0"e
,bidirectional_5_forward_rnn_while_identity_45bidirectional_5/forward_rnn/while/Identity_4:output:0"e
,bidirectional_5_forward_rnn_while_identity_55bidirectional_5/forward_rnn/while/Identity_5:output:0"e
,bidirectional_5_forward_rnn_while_identity_65bidirectional_5/forward_rnn/while/Identity_6:output:0"�
Nbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourcePbidirectional_5_forward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
Obidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceQbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
Mbidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resourceObidirectional_5_forward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor�bidirectional_5_forward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor�bidirectional_5_forward_rnn_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2�
Ebidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpEbidirectional_5/forward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2�
Dbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpDbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2�
Fbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpFbidirectional_5/forward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
��
�

G__inference_sequential_6_layer_call_and_return_conditional_losses_49160

inputsZ
Gbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�\
Ibidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�W
Hbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�[
Hbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource:	�]
Jbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource:	@�X
Ibidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�5
'dense_6_biasadd_readvariableop_resource:
identity��@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp�Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�"bidirectional_5/backward_rnn/while�?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp�>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp�@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp�!bidirectional_5/forward_rnn/while�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOpa
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreaterinputs%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
custom_embedding_7/SqueezeSqueezecustom_embedding_7/Greater:z:0*
T0
*'
_output_shapes
:���������*
squeeze_dims

���������W
!bidirectional_5/forward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:y
/bidirectional_5/forward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1bidirectional_5/forward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1bidirectional_5/forward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)bidirectional_5/forward_rnn/strided_sliceStridedSlice*bidirectional_5/forward_rnn/Shape:output:08bidirectional_5/forward_rnn/strided_slice/stack:output:0:bidirectional_5/forward_rnn/strided_slice/stack_1:output:0:bidirectional_5/forward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'bidirectional_5/forward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
%bidirectional_5/forward_rnn/zeros/mulMul2bidirectional_5/forward_rnn/strided_slice:output:00bidirectional_5/forward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: k
(bidirectional_5/forward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
&bidirectional_5/forward_rnn/zeros/LessLess)bidirectional_5/forward_rnn/zeros/mul:z:01bidirectional_5/forward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: l
*bidirectional_5/forward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
(bidirectional_5/forward_rnn/zeros/packedPack2bidirectional_5/forward_rnn/strided_slice:output:03bidirectional_5/forward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'bidirectional_5/forward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!bidirectional_5/forward_rnn/zerosFill1bidirectional_5/forward_rnn/zeros/packed:output:00bidirectional_5/forward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@k
)bidirectional_5/forward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
'bidirectional_5/forward_rnn/zeros_1/mulMul2bidirectional_5/forward_rnn/strided_slice:output:02bidirectional_5/forward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: m
*bidirectional_5/forward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
(bidirectional_5/forward_rnn/zeros_1/LessLess+bidirectional_5/forward_rnn/zeros_1/mul:z:03bidirectional_5/forward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: n
,bidirectional_5/forward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
*bidirectional_5/forward_rnn/zeros_1/packedPack2bidirectional_5/forward_rnn/strided_slice:output:05bidirectional_5/forward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:n
)bidirectional_5/forward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#bidirectional_5/forward_rnn/zeros_1Fill3bidirectional_5/forward_rnn/zeros_1/packed:output:02bidirectional_5/forward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@
*bidirectional_5/forward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%bidirectional_5/forward_rnn/transpose	Transposeinputs3bidirectional_5/forward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������|
#bidirectional_5/forward_rnn/Shape_1Shape)bidirectional_5/forward_rnn/transpose:y:0*
T0*
_output_shapes
:{
1bidirectional_5/forward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional_5/forward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_1StridedSlice,bidirectional_5/forward_rnn/Shape_1:output:0:bidirectional_5/forward_rnn/strided_slice_1/stack:output:0<bidirectional_5/forward_rnn/strided_slice_1/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*bidirectional_5/forward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
&bidirectional_5/forward_rnn/ExpandDims
ExpandDims#custom_embedding_7/Squeeze:output:03bidirectional_5/forward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
,bidirectional_5/forward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'bidirectional_5/forward_rnn/transpose_1	Transpose/bidirectional_5/forward_rnn/ExpandDims:output:05bidirectional_5/forward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
7bidirectional_5/forward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)bidirectional_5/forward_rnn/TensorArrayV2TensorListReserve@bidirectional_5/forward_rnn/TensorArrayV2/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Cbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)bidirectional_5/forward_rnn/transpose:y:0Zbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1bidirectional_5/forward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional_5/forward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_2StridedSlice)bidirectional_5/forward_rnn/transpose:y:0:bidirectional_5/forward_rnn/strided_slice_2/stack:output:0<bidirectional_5/forward_rnn/strided_slice_2/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpGbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
/bidirectional_5/forward_rnn/lstm_cell_19/MatMulMatMul4bidirectional_5/forward_rnn/strided_slice_2:output:0Fbidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpIbidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
1bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1MatMul*bidirectional_5/forward_rnn/zeros:output:0Hbidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,bidirectional_5/forward_rnn/lstm_cell_19/addAddV29bidirectional_5/forward_rnn/lstm_cell_19/MatMul:product:0;bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpHbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0bidirectional_5/forward_rnn/lstm_cell_19/BiasAddBiasAdd0bidirectional_5/forward_rnn/lstm_cell_19/add:z:0Gbidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
8bidirectional_5/forward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
.bidirectional_5/forward_rnn/lstm_cell_19/splitSplitAbidirectional_5/forward_rnn/lstm_cell_19/split/split_dim:output:09bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
0bidirectional_5/forward_rnn/lstm_cell_19/SigmoidSigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1Sigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
,bidirectional_5/forward_rnn/lstm_cell_19/mulMul6bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_1:y:0,bidirectional_5/forward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
-bidirectional_5/forward_rnn/lstm_cell_19/TanhTanh7bidirectional_5/forward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/mul_1Mul4bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid:y:01bidirectional_5/forward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/add_1AddV20bidirectional_5/forward_rnn/lstm_cell_19/mul:z:02bidirectional_5/forward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
2bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2Sigmoid7bidirectional_5/forward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
/bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1Tanh2bidirectional_5/forward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/forward_rnn/lstm_cell_19/mul_2Mul6bidirectional_5/forward_rnn/lstm_cell_19/Sigmoid_2:y:03bidirectional_5/forward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
9bidirectional_5/forward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
+bidirectional_5/forward_rnn/TensorArrayV2_1TensorListReserveBbidirectional_5/forward_rnn/TensorArrayV2_1/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 bidirectional_5/forward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : �
9bidirectional_5/forward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
+bidirectional_5/forward_rnn/TensorArrayV2_2TensorListReserveBbidirectional_5/forward_rnn/TensorArrayV2_2/element_shape:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Sbidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ebidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor+bidirectional_5/forward_rnn/transpose_1:y:0\bidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
&bidirectional_5/forward_rnn/zeros_like	ZerosLike2bidirectional_5/forward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@
4bidirectional_5/forward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.bidirectional_5/forward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

!bidirectional_5/forward_rnn/whileWhile7bidirectional_5/forward_rnn/while/loop_counter:output:0=bidirectional_5/forward_rnn/while/maximum_iterations:output:0)bidirectional_5/forward_rnn/time:output:04bidirectional_5/forward_rnn/TensorArrayV2_1:handle:0*bidirectional_5/forward_rnn/zeros_like:y:0*bidirectional_5/forward_rnn/zeros:output:0,bidirectional_5/forward_rnn/zeros_1:output:04bidirectional_5/forward_rnn/strided_slice_1:output:0Sbidirectional_5/forward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ubidirectional_5/forward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Gbidirectional_5_forward_rnn_lstm_cell_19_matmul_readvariableop_resourceIbidirectional_5_forward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceHbidirectional_5_forward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *8
body0R.
,bidirectional_5_forward_rnn_while_body_48874*8
cond0R.
,bidirectional_5_forward_rnn_while_cond_48873*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Lbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
>bidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack*bidirectional_5/forward_rnn/while:output:3Ubidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
1bidirectional_5/forward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3bidirectional_5/forward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional_5/forward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bidirectional_5/forward_rnn/strided_slice_3StridedSliceGbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_5/forward_rnn/strided_slice_3/stack:output:0<bidirectional_5/forward_rnn/strided_slice_3/stack_1:output:0<bidirectional_5/forward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
,bidirectional_5/forward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'bidirectional_5/forward_rnn/transpose_2	TransposeGbidirectional_5/forward_rnn/TensorArrayV2Stack/TensorListStack:tensor:05bidirectional_5/forward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@X
"bidirectional_5/backward_rnn/ShapeShapeinputs*
T0*
_output_shapes
:z
0bidirectional_5/backward_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional_5/backward_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional_5/backward_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*bidirectional_5/backward_rnn/strided_sliceStridedSlice+bidirectional_5/backward_rnn/Shape:output:09bidirectional_5/backward_rnn/strided_slice/stack:output:0;bidirectional_5/backward_rnn/strided_slice/stack_1:output:0;bidirectional_5/backward_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(bidirectional_5/backward_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
&bidirectional_5/backward_rnn/zeros/mulMul3bidirectional_5/backward_rnn/strided_slice:output:01bidirectional_5/backward_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: l
)bidirectional_5/backward_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
'bidirectional_5/backward_rnn/zeros/LessLess*bidirectional_5/backward_rnn/zeros/mul:z:02bidirectional_5/backward_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: m
+bidirectional_5/backward_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
)bidirectional_5/backward_rnn/zeros/packedPack3bidirectional_5/backward_rnn/strided_slice:output:04bidirectional_5/backward_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(bidirectional_5/backward_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"bidirectional_5/backward_rnn/zerosFill2bidirectional_5/backward_rnn/zeros/packed:output:01bidirectional_5/backward_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@l
*bidirectional_5/backward_rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@�
(bidirectional_5/backward_rnn/zeros_1/mulMul3bidirectional_5/backward_rnn/strided_slice:output:03bidirectional_5/backward_rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: n
+bidirectional_5/backward_rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :��
)bidirectional_5/backward_rnn/zeros_1/LessLess,bidirectional_5/backward_rnn/zeros_1/mul:z:04bidirectional_5/backward_rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: o
-bidirectional_5/backward_rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
+bidirectional_5/backward_rnn/zeros_1/packedPack3bidirectional_5/backward_rnn/strided_slice:output:06bidirectional_5/backward_rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:o
*bidirectional_5/backward_rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$bidirectional_5/backward_rnn/zeros_1Fill4bidirectional_5/backward_rnn/zeros_1/packed:output:03bidirectional_5/backward_rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@�
+bidirectional_5/backward_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
&bidirectional_5/backward_rnn/transpose	Transposeinputs4bidirectional_5/backward_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:���������~
$bidirectional_5/backward_rnn/Shape_1Shape*bidirectional_5/backward_rnn/transpose:y:0*
T0*
_output_shapes
:|
2bidirectional_5/backward_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/backward_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_1StridedSlice-bidirectional_5/backward_rnn/Shape_1:output:0;bidirectional_5/backward_rnn/strided_slice_1/stack:output:0=bidirectional_5/backward_rnn/strided_slice_1/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+bidirectional_5/backward_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
'bidirectional_5/backward_rnn/ExpandDims
ExpandDims#custom_embedding_7/Squeeze:output:04bidirectional_5/backward_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:����������
-bidirectional_5/backward_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(bidirectional_5/backward_rnn/transpose_1	Transpose0bidirectional_5/backward_rnn/ExpandDims:output:06bidirectional_5/backward_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:����������
8bidirectional_5/backward_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
*bidirectional_5/backward_rnn/TensorArrayV2TensorListReserveAbidirectional_5/backward_rnn/TensorArrayV2/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+bidirectional_5/backward_rnn/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
&bidirectional_5/backward_rnn/ReverseV2	ReverseV2*bidirectional_5/backward_rnn/transpose:y:04bidirectional_5/backward_rnn/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Rbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Dbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor/bidirectional_5/backward_rnn/ReverseV2:output:0[bidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���|
2bidirectional_5/backward_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/backward_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_2StridedSlice*bidirectional_5/backward_rnn/transpose:y:0;bidirectional_5/backward_rnn/strided_slice_2/stack:output:0=bidirectional_5/backward_rnn/strided_slice_2/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpHbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
0bidirectional_5/backward_rnn/lstm_cell_19/MatMulMatMul5bidirectional_5/backward_rnn/strided_slice_2:output:0Gbidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpJbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
2bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1MatMul+bidirectional_5/backward_rnn/zeros:output:0Ibidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-bidirectional_5/backward_rnn/lstm_cell_19/addAddV2:bidirectional_5/backward_rnn/lstm_cell_19/MatMul:product:0<bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpIbidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1bidirectional_5/backward_rnn/lstm_cell_19/BiasAddBiasAdd1bidirectional_5/backward_rnn/lstm_cell_19/add:z:0Hbidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9bidirectional_5/backward_rnn/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/bidirectional_5/backward_rnn/lstm_cell_19/splitSplitBbidirectional_5/backward_rnn/lstm_cell_19/split/split_dim:output:0:bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
1bidirectional_5/backward_rnn/lstm_cell_19/SigmoidSigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1Sigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
-bidirectional_5/backward_rnn/lstm_cell_19/mulMul7bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_1:y:0-bidirectional_5/backward_rnn/zeros_1:output:0*
T0*'
_output_shapes
:���������@�
.bidirectional_5/backward_rnn/lstm_cell_19/TanhTanh8bidirectional_5/backward_rnn/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/mul_1Mul5bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid:y:02bidirectional_5/backward_rnn/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/add_1AddV21bidirectional_5/backward_rnn/lstm_cell_19/mul:z:03bidirectional_5/backward_rnn/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
3bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2Sigmoid8bidirectional_5/backward_rnn/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
0bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1Tanh3bidirectional_5/backward_rnn/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
/bidirectional_5/backward_rnn/lstm_cell_19/mul_2Mul7bidirectional_5/backward_rnn/lstm_cell_19/Sigmoid_2:y:04bidirectional_5/backward_rnn/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@�
:bidirectional_5/backward_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
,bidirectional_5/backward_rnn/TensorArrayV2_1TensorListReserveCbidirectional_5/backward_rnn/TensorArrayV2_1/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
!bidirectional_5/backward_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : w
-bidirectional_5/backward_rnn/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: �
(bidirectional_5/backward_rnn/ReverseV2_1	ReverseV2,bidirectional_5/backward_rnn/transpose_1:y:06bidirectional_5/backward_rnn/ReverseV2_1/axis:output:0*
T0
*+
_output_shapes
:����������
:bidirectional_5/backward_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
,bidirectional_5/backward_rnn/TensorArrayV2_2TensorListReserveCbidirectional_5/backward_rnn/TensorArrayV2_2/element_shape:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Tbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor1bidirectional_5/backward_rnn/ReverseV2_1:output:0]bidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
'bidirectional_5/backward_rnn/zeros_like	ZerosLike3bidirectional_5/backward_rnn/lstm_cell_19/mul_2:z:0*
T0*'
_output_shapes
:���������@�
5bidirectional_5/backward_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������q
/bidirectional_5/backward_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

"bidirectional_5/backward_rnn/whileWhile8bidirectional_5/backward_rnn/while/loop_counter:output:0>bidirectional_5/backward_rnn/while/maximum_iterations:output:0*bidirectional_5/backward_rnn/time:output:05bidirectional_5/backward_rnn/TensorArrayV2_1:handle:0+bidirectional_5/backward_rnn/zeros_like:y:0+bidirectional_5/backward_rnn/zeros:output:0-bidirectional_5/backward_rnn/zeros_1:output:05bidirectional_5/backward_rnn/strided_slice_1:output:0Tbidirectional_5/backward_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vbidirectional_5/backward_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Hbidirectional_5_backward_rnn_lstm_cell_19_matmul_readvariableop_resourceJbidirectional_5_backward_rnn_lstm_cell_19_matmul_1_readvariableop_resourceIbidirectional_5_backward_rnn_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *9
body1R/
-bidirectional_5_backward_rnn_while_body_49051*9
cond1R/
-bidirectional_5_backward_rnn_while_cond_49050*`
output_shapesO
M: : : : :���������@:���������@:���������@: : : : : : *
parallel_iterations �
Mbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
?bidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStackTensorListStack+bidirectional_5/backward_rnn/while:output:3Vbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0�
2bidirectional_5/backward_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������~
4bidirectional_5/backward_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/backward_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,bidirectional_5/backward_rnn/strided_slice_3StridedSliceHbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_5/backward_rnn/strided_slice_3/stack:output:0=bidirectional_5/backward_rnn/strided_slice_3/stack_1:output:0=bidirectional_5/backward_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
-bidirectional_5/backward_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(bidirectional_5/backward_rnn/transpose_2	TransposeHbidirectional_5/backward_rnn/TensorArrayV2Stack/TensorListStack:tensor:06bidirectional_5/backward_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������@]
bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
bidirectional_5/concatConcatV24bidirectional_5/forward_rnn/strided_slice_3:output:05bidirectional_5/backward_rnn/strided_slice_3:output:0$bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_6/MatMulMatMulbidirectional_5/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpA^bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp@^bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOpB^bidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp#^bidirectional_5/backward_rnn/while@^bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp?^bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOpA^bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp"^bidirectional_5/forward_rnn/while^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2�
@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp@bidirectional_5/backward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp?bidirectional_5/backward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
Abidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOpAbidirectional_5/backward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2H
"bidirectional_5/backward_rnn/while"bidirectional_5/backward_rnn/while2�
?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp?bidirectional_5/forward_rnn/lstm_cell_19/BiasAdd/ReadVariableOp2�
>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp>bidirectional_5/forward_rnn/lstm_cell_19/MatMul/ReadVariableOp2�
@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp@bidirectional_5/forward_rnn/lstm_cell_19/MatMul_1/ReadVariableOp2F
!bidirectional_5/forward_rnn/while!bidirectional_5/forward_rnn/while2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�^
�
backward_rnn_while_body_484686
2backward_rnn_while_backward_rnn_while_loop_counter<
8backward_rnn_while_backward_rnn_while_maximum_iterations"
backward_rnn_while_placeholder$
 backward_rnn_while_placeholder_1$
 backward_rnn_while_placeholder_2$
 backward_rnn_while_placeholder_3$
 backward_rnn_while_placeholder_45
1backward_rnn_while_backward_rnn_strided_slice_1_0q
mbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0u
qbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0S
@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0:	�U
Bbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	@�P
Abackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0:	�
backward_rnn_while_identity!
backward_rnn_while_identity_1!
backward_rnn_while_identity_2!
backward_rnn_while_identity_3!
backward_rnn_while_identity_4!
backward_rnn_while_identity_5!
backward_rnn_while_identity_63
/backward_rnn_while_backward_rnn_strided_slice_1o
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensors
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorQ
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource:	�S
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource:	@�N
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource:	���6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp�5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp�7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp�
Dbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6backward_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0backward_rnn_while_placeholderMbackward_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Fbackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0backward_rnn_while_placeholderObackward_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&backward_rnn/while/lstm_cell_19/MatMulMatMul=backward_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype0�
(backward_rnn/while/lstm_cell_19/MatMul_1MatMul backward_rnn_while_placeholder_3?backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#backward_rnn/while/lstm_cell_19/addAddV20backward_rnn/while/lstm_cell_19/MatMul:product:02backward_rnn/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'backward_rnn/while/lstm_cell_19/BiasAddBiasAdd'backward_rnn/while/lstm_cell_19/add:z:0>backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/backward_rnn/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%backward_rnn/while/lstm_cell_19/splitSplit8backward_rnn/while/lstm_cell_19/split/split_dim:output:00backward_rnn/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split�
'backward_rnn/while/lstm_cell_19/SigmoidSigmoid.backward_rnn/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_1Sigmoid.backward_rnn/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@�
#backward_rnn/while/lstm_cell_19/mulMul-backward_rnn/while/lstm_cell_19/Sigmoid_1:y:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
$backward_rnn/while/lstm_cell_19/TanhTanh.backward_rnn/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_1Mul+backward_rnn/while/lstm_cell_19/Sigmoid:y:0(backward_rnn/while/lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/add_1AddV2'backward_rnn/while/lstm_cell_19/mul:z:0)backward_rnn/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@�
)backward_rnn/while/lstm_cell_19/Sigmoid_2Sigmoid.backward_rnn/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@�
&backward_rnn/while/lstm_cell_19/Tanh_1Tanh)backward_rnn/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
%backward_rnn/while/lstm_cell_19/mul_2Mul-backward_rnn/while/lstm_cell_19/Sigmoid_2:y:0*backward_rnn/while/lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@r
!backward_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/TileTile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*backward_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2SelectV2 backward_rnn/while/Tile:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@t
#backward_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_1Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������t
#backward_rnn/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
backward_rnn/while/Tile_2Tile?backward_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0,backward_rnn/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
backward_rnn/while/SelectV2_1SelectV2"backward_rnn/while/Tile_1:output:0)backward_rnn/while/lstm_cell_19/mul_2:z:0 backward_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@�
backward_rnn/while/SelectV2_2SelectV2"backward_rnn/while/Tile_2:output:0)backward_rnn/while/lstm_cell_19/add_1:z:0 backward_rnn_while_placeholder_4*
T0*'
_output_shapes
:���������@�
7backward_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem backward_rnn_while_placeholder_1backward_rnn_while_placeholder$backward_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���Z
backward_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/addAddV2backward_rnn_while_placeholder!backward_rnn/while/add/y:output:0*
T0*
_output_shapes
: \
backward_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_rnn/while/add_1AddV22backward_rnn_while_backward_rnn_while_loop_counter#backward_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_rnn/while/IdentityIdentitybackward_rnn/while/add_1:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_1Identity8backward_rnn_while_backward_rnn_while_maximum_iterations^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_2Identitybackward_rnn/while/add:z:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_3IdentityGbackward_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_rnn/while/NoOp*
T0*
_output_shapes
: �
backward_rnn/while/Identity_4Identity$backward_rnn/while/SelectV2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_5Identity&backward_rnn/while/SelectV2_1:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/Identity_6Identity&backward_rnn/while/SelectV2_2:output:0^backward_rnn/while/NoOp*
T0*'
_output_shapes
:���������@�
backward_rnn/while/NoOpNoOp7^backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6^backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp8^backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/backward_rnn_while_backward_rnn_strided_slice_11backward_rnn_while_backward_rnn_strided_slice_1_0"C
backward_rnn_while_identity$backward_rnn/while/Identity:output:0"G
backward_rnn_while_identity_1&backward_rnn/while/Identity_1:output:0"G
backward_rnn_while_identity_2&backward_rnn/while/Identity_2:output:0"G
backward_rnn_while_identity_3&backward_rnn/while/Identity_3:output:0"G
backward_rnn_while_identity_4&backward_rnn/while/Identity_4:output:0"G
backward_rnn_while_identity_5&backward_rnn/while/Identity_5:output:0"G
backward_rnn_while_identity_6&backward_rnn/while/Identity_6:output:0"�
?backward_rnn_while_lstm_cell_19_biasadd_readvariableop_resourceAbackward_rnn_while_lstm_cell_19_biasadd_readvariableop_resource_0"�
@backward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resourceBbackward_rnn_while_lstm_cell_19_matmul_1_readvariableop_resource_0"�
>backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource@backward_rnn_while_lstm_cell_19_matmul_readvariableop_resource_0"�
obackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensorqbackward_rnn_while_tensorarrayv2read_1_tensorlistgetitem_backward_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
kbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensormbackward_rnn_while_tensorarrayv2read_tensorlistgetitem_backward_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :���������@:���������@:���������@: : : : : : 2p
6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp6backward_rnn/while/lstm_cell_19/BiasAdd/ReadVariableOp2n
5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp5backward_rnn/while/lstm_cell_19/MatMul/ReadVariableOp2r
7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp7backward_rnn/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�Q
�
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50946
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	�@
-lstm_cell_19_matmul_1_readvariableop_resource:	@�;
,lstm_cell_19_biasadd_readvariableop_resource:	�
identity��#lstm_cell_19/BiasAdd/ReadVariableOp�"lstm_cell_19/MatMul/ReadVariableOp�$lstm_cell_19/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:���������@w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@h
lstm_cell_19/TanhTanhlstm_cell_19/split:output:2*
T0*'
_output_shapes
:���������@|
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Tanh:y:0*
T0*'
_output_shapes
:���������@{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:���������@p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:���������@e
lstm_cell_19/Tanh_1Tanhlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:���������@�
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0lstm_cell_19/Tanh_1:y:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_50863*
condR
while_cond_50862*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_48167

inputs(
bidirectional_5_48137:	�(
bidirectional_5_48139:	@�$
bidirectional_5_48141:	�(
bidirectional_5_48143:	�(
bidirectional_5_48145:	@�$
bidirectional_5_48147:	� 
dense_6_48161:	�
dense_6_48163:
identity��'bidirectional_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
"custom_embedding_7/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_47779a
custom_embedding_7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
custom_embedding_7/GreaterGreaterinputs%custom_embedding_7/Greater/y:output:0*
T0*+
_output_shapes
:����������
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall+custom_embedding_7/PartitionedCall:output:0custom_embedding_7/Greater:z:0bidirectional_5_48137bidirectional_5_48139bidirectional_5_48141bidirectional_5_48143bidirectional_5_48145bidirectional_5_48147*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_48136�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_6_48161dense_6_48163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_48160w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
,__inference_sequential_6_layer_call_fn_48680
custom_embedding_7_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcustom_embedding_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_48640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
+
_output_shapes
:���������
2
_user_specified_namecustom_embedding_7_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
a
custom_embedding_7_inputE
*serving_default_custom_embedding_7_input:0���������;
dense_60
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
___call__
*`&call_and_return_all_conditional_losses
a_default_save_signature"
_tf_keras_sequential
�
		variables

trainable_variables
regularization_losses
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
�
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
___call__
a_default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
,
hserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
		variables

trainable_variables
regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
)cell
*
state_spec
+	variables
,trainable_variables
-regularization_losses
.	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
/cell
0
state_spec
1	variables
2trainable_variables
3regularization_losses
4	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
!:	�2dense_6/kernel
:2dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
B:@	�2/bidirectional_5/forward_rnn/lstm_cell_19/kernel
L:J	@�29bidirectional_5/forward_rnn/lstm_cell_19/recurrent_kernel
<::�2-bidirectional_5/forward_rnn/lstm_cell_19/bias
C:A	�20bidirectional_5/backward_rnn/lstm_cell_19/kernel
M:K	@�2:bidirectional_5/backward_rnn/lstm_cell_19/recurrent_kernel
=:;�2.bidirectional_5/backward_rnn/lstm_cell_19/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
?
state_size

kernel
recurrent_kernel
bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
+	variables
,trainable_variables
-regularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
J
state_size

kernel
recurrent_kernel
bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Ostates
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
1	variables
2trainable_variables
3regularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
/0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�2�
,__inference_sequential_6_layer_call_fn_48186
,__inference_sequential_6_layer_call_fn_48774
,__inference_sequential_6_layer_call_fn_48795
,__inference_sequential_6_layer_call_fn_48680�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_6_layer_call_and_return_conditional_losses_49160
G__inference_sequential_6_layer_call_and_return_conditional_losses_49525
G__inference_sequential_6_layer_call_and_return_conditional_losses_48705
G__inference_sequential_6_layer_call_and_return_conditional_losses_48730�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_47033custom_embedding_7_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
2__inference_custom_embedding_7_layer_call_fn_49530�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_49537�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_bidirectional_5_layer_call_fn_49555
/__inference_bidirectional_5_layer_call_fn_49573�
���
FullArgSpecO
argsG�D
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_49926
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_50279�
���
FullArgSpecO
argsG�D
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_dense_6_layer_call_fn_50288�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_6_layer_call_and_return_conditional_losses_50298�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_48753custom_embedding_7_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_forward_rnn_layer_call_fn_50309
+__inference_forward_rnn_layer_call_fn_50320�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50470
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50620�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_backward_rnn_layer_call_fn_50631
,__inference_backward_rnn_layer_call_fn_50642�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50794
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50946�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_lstm_cell_19_layer_call_fn_50963
,__inference_lstm_cell_19_layer_call_fn_50980�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51012
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51044�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_lstm_cell_19_layer_call_fn_51061
,__inference_lstm_cell_19_layer_call_fn_51078�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51110
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51142�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
 __inference__wrapped_model_47033�E�B
;�8
6�3
custom_embedding_7_input���������
� "1�.
,
dense_6!�
dense_6����������
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50794�S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "%�"
�
0���������@
� �
G__inference_backward_rnn_layer_call_and_return_conditional_losses_50946�S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "%�"
�
0���������@
� �
,__inference_backward_rnn_layer_call_fn_50631tS�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "����������@�
,__inference_backward_rnn_layer_call_fn_50642tS�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "����������@�
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_49926�c�`
Y�V
$�!
inputs���������
p 
"�
mask���������


 

 
� "&�#
�
0����������
� �
J__inference_bidirectional_5_layer_call_and_return_conditional_losses_50279�c�`
Y�V
$�!
inputs���������
p
"�
mask���������


 

 
� "&�#
�
0����������
� �
/__inference_bidirectional_5_layer_call_fn_49555�c�`
Y�V
$�!
inputs���������
p 
"�
mask���������


 

 
� "������������
/__inference_bidirectional_5_layer_call_fn_49573�c�`
Y�V
$�!
inputs���������
p
"�
mask���������


 

 
� "������������
M__inference_custom_embedding_7_layer_call_and_return_conditional_losses_49537`3�0
)�&
$�!
inputs���������
� ")�&
�
0���������
� �
2__inference_custom_embedding_7_layer_call_fn_49530S3�0
)�&
$�!
inputs���������
� "�����������
B__inference_dense_6_layer_call_and_return_conditional_losses_50298]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� {
'__inference_dense_6_layer_call_fn_50288P0�-
&�#
!�
inputs����������
� "�����������
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50470�S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "%�"
�
0���������@
� �
F__inference_forward_rnn_layer_call_and_return_conditional_losses_50620�S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "%�"
�
0���������@
� �
+__inference_forward_rnn_layer_call_fn_50309tS�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "����������@�
+__inference_forward_rnn_layer_call_fn_50320tS�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "����������@�
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51012���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51044���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51110���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
G__inference_lstm_cell_19_layer_call_and_return_conditional_losses_51142���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
,__inference_lstm_cell_19_layer_call_fn_50963���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
,__inference_lstm_cell_19_layer_call_fn_50980���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
,__inference_lstm_cell_19_layer_call_fn_51061���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
,__inference_lstm_cell_19_layer_call_fn_51078���}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
G__inference_sequential_6_layer_call_and_return_conditional_losses_48705�M�J
C�@
6�3
custom_embedding_7_input���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_48730�M�J
C�@
6�3
custom_embedding_7_input���������
p

 
� "%�"
�
0���������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_49160n;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_49525n;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
,__inference_sequential_6_layer_call_fn_48186sM�J
C�@
6�3
custom_embedding_7_input���������
p 

 
� "�����������
,__inference_sequential_6_layer_call_fn_48680sM�J
C�@
6�3
custom_embedding_7_input���������
p

 
� "�����������
,__inference_sequential_6_layer_call_fn_48774a;�8
1�.
$�!
inputs���������
p 

 
� "�����������
,__inference_sequential_6_layer_call_fn_48795a;�8
1�.
$�!
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_48753�a�^
� 
W�T
R
custom_embedding_7_input6�3
custom_embedding_7_input���������"1�.
,
dense_6!�
dense_6���������