�
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
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
2
L2Loss
t"T
output"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.11.02v1.11.0-rc2-4-gc19e29306c��
v
input_placeholderPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
t
label_placeholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
8fully_connected/weights/Initializer/random_uniform/shapeConst*
valueB"x  @   **
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
:
�
6fully_connected/weights/Initializer/random_uniform/minConst*
valueB
 *�'�**
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
: 
�
6fully_connected/weights/Initializer/random_uniform/maxConst*
valueB
 *�'�=**
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
: 
�
@fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniform8fully_connected/weights/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�@*

seed *
T0**
_class 
loc:@fully_connected/weights*
seed2 
�
6fully_connected/weights/Initializer/random_uniform/subSub6fully_connected/weights/Initializer/random_uniform/max6fully_connected/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@fully_connected/weights
�
6fully_connected/weights/Initializer/random_uniform/mulMul@fully_connected/weights/Initializer/random_uniform/RandomUniform6fully_connected/weights/Initializer/random_uniform/sub*
_output_shapes
:	�@*
T0**
_class 
loc:@fully_connected/weights
�
2fully_connected/weights/Initializer/random_uniformAdd6fully_connected/weights/Initializer/random_uniform/mul6fully_connected/weights/Initializer/random_uniform/min*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	�@
�
fully_connected/weights
VariableV2*
shape:	�@*
dtype0*
_output_shapes
:	�@*
shared_name **
_class 
loc:@fully_connected/weights*
	container 
�
fully_connected/weights/AssignAssignfully_connected/weights2fully_connected/weights/Initializer/random_uniform*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@
�
fully_connected/weights/readIdentityfully_connected/weights*
_output_shapes
:	�@*
T0**
_class 
loc:@fully_connected/weights
�
7fully_connected/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o�:**
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
: 
�
8fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Lossfully_connected/weights/read*
_output_shapes
: *
T0**
_class 
loc:@fully_connected/weights
�
1fully_connected/kernel/Regularizer/l2_regularizerMul7fully_connected/kernel/Regularizer/l2_regularizer/scale8fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
: 
�
(fully_connected/biases/Initializer/zerosConst*
valueB@*    *)
_class
loc:@fully_connected/biases*
dtype0*
_output_shapes
:@
�
fully_connected/biases
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:@
�
fully_connected/biases/AssignAssignfully_connected/biases(fully_connected/biases/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:@
�
fully_connected/biases/readIdentityfully_connected/biases*
_output_shapes
:@*
T0*)
_class
loc:@fully_connected/biases
�
fully_connected/MatMulMatMulinput_placeholderfully_connected/weights/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������@
�
fully_connected/BiasAddBiasAddfully_connected/MatMulfully_connected/biases/read*
data_formatNHWC*'
_output_shapes
:���������@*
T0
g
fully_connected/TanhTanhfully_connected/BiasAdd*
T0*'
_output_shapes
:���������@
�
:fully_connected_1/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   *,
_class"
 loc:@fully_connected_1/weights
�
8fully_connected_1/weights/Initializer/random_uniform/minConst*
valueB
 *׳]�*,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
�
8fully_connected_1/weights/Initializer/random_uniform/maxConst*
valueB
 *׳]>*,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
�
Bfully_connected_1/weights/Initializer/random_uniform/RandomUniformRandomUniform:fully_connected_1/weights/Initializer/random_uniform/shape*

seed *
T0*,
_class"
 loc:@fully_connected_1/weights*
seed2 *
dtype0*
_output_shapes

:@@
�
8fully_connected_1/weights/Initializer/random_uniform/subSub8fully_connected_1/weights/Initializer/random_uniform/max8fully_connected_1/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
�
8fully_connected_1/weights/Initializer/random_uniform/mulMulBfully_connected_1/weights/Initializer/random_uniform/RandomUniform8fully_connected_1/weights/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
4fully_connected_1/weights/Initializer/random_uniformAdd8fully_connected_1/weights/Initializer/random_uniform/mul8fully_connected_1/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
fully_connected_1/weights
VariableV2*,
_class"
 loc:@fully_connected_1/weights*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name 
�
 fully_connected_1/weights/AssignAssignfully_connected_1/weights4fully_connected_1/weights/Initializer/random_uniform*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes

:@@*
use_locking(
�
fully_connected_1/weights/readIdentityfully_connected_1/weights*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
9fully_connected_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o�:*,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
�
:fully_connected_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossfully_connected_1/weights/read*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
�
3fully_connected_1/kernel/Regularizer/l2_regularizerMul9fully_connected_1/kernel/Regularizer/l2_regularizer/scale:fully_connected_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
�
*fully_connected_1/biases/Initializer/zerosConst*
valueB@*    *+
_class!
loc:@fully_connected_1/biases*
dtype0*
_output_shapes
:@
�
fully_connected_1/biases
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *+
_class!
loc:@fully_connected_1/biases*
	container *
shape:@
�
fully_connected_1/biases/AssignAssignfully_connected_1/biases*fully_connected_1/biases/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@
�
fully_connected_1/biases/readIdentityfully_connected_1/biases*
T0*+
_class!
loc:@fully_connected_1/biases*
_output_shapes
:@
�
fully_connected_1/MatMulMatMulfully_connected/Tanhfully_connected_1/weights/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������@
�
fully_connected_1/BiasAddBiasAddfully_connected_1/MatMulfully_connected_1/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:���������@
k
fully_connected_1/TanhTanhfully_connected_1/BiasAdd*
T0*'
_output_shapes
:���������@
�
:fully_connected_2/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      *,
_class"
 loc:@fully_connected_2/weights
�
8fully_connected_2/weights/Initializer/random_uniform/minConst*
valueB
 *HY��*,
_class"
 loc:@fully_connected_2/weights*
dtype0*
_output_shapes
: 
�
8fully_connected_2/weights/Initializer/random_uniform/maxConst*
valueB
 *HY�>*,
_class"
 loc:@fully_connected_2/weights*
dtype0*
_output_shapes
: 
�
Bfully_connected_2/weights/Initializer/random_uniform/RandomUniformRandomUniform:fully_connected_2/weights/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*,
_class"
 loc:@fully_connected_2/weights*
seed2 
�
8fully_connected_2/weights/Initializer/random_uniform/subSub8fully_connected_2/weights/Initializer/random_uniform/max8fully_connected_2/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@fully_connected_2/weights
�
8fully_connected_2/weights/Initializer/random_uniform/mulMulBfully_connected_2/weights/Initializer/random_uniform/RandomUniform8fully_connected_2/weights/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes

:@
�
4fully_connected_2/weights/Initializer/random_uniformAdd8fully_connected_2/weights/Initializer/random_uniform/mul8fully_connected_2/weights/Initializer/random_uniform/min*
_output_shapes

:@*
T0*,
_class"
 loc:@fully_connected_2/weights
�
fully_connected_2/weights
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *,
_class"
 loc:@fully_connected_2/weights*
	container 
�
 fully_connected_2/weights/AssignAssignfully_connected_2/weights4fully_connected_2/weights/Initializer/random_uniform*
T0*,
_class"
 loc:@fully_connected_2/weights*
validate_shape(*
_output_shapes

:@*
use_locking(
�
fully_connected_2/weights/readIdentityfully_connected_2/weights*
T0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes

:@
�
9fully_connected_2/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *
valueB
 *o�:*,
_class"
 loc:@fully_connected_2/weights
�
:fully_connected_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossfully_connected_2/weights/read*
T0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes
: 
�
3fully_connected_2/kernel/Regularizer/l2_regularizerMul9fully_connected_2/kernel/Regularizer/l2_regularizer/scale:fully_connected_2/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*,
_class"
 loc:@fully_connected_2/weights
�
*fully_connected_2/biases/Initializer/zerosConst*
valueB*    *+
_class!
loc:@fully_connected_2/biases*
dtype0*
_output_shapes
:
�
fully_connected_2/biases
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@fully_connected_2/biases*
	container *
shape:
�
fully_connected_2/biases/AssignAssignfully_connected_2/biases*fully_connected_2/biases/Initializer/zeros*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:*
use_locking(
�
fully_connected_2/biases/readIdentityfully_connected_2/biases*
T0*+
_class!
loc:@fully_connected_2/biases*
_output_shapes
:
�
fully_connected_2/MatMulMatMulfully_connected_1/Tanhfully_connected_2/weights/read*
transpose_a( *'
_output_shapes
:���������*
transpose_b( *
T0
�
fully_connected_2/BiasAddBiasAddfully_connected_2/MatMulfully_connected_2/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
$mean_squared_error/SquaredDifferenceSquaredDifferencefully_connected_2/BiasAddlabel_placeholder*
T0*'
_output_shapes
:���������
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
�
4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
_output_shapes
:*
T0*
out_type0
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
�
mean_squared_error/ToFloat/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
mean_squared_error/MulMul$mean_squared_error/SquaredDifferencemean_squared_error/ToFloat/x*'
_output_shapes
:���������*
T0
�
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
$mean_squared_error/num_present/EqualEqualmean_squared_error/ToFloat/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
�
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
�
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
�
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
_output_shapes
: *
T0
�
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B : 
�
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
�
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B :
�
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
�
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
�
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:���������
�
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:���������
�
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_squared_error/Greater/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
T0*
_output_shapes
: 
�
mean_squared_error/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
T0*
_output_shapes
: 
�
"mean_squared_error/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
"mean_squared_error/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
�
mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
T0*
_output_shapes
: 
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
�
mean_squared_error/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
w
2gradients/mean_squared_error/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
.gradients/mean_squared_error/value_grad/SelectSelectmean_squared_error/Greatergradients/Fill2gradients/mean_squared_error/value_grad/zeros_like*
_output_shapes
: *
T0
�
0gradients/mean_squared_error/value_grad/Select_1Selectmean_squared_error/Greater2gradients/mean_squared_error/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
�
8gradients/mean_squared_error/value_grad/tuple/group_depsNoOp/^gradients/mean_squared_error/value_grad/Select1^gradients/mean_squared_error/value_grad/Select_1
�
@gradients/mean_squared_error/value_grad/tuple/control_dependencyIdentity.gradients/mean_squared_error/value_grad/Select9^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/mean_squared_error/value_grad/Select*
_output_shapes
: 
�
Bgradients/mean_squared_error/value_grad/tuple/control_dependency_1Identity0gradients/mean_squared_error/value_grad/Select_19^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/mean_squared_error/value_grad/Select_1*
_output_shapes
: 
n
+gradients/mean_squared_error/div_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
p
-gradients/mean_squared_error/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
;gradients/mean_squared_error/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/div_grad/Shape-gradients/mean_squared_error/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
-gradients/mean_squared_error/div_grad/RealDivRealDiv@gradients/mean_squared_error/value_grad/tuple/control_dependencymean_squared_error/Select*
T0*
_output_shapes
: 
�
)gradients/mean_squared_error/div_grad/SumSum-gradients/mean_squared_error/div_grad/RealDiv;gradients/mean_squared_error/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
-gradients/mean_squared_error/div_grad/ReshapeReshape)gradients/mean_squared_error/div_grad/Sum+gradients/mean_squared_error/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
k
)gradients/mean_squared_error/div_grad/NegNegmean_squared_error/Sum_1*
T0*
_output_shapes
: 
�
/gradients/mean_squared_error/div_grad/RealDiv_1RealDiv)gradients/mean_squared_error/div_grad/Negmean_squared_error/Select*
T0*
_output_shapes
: 
�
/gradients/mean_squared_error/div_grad/RealDiv_2RealDiv/gradients/mean_squared_error/div_grad/RealDiv_1mean_squared_error/Select*
_output_shapes
: *
T0
�
)gradients/mean_squared_error/div_grad/mulMul@gradients/mean_squared_error/value_grad/tuple/control_dependency/gradients/mean_squared_error/div_grad/RealDiv_2*
T0*
_output_shapes
: 
�
+gradients/mean_squared_error/div_grad/Sum_1Sum)gradients/mean_squared_error/div_grad/mul=gradients/mean_squared_error/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
/gradients/mean_squared_error/div_grad/Reshape_1Reshape+gradients/mean_squared_error/div_grad/Sum_1-gradients/mean_squared_error/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
6gradients/mean_squared_error/div_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/div_grad/Reshape0^gradients/mean_squared_error/div_grad/Reshape_1
�
>gradients/mean_squared_error/div_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/div_grad/Reshape7^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/div_grad/Reshape*
_output_shapes
: 
�
@gradients/mean_squared_error/div_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/div_grad/Reshape_17^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/div_grad/Reshape_1*
_output_shapes
: 
x
5gradients/mean_squared_error/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
�
/gradients/mean_squared_error/Sum_1_grad/ReshapeReshape>gradients/mean_squared_error/div_grad/tuple/control_dependency5gradients/mean_squared_error/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
p
-gradients/mean_squared_error/Sum_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
�
,gradients/mean_squared_error/Sum_1_grad/TileTile/gradients/mean_squared_error/Sum_1_grad/Reshape-gradients/mean_squared_error/Sum_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0
�
3gradients/mean_squared_error/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
-gradients/mean_squared_error/Sum_grad/ReshapeReshape,gradients/mean_squared_error/Sum_1_grad/Tile3gradients/mean_squared_error/Sum_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
�
+gradients/mean_squared_error/Sum_grad/ShapeShapemean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:
�
*gradients/mean_squared_error/Sum_grad/TileTile-gradients/mean_squared_error/Sum_grad/Reshape+gradients/mean_squared_error/Sum_grad/Shape*
T0*'
_output_shapes
:���������*

Tmultiples0
�
+gradients/mean_squared_error/Mul_grad/ShapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
p
-gradients/mean_squared_error/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/Mul_grad/Shape-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
)gradients/mean_squared_error/Mul_grad/MulMul*gradients/mean_squared_error/Sum_grad/Tilemean_squared_error/ToFloat/x*
T0*'
_output_shapes
:���������
�
)gradients/mean_squared_error/Mul_grad/SumSum)gradients/mean_squared_error/Mul_grad/Mul;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
-gradients/mean_squared_error/Mul_grad/ReshapeReshape)gradients/mean_squared_error/Mul_grad/Sum+gradients/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
+gradients/mean_squared_error/Mul_grad/Mul_1Mul$mean_squared_error/SquaredDifference*gradients/mean_squared_error/Sum_grad/Tile*
T0*'
_output_shapes
:���������
�
+gradients/mean_squared_error/Mul_grad/Sum_1Sum+gradients/mean_squared_error/Mul_grad/Mul_1=gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
/gradients/mean_squared_error/Mul_grad/Reshape_1Reshape+gradients/mean_squared_error/Mul_grad/Sum_1-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
6gradients/mean_squared_error/Mul_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/Mul_grad/Reshape0^gradients/mean_squared_error/Mul_grad/Reshape_1
�
>gradients/mean_squared_error/Mul_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/Mul_grad/Reshape7^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/Mul_grad/Reshape*'
_output_shapes
:���������
�
@gradients/mean_squared_error/Mul_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/Mul_grad/Reshape_17^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: 
�
9gradients/mean_squared_error/SquaredDifference_grad/ShapeShapefully_connected_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
�
;gradients/mean_squared_error/SquaredDifference_grad/Shape_1Shapelabel_placeholder*
_output_shapes
:*
T0*
out_type0
�
Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/mean_squared_error/SquaredDifference_grad/Shape;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
:gradients/mean_squared_error/SquaredDifference_grad/scalarConst?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
7gradients/mean_squared_error/SquaredDifference_grad/mulMul:gradients/mean_squared_error/SquaredDifference_grad/scalar>gradients/mean_squared_error/Mul_grad/tuple/control_dependency*'
_output_shapes
:���������*
T0
�
7gradients/mean_squared_error/SquaredDifference_grad/subSubfully_connected_2/BiasAddlabel_placeholder?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
9gradients/mean_squared_error/SquaredDifference_grad/mul_1Mul7gradients/mean_squared_error/SquaredDifference_grad/mul7gradients/mean_squared_error/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������
�
7gradients/mean_squared_error/SquaredDifference_grad/SumSum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
;gradients/mean_squared_error/SquaredDifference_grad/ReshapeReshape7gradients/mean_squared_error/SquaredDifference_grad/Sum9gradients/mean_squared_error/SquaredDifference_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
9gradients/mean_squared_error/SquaredDifference_grad/Sum_1Sum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Kgradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1Reshape9gradients/mean_squared_error/SquaredDifference_grad/Sum_1;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
7gradients/mean_squared_error/SquaredDifference_grad/NegNeg=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
Dgradients/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOp8^gradients/mean_squared_error/SquaredDifference_grad/Neg<^gradients/mean_squared_error/SquaredDifference_grad/Reshape
�
Lgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentity;gradients/mean_squared_error/SquaredDifference_grad/ReshapeE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape*'
_output_shapes
:���������
�
Ngradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1Identity7gradients/mean_squared_error/SquaredDifference_grad/NegE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/mean_squared_error/SquaredDifference_grad/Neg*'
_output_shapes
:���������
�
4gradients/fully_connected_2/BiasAdd_grad/BiasAddGradBiasAddGradLgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
data_formatNHWC*
_output_shapes
:*
T0
�
9gradients/fully_connected_2/BiasAdd_grad/tuple/group_depsNoOp5^gradients/fully_connected_2/BiasAdd_grad/BiasAddGradM^gradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency
�
Agradients/fully_connected_2/BiasAdd_grad/tuple/control_dependencyIdentityLgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency:^gradients/fully_connected_2/BiasAdd_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape*'
_output_shapes
:���������
�
Cgradients/fully_connected_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/fully_connected_2/BiasAdd_grad/BiasAddGrad:^gradients/fully_connected_2/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/fully_connected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.gradients/fully_connected_2/MatMul_grad/MatMulMatMulAgradients/fully_connected_2/BiasAdd_grad/tuple/control_dependencyfully_connected_2/weights/read*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(*
T0
�
0gradients/fully_connected_2/MatMul_grad/MatMul_1MatMulfully_connected_1/TanhAgradients/fully_connected_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
�
8gradients/fully_connected_2/MatMul_grad/tuple/group_depsNoOp/^gradients/fully_connected_2/MatMul_grad/MatMul1^gradients/fully_connected_2/MatMul_grad/MatMul_1
�
@gradients/fully_connected_2/MatMul_grad/tuple/control_dependencyIdentity.gradients/fully_connected_2/MatMul_grad/MatMul9^gradients/fully_connected_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/fully_connected_2/MatMul_grad/MatMul*'
_output_shapes
:���������@
�
Bgradients/fully_connected_2/MatMul_grad/tuple/control_dependency_1Identity0gradients/fully_connected_2/MatMul_grad/MatMul_19^gradients/fully_connected_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*C
_class9
75loc:@gradients/fully_connected_2/MatMul_grad/MatMul_1
�
.gradients/fully_connected_1/Tanh_grad/TanhGradTanhGradfully_connected_1/Tanh@gradients/fully_connected_2/MatMul_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������@
�
4gradients/fully_connected_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients/fully_connected_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
�
9gradients/fully_connected_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients/fully_connected_1/BiasAdd_grad/BiasAddGrad/^gradients/fully_connected_1/Tanh_grad/TanhGrad
�
Agradients/fully_connected_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients/fully_connected_1/Tanh_grad/TanhGrad:^gradients/fully_connected_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/fully_connected_1/Tanh_grad/TanhGrad*'
_output_shapes
:���������@
�
Cgradients/fully_connected_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/fully_connected_1/BiasAdd_grad/BiasAddGrad:^gradients/fully_connected_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*G
_class=
;9loc:@gradients/fully_connected_1/BiasAdd_grad/BiasAddGrad
�
.gradients/fully_connected_1/MatMul_grad/MatMulMatMulAgradients/fully_connected_1/BiasAdd_grad/tuple/control_dependencyfully_connected_1/weights/read*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(*
T0
�
0gradients/fully_connected_1/MatMul_grad/MatMul_1MatMulfully_connected/TanhAgradients/fully_connected_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@@*
transpose_b( *
T0
�
8gradients/fully_connected_1/MatMul_grad/tuple/group_depsNoOp/^gradients/fully_connected_1/MatMul_grad/MatMul1^gradients/fully_connected_1/MatMul_grad/MatMul_1
�
@gradients/fully_connected_1/MatMul_grad/tuple/control_dependencyIdentity.gradients/fully_connected_1/MatMul_grad/MatMul9^gradients/fully_connected_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������@*
T0*A
_class7
53loc:@gradients/fully_connected_1/MatMul_grad/MatMul
�
Bgradients/fully_connected_1/MatMul_grad/tuple/control_dependency_1Identity0gradients/fully_connected_1/MatMul_grad/MatMul_19^gradients/fully_connected_1/MatMul_grad/tuple/group_deps*
_output_shapes

:@@*
T0*C
_class9
75loc:@gradients/fully_connected_1/MatMul_grad/MatMul_1
�
,gradients/fully_connected/Tanh_grad/TanhGradTanhGradfully_connected/Tanh@gradients/fully_connected_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:���������@*
T0
�
2gradients/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/fully_connected/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
�
7gradients/fully_connected/BiasAdd_grad/tuple/group_depsNoOp3^gradients/fully_connected/BiasAdd_grad/BiasAddGrad-^gradients/fully_connected/Tanh_grad/TanhGrad
�
?gradients/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/fully_connected/Tanh_grad/TanhGrad8^gradients/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/fully_connected/Tanh_grad/TanhGrad*'
_output_shapes
:���������@
�
Agradients/fully_connected/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/fully_connected/BiasAdd_grad/BiasAddGrad8^gradients/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/fully_connected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
�
,gradients/fully_connected/MatMul_grad/MatMulMatMul?gradients/fully_connected/BiasAdd_grad/tuple/control_dependencyfully_connected/weights/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:����������
�
.gradients/fully_connected/MatMul_grad/MatMul_1MatMulinput_placeholder?gradients/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	�@
�
6gradients/fully_connected/MatMul_grad/tuple/group_depsNoOp-^gradients/fully_connected/MatMul_grad/MatMul/^gradients/fully_connected/MatMul_grad/MatMul_1
�
>gradients/fully_connected/MatMul_grad/tuple/control_dependencyIdentity,gradients/fully_connected/MatMul_grad/MatMul7^gradients/fully_connected/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*?
_class5
31loc:@gradients/fully_connected/MatMul_grad/MatMul
�
@gradients/fully_connected/MatMul_grad/tuple/control_dependency_1Identity.gradients/fully_connected/MatMul_grad/MatMul_17^gradients/fully_connected/MatMul_grad/tuple/group_deps*
_output_shapes
:	�@*
T0*A
_class7
53loc:@gradients/fully_connected/MatMul_grad/MatMul_1
�
beta1_power/initial_valueConst*
valueB
 *fff?*)
_class
loc:@fully_connected/biases*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
: 
u
beta1_power/readIdentitybeta1_power*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
: 
�
beta2_power/initial_valueConst*
valueB
 *w�?*)
_class
loc:@fully_connected/biases*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
: 
u
beta2_power/readIdentitybeta2_power*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
: 
�
>fully_connected/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"x  @   **
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
:
�
4fully_connected/weights/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@fully_connected/weights
�
.fully_connected/weights/Adam/Initializer/zerosFill>fully_connected/weights/Adam/Initializer/zeros/shape_as_tensor4fully_connected/weights/Adam/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	�@
�
fully_connected/weights/Adam
VariableV2**
_class 
loc:@fully_connected/weights*
	container *
shape:	�@*
dtype0*
_output_shapes
:	�@*
shared_name 
�
#fully_connected/weights/Adam/AssignAssignfully_connected/weights/Adam.fully_connected/weights/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@
�
!fully_connected/weights/Adam/readIdentityfully_connected/weights/Adam*
_output_shapes
:	�@*
T0**
_class 
loc:@fully_connected/weights
�
@fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"x  @   **
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
:
�
6fully_connected/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@fully_connected/weights
�
0fully_connected/weights/Adam_1/Initializer/zerosFill@fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensor6fully_connected/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	�@
�
fully_connected/weights/Adam_1
VariableV2*
dtype0*
_output_shapes
:	�@*
shared_name **
_class 
loc:@fully_connected/weights*
	container *
shape:	�@
�
%fully_connected/weights/Adam_1/AssignAssignfully_connected/weights/Adam_10fully_connected/weights/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@
�
#fully_connected/weights/Adam_1/readIdentityfully_connected/weights/Adam_1*
_output_shapes
:	�@*
T0**
_class 
loc:@fully_connected/weights
�
-fully_connected/biases/Adam/Initializer/zerosConst*
valueB@*    *)
_class
loc:@fully_connected/biases*
dtype0*
_output_shapes
:@
�
fully_connected/biases/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:@
�
"fully_connected/biases/Adam/AssignAssignfully_connected/biases/Adam-fully_connected/biases/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:@
�
 fully_connected/biases/Adam/readIdentityfully_connected/biases/Adam*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
:@
�
/fully_connected/biases/Adam_1/Initializer/zerosConst*
valueB@*    *)
_class
loc:@fully_connected/biases*
dtype0*
_output_shapes
:@
�
fully_connected/biases/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:@
�
$fully_connected/biases/Adam_1/AssignAssignfully_connected/biases/Adam_1/fully_connected/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:@
�
"fully_connected/biases/Adam_1/readIdentityfully_connected/biases/Adam_1*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
:@
�
@fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   @   *,
_class"
 loc:@fully_connected_1/weights
�
6fully_connected_1/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
�
0fully_connected_1/weights/Adam/Initializer/zerosFill@fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensor6fully_connected_1/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
fully_connected_1/weights/Adam
VariableV2*,
_class"
 loc:@fully_connected_1/weights*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name 
�
%fully_connected_1/weights/Adam/AssignAssignfully_connected_1/weights/Adam0fully_connected_1/weights/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes

:@@
�
#fully_connected_1/weights/Adam/readIdentityfully_connected_1/weights/Adam*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
Bfully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   @   *,
_class"
 loc:@fully_connected_1/weights
�
8fully_connected_1/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *,
_class"
 loc:@fully_connected_1/weights
�
2fully_connected_1/weights/Adam_1/Initializer/zerosFillBfully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensor8fully_connected_1/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes

:@@
�
 fully_connected_1/weights/Adam_1
VariableV2*
dtype0*
_output_shapes

:@@*
shared_name *,
_class"
 loc:@fully_connected_1/weights*
	container *
shape
:@@
�
'fully_connected_1/weights/Adam_1/AssignAssign fully_connected_1/weights/Adam_12fully_connected_1/weights/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights
�
%fully_connected_1/weights/Adam_1/readIdentity fully_connected_1/weights/Adam_1*
_output_shapes

:@@*
T0*,
_class"
 loc:@fully_connected_1/weights
�
/fully_connected_1/biases/Adam/Initializer/zerosConst*
valueB@*    *+
_class!
loc:@fully_connected_1/biases*
dtype0*
_output_shapes
:@
�
fully_connected_1/biases/Adam
VariableV2*
shared_name *+
_class!
loc:@fully_connected_1/biases*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
$fully_connected_1/biases/Adam/AssignAssignfully_connected_1/biases/Adam/fully_connected_1/biases/Adam/Initializer/zeros*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
�
"fully_connected_1/biases/Adam/readIdentityfully_connected_1/biases/Adam*
T0*+
_class!
loc:@fully_connected_1/biases*
_output_shapes
:@
�
1fully_connected_1/biases/Adam_1/Initializer/zerosConst*
valueB@*    *+
_class!
loc:@fully_connected_1/biases*
dtype0*
_output_shapes
:@
�
fully_connected_1/biases/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *+
_class!
loc:@fully_connected_1/biases
�
&fully_connected_1/biases/Adam_1/AssignAssignfully_connected_1/biases/Adam_11fully_connected_1/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@
�
$fully_connected_1/biases/Adam_1/readIdentityfully_connected_1/biases/Adam_1*
T0*+
_class!
loc:@fully_connected_1/biases*
_output_shapes
:@
�
@fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@      *,
_class"
 loc:@fully_connected_2/weights*
dtype0*
_output_shapes
:
�
6fully_connected_2/weights/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *,
_class"
 loc:@fully_connected_2/weights
�
0fully_connected_2/weights/Adam/Initializer/zerosFill@fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensor6fully_connected_2/weights/Adam/Initializer/zeros/Const*
_output_shapes

:@*
T0*

index_type0*,
_class"
 loc:@fully_connected_2/weights
�
fully_connected_2/weights/Adam
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *,
_class"
 loc:@fully_connected_2/weights*
	container *
shape
:@
�
%fully_connected_2/weights/Adam/AssignAssignfully_connected_2/weights/Adam0fully_connected_2/weights/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*,
_class"
 loc:@fully_connected_2/weights
�
#fully_connected_2/weights/Adam/readIdentityfully_connected_2/weights/Adam*
T0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes

:@
�
Bfully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@      *,
_class"
 loc:@fully_connected_2/weights*
dtype0*
_output_shapes
:
�
8fully_connected_2/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@fully_connected_2/weights*
dtype0*
_output_shapes
: 
�
2fully_connected_2/weights/Adam_1/Initializer/zerosFillBfully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensor8fully_connected_2/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes

:@
�
 fully_connected_2/weights/Adam_1
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *,
_class"
 loc:@fully_connected_2/weights*
	container 
�
'fully_connected_2/weights/Adam_1/AssignAssign fully_connected_2/weights/Adam_12fully_connected_2/weights/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*,
_class"
 loc:@fully_connected_2/weights
�
%fully_connected_2/weights/Adam_1/readIdentity fully_connected_2/weights/Adam_1*
T0*,
_class"
 loc:@fully_connected_2/weights*
_output_shapes

:@
�
/fully_connected_2/biases/Adam/Initializer/zerosConst*
valueB*    *+
_class!
loc:@fully_connected_2/biases*
dtype0*
_output_shapes
:
�
fully_connected_2/biases/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@fully_connected_2/biases*
	container *
shape:
�
$fully_connected_2/biases/Adam/AssignAssignfully_connected_2/biases/Adam/fully_connected_2/biases/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:
�
"fully_connected_2/biases/Adam/readIdentityfully_connected_2/biases/Adam*
T0*+
_class!
loc:@fully_connected_2/biases*
_output_shapes
:
�
1fully_connected_2/biases/Adam_1/Initializer/zerosConst*
valueB*    *+
_class!
loc:@fully_connected_2/biases*
dtype0*
_output_shapes
:
�
fully_connected_2/biases/Adam_1
VariableV2*
shared_name *+
_class!
loc:@fully_connected_2/biases*
	container *
shape:*
dtype0*
_output_shapes
:
�
&fully_connected_2/biases/Adam_1/AssignAssignfully_connected_2/biases/Adam_11fully_connected_2/biases/Adam_1/Initializer/zeros*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:*
use_locking(
�
$fully_connected_2/biases/Adam_1/readIdentityfully_connected_2/biases/Adam_1*
T0*+
_class!
loc:@fully_connected_2/biases*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
-Adam/update_fully_connected/weights/ApplyAdam	ApplyAdamfully_connected/weightsfully_connected/weights/Adamfully_connected/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0**
_class 
loc:@fully_connected/weights*
use_nesterov( *
_output_shapes
:	�@*
use_locking( 
�
,Adam/update_fully_connected/biases/ApplyAdam	ApplyAdamfully_connected/biasesfully_connected/biases/Adamfully_connected/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@fully_connected/biases*
use_nesterov( *
_output_shapes
:@
�
/Adam/update_fully_connected_1/weights/ApplyAdam	ApplyAdamfully_connected_1/weightsfully_connected_1/weights/Adam fully_connected_1/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/fully_connected_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@fully_connected_1/weights*
use_nesterov( *
_output_shapes

:@@
�
.Adam/update_fully_connected_1/biases/ApplyAdam	ApplyAdamfully_connected_1/biasesfully_connected_1/biases/Adamfully_connected_1/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/fully_connected_1/BiasAdd_grad/tuple/control_dependency_1*
T0*+
_class!
loc:@fully_connected_1/biases*
use_nesterov( *
_output_shapes
:@*
use_locking( 
�
/Adam/update_fully_connected_2/weights/ApplyAdam	ApplyAdamfully_connected_2/weightsfully_connected_2/weights/Adam fully_connected_2/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/fully_connected_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@fully_connected_2/weights*
use_nesterov( *
_output_shapes

:@
�
.Adam/update_fully_connected_2/biases/ApplyAdam	ApplyAdamfully_connected_2/biasesfully_connected_2/biases/Adamfully_connected_2/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/fully_connected_2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*+
_class!
loc:@fully_connected_2/biases
�
Adam/mulMulbeta1_power/read
Adam/beta1-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam/^Adam/update_fully_connected_1/biases/ApplyAdam0^Adam/update_fully_connected_1/weights/ApplyAdam/^Adam/update_fully_connected_2/biases/ApplyAdam0^Adam/update_fully_connected_2/weights/ApplyAdam*
_output_shapes
: *
T0*)
_class
loc:@fully_connected/biases
�
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*)
_class
loc:@fully_connected/biases
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam/^Adam/update_fully_connected_1/biases/ApplyAdam0^Adam/update_fully_connected_1/weights/ApplyAdam/^Adam/update_fully_connected_2/biases/ApplyAdam0^Adam/update_fully_connected_2/weights/ApplyAdam*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
: 
�
AdamNoOp^Adam/Assign^Adam/Assign_1-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam/^Adam/update_fully_connected_1/biases/ApplyAdam0^Adam/update_fully_connected_1/weights/ApplyAdam/^Adam/update_fully_connected_2/biases/ApplyAdam0^Adam/update_fully_connected_2/weights/ApplyAdam
�
initNoOp^beta1_power/Assign^beta2_power/Assign#^fully_connected/biases/Adam/Assign%^fully_connected/biases/Adam_1/Assign^fully_connected/biases/Assign$^fully_connected/weights/Adam/Assign&^fully_connected/weights/Adam_1/Assign^fully_connected/weights/Assign%^fully_connected_1/biases/Adam/Assign'^fully_connected_1/biases/Adam_1/Assign ^fully_connected_1/biases/Assign&^fully_connected_1/weights/Adam/Assign(^fully_connected_1/weights/Adam_1/Assign!^fully_connected_1/weights/Assign%^fully_connected_2/biases/Adam/Assign'^fully_connected_2/biases/Adam_1/Assign ^fully_connected_2/biases/Assign&^fully_connected_2/weights/Adam/Assign(^fully_connected_2/weights/Adam_1/Assign!^fully_connected_2/weights/Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7c01a91d265d4a3e9d2855fc924af2ea/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bfully_connected_1/biasesBfully_connected_1/biases/AdamBfully_connected_1/biases/Adam_1Bfully_connected_1/weightsBfully_connected_1/weights/AdamB fully_connected_1/weights/Adam_1Bfully_connected_2/biasesBfully_connected_2/biases/AdamBfully_connected_2/biases/Adam_1Bfully_connected_2/weightsBfully_connected_2/weights/AdamB fully_connected_2/weights/Adam_1*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerfully_connected/biasesfully_connected/biases/Adamfully_connected/biases/Adam_1fully_connected/weightsfully_connected/weights/Adamfully_connected/weights/Adam_1fully_connected_1/biasesfully_connected_1/biases/Adamfully_connected_1/biases/Adam_1fully_connected_1/weightsfully_connected_1/weights/Adam fully_connected_1/weights/Adam_1fully_connected_2/biasesfully_connected_2/biases/Adamfully_connected_2/biases/Adam_1fully_connected_2/weightsfully_connected_2/weights/Adam fully_connected_2/weights/Adam_1*"
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bfully_connected_1/biasesBfully_connected_1/biases/AdamBfully_connected_1/biases/Adam_1Bfully_connected_1/weightsBfully_connected_1/weights/AdamB fully_connected_1/weights/Adam_1Bfully_connected_2/biasesBfully_connected_2/biases/AdamBfully_connected_2/biases/Adam_1Bfully_connected_2/weightsBfully_connected_2/weights/AdamB fully_connected_2/weights/Adam_1*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
�
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
: 
�
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
: 
�
save/Assign_2Assignfully_connected/biasessave/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fully_connected/biases
�
save/Assign_3Assignfully_connected/biases/Adamsave/RestoreV2:3*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:@
�
save/Assign_4Assignfully_connected/biases/Adam_1save/RestoreV2:4*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_5Assignfully_connected/weightssave/RestoreV2:5*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@
�
save/Assign_6Assignfully_connected/weights/Adamsave/RestoreV2:6*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@
�
save/Assign_7Assignfully_connected/weights/Adam_1save/RestoreV2:7*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
save/Assign_8Assignfully_connected_1/biasessave/RestoreV2:8*
use_locking(*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@
�
save/Assign_9Assignfully_connected_1/biases/Adamsave/RestoreV2:9*
use_locking(*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@
�
save/Assign_10Assignfully_connected_1/biases/Adam_1save/RestoreV2:10*
use_locking(*
T0*+
_class!
loc:@fully_connected_1/biases*
validate_shape(*
_output_shapes
:@
�
save/Assign_11Assignfully_connected_1/weightssave/RestoreV2:11*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes

:@@
�
save/Assign_12Assignfully_connected_1/weights/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights
�
save/Assign_13Assign fully_connected_1/weights/Adam_1save/RestoreV2:13*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes

:@@
�
save/Assign_14Assignfully_connected_2/biasessave/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:
�
save/Assign_15Assignfully_connected_2/biases/Adamsave/RestoreV2:15*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_16Assignfully_connected_2/biases/Adam_1save/RestoreV2:16*
use_locking(*
T0*+
_class!
loc:@fully_connected_2/biases*
validate_shape(*
_output_shapes
:
�
save/Assign_17Assignfully_connected_2/weightssave/RestoreV2:17*
use_locking(*
T0*,
_class"
 loc:@fully_connected_2/weights*
validate_shape(*
_output_shapes

:@
�
save/Assign_18Assignfully_connected_2/weights/Adamsave/RestoreV2:18*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*,
_class"
 loc:@fully_connected_2/weights
�
save/Assign_19Assign fully_connected_2/weights/Adam_1save/RestoreV2:19*
T0*,
_class"
 loc:@fully_connected_2/weights*
validate_shape(*
_output_shapes

:@*
use_locking(
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
regularization_losses�
�
3fully_connected/kernel/Regularizer/l2_regularizer:0
5fully_connected_1/kernel/Regularizer/l2_regularizer:0
5fully_connected_2/kernel/Regularizer/l2_regularizer:0"�
model_variables��
�
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
�
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08
�
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:08
�
fully_connected_1/biases:0fully_connected_1/biases/Assignfully_connected_1/biases/read:02,fully_connected_1/biases/Initializer/zeros:08
�
fully_connected_2/weights:0 fully_connected_2/weights/Assign fully_connected_2/weights/read:026fully_connected_2/weights/Initializer/random_uniform:08
�
fully_connected_2/biases:0fully_connected_2/biases/Assignfully_connected_2/biases/read:02,fully_connected_2/biases/Initializer/zeros:08"�
trainable_variables��
�
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
�
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08
�
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:08
�
fully_connected_1/biases:0fully_connected_1/biases/Assignfully_connected_1/biases/read:02,fully_connected_1/biases/Initializer/zeros:08
�
fully_connected_2/weights:0 fully_connected_2/weights/Assign fully_connected_2/weights/read:026fully_connected_2/weights/Initializer/random_uniform:08
�
fully_connected_2/biases:0fully_connected_2/biases/Assignfully_connected_2/biases/read:02,fully_connected_2/biases/Initializer/zeros:08"�
	variables��
�
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
�
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08
�
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:08
�
fully_connected_1/biases:0fully_connected_1/biases/Assignfully_connected_1/biases/read:02,fully_connected_1/biases/Initializer/zeros:08
�
fully_connected_2/weights:0 fully_connected_2/weights/Assign fully_connected_2/weights/read:026fully_connected_2/weights/Initializer/random_uniform:08
�
fully_connected_2/biases:0fully_connected_2/biases/Assignfully_connected_2/biases/read:02,fully_connected_2/biases/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
�
fully_connected/weights/Adam:0#fully_connected/weights/Adam/Assign#fully_connected/weights/Adam/read:020fully_connected/weights/Adam/Initializer/zeros:0
�
 fully_connected/weights/Adam_1:0%fully_connected/weights/Adam_1/Assign%fully_connected/weights/Adam_1/read:022fully_connected/weights/Adam_1/Initializer/zeros:0
�
fully_connected/biases/Adam:0"fully_connected/biases/Adam/Assign"fully_connected/biases/Adam/read:02/fully_connected/biases/Adam/Initializer/zeros:0
�
fully_connected/biases/Adam_1:0$fully_connected/biases/Adam_1/Assign$fully_connected/biases/Adam_1/read:021fully_connected/biases/Adam_1/Initializer/zeros:0
�
 fully_connected_1/weights/Adam:0%fully_connected_1/weights/Adam/Assign%fully_connected_1/weights/Adam/read:022fully_connected_1/weights/Adam/Initializer/zeros:0
�
"fully_connected_1/weights/Adam_1:0'fully_connected_1/weights/Adam_1/Assign'fully_connected_1/weights/Adam_1/read:024fully_connected_1/weights/Adam_1/Initializer/zeros:0
�
fully_connected_1/biases/Adam:0$fully_connected_1/biases/Adam/Assign$fully_connected_1/biases/Adam/read:021fully_connected_1/biases/Adam/Initializer/zeros:0
�
!fully_connected_1/biases/Adam_1:0&fully_connected_1/biases/Adam_1/Assign&fully_connected_1/biases/Adam_1/read:023fully_connected_1/biases/Adam_1/Initializer/zeros:0
�
 fully_connected_2/weights/Adam:0%fully_connected_2/weights/Adam/Assign%fully_connected_2/weights/Adam/read:022fully_connected_2/weights/Adam/Initializer/zeros:0
�
"fully_connected_2/weights/Adam_1:0'fully_connected_2/weights/Adam_1/Assign'fully_connected_2/weights/Adam_1/read:024fully_connected_2/weights/Adam_1/Initializer/zeros:0
�
fully_connected_2/biases/Adam:0$fully_connected_2/biases/Adam/Assign$fully_connected_2/biases/Adam/read:021fully_connected_2/biases/Adam/Initializer/zeros:0
�
!fully_connected_2/biases/Adam_1:0&fully_connected_2/biases/Adam_1/Assign&fully_connected_2/biases/Adam_1/read:023fully_connected_2/biases/Adam_1/Initializer/zeros:0"(
losses

mean_squared_error/value:0"
train_op

Adam*�
serving_default�
@
input_placeholder+
input_placeholder:0����������<
output2
fully_connected_2/BiasAdd:0���������tensorflow/serving/predict