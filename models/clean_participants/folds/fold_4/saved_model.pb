ќЎ
И
B
AssignVariableOp
resource
value"dtype"
dtypetype
М
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

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
њ
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
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8Іы

conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:(*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:(*
dtype0

conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:((*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:((*
dtype0

batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_26/gamma

0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
:(*
dtype0

batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_26/beta

/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
:(*
dtype0

"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_26/moving_mean

6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
:(*
dtype0
Є
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_26/moving_variance

:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
:(*
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	№*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
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

Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*(
shared_nameAdam/conv2d_52/kernel/m

+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*&
_output_shapes
:(*
dtype0

Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*&
shared_nameAdam/conv2d_52/bias/m
{
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes
:(*
dtype0

Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:((*(
shared_nameAdam/conv2d_53/kernel/m

+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*&
_output_shapes
:((*
dtype0

#Adam/batch_normalization_26/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#Adam/batch_normalization_26/gamma/m

7Adam/batch_normalization_26/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_26/gamma/m*
_output_shapes
:(*
dtype0

"Adam/batch_normalization_26/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_26/beta/m

6Adam/batch_normalization_26/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_26/beta/m*
_output_shapes
:(*
dtype0

Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№*'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes
:	№*
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*(
shared_nameAdam/conv2d_52/kernel/v

+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*&
_output_shapes
:(*
dtype0

Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*&
shared_nameAdam/conv2d_52/bias/v
{
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes
:(*
dtype0

Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:((*(
shared_nameAdam/conv2d_53/kernel/v

+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*&
_output_shapes
:((*
dtype0

#Adam/batch_normalization_26/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#Adam/batch_normalization_26/gamma/v

7Adam/batch_normalization_26/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_26/gamma/v*
_output_shapes
:(*
dtype0

"Adam/batch_normalization_26/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_26/beta/v

6Adam/batch_normalization_26/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_26/beta/v*
_output_shapes
:(*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№*'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes
:	№*
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*С9
valueЗ9BД9 B­9
Ю
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

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
Ь
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemmmmm8m9mvvvvv8v9v
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
­
regularization_losses
Clayer_regularization_losses
	variables
Dnon_trainable_variables
trainable_variables

Elayers
Fmetrics
Glayer_metrics
 
\Z
VARIABLE_VALUEconv2d_52/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_52/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
Hlayer_regularization_losses
	variables
Inon_trainable_variables
trainable_variables

Jlayers
Kmetrics
Llayer_metrics
\Z
VARIABLE_VALUEconv2d_53/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
regularization_losses
Mlayer_regularization_losses
	variables
Nnon_trainable_variables
trainable_variables

Olayers
Pmetrics
Qlayer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_26/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_26/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_26/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_26/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

0
1
­
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
­
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
­
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
­
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
­
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
­
4regularization_losses
klayer_regularization_losses
5	variables
lnon_trainable_variables
6trainable_variables

mlayers
nmetrics
olayer_metrics
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
­
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
}
VARIABLE_VALUEAdam/conv2d_52/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_52/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_53/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_26/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_26/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_52/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_52/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_53/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_26/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_26/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv2d_52_inputPlaceholder*0
_output_shapes
:џџџџџџџџџВ*
dtype0*%
shape:џџџџџџџџџВ
Ј
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_52_inputconv2d_52/kernelconv2d_52/biasconv2d_53/kernelbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_variancedense_26/kerneldense_26/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1314125
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp0batch_normalization_26/gamma/Read/ReadVariableOp/batch_normalization_26/beta/Read/ReadVariableOp6batch_normalization_26/moving_mean/Read/ReadVariableOp:batch_normalization_26/moving_variance/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp7Adam/batch_normalization_26/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_26/beta/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp7Adam/batch_normalization_26/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_26/beta/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOpConst*-
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1314630
ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_52/kernelconv2d_52/biasconv2d_53/kernelbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_variancedense_26/kerneldense_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/m#Adam/batch_normalization_26/gamma/m"Adam/batch_normalization_26/beta/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/v#Adam/batch_normalization_26/gamma/v"Adam/batch_normalization_26/beta/vAdam/dense_26/kernel/vAdam/dense_26/bias/v*,
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1314736ае
П
c
G__inference_flatten_26_layer_call_and_return_conditional_losses_1314486

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ№  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
Щ
Ё
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1313764

inputs"
conv2d_readvariableop_resource
identityЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџІ(:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
Є9
Е
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314222

inputs,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_53_conv2d_readvariableop_resource2
.batch_normalization_26_readvariableop_resource4
0batch_normalization_26_readvariableop_1_resourceC
?batch_normalization_26_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identityЂ6batch_normalization_26/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_26/ReadVariableOpЂ'batch_normalization_26/ReadVariableOp_1Ђ conv2d_52/BiasAdd/ReadVariableOpЂconv2d_52/Conv2D/ReadVariableOpЂconv2d_53/Conv2D/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpГ
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02!
conv2d_52/Conv2D/ReadVariableOpУ
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
conv2d_52/Conv2DЊ
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOpБ
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2
conv2d_52/BiasAddГ
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02!
conv2d_53/Conv2D/ReadVariableOpз
conv2d_53/Conv2DConv2Dconv2d_52/BiasAdd:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
conv2d_53/Conv2DЙ
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:(*
dtype02'
%batch_normalization_26/ReadVariableOpП
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:(*
dtype02)
'batch_normalization_26/ReadVariableOp_1ь
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpђ
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ш
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_53/Conv2D:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
is_training( 2)
'batch_normalization_26/FusedBatchNormV3
activation_52/SquareSquare+batch_normalization_26/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2
activation_52/Squareз
average_pooling2d_26/AvgPoolAvgPoolactivation_52/Square:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
ksize
#*
paddingVALID*
strides
2
average_pooling2d_26/AvgPool
%activation_53/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2'
%activation_53/clip_by_value/Minimum/yц
#activation_53/clip_by_value/MinimumMinimum%average_pooling2d_26/AvgPool:output:0.activation_53/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2%
#activation_53/clip_by_value/Minimum
activation_53/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж32
activation_53/clip_by_value/yа
activation_53/clip_by_valueMaximum'activation_53/clip_by_value/Minimum:z:0&activation_53/clip_by_value/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
activation_53/clip_by_value
activation_53/LogLogactivation_53/clip_by_value:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
activation_53/Log
dropout_26/IdentityIdentityactivation_53/Log:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout_26/Identityu
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ№  2
flatten_26/Const
flatten_26/ReshapeReshapedropout_26/Identity:output:0flatten_26/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
flatten_26/ReshapeЉ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02 
dense_26/MatMul/ReadVariableOpЃ
dense_26/MatMulMatMulflatten_26/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЇ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpЅ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAdd|
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/Softmaxо
IdentityIdentitydense_26/Softmax:softmax:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_1!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
Њ
H
,__inference_flatten_26_layer_call_fn_1314491

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ№* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_26_layer_call_and_return_conditional_losses_13139162
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
й
э
/__inference_sequential_26_layer_call_fn_1314245

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
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_26_layer_call_and_return_conditional_losses_13140172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
О
K
/__inference_activation_53_layer_call_fn_1314453

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_53_layer_call_and_return_conditional_losses_13138722
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
џ
і
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314403

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs


+__inference_conv2d_52_layer_call_fn_1314287

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_13137412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџВ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
ђ	
п
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1314278

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџВ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
Я

S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314321

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(:(:(:(:(:*
epsilon%№'7*
exponential_avg_factor%fff?2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
Ѓ
Ћ
8__inference_batch_normalization_26_layer_call_fn_1314365

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13137042
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
Я

S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1313673

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(:(:(:(:(:*
epsilon%№'7*
exponential_avg_factor%fff?2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
Ф
e
,__inference_dropout_26_layer_call_fn_1314475

inputs
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
И
H
,__inference_dropout_26_layer_call_fn_1314480

inputs
identityЭ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138972
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs

m
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_1313721

inputs
identityЖ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
#*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
)

J__inference_sequential_26_layer_call_and_return_conditional_losses_1313983
conv2d_52_input
conv2d_52_1313955
conv2d_52_1313957
conv2d_53_1313960"
batch_normalization_26_1313963"
batch_normalization_26_1313965"
batch_normalization_26_1313967"
batch_normalization_26_1313969
dense_26_1313977
dense_26_1313979
identityЂ.batch_normalization_26/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЎ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallconv2d_52_inputconv2d_52_1313955conv2d_52_1313957*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_13137412#
!conv2d_52/StatefulPartitionedCallД
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1313960*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_13137642#
!conv2d_53/StatefulPartitionedCallЮ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_26_1313963batch_normalization_26_1313965batch_normalization_26_1313967batch_normalization_26_1313969*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_131381320
.batch_normalization_26/StatefulPartitionedCall
activation_52/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_52_layer_call_and_return_conditional_losses_13138542
activation_52/PartitionedCallЁ
$average_pooling2d_26/PartitionedCallPartitionedCall&activation_52/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_13137212&
$average_pooling2d_26/PartitionedCall
activation_53/PartitionedCallPartitionedCall-average_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_53_layer_call_and_return_conditional_losses_13138722
activation_53/PartitionedCall
dropout_26/PartitionedCallPartitionedCall&activation_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138972
dropout_26/PartitionedCallљ
flatten_26/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ№* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_26_layer_call_and_return_conditional_losses_13139162
flatten_26/PartitionedCallД
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_1313977dense_26_1313979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_13139352"
 dense_26/StatefulPartitionedCall
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0/^batch_normalization_26/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
У
і
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314339

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(:(:(:(:(:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
њ	
о
E__inference_dense_26_layer_call_and_return_conditional_losses_1313935

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ№::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ№
 
_user_specified_nameinputs
Й
R
6__inference_average_pooling2d_26_layer_call_fn_1313727

inputs
identityђ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_13137212
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
еL

J__inference_sequential_26_layer_call_and_return_conditional_losses_1314178

inputs,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_53_conv2d_readvariableop_resource2
.batch_normalization_26_readvariableop_resource4
0batch_normalization_26_readvariableop_1_resourceC
?batch_normalization_26_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identityЂ%batch_normalization_26/AssignNewValueЂ'batch_normalization_26/AssignNewValue_1Ђ6batch_normalization_26/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_26/ReadVariableOpЂ'batch_normalization_26/ReadVariableOp_1Ђ conv2d_52/BiasAdd/ReadVariableOpЂconv2d_52/Conv2D/ReadVariableOpЂconv2d_53/Conv2D/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpГ
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02!
conv2d_52/Conv2D/ReadVariableOpУ
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
conv2d_52/Conv2DЊ
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOpБ
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2
conv2d_52/BiasAddГ
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02!
conv2d_53/Conv2D/ReadVariableOpз
conv2d_53/Conv2DConv2Dconv2d_52/BiasAdd:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
conv2d_53/Conv2DЙ
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:(*
dtype02'
%batch_normalization_26/ReadVariableOpП
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:(*
dtype02)
'batch_normalization_26/ReadVariableOp_1ь
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpђ
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1і
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_53/Conv2D:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
exponential_avg_factor%fff?2)
'batch_normalization_26/FusedBatchNormV3З
%batch_normalization_26/AssignNewValueAssignVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource4batch_normalization_26/FusedBatchNormV3:batch_mean:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_26/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_26/AssignNewValueХ
'batch_normalization_26/AssignNewValue_1AssignVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_26/FusedBatchNormV3:batch_variance:09^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_26/AssignNewValue_1
activation_52/SquareSquare+batch_normalization_26/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2
activation_52/Squareз
average_pooling2d_26/AvgPoolAvgPoolactivation_52/Square:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
ksize
#*
paddingVALID*
strides
2
average_pooling2d_26/AvgPool
%activation_53/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2'
%activation_53/clip_by_value/Minimum/yц
#activation_53/clip_by_value/MinimumMinimum%average_pooling2d_26/AvgPool:output:0.activation_53/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2%
#activation_53/clip_by_value/Minimum
activation_53/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж32
activation_53/clip_by_value/yа
activation_53/clip_by_valueMaximum'activation_53/clip_by_value/Minimum:z:0&activation_53/clip_by_value/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
activation_53/clip_by_value
activation_53/LogLogactivation_53/clip_by_value:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
activation_53/Logy
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_26/dropout/ConstЋ
dropout_26/dropout/MulMulactivation_53/Log:y:0!dropout_26/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout_26/dropout/Muly
dropout_26/dropout/ShapeShapeactivation_53/Log:y:0*
T0*
_output_shapes
:2
dropout_26/dropout/Shapeн
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
dtype021
/dropout_26/dropout/random_uniform/RandomUniform
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_26/dropout/GreaterEqual/yђ
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2!
dropout_26/dropout/GreaterEqualЈ
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ&(2
dropout_26/dropout/CastЎ
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout_26/dropout/Mul_1u
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ№  2
flatten_26/Const
flatten_26/ReshapeReshapedropout_26/dropout/Mul_1:z:0flatten_26/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
flatten_26/ReshapeЉ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02 
dense_26/MatMul/ReadVariableOpЃ
dense_26/MatMulMatMulflatten_26/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЇ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpЅ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAdd|
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/SoftmaxА
IdentityIdentitydense_26/Softmax:softmax:0&^batch_normalization_26/AssignNewValue(^batch_normalization_26/AssignNewValue_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_1!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2N
%batch_normalization_26/AssignNewValue%batch_normalization_26/AssignNewValue2R
'batch_normalization_26/AssignNewValue_1'batch_normalization_26/AssignNewValue_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs


S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314385

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
exponential_avg_factor%fff?2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
ђ
f
J__inference_activation_53_layer_call_and_return_conditional_losses_1314448

inputs
identityw
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimuminputs clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж32
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
clip_by_value^
LogLogclip_by_value:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
Logc
IdentityIdentityLog:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
Т
K
/__inference_activation_52_layer_call_fn_1314439

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_52_layer_call_and_return_conditional_losses_13138542
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџІ(:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
Х
f
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314465

inputs
identityc
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
:џџџџџџџџџ&(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yЦ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ&(2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
я(

J__inference_sequential_26_layer_call_and_return_conditional_losses_1314071

inputs
conv2d_52_1314043
conv2d_52_1314045
conv2d_53_1314048"
batch_normalization_26_1314051"
batch_normalization_26_1314053"
batch_normalization_26_1314055"
batch_normalization_26_1314057
dense_26_1314065
dense_26_1314067
identityЂ.batch_normalization_26/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЅ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_1314043conv2d_52_1314045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_13137412#
!conv2d_52/StatefulPartitionedCallД
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1314048*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_13137642#
!conv2d_53/StatefulPartitionedCallЮ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_26_1314051batch_normalization_26_1314053batch_normalization_26_1314055batch_normalization_26_1314057*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_131381320
.batch_normalization_26/StatefulPartitionedCall
activation_52/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_52_layer_call_and_return_conditional_losses_13138542
activation_52/PartitionedCallЁ
$average_pooling2d_26/PartitionedCallPartitionedCall&activation_52/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_13137212&
$average_pooling2d_26/PartitionedCall
activation_53/PartitionedCallPartitionedCall-average_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_53_layer_call_and_return_conditional_losses_13138722
activation_53/PartitionedCall
dropout_26/PartitionedCallPartitionedCall&activation_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138972
dropout_26/PartitionedCallљ
flatten_26/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ№* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_26_layer_call_and_return_conditional_losses_13139162
flatten_26/PartitionedCallД
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_1314065dense_26_1314067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_13139352"
 dense_26/StatefulPartitionedCall
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0/^batch_normalization_26/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
П
c
G__inference_flatten_26_layer_call_and_return_conditional_losses_1313916

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ№  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
ъ
e
G__inference_dropout_26_layer_call_and_return_conditional_losses_1313897

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
ф
q
+__inference_conv2d_53_layer_call_fn_1314301

inputs
unknown
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_13137642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџІ(:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
п
Ћ
8__inference_batch_normalization_26_layer_call_fn_1314429

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13138132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
ђ	
п
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1313741

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџВ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
У
і
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1313704

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(:(:(:(:(:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
к
f
J__inference_activation_52_layer_call_and_return_conditional_losses_1313854

inputs
identity]
SquareSquareinputs*
T0*0
_output_shapes
:џџџџџџџџџІ(2
Squareg
IdentityIdentity
Square:y:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџІ(:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
М*
Д
J__inference_sequential_26_layer_call_and_return_conditional_losses_1313952
conv2d_52_input
conv2d_52_1313752
conv2d_52_1313754
conv2d_53_1313773"
batch_normalization_26_1313840"
batch_normalization_26_1313842"
batch_normalization_26_1313844"
batch_normalization_26_1313846
dense_26_1313946
dense_26_1313948
identityЂ.batch_normalization_26/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ"dropout_26/StatefulPartitionedCallЎ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallconv2d_52_inputconv2d_52_1313752conv2d_52_1313754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_13137412#
!conv2d_52/StatefulPartitionedCallД
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1313773*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_13137642#
!conv2d_53/StatefulPartitionedCallЬ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_26_1313840batch_normalization_26_1313842batch_normalization_26_1313844batch_normalization_26_1313846*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_131379520
.batch_normalization_26/StatefulPartitionedCall
activation_52/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_52_layer_call_and_return_conditional_losses_13138542
activation_52/PartitionedCallЁ
$average_pooling2d_26/PartitionedCallPartitionedCall&activation_52/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_13137212&
$average_pooling2d_26/PartitionedCall
activation_53/PartitionedCallPartitionedCall-average_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_53_layer_call_and_return_conditional_losses_13138722
activation_53/PartitionedCall
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall&activation_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138922$
"dropout_26/StatefulPartitionedCall
flatten_26/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ№* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_26_layer_call_and_return_conditional_losses_13139162
flatten_26/PartitionedCallД
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_1313946dense_26_1313948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_13139352"
 dense_26/StatefulPartitionedCallО
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0/^batch_normalization_26/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
њ	
о
E__inference_dense_26_layer_call_and_return_conditional_losses_1314502

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ№::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ№
 
_user_specified_nameinputs
Ё
Ћ
8__inference_batch_normalization_26_layer_call_fn_1314352

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13136732
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
Х
f
G__inference_dropout_26_layer_call_and_return_conditional_losses_1313892

inputs
identityc
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
:џџџџџџџџџ&(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yЦ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ&(2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
ЉH

 __inference__traced_save_1314630
file_prefix/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop;
7savev2_batch_normalization_26_gamma_read_readvariableop:
6savev2_batch_normalization_26_beta_read_readvariableopA
=savev2_batch_normalization_26_moving_mean_read_readvariableopE
Asavev2_batch_normalization_26_moving_variance_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableopB
>savev2_adam_batch_normalization_26_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_26_beta_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableopB
>savev2_adam_batch_normalization_26_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_26_beta_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameч
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*љ
valueяBь!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЪ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesњ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop7savev2_batch_normalization_26_gamma_read_readvariableop6savev2_batch_normalization_26_beta_read_readvariableop=savev2_batch_normalization_26_moving_mean_read_readvariableopAsavev2_batch_normalization_26_moving_variance_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop>savev2_adam_batch_normalization_26_gamma_m_read_readvariableop=savev2_adam_batch_normalization_26_beta_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop>savev2_adam_batch_normalization_26_gamma_v_read_readvariableop=savev2_adam_batch_normalization_26_beta_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*
_input_shapesњ
ї: :(:(:((:(:(:(:(:	№:: : : : : : : : : :(:(:((:(:(:	№::(:(:((:(:(:	№:: 2(
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
:	№: 	
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
:	№: 
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
:	№:  

_output_shapes
::!

_output_shapes
: 
і
і
/__inference_sequential_26_layer_call_fn_1314092
conv2d_52_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallconv2d_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_26_layer_call_and_return_conditional_losses_13140712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
р

*__inference_dense_26_layer_call_fn_1314511

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_13139352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ№::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ№
 
_user_specified_nameinputs
н
Ћ
8__inference_batch_normalization_26_layer_call_fn_1314416

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13137952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
ъ
e
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314470

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
гG
	
"__inference__wrapped_model_1313611
conv2d_52_input:
6sequential_26_conv2d_52_conv2d_readvariableop_resource;
7sequential_26_conv2d_52_biasadd_readvariableop_resource:
6sequential_26_conv2d_53_conv2d_readvariableop_resource@
<sequential_26_batch_normalization_26_readvariableop_resourceB
>sequential_26_batch_normalization_26_readvariableop_1_resourceQ
Msequential_26_batch_normalization_26_fusedbatchnormv3_readvariableop_resourceS
Osequential_26_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource9
5sequential_26_dense_26_matmul_readvariableop_resource:
6sequential_26_dense_26_biasadd_readvariableop_resource
identityЂDsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOpЂFsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Ђ3sequential_26/batch_normalization_26/ReadVariableOpЂ5sequential_26/batch_normalization_26/ReadVariableOp_1Ђ.sequential_26/conv2d_52/BiasAdd/ReadVariableOpЂ-sequential_26/conv2d_52/Conv2D/ReadVariableOpЂ-sequential_26/conv2d_53/Conv2D/ReadVariableOpЂ-sequential_26/dense_26/BiasAdd/ReadVariableOpЂ,sequential_26/dense_26/MatMul/ReadVariableOpн
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOpі
sequential_26/conv2d_52/Conv2DConv2Dconv2d_52_input5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2Dд
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpщ
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2!
sequential_26/conv2d_52/BiasAddн
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp
sequential_26/conv2d_53/Conv2DConv2D(sequential_26/conv2d_52/BiasAdd:output:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2Dу
3sequential_26/batch_normalization_26/ReadVariableOpReadVariableOp<sequential_26_batch_normalization_26_readvariableop_resource*
_output_shapes
:(*
dtype025
3sequential_26/batch_normalization_26/ReadVariableOpщ
5sequential_26/batch_normalization_26/ReadVariableOp_1ReadVariableOp>sequential_26_batch_normalization_26_readvariableop_1_resource*
_output_shapes
:(*
dtype027
5sequential_26/batch_normalization_26/ReadVariableOp_1
Dsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_26_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02F
Dsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp
Fsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_26_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02H
Fsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Ъ
5sequential_26/batch_normalization_26/FusedBatchNormV3FusedBatchNormV3'sequential_26/conv2d_53/Conv2D:output:0;sequential_26/batch_normalization_26/ReadVariableOp:value:0=sequential_26/batch_normalization_26/ReadVariableOp_1:value:0Lsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
is_training( 27
5sequential_26/batch_normalization_26/FusedBatchNormV3Ш
"sequential_26/activation_52/SquareSquare9sequential_26/batch_normalization_26/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2$
"sequential_26/activation_52/Square
*sequential_26/average_pooling2d_26/AvgPoolAvgPool&sequential_26/activation_52/Square:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(*
ksize
#*
paddingVALID*
strides
2,
*sequential_26/average_pooling2d_26/AvgPoolЏ
3sequential_26/activation_53/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F25
3sequential_26/activation_53/clip_by_value/Minimum/y
1sequential_26/activation_53/clip_by_value/MinimumMinimum3sequential_26/average_pooling2d_26/AvgPool:output:0<sequential_26/activation_53/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(23
1sequential_26/activation_53/clip_by_value/Minimum
+sequential_26/activation_53/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж32-
+sequential_26/activation_53/clip_by_value/y
)sequential_26/activation_53/clip_by_valueMaximum5sequential_26/activation_53/clip_by_value/Minimum:z:04sequential_26/activation_53/clip_by_value/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2+
)sequential_26/activation_53/clip_by_valueВ
sequential_26/activation_53/LogLog-sequential_26/activation_53/clip_by_value:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2!
sequential_26/activation_53/LogБ
!sequential_26/dropout_26/IdentityIdentity#sequential_26/activation_53/Log:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2#
!sequential_26/dropout_26/Identity
sequential_26/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ№  2 
sequential_26/flatten_26/Constз
 sequential_26/flatten_26/ReshapeReshape*sequential_26/dropout_26/Identity:output:0'sequential_26/flatten_26/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ№2"
 sequential_26/flatten_26/Reshapeг
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOpл
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_26/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_26/dense_26/MatMulб
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOpн
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_26/dense_26/BiasAddІ
sequential_26/dense_26/SoftmaxSoftmax'sequential_26/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_26/dense_26/Softmaxъ
IdentityIdentity(sequential_26/dense_26/Softmax:softmax:0E^sequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOpG^sequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_14^sequential_26/batch_normalization_26/ReadVariableOp6^sequential_26/batch_normalization_26/ReadVariableOp_1/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2
Dsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOpDsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2
Fsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Fsequential_26/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12j
3sequential_26/batch_normalization_26/ReadVariableOp3sequential_26/batch_normalization_26/ReadVariableOp2n
5sequential_26/batch_normalization_26/ReadVariableOp_15sequential_26/batch_normalization_26/ReadVariableOp_12`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
ђ
f
J__inference_activation_53_layer_call_and_return_conditional_losses_1313872

inputs
identityw
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * @F2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimuminputs clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж32
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
clip_by_value^
LogLogclip_by_value:z:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2
Logc
IdentityIdentityLog:y:0*
T0*/
_output_shapes
:џџџџџџџџџ&(2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ&(:W S
/
_output_shapes
:џџџџџџџџџ&(
 
_user_specified_nameinputs
Ф
ь
%__inference_signature_wrapper_1314125
conv2d_52_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallconv2d_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_13136112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
к
f
J__inference_activation_52_layer_call_and_return_conditional_losses_1314434

inputs
identity]
SquareSquareinputs*
T0*0
_output_shapes
:џџџџџџџџџІ(2
Squareg
IdentityIdentity
Square:y:0*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџІ(:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs


S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1313795

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1й
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
exponential_avg_factor%fff?2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1џ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
И
В
#__inference__traced_restore_1314736
file_prefix%
!assignvariableop_conv2d_52_kernel%
!assignvariableop_1_conv2d_52_bias'
#assignvariableop_2_conv2d_53_kernel3
/assignvariableop_3_batch_normalization_26_gamma2
.assignvariableop_4_batch_normalization_26_beta9
5assignvariableop_5_batch_normalization_26_moving_mean=
9assignvariableop_6_batch_normalization_26_moving_variance&
"assignvariableop_7_dense_26_kernel$
 assignvariableop_8_dense_26_bias 
assignvariableop_9_adam_iter#
assignvariableop_10_adam_beta_1#
assignvariableop_11_adam_beta_2"
assignvariableop_12_adam_decay*
&assignvariableop_13_adam_learning_rate
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1/
+assignvariableop_18_adam_conv2d_52_kernel_m-
)assignvariableop_19_adam_conv2d_52_bias_m/
+assignvariableop_20_adam_conv2d_53_kernel_m;
7assignvariableop_21_adam_batch_normalization_26_gamma_m:
6assignvariableop_22_adam_batch_normalization_26_beta_m.
*assignvariableop_23_adam_dense_26_kernel_m,
(assignvariableop_24_adam_dense_26_bias_m/
+assignvariableop_25_adam_conv2d_52_kernel_v-
)assignvariableop_26_adam_conv2d_52_bias_v/
+assignvariableop_27_adam_conv2d_53_kernel_v;
7assignvariableop_28_adam_batch_normalization_26_gamma_v:
6assignvariableop_29_adam_batch_normalization_26_beta_v.
*assignvariableop_30_adam_dense_26_kernel_v,
(assignvariableop_31_adam_dense_26_bias_v
identity_33ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*љ
valueяBь!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesа
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesг
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_52_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_52_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ј
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_53_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Д
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_26_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Г
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_26_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5К
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_26_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6О
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_26_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_26_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ѕ
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_26_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9Ё
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ў
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ё
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ѓ
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Г
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_conv2d_52_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Б
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_conv2d_52_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Г
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_53_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21П
AssignVariableOp_21AssignVariableOp7assignvariableop_21_adam_batch_normalization_26_gamma_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22О
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_batch_normalization_26_beta_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23В
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_26_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24А
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_26_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Г
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_52_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Б
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_52_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Г
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_53_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28П
AssignVariableOp_28AssignVariableOp7assignvariableop_28_adam_batch_normalization_26_gamma_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29О
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_batch_normalization_26_beta_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30В
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_26_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31А
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_26_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_319
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_32
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_33"#
identity_33Identity_33:output:0*
_input_shapes
: ::::::::::::::::::::::::::::::::2$
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
Ё*
Ћ
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314017

inputs
conv2d_52_1313989
conv2d_52_1313991
conv2d_53_1313994"
batch_normalization_26_1313997"
batch_normalization_26_1313999"
batch_normalization_26_1314001"
batch_normalization_26_1314003
dense_26_1314011
dense_26_1314013
identityЂ.batch_normalization_26/StatefulPartitionedCallЂ!conv2d_52/StatefulPartitionedCallЂ!conv2d_53/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ"dropout_26/StatefulPartitionedCallЅ
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_1313989conv2d_52_1313991*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_13137412#
!conv2d_52/StatefulPartitionedCallД
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1313994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_13137642#
!conv2d_53/StatefulPartitionedCallЬ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_26_1313997batch_normalization_26_1313999batch_normalization_26_1314001batch_normalization_26_1314003*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_131379520
.batch_normalization_26/StatefulPartitionedCall
activation_52/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџІ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_52_layer_call_and_return_conditional_losses_13138542
activation_52/PartitionedCallЁ
$average_pooling2d_26/PartitionedCallPartitionedCall&activation_52/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_13137212&
$average_pooling2d_26/PartitionedCall
activation_53/PartitionedCallPartitionedCall-average_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_53_layer_call_and_return_conditional_losses_13138722
activation_53/PartitionedCall
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall&activation_53/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_26_layer_call_and_return_conditional_losses_13138922$
"dropout_26/StatefulPartitionedCall
flatten_26/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ№* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_26_layer_call_and_return_conditional_losses_13139162
flatten_26/PartitionedCallД
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_1314011dense_26_1314013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_13139352"
 dense_26/StatefulPartitionedCallО
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0/^batch_normalization_26/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
л
э
/__inference_sequential_26_layer_call_fn_1314268

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
identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_26_layer_call_and_return_conditional_losses_13140712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџВ
 
_user_specified_nameinputs
џ
і
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1313813

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:(*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:(*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:(*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:(*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ы
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџІ(:(:(:(:(:*
epsilon%№'7*
is_training( 2
FusedBatchNormV3л
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџІ(::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs
є
і
/__inference_sequential_26_layer_call_fn_1314038
conv2d_52_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallconv2d_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_26_layer_call_and_return_conditional_losses_13140172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџВ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџВ
)
_user_specified_nameconv2d_52_input
Щ
Ё
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1314294

inputs"
conv2d_readvariableop_resource
identityЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:((*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџІ(*
paddingVALID*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџІ(2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџІ(:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџІ(
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ф
serving_defaultА
T
conv2d_52_inputA
!serving_default_conv2d_52_input:0џџџџџџџџџВ<
dense_260
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Њ
ВF
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
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"C
_tf_keras_sequentialшB{"class_name": "Sequential", "name": "sequential_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_52_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_52", "trainable": true, "dtype": "float32", "activation": "square"}}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}}, {"class_name": "Activation", "config": {"name": "activation_53", "trainable": true, "dtype": "float32", "activation": "log"}}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 306, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_52_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_52", "trainable": true, "dtype": "float32", "activation": "square"}}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}}, {"class_name": "Activation", "config": {"name": "activation_53", "trainable": true, "dtype": "float32", "activation": "log"}}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ш

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"С

_tf_keras_layerЇ
{"class_name": "Conv2D", "name": "conv2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_52", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19, 306, 1]}, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [1, 13]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 306, 1]}}
о


kernel
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"С	
_tf_keras_layerЇ	{"class_name": "Conv2D", "name": "conv2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 40, "kernel_size": {"class_name": "__tuple__", "items": [19, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 2.0, "axis": {"class_name": "__tuple__", "items": [0, 1, 2]}}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 294, 40]}}
Н	
axis
	gamma
beta
moving_mean
moving_variance
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+&call_and_return_all_conditional_losses
__call__"ч
_tf_keras_layerЭ{"class_name": "BatchNormalization", "name": "batch_normalization_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 294, 40]}}
л
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+&call_and_return_all_conditional_losses
__call__"Ъ
_tf_keras_layerА{"class_name": "Activation", "name": "activation_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_52", "trainable": true, "dtype": "float32", "activation": "square"}}

(regularization_losses
)	variables
*trainable_variables
+	keras_api
+&call_and_return_all_conditional_losses
__call__"џ
_tf_keras_layerх{"class_name": "AveragePooling2D", "name": "average_pooling2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 35]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 7]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
и
,regularization_losses
-	variables
.trainable_variables
/	keras_api
+&call_and_return_all_conditional_losses
__call__"Ч
_tf_keras_layer­{"class_name": "Activation", "name": "activation_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_53", "trainable": true, "dtype": "float32", "activation": "log"}}
щ
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+&call_and_return_all_conditional_losses
__call__"и
_tf_keras_layerО{"class_name": "Dropout", "name": "dropout_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
ъ
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+&call_and_return_all_conditional_losses
 __call__"й
_tf_keras_layerП{"class_name": "Flatten", "name": "flatten_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
И

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+Ё&call_and_return_all_conditional_losses
Ђ__call__"
_tf_keras_layerї{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.5, "axis": 0}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1520}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1520]}}
п
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemmmmm8m9mvvvvv8v9v"
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
Ю
regularization_losses
Clayer_regularization_losses
	variables
Dnon_trainable_variables
trainable_variables

Elayers
Fmetrics
Glayer_metrics
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
Ѓserving_default"
signature_map
*:((2conv2d_52/kernel
:(2conv2d_52/bias
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
А
regularization_losses
Hlayer_regularization_losses
	variables
Inon_trainable_variables
trainable_variables

Jlayers
Kmetrics
Llayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(((2conv2d_53/kernel
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
А
regularization_losses
Mlayer_regularization_losses
	variables
Nnon_trainable_variables
trainable_variables

Olayers
Pmetrics
Qlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:((2batch_normalization_26/gamma
):'(2batch_normalization_26/beta
2:0( (2"batch_normalization_26/moving_mean
6:4( (2&batch_normalization_26/moving_variance
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
А
 regularization_losses
Rlayer_regularization_losses
!	variables
Snon_trainable_variables
"trainable_variables

Tlayers
Umetrics
Vlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
$regularization_losses
Wlayer_regularization_losses
%	variables
Xnon_trainable_variables
&trainable_variables

Ylayers
Zmetrics
[layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
(regularization_losses
\layer_regularization_losses
)	variables
]non_trainable_variables
*trainable_variables

^layers
_metrics
`layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
,regularization_losses
alayer_regularization_losses
-	variables
bnon_trainable_variables
.trainable_variables

clayers
dmetrics
elayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
0regularization_losses
flayer_regularization_losses
1	variables
gnon_trainable_variables
2trainable_variables

hlayers
imetrics
jlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
4regularization_losses
klayer_regularization_losses
5	variables
lnon_trainable_variables
6trainable_variables

mlayers
nmetrics
olayer_metrics
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	№2dense_26/kernel
:2dense_26/bias
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
А
:regularization_losses
player_regularization_losses
;	variables
qnon_trainable_variables
<trainable_variables

rlayers
smetrics
tlayer_metrics
Ђ__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
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
Л
	wtotal
	xcount
y	variables
z	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
џ
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
/:-(2Adam/conv2d_52/kernel/m
!:(2Adam/conv2d_52/bias/m
/:-((2Adam/conv2d_53/kernel/m
/:-(2#Adam/batch_normalization_26/gamma/m
.:,(2"Adam/batch_normalization_26/beta/m
':%	№2Adam/dense_26/kernel/m
 :2Adam/dense_26/bias/m
/:-(2Adam/conv2d_52/kernel/v
!:(2Adam/conv2d_52/bias/v
/:-((2Adam/conv2d_53/kernel/v
/:-(2#Adam/batch_normalization_26/gamma/v
.:,(2"Adam/batch_normalization_26/beta/v
':%	№2Adam/dense_26/kernel/v
 :2Adam/dense_26/bias/v
ё2ю
"__inference__wrapped_model_1313611Ч
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/
conv2d_52_inputџџџџџџџџџВ
і2ѓ
J__inference_sequential_26_layer_call_and_return_conditional_losses_1313952
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314178
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314222
J__inference_sequential_26_layer_call_and_return_conditional_losses_1313983Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
/__inference_sequential_26_layer_call_fn_1314245
/__inference_sequential_26_layer_call_fn_1314038
/__inference_sequential_26_layer_call_fn_1314268
/__inference_sequential_26_layer_call_fn_1314092Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
№2э
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1314278Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
е2в
+__inference_conv2d_52_layer_call_fn_1314287Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1314294Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
е2в
+__inference_conv2d_53_layer_call_fn_1314301Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314403
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314339
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314385
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314321Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ђ2
8__inference_batch_normalization_26_layer_call_fn_1314352
8__inference_batch_normalization_26_layer_call_fn_1314429
8__inference_batch_normalization_26_layer_call_fn_1314365
8__inference_batch_normalization_26_layer_call_fn_1314416Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
є2ё
J__inference_activation_52_layer_call_and_return_conditional_losses_1314434Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
й2ж
/__inference_activation_52_layer_call_fn_1314439Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Й2Ж
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_1313721р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
6__inference_average_pooling2d_26_layer_call_fn_1313727р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
є2ё
J__inference_activation_53_layer_call_and_return_conditional_losses_1314448Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
й2ж
/__inference_activation_53_layer_call_fn_1314453Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ь2Щ
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314470
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314465Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
,__inference_dropout_26_layer_call_fn_1314475
,__inference_dropout_26_layer_call_fn_1314480Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ё2ю
G__inference_flatten_26_layer_call_and_return_conditional_losses_1314486Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_flatten_26_layer_call_fn_1314491Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_26_layer_call_and_return_conditional_losses_1314502Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_26_layer_call_fn_1314511Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
дBб
%__inference_signature_wrapper_1314125conv2d_52_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Њ
"__inference__wrapped_model_1313611	89AЂ>
7Ђ4
2/
conv2d_52_inputџџџџџџџџџВ
Њ "3Њ0
.
dense_26"
dense_26џџџџџџџџџИ
J__inference_activation_52_layer_call_and_return_conditional_losses_1314434j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџІ(
Њ ".Ђ+
$!
0џџџџџџџџџІ(
 
/__inference_activation_52_layer_call_fn_1314439]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџІ(
Њ "!џџџџџџџџџІ(Ж
J__inference_activation_53_layer_call_and_return_conditional_losses_1314448h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&(
Њ "-Ђ*
# 
0џџџџџџџџџ&(
 
/__inference_activation_53_layer_call_fn_1314453[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&(
Њ " џџџџџџџџџ&(є
Q__inference_average_pooling2d_26_layer_call_and_return_conditional_losses_1313721RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
6__inference_average_pooling2d_26_layer_call_fn_1313727RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314321MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 ю
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314339MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
 Ы
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314385t<Ђ9
2Ђ/
)&
inputsџџџџџџџџџІ(
p
Њ ".Ђ+
$!
0џџџџџџџџџІ(
 Ы
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1314403t<Ђ9
2Ђ/
)&
inputsџџџџџџџџџІ(
p 
Њ ".Ђ+
$!
0џџџџџџџџџІ(
 Ц
8__inference_batch_normalization_26_layer_call_fn_1314352MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(Ц
8__inference_batch_normalization_26_layer_call_fn_1314365MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ(Ѓ
8__inference_batch_normalization_26_layer_call_fn_1314416g<Ђ9
2Ђ/
)&
inputsџџџџџџџџџІ(
p
Њ "!џџџџџџџџџІ(Ѓ
8__inference_batch_normalization_26_layer_call_fn_1314429g<Ђ9
2Ђ/
)&
inputsџџџџџџџџџІ(
p 
Њ "!џџџџџџџџџІ(И
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1314278n8Ђ5
.Ђ+
)&
inputsџџџџџџџџџВ
Њ ".Ђ+
$!
0џџџџџџџџџІ(
 
+__inference_conv2d_52_layer_call_fn_1314287a8Ђ5
.Ђ+
)&
inputsџџџџџџџџџВ
Њ "!џџџџџџџџџІ(З
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1314294m8Ђ5
.Ђ+
)&
inputsџџџџџџџџџІ(
Њ ".Ђ+
$!
0џџџџџџџџџІ(
 
+__inference_conv2d_53_layer_call_fn_1314301`8Ђ5
.Ђ+
)&
inputsџџџџџџџџџІ(
Њ "!џџџџџџџџџІ(І
E__inference_dense_26_layer_call_and_return_conditional_losses_1314502]890Ђ-
&Ђ#
!
inputsџџџџџџџџџ№
Њ "%Ђ"

0џџџџџџџџџ
 ~
*__inference_dense_26_layer_call_fn_1314511P890Ђ-
&Ђ#
!
inputsџџџџџџџџџ№
Њ "џџџџџџџџџЗ
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314465l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ&(
p
Њ "-Ђ*
# 
0џџџџџџџџџ&(
 З
G__inference_dropout_26_layer_call_and_return_conditional_losses_1314470l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ&(
p 
Њ "-Ђ*
# 
0џџџџџџџџџ&(
 
,__inference_dropout_26_layer_call_fn_1314475_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ&(
p
Њ " џџџџџџџџџ&(
,__inference_dropout_26_layer_call_fn_1314480_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ&(
p 
Њ " џџџџџџџџџ&(Ќ
G__inference_flatten_26_layer_call_and_return_conditional_losses_1314486a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&(
Њ "&Ђ#

0џџџџџџџџџ№
 
,__inference_flatten_26_layer_call_fn_1314491T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&(
Њ "џџџџџџџџџ№Ы
J__inference_sequential_26_layer_call_and_return_conditional_losses_1313952}	89IЂF
?Ђ<
2/
conv2d_52_inputџџџџџџџџџВ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ы
J__inference_sequential_26_layer_call_and_return_conditional_losses_1313983}	89IЂF
?Ђ<
2/
conv2d_52_inputџџџџџџџџџВ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Т
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314178t	89@Ђ=
6Ђ3
)&
inputsџџџџџџџџџВ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Т
J__inference_sequential_26_layer_call_and_return_conditional_losses_1314222t	89@Ђ=
6Ђ3
)&
inputsџџџџџџџџџВ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ѓ
/__inference_sequential_26_layer_call_fn_1314038p	89IЂF
?Ђ<
2/
conv2d_52_inputџџџџџџџџџВ
p

 
Њ "џџџџџџџџџЃ
/__inference_sequential_26_layer_call_fn_1314092p	89IЂF
?Ђ<
2/
conv2d_52_inputџџџџџџџџџВ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_26_layer_call_fn_1314245g	89@Ђ=
6Ђ3
)&
inputsџџџџџџџџџВ
p

 
Њ "џџџџџџџџџ
/__inference_sequential_26_layer_call_fn_1314268g	89@Ђ=
6Ђ3
)&
inputsџџџџџџџџџВ
p 

 
Њ "џџџџџџџџџР
%__inference_signature_wrapper_1314125	89TЂQ
Ђ 
JЊG
E
conv2d_52_input2/
conv2d_52_inputџџџџџџџџџВ"3Њ0
.
dense_26"
dense_26џџџџџџџџџ