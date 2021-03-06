��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
3
Square
x"T
y"T"
Ttype:
2
	
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:(*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:(*
dtype0
�
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:((* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:((*
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:(*
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:(*
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:(*
dtype0
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:(*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/conv2d_8/kernel/m
�
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:(*
dtype0
�
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
:(*
dtype0
�
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:((*'
shared_nameAdam/conv2d_9/kernel/m
�
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
:((*
dtype0
�
"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_4/gamma/m
�
6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes
:(*
dtype0
�
!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adam/batch_normalization_4/beta/m
�
5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes
:(*
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	�*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/conv2d_8/kernel/v
�
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:(*
dtype0
�
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
:(*
dtype0
�
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:((*'
shared_nameAdam/conv2d_9/kernel/v
�
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:((*
dtype0
�
"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_4/gamma/v
�
6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes
:(*
dtype0
�
!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adam/batch_normalization_4/beta/v
�
5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes
:(*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	�*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�9
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�9
value�9B�9 B�9
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
^

kernel
regularization_losses
	variables
trainable_variables
	keras_api
�
axis
	gamma
beta
moving_mean
moving_variance
 regularization_losses
!	variables
"trainable_variables
#	keras_api
R
$regularization_losses
%	variables
&trainable_variables
'	keras_api
R
(regularization_losses
)	variables
*trainable_variables
+	keras_api
R
,regularization_losses
-	variables
.trainable_variables
/	keras_api
R
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
�
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratem�m�m�m�m�8m�9m�v�v�v�v�v�8v�9v�
 
?
0
1
2
3
4
5
6
87
98
1
0
1
2
3
4
85
96
�
regularization_losses
Clayer_regularization_losses
	variables
Dnon_trainable_variables
trainable_variables

Elayers
Fmetrics
Glayer_metrics
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
Hlayer_regularization_losses
	variables
Inon_trainable_variables
trainable_variables

Jlayers
Kmetrics
Llayer_metrics
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
regularization_losses
Mlayer_regularization_losses
	variables
Nnon_trainable_variables
trainable_variables

Olayers
Pmetrics
Qlayer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

0
1
�
 regularization_losses
Rlayer_regularization_losses
!	variables
Snon_trainable_variables
"trainable_variables

Tlayers
Umetrics
Vlayer_metrics
 
 
 
�
$regularization_losses
Wlayer_regularization_losses
%	variables
Xnon_trainable_variables
&trainable_variables

Ylayers
Zmetrics
[layer_metrics
 
 
 
�
(regularization_losses
\layer_regularization_losses
)	variables
]non_trainable_variables
*trainable_variables

^layers
_metrics
`layer_metrics
 
 
 
�
,regularization_losses
alayer_regularization_losses
-	variables
bnon_trainable_variables
.trainable_variables

clayers
dmetrics
elayer_metrics
 
 
 
�
0regularization_losses
flayer_regularization_losses
1	variables
gnon_trainable_variables
2trainable_variables

hlayers
imetrics
jlayer_metrics
 
 
 
�
4regularization_losses
klayer_regularization_losses
5	variables
lnon_trainable_variables
6trainable_variables

mlayers
nmetrics
olayer_metrics
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
�
:regularization_losses
player_regularization_losses
;	variables
qnon_trainable_variables
<trainable_variables

rlayers
smetrics
tlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
?
0
1
2
3
4
5
6
7
	8

u0
v1
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

0
1
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
 
 
 
 
 
 
 
4
	wtotal
	xcount
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

w0
x1

y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/batch_normalization_4/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/batch_normalization_4/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_conv2d_8_inputPlaceholder*0
_output_shapes
:����������*
dtype0*%
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_8_inputconv2d_8/kernelconv2d_8/biasconv2d_9/kernelbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_4/kerneldense_4/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_125497
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*-
Tin&
$2"	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_126002
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d_9/kernel/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/conv2d_9/kernel/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*,
Tin%
#2!*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_126108��
�
k
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_125093

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
#*
paddingVALID*
strides
2	
AvgPool�
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125711

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125775

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������(:(:(:(:(:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�G
�
__inference__traced_save_126002
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :(:(:((:(:(:(:(:	�:: : : : : : : : : :(:(:((:(:(:	�::(:(:((:(:(:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:((: 

_output_shapes
:(: 

_output_shapes
:(: 

_output_shapes
:(: 

_output_shapes
:(:%!

_output_shapes
:	�: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:((: 

_output_shapes
:(: 

_output_shapes
:(:%!

_output_shapes
:	�: 

_output_shapes
::,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:((: 

_output_shapes
:(: 

_output_shapes
:(:%!

_output_shapes
:	�:  

_output_shapes
::!

_output_shapes
: 
�
d
H__inference_activation_9_layer_call_and_return_conditional_losses_125244

inputs
identityw
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimuminputs clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:���������&(2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������&(2
clip_by_value^
LogLogclip_by_value:z:0*
T0*/
_output_shapes
:���������&(2
Logc
IdentityIdentityLog:y:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
�
-__inference_sequential_4_layer_call_fn_125617

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1253892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_125136

inputs"
conv2d_readvariableop_resource
identity��Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
Conv2D�
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������(:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125185

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
d
H__inference_activation_8_layer_call_and_return_conditional_losses_125226

inputs
identity]
SquareSquareinputs*
T0*0
_output_shapes
:����������(2
Squareg
IdentityIdentity
Square:y:0*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
I
-__inference_activation_8_layer_call_fn_125811

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_1252262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
c
*__inference_dropout_4_layer_call_fn_125847

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_126108
file_prefix$
 assignvariableop_conv2d_8_kernel$
 assignvariableop_1_conv2d_8_bias&
"assignvariableop_2_conv2d_9_kernel2
.assignvariableop_3_batch_normalization_4_gamma1
-assignvariableop_4_batch_normalization_4_beta8
4assignvariableop_5_batch_normalization_4_moving_mean<
8assignvariableop_6_batch_normalization_4_moving_variance%
!assignvariableop_7_dense_4_kernel#
assignvariableop_8_dense_4_bias 
assignvariableop_9_adam_iter#
assignvariableop_10_adam_beta_1#
assignvariableop_11_adam_beta_2"
assignvariableop_12_adam_decay*
&assignvariableop_13_adam_learning_rate
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1.
*assignvariableop_18_adam_conv2d_8_kernel_m,
(assignvariableop_19_adam_conv2d_8_bias_m.
*assignvariableop_20_adam_conv2d_9_kernel_m:
6assignvariableop_21_adam_batch_normalization_4_gamma_m9
5assignvariableop_22_adam_batch_normalization_4_beta_m-
)assignvariableop_23_adam_dense_4_kernel_m+
'assignvariableop_24_adam_dense_4_bias_m.
*assignvariableop_25_adam_conv2d_8_kernel_v,
(assignvariableop_26_adam_conv2d_8_bias_v.
*assignvariableop_27_adam_conv2d_9_kernel_v:
6assignvariableop_28_adam_batch_normalization_4_gamma_v9
5assignvariableop_29_adam_batch_normalization_4_beta_v-
)assignvariableop_30_adam_dense_4_kernel_v+
'assignvariableop_31_adam_dense_4_bias_v
identity_33��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_4_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_4_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_4_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp8assignvariableop_6_batch_normalization_4_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_4_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_4_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_8_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv2d_8_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_9_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_batch_normalization_4_gamma_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_adam_batch_normalization_4_beta_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_8_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_8_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_9_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_4_gamma_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_batch_normalization_4_beta_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_4_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_4_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_319
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_32�
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_33"#
identity_33Identity_33:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�8
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125594

inputs+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource+
'conv2d_9_conv2d_readvariableop_resource1
-batch_normalization_4_readvariableop_resource3
/batch_normalization_4_readvariableop_1_resourceB
>batch_normalization_4_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity��5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02 
conv2d_8/Conv2D/ReadVariableOp�
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
conv2d_8/Conv2D�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(2
conv2d_8/BiasAdd�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02 
conv2d_9/Conv2D/ReadVariableOp�
conv2d_9/Conv2DConv2Dconv2d_8/BiasAdd:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
conv2d_9/Conv2D�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:(*
dtype02&
$batch_normalization_4/ReadVariableOp�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:(*
dtype02(
&batch_normalization_4/ReadVariableOp_1�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_9/Conv2D:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
is_training( 2(
&batch_normalization_4/FusedBatchNormV3�
activation_8/SquareSquare*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������(2
activation_8/Square�
average_pooling2d_4/AvgPoolAvgPoolactivation_8/Square:y:0*
T0*/
_output_shapes
:���������&(*
ksize
#*
paddingVALID*
strides
2
average_pooling2d_4/AvgPool�
$activation_9/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2&
$activation_9/clip_by_value/Minimum/y�
"activation_9/clip_by_value/MinimumMinimum$average_pooling2d_4/AvgPool:output:0-activation_9/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:���������&(2$
"activation_9/clip_by_value/Minimum�
activation_9/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
activation_9/clip_by_value/y�
activation_9/clip_by_valueMaximum&activation_9/clip_by_value/Minimum:z:0%activation_9/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������&(2
activation_9/clip_by_value�
activation_9/LogLogactivation_9/clip_by_value:z:0*
T0*/
_output_shapes
:���������&(2
activation_9/Log�
dropout_4/IdentityIdentityactivation_9/Log:y:0*
T0*/
_output_shapes
:���������&(2
dropout_4/Identitys
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_4/Const�
flatten_4/ReshapeReshapedropout_4/Identity:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_4/Reshape�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/BiasAddy
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_4/Softmax�
IdentityIdentitydense_4/Softmax:softmax:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_4_layer_call_fn_125724

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_4_layer_call_fn_125737

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
�
-__inference_sequential_4_layer_call_fn_125640

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1254432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_125288

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_125858

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125076

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������(:(:(:(:(:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�)
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125324
conv2d_8_input
conv2d_8_125124
conv2d_8_125126
conv2d_9_125145 
batch_normalization_4_125212 
batch_normalization_4_125214 
batch_normalization_4_125216 
batch_normalization_4_125218
dense_4_125318
dense_4_125320
identity��-batch_normalization_4/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_125124conv2d_8_125126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1251132"
 conv2d_8/StatefulPartitionedCall�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_125145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1251362"
 conv2d_9/StatefulPartitionedCall�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_4_125212batch_normalization_4_125214batch_normalization_4_125216batch_normalization_4_125218*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251672/
-batch_normalization_4/StatefulPartitionedCall�
activation_8/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_1252262
activation_8/PartitionedCall�
#average_pooling2d_4/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_1250932%
#average_pooling2d_4/PartitionedCall�
activation_9/PartitionedCallPartitionedCall,average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_1252442
activation_9/PartitionedCall�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252642#
!dropout_4/StatefulPartitionedCall�
flatten_4/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1252882
flatten_4/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_125318dense_4_125320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1253072!
dense_4/StatefulPartitionedCall�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input
�
I
-__inference_activation_9_layer_call_fn_125825

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_1252442
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
P
4__inference_average_pooling2d_4_layer_call_fn_125099

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_1250932
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�K
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125550

inputs+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource+
'conv2d_9_conv2d_readvariableop_resource1
-batch_normalization_4_readvariableop_resource3
/batch_normalization_4_readvariableop_1_resourceB
>batch_normalization_4_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity��$batch_normalization_4/AssignNewValue�&batch_normalization_4/AssignNewValue_1�5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02 
conv2d_8/Conv2D/ReadVariableOp�
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
conv2d_8/Conv2D�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(2
conv2d_8/BiasAdd�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02 
conv2d_9/Conv2D/ReadVariableOp�
conv2d_9/Conv2DConv2Dconv2d_8/BiasAdd:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
conv2d_9/Conv2D�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:(*
dtype02&
$batch_normalization_4/ReadVariableOp�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:(*
dtype02(
&batch_normalization_4/ReadVariableOp_1�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_9/Conv2D:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
exponential_avg_factor%fff?2(
&batch_normalization_4/FusedBatchNormV3�
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*Q
_classG
ECloc:@batch_normalization_4/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValue�
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_4/AssignNewValue_1�
activation_8/SquareSquare*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������(2
activation_8/Square�
average_pooling2d_4/AvgPoolAvgPoolactivation_8/Square:y:0*
T0*/
_output_shapes
:���������&(*
ksize
#*
paddingVALID*
strides
2
average_pooling2d_4/AvgPool�
$activation_9/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2&
$activation_9/clip_by_value/Minimum/y�
"activation_9/clip_by_value/MinimumMinimum$average_pooling2d_4/AvgPool:output:0-activation_9/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:���������&(2$
"activation_9/clip_by_value/Minimum�
activation_9/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
activation_9/clip_by_value/y�
activation_9/clip_by_valueMaximum&activation_9/clip_by_value/Minimum:z:0%activation_9/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������&(2
activation_9/clip_by_value�
activation_9/LogLogactivation_9/clip_by_value:z:0*
T0*/
_output_shapes
:���������&(2
activation_9/Logw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/dropout/Const�
dropout_4/dropout/MulMulactivation_9/Log:y:0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:���������&(2
dropout_4/dropout/Mulv
dropout_4/dropout/ShapeShapeactivation_9/Log:y:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape�
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:���������&(*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform�
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_4/dropout/GreaterEqual/y�
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&(2 
dropout_4/dropout/GreaterEqual�
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&(2
dropout_4/dropout/Cast�
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:���������&(2
dropout_4/dropout/Mul_1s
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_4/Const�
flatten_4/ReshapeReshapedropout_4/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_4/Reshape�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/BiasAddy
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_4/Softmax�
IdentityIdentitydense_4/Softmax:softmax:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_4_layer_call_fn_125863

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1252882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125757

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������(:(:(:(:(:*
epsilon%��'7*
exponential_avg_factor%fff?2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�
~
)__inference_conv2d_8_layer_call_fn_125659

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1251132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
C__inference_dense_4_layer_call_and_return_conditional_losses_125307

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_125842

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������&(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������&(2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
}
(__inference_dense_4_layer_call_fn_125883

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1253072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_4_layer_call_fn_125464
conv2d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1254432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input
�	
�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_125113

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�(
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125443

inputs
conv2d_8_125415
conv2d_8_125417
conv2d_9_125420 
batch_normalization_4_125423 
batch_normalization_4_125425 
batch_normalization_4_125427 
batch_normalization_4_125429
dense_4_125437
dense_4_125439
identity��-batch_normalization_4/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_125415conv2d_8_125417*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1251132"
 conv2d_8/StatefulPartitionedCall�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_125420*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1251362"
 conv2d_9/StatefulPartitionedCall�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_4_125423batch_normalization_4_125425batch_normalization_4_125427batch_normalization_4_125429*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251852/
-batch_normalization_4/StatefulPartitionedCall�
activation_8/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_1252262
activation_8/PartitionedCall�
#average_pooling2d_4/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_1250932%
#average_pooling2d_4/PartitionedCall�
activation_9/PartitionedCallPartitionedCall,average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_1252442
activation_9/PartitionedCall�
dropout_4/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252692
dropout_4/PartitionedCall�
flatten_4/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1252882
flatten_4/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_125437dense_4_125439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1253072!
dense_4/StatefulPartitionedCall�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_125650

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_125497
conv2d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_1249832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input
�	
�
C__inference_dense_4_layer_call_and_return_conditional_losses_125874

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125693

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
exponential_avg_factor%fff?2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_125264

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������&(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������&(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&(2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&(2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������&(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�(
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125355
conv2d_8_input
conv2d_8_125327
conv2d_8_125329
conv2d_9_125332 
batch_normalization_4_125335 
batch_normalization_4_125337 
batch_normalization_4_125339 
batch_normalization_4_125341
dense_4_125349
dense_4_125351
identity��-batch_normalization_4/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_125327conv2d_8_125329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1251132"
 conv2d_8/StatefulPartitionedCall�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_125332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1251362"
 conv2d_9/StatefulPartitionedCall�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_4_125335batch_normalization_4_125337batch_normalization_4_125339batch_normalization_4_125341*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251852/
-batch_normalization_4/StatefulPartitionedCall�
activation_8/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_1252262
activation_8/PartitionedCall�
#average_pooling2d_4/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_1250932%
#average_pooling2d_4/PartitionedCall�
activation_9/PartitionedCallPartitionedCall,average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_1252442
activation_9/PartitionedCall�
dropout_4/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252692
dropout_4/PartitionedCall�
flatten_4/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1252882
flatten_4/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_125349dense_4_125351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1253072!
dense_4/StatefulPartitionedCall�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input
�
d
H__inference_activation_9_layer_call_and_return_conditional_losses_125820

inputs
identityw
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimuminputs clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:���������&(2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������&(2
clip_by_value^
LogLogclip_by_value:z:0*
T0*/
_output_shapes
:���������&(2
Logc
IdentityIdentityLog:y:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
�
-__inference_sequential_4_layer_call_fn_125410
conv2d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1253892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125045

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������(:(:(:(:(:*
epsilon%��'7*
exponential_avg_factor%fff?2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�
�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_125666

inputs"
conv2d_readvariableop_resource
identity��Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
Conv2D�
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������(:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
d
H__inference_activation_8_layer_call_and_return_conditional_losses_125806

inputs
identity]
SquareSquareinputs*
T0*0
_output_shapes
:����������(2
Squareg
IdentityIdentity
Square:y:0*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������(:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
o
)__inference_conv2d_9_layer_call_fn_125673

inputs
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1251362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������(:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_4_layer_call_fn_125788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1250452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125167

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
exponential_avg_factor%fff?2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������(
 
_user_specified_nameinputs
�)
�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125389

inputs
conv2d_8_125361
conv2d_8_125363
conv2d_9_125366 
batch_normalization_4_125369 
batch_normalization_4_125371 
batch_normalization_4_125373 
batch_normalization_4_125375
dense_4_125383
dense_4_125385
identity��-batch_normalization_4/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_125361conv2d_8_125363*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_1251132"
 conv2d_8/StatefulPartitionedCall�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_125366*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_1251362"
 conv2d_9/StatefulPartitionedCall�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_4_125369batch_normalization_4_125371batch_normalization_4_125373batch_normalization_4_125375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1251672/
-batch_normalization_4/StatefulPartitionedCall�
activation_8/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_1252262
activation_8/PartitionedCall�
#average_pooling2d_4/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_1250932%
#average_pooling2d_4/PartitionedCall�
activation_9/PartitionedCallPartitionedCall,average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_1252442
activation_9/PartitionedCall�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252642#
!dropout_4/StatefulPartitionedCall�
flatten_4/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1252882
flatten_4/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_125383dense_4_125385*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1253072!
dense_4/StatefulPartitionedCall�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_4_layer_call_fn_125801

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1250762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������(::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������(
 
_user_specified_nameinputs
�
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_125837

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������&(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������&(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&(2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&(2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������&(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
F
*__inference_dropout_4_layer_call_fn_125852

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1252692
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_125269

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������&(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������&(2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:���������&(:W S
/
_output_shapes
:���������&(
 
_user_specified_nameinputs
�E
�
!__inference__wrapped_model_124983
conv2d_8_input8
4sequential_4_conv2d_8_conv2d_readvariableop_resource9
5sequential_4_conv2d_8_biasadd_readvariableop_resource8
4sequential_4_conv2d_9_conv2d_readvariableop_resource>
:sequential_4_batch_normalization_4_readvariableop_resource@
<sequential_4_batch_normalization_4_readvariableop_1_resourceO
Ksequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resourceQ
Msequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7
3sequential_4_dense_4_matmul_readvariableop_resource8
4sequential_4_dense_4_biasadd_readvariableop_resource
identity��Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�1sequential_4/batch_normalization_4/ReadVariableOp�3sequential_4/batch_normalization_4/ReadVariableOp_1�,sequential_4/conv2d_8/BiasAdd/ReadVariableOp�+sequential_4/conv2d_8/Conv2D/ReadVariableOp�+sequential_4/conv2d_9/Conv2D/ReadVariableOp�+sequential_4/dense_4/BiasAdd/ReadVariableOp�*sequential_4/dense_4/MatMul/ReadVariableOp�
+sequential_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02-
+sequential_4/conv2d_8/Conv2D/ReadVariableOp�
sequential_4/conv2d_8/Conv2DConv2Dconv2d_8_input3sequential_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
sequential_4/conv2d_8/Conv2D�
,sequential_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02.
,sequential_4/conv2d_8/BiasAdd/ReadVariableOp�
sequential_4/conv2d_8/BiasAddBiasAdd%sequential_4/conv2d_8/Conv2D:output:04sequential_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(2
sequential_4/conv2d_8/BiasAdd�
+sequential_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02-
+sequential_4/conv2d_9/Conv2D/ReadVariableOp�
sequential_4/conv2d_9/Conv2DConv2D&sequential_4/conv2d_8/BiasAdd:output:03sequential_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������(*
paddingVALID*
strides
2
sequential_4/conv2d_9/Conv2D�
1sequential_4/batch_normalization_4/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_4_readvariableop_resource*
_output_shapes
:(*
dtype023
1sequential_4/batch_normalization_4/ReadVariableOp�
3sequential_4/batch_normalization_4/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:(*
dtype025
3sequential_4/batch_normalization_4/ReadVariableOp_1�
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02D
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02F
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3%sequential_4/conv2d_9/Conv2D:output:09sequential_4/batch_normalization_4/ReadVariableOp:value:0;sequential_4/batch_normalization_4/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:����������(:(:(:(:(:*
epsilon%��'7*
is_training( 25
3sequential_4/batch_normalization_4/FusedBatchNormV3�
 sequential_4/activation_8/SquareSquare7sequential_4/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������(2"
 sequential_4/activation_8/Square�
(sequential_4/average_pooling2d_4/AvgPoolAvgPool$sequential_4/activation_8/Square:y:0*
T0*/
_output_shapes
:���������&(*
ksize
#*
paddingVALID*
strides
2*
(sequential_4/average_pooling2d_4/AvgPool�
1sequential_4/activation_9/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F23
1sequential_4/activation_9/clip_by_value/Minimum/y�
/sequential_4/activation_9/clip_by_value/MinimumMinimum1sequential_4/average_pooling2d_4/AvgPool:output:0:sequential_4/activation_9/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:���������&(21
/sequential_4/activation_9/clip_by_value/Minimum�
)sequential_4/activation_9/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32+
)sequential_4/activation_9/clip_by_value/y�
'sequential_4/activation_9/clip_by_valueMaximum3sequential_4/activation_9/clip_by_value/Minimum:z:02sequential_4/activation_9/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������&(2)
'sequential_4/activation_9/clip_by_value�
sequential_4/activation_9/LogLog+sequential_4/activation_9/clip_by_value:z:0*
T0*/
_output_shapes
:���������&(2
sequential_4/activation_9/Log�
sequential_4/dropout_4/IdentityIdentity!sequential_4/activation_9/Log:y:0*
T0*/
_output_shapes
:���������&(2!
sequential_4/dropout_4/Identity�
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
sequential_4/flatten_4/Const�
sequential_4/flatten_4/ReshapeReshape(sequential_4/dropout_4/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:����������2 
sequential_4/flatten_4/Reshape�
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*sequential_4/dense_4/MatMul/ReadVariableOp�
sequential_4/dense_4/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_4/dense_4/MatMul�
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_4/BiasAdd/ReadVariableOp�
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_4/dense_4/BiasAdd�
sequential_4/dense_4/SoftmaxSoftmax%sequential_4/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_4/dense_4/Softmax�
IdentityIdentity&sequential_4/dense_4/Softmax:softmax:0C^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_4/ReadVariableOp4^sequential_4/batch_normalization_4/ReadVariableOp_1-^sequential_4/conv2d_8/BiasAdd/ReadVariableOp,^sequential_4/conv2d_8/Conv2D/ReadVariableOp,^sequential_4/conv2d_9/Conv2D/ReadVariableOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������:::::::::2�
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_4/ReadVariableOp1sequential_4/batch_normalization_4/ReadVariableOp2j
3sequential_4/batch_normalization_4/ReadVariableOp_13sequential_4/batch_normalization_4/ReadVariableOp_12\
,sequential_4/conv2d_8/BiasAdd/ReadVariableOp,sequential_4/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_8/Conv2D/ReadVariableOp+sequential_4/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_4/conv2d_9/Conv2D/ReadVariableOp+sequential_4/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp:` \
0
_output_shapes
:����������
(
_user_specified_nameconv2d_8_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
R
conv2d_8_input@
 serving_default_conv2d_8_input:0����������;
dense_40
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ĩ
�F
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
�_default_save_signature
+�&call_and_return_all_conditional_losses
�__call__"�B
_tf_keras_sequential�B{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_8_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "square"}}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "log"}}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 306, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_8_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "square"}}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "log"}}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 306, 1]}}
�


kernel
regularization_losses
	variables
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 294, 40]}}
�	
axis
	gamma
beta
moving_mean
moving_variance
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 294, 40]}}
�
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "square"}}
�
(regularization_losses
)	variables
*trainable_variables
+	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "AveragePooling2D", "name": "average_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�
,regularization_losses
-	variables
.trainable_variables
/	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "log"}}
�
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
�
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1520}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1520]}}
�
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratem�m�m�m�m�8m�9m�v�v�v�v�v�8v�9v�"
	optimizer
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
87
98"
trackable_list_wrapper
Q
0
1
2
3
4
85
96"
trackable_list_wrapper
�
regularization_losses
Clayer_regularization_losses
	variables
Dnon_trainable_variables
trainable_variables

Elayers
Fmetrics
Glayer_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
):'(2conv2d_8/kernel
:(2conv2d_8/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
Hlayer_regularization_losses
	variables
Inon_trainable_variables
trainable_variables

Jlayers
Kmetrics
Llayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'((2conv2d_9/kernel
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
regularization_losses
Mlayer_regularization_losses
	variables
Nnon_trainable_variables
trainable_variables

Olayers
Pmetrics
Qlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'(2batch_normalization_4/gamma
(:&(2batch_normalization_4/beta
1:/( (2!batch_normalization_4/moving_mean
5:3( (2%batch_normalization_4/moving_variance
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
 regularization_losses
Rlayer_regularization_losses
!	variables
Snon_trainable_variables
"trainable_variables

Tlayers
Umetrics
Vlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
$regularization_losses
Wlayer_regularization_losses
%	variables
Xnon_trainable_variables
&trainable_variables

Ylayers
Zmetrics
[layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
(regularization_losses
\layer_regularization_losses
)	variables
]non_trainable_variables
*trainable_variables

^layers
_metrics
`layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
,regularization_losses
alayer_regularization_losses
-	variables
bnon_trainable_variables
.trainable_variables

clayers
dmetrics
elayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0regularization_losses
flayer_regularization_losses
1	variables
gnon_trainable_variables
2trainable_variables

hlayers
imetrics
jlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
4regularization_losses
klayer_regularization_losses
5	variables
lnon_trainable_variables
6trainable_variables

mlayers
nmetrics
olayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
�
:regularization_losses
player_regularization_losses
;	variables
qnon_trainable_variables
<trainable_variables

rlayers
smetrics
tlayer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
u0
v1"
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
 "
trackable_list_wrapper
.
0
1"
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
�
	wtotal
	xcount
y	variables
z	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
.:,(2Adam/conv2d_8/kernel/m
 :(2Adam/conv2d_8/bias/m
.:,((2Adam/conv2d_9/kernel/m
.:,(2"Adam/batch_normalization_4/gamma/m
-:+(2!Adam/batch_normalization_4/beta/m
&:$	�2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
.:,(2Adam/conv2d_8/kernel/v
 :(2Adam/conv2d_8/bias/v
.:,((2Adam/conv2d_9/kernel/v
.:,(2"Adam/batch_normalization_4/gamma/v
-:+(2!Adam/batch_normalization_4/beta/v
&:$	�2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
�2�
!__inference__wrapped_model_124983�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *6�3
1�.
conv2d_8_input����������
�2�
H__inference_sequential_4_layer_call_and_return_conditional_losses_125594
H__inference_sequential_4_layer_call_and_return_conditional_losses_125550
H__inference_sequential_4_layer_call_and_return_conditional_losses_125324
H__inference_sequential_4_layer_call_and_return_conditional_losses_125355�
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
�2�
-__inference_sequential_4_layer_call_fn_125464
-__inference_sequential_4_layer_call_fn_125640
-__inference_sequential_4_layer_call_fn_125410
-__inference_sequential_4_layer_call_fn_125617�
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
�2�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_125650�
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
)__inference_conv2d_8_layer_call_fn_125659�
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
D__inference_conv2d_9_layer_call_and_return_conditional_losses_125666�
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
)__inference_conv2d_9_layer_call_fn_125673�
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
�2�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125711
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125775
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125693
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125757�
���
FullArgSpec)
args!�
jself
jinputs

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
�2�
6__inference_batch_normalization_4_layer_call_fn_125801
6__inference_batch_normalization_4_layer_call_fn_125724
6__inference_batch_normalization_4_layer_call_fn_125788
6__inference_batch_normalization_4_layer_call_fn_125737�
���
FullArgSpec)
args!�
jself
jinputs

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
�2�
H__inference_activation_8_layer_call_and_return_conditional_losses_125806�
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
-__inference_activation_8_layer_call_fn_125811�
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
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_125093�
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
annotations� *@�=
;�84������������������������������������
�2�
4__inference_average_pooling2d_4_layer_call_fn_125099�
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
annotations� *@�=
;�84������������������������������������
�2�
H__inference_activation_9_layer_call_and_return_conditional_losses_125820�
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
-__inference_activation_9_layer_call_fn_125825�
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
E__inference_dropout_4_layer_call_and_return_conditional_losses_125837
E__inference_dropout_4_layer_call_and_return_conditional_losses_125842�
���
FullArgSpec)
args!�
jself
jinputs

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
*__inference_dropout_4_layer_call_fn_125852
*__inference_dropout_4_layer_call_fn_125847�
���
FullArgSpec)
args!�
jself
jinputs

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
�2�
E__inference_flatten_4_layer_call_and_return_conditional_losses_125858�
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
*__inference_flatten_4_layer_call_fn_125863�
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
C__inference_dense_4_layer_call_and_return_conditional_losses_125874�
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
(__inference_dense_4_layer_call_fn_125883�
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
$__inference_signature_wrapper_125497conv2d_8_input"�
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
 �
!__inference__wrapped_model_124983�	89@�=
6�3
1�.
conv2d_8_input����������
� "1�.
,
dense_4!�
dense_4����������
H__inference_activation_8_layer_call_and_return_conditional_losses_125806j8�5
.�+
)�&
inputs����������(
� ".�+
$�!
0����������(
� �
-__inference_activation_8_layer_call_fn_125811]8�5
.�+
)�&
inputs����������(
� "!�����������(�
H__inference_activation_9_layer_call_and_return_conditional_losses_125820h7�4
-�*
(�%
inputs���������&(
� "-�*
#� 
0���������&(
� �
-__inference_activation_9_layer_call_fn_125825[7�4
-�*
(�%
inputs���������&(
� " ����������&(�
O__inference_average_pooling2d_4_layer_call_and_return_conditional_losses_125093�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
4__inference_average_pooling2d_4_layer_call_fn_125099�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125693t<�9
2�/
)�&
inputs����������(
p
� ".�+
$�!
0����������(
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125711t<�9
2�/
)�&
inputs����������(
p 
� ".�+
$�!
0����������(
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125757�M�J
C�@
:�7
inputs+���������������������������(
p
� "?�<
5�2
0+���������������������������(
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_125775�M�J
C�@
:�7
inputs+���������������������������(
p 
� "?�<
5�2
0+���������������������������(
� �
6__inference_batch_normalization_4_layer_call_fn_125724g<�9
2�/
)�&
inputs����������(
p
� "!�����������(�
6__inference_batch_normalization_4_layer_call_fn_125737g<�9
2�/
)�&
inputs����������(
p 
� "!�����������(�
6__inference_batch_normalization_4_layer_call_fn_125788�M�J
C�@
:�7
inputs+���������������������������(
p
� "2�/+���������������������������(�
6__inference_batch_normalization_4_layer_call_fn_125801�M�J
C�@
:�7
inputs+���������������������������(
p 
� "2�/+���������������������������(�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_125650n8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������(
� �
)__inference_conv2d_8_layer_call_fn_125659a8�5
.�+
)�&
inputs����������
� "!�����������(�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_125666m8�5
.�+
)�&
inputs����������(
� ".�+
$�!
0����������(
� �
)__inference_conv2d_9_layer_call_fn_125673`8�5
.�+
)�&
inputs����������(
� "!�����������(�
C__inference_dense_4_layer_call_and_return_conditional_losses_125874]890�-
&�#
!�
inputs����������
� "%�"
�
0���������
� |
(__inference_dense_4_layer_call_fn_125883P890�-
&�#
!�
inputs����������
� "�����������
E__inference_dropout_4_layer_call_and_return_conditional_losses_125837l;�8
1�.
(�%
inputs���������&(
p
� "-�*
#� 
0���������&(
� �
E__inference_dropout_4_layer_call_and_return_conditional_losses_125842l;�8
1�.
(�%
inputs���������&(
p 
� "-�*
#� 
0���������&(
� �
*__inference_dropout_4_layer_call_fn_125847_;�8
1�.
(�%
inputs���������&(
p
� " ����������&(�
*__inference_dropout_4_layer_call_fn_125852_;�8
1�.
(�%
inputs���������&(
p 
� " ����������&(�
E__inference_flatten_4_layer_call_and_return_conditional_losses_125858a7�4
-�*
(�%
inputs���������&(
� "&�#
�
0����������
� �
*__inference_flatten_4_layer_call_fn_125863T7�4
-�*
(�%
inputs���������&(
� "������������
H__inference_sequential_4_layer_call_and_return_conditional_losses_125324|	89H�E
>�;
1�.
conv2d_8_input����������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_4_layer_call_and_return_conditional_losses_125355|	89H�E
>�;
1�.
conv2d_8_input����������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_4_layer_call_and_return_conditional_losses_125550t	89@�=
6�3
)�&
inputs����������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_4_layer_call_and_return_conditional_losses_125594t	89@�=
6�3
)�&
inputs����������
p 

 
� "%�"
�
0���������
� �
-__inference_sequential_4_layer_call_fn_125410o	89H�E
>�;
1�.
conv2d_8_input����������
p

 
� "�����������
-__inference_sequential_4_layer_call_fn_125464o	89H�E
>�;
1�.
conv2d_8_input����������
p 

 
� "�����������
-__inference_sequential_4_layer_call_fn_125617g	89@�=
6�3
)�&
inputs����������
p

 
� "�����������
-__inference_sequential_4_layer_call_fn_125640g	89@�=
6�3
)�&
inputs����������
p 

 
� "�����������
$__inference_signature_wrapper_125497�	89R�O
� 
H�E
C
conv2d_8_input1�.
conv2d_8_input����������"1�.
,
dense_4!�
dense_4���������