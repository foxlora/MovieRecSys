Щ
§
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.0.02unknown8я
Ё
"movie_title_embed_layer/embeddingsVarHandleOp*3
shared_name$"movie_title_embed_layer/embeddings*
shape:	юY *
_output_shapes
: *
dtype0

6movie_title_embed_layer/embeddings/Read/ReadVariableOpReadVariableOp"movie_title_embed_layer/embeddings*
_output_shapes
:	юY *
dtype0
~
conv2d/kernelVarHandleOp*
shared_nameconv2d/kernel*
shape: *
_output_shapes
: *
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
shared_nameconv2d/bias*
shape:*
_output_shapes
: *
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:

conv2d_1/kernelVarHandleOp* 
shared_nameconv2d_1/kernel*
shape: *
dtype0*
_output_shapes
: 
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: 
r
conv2d_1/biasVarHandleOp*
shared_nameconv2d_1/bias*
shape:*
dtype0*
_output_shapes
: 
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:

conv2d_2/kernelVarHandleOp* 
shared_nameconv2d_2/kernel*
shape: *
dtype0*
_output_shapes
: 
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
: 
r
conv2d_2/biasVarHandleOp*
shared_nameconv2d_2/bias*
shape:*
dtype0*
_output_shapes
: 
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:

conv2d_3/kernelVarHandleOp* 
shared_nameconv2d_3/kernel*
shape: *
dtype0*
_output_shapes
: 
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
: 
r
conv2d_3/biasVarHandleOp*
shared_nameconv2d_3/bias*
shape:*
dtype0*
_output_shapes
: 
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:
Њ
'movie_categories_embed_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*8
shared_name)'movie_categories_embed_layer/embeddings*
shape
: 
Ѓ
;movie_categories_embed_layer/embeddings/Read/ReadVariableOpReadVariableOp'movie_categories_embed_layer/embeddings*
dtype0*
_output_shapes

: 

movie_id_embed_layer/embeddingsVarHandleOp*0
shared_name!movie_id_embed_layer/embeddings*
shape:	ќK *
dtype0*
_output_shapes
: 

3movie_id_embed_layer/embeddings/Read/ReadVariableOpReadVariableOpmovie_id_embed_layer/embeddings*
dtype0*
_output_shapes
:	ќK 

uid_embed_layer/embeddingsVarHandleOp*+
shared_nameuid_embed_layer/embeddings*
shape:	х *
_output_shapes
: *
dtype0

.uid_embed_layer/embeddings/Read/ReadVariableOpReadVariableOpuid_embed_layer/embeddings*
dtype0*
_output_shapes
:	х 

movie_id_fc_layer/kernelVarHandleOp*
dtype0*
shape
:  *
_output_shapes
: *)
shared_namemovie_id_fc_layer/kernel

,movie_id_fc_layer/kernel/Read/ReadVariableOpReadVariableOpmovie_id_fc_layer/kernel*
dtype0*
_output_shapes

:  

movie_id_fc_layer/biasVarHandleOp*
dtype0*
shape: *
_output_shapes
: *'
shared_namemovie_id_fc_layer/bias
}
*movie_id_fc_layer/bias/Read/ReadVariableOpReadVariableOpmovie_id_fc_layer/bias*
dtype0*
_output_shapes
: 

 movie_categories_fc_layer/kernelVarHandleOp*
dtype0*
shape
:  *
_output_shapes
: *1
shared_name" movie_categories_fc_layer/kernel

4movie_categories_fc_layer/kernel/Read/ReadVariableOpReadVariableOp movie_categories_fc_layer/kernel*
dtype0*
_output_shapes

:  

movie_categories_fc_layer/biasVarHandleOp*
dtype0*
shape: *
_output_shapes
: */
shared_name movie_categories_fc_layer/bias

2movie_categories_fc_layer/bias/Read/ReadVariableOpReadVariableOpmovie_categories_fc_layer/bias*
dtype0*
_output_shapes
: 

uid_fc_layer/kernelVarHandleOp*$
shared_nameuid_fc_layer/kernel*
shape
:  *
_output_shapes
: *
dtype0
{
'uid_fc_layer/kernel/Read/ReadVariableOpReadVariableOpuid_fc_layer/kernel*
dtype0*
_output_shapes

:  
z
uid_fc_layer/biasVarHandleOp*"
shared_nameuid_fc_layer/bias*
shape: *
dtype0*
_output_shapes
: 
s
%uid_fc_layer/bias/Read/ReadVariableOpReadVariableOpuid_fc_layer/bias*
_output_shapes
: *
dtype0
u
dense/kernelVarHandleOp*
shared_namedense/kernel*
shape:	 Ш*
dtype0*
_output_shapes
: 
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	 Ш
m

dense/biasVarHandleOp*
shared_name
dense/bias*
shape:Ш*
dtype0*
_output_shapes
: 
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:Ш
y
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*
shape:	`Ш*
dtype0*
_output_shapes
: 
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	`Ш
q
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
shape:Ш*
dtype0*
_output_shapes
: 
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:Ш*
dtype0

NoOpNoOp
йd
ConstConst"/device:CPU:0*
dtype0*d
valuedBd Bd
п
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer_with_weights-7
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer-22
layer_with_weights-10
layer-23
layer-24
layer_with_weights-11
layer-25
layer_with_weights-12
layer-26
layer-27
layer-28
layer-29
layer-30
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
R
%trainable_variables
&	variables
'regularization_losses
(	keras_api
b
)
embeddings
*trainable_variables
+	variables
,regularization_losses
-	keras_api
R
.trainable_variables
/	variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4trainable_variables
5	variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:trainable_variables
;	variables
<regularization_losses
=	keras_api
h

>kernel
?bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
h

Dkernel
Ebias
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
R
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api
R
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
R
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
R
Ztrainable_variables
[	variables
\regularization_losses
]	keras_api
R
^trainable_variables
_	variables
`regularization_losses
a	keras_api
b
b
embeddings
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
R
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
R
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
b
o
embeddings
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
Љ
t	arguments
u_variable_dict
v_trainable_weights
w_non_trainable_weights
xtrainable_variables
y	variables
zregularization_losses
{	keras_api
R
|trainable_variables
}	variables
~regularization_losses
	keras_api
g

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
n
kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
n
kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api
n
kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api
n
kernel
	 bias
Ёtrainable_variables
Ђ	variables
Ѓregularization_losses
Є	keras_api
n
Ѕkernel
	Іbias
Їtrainable_variables
Ј	variables
Љregularization_losses
Њ	keras_api
V
Ћtrainable_variables
Ќ	variables
­regularization_losses
Ў	keras_api
V
Џtrainable_variables
А	variables
Бregularization_losses
В	keras_api
Б
Г	arguments
Д_variable_dict
Е_trainable_weights
Ж_non_trainable_weights
Зtrainable_variables
И	variables
Йregularization_losses
К	keras_api
Б
Л	arguments
М_variable_dict
Н_trainable_weights
О_non_trainable_weights
Пtrainable_variables
Р	variables
Сregularization_losses
Т	keras_api
Б
)0
21
32
83
94
>5
?6
D7
E8
b9
o10
11
12
13
14
15
16
17
18
 19
Ѕ20
І21
Б
)0
21
32
83
94
>5
?6
D7
E8
b9
o10
11
12
13
14
15
16
17
18
 19
Ѕ20
І21
 

 Уlayer_regularization_losses
Фlayers
 	variables
!trainable_variables
"regularization_losses
Хnon_trainable_variables
Цmetrics
 
 
 
 

 Чlayer_regularization_losses
Шlayers
%trainable_variables
&	variables
'regularization_losses
Щnon_trainable_variables
Ъmetrics
rp
VARIABLE_VALUE"movie_title_embed_layer/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

)0

)0
 

 Ыlayer_regularization_losses
Ьlayers
*trainable_variables
+	variables
,regularization_losses
Эnon_trainable_variables
Юmetrics
 
 
 

 Яlayer_regularization_losses
аlayers
.trainable_variables
/	variables
0regularization_losses
бnon_trainable_variables
вmetrics
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 

 гlayer_regularization_losses
дlayers
4trainable_variables
5	variables
6regularization_losses
еnon_trainable_variables
жmetrics
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 

 зlayer_regularization_losses
иlayers
:trainable_variables
;	variables
<regularization_losses
йnon_trainable_variables
кmetrics
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

>0
?1
 

 лlayer_regularization_losses
мlayers
@trainable_variables
A	variables
Bregularization_losses
нnon_trainable_variables
оmetrics
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
 

 пlayer_regularization_losses
рlayers
Ftrainable_variables
G	variables
Hregularization_losses
сnon_trainable_variables
тmetrics
 
 
 

 уlayer_regularization_losses
фlayers
Jtrainable_variables
K	variables
Lregularization_losses
хnon_trainable_variables
цmetrics
 
 
 

 чlayer_regularization_losses
шlayers
Ntrainable_variables
O	variables
Pregularization_losses
щnon_trainable_variables
ъmetrics
 
 
 

 ыlayer_regularization_losses
ьlayers
Rtrainable_variables
S	variables
Tregularization_losses
эnon_trainable_variables
юmetrics
 
 
 

 яlayer_regularization_losses
№layers
Vtrainable_variables
W	variables
Xregularization_losses
ёnon_trainable_variables
ђmetrics
 
 
 

 ѓlayer_regularization_losses
єlayers
Ztrainable_variables
[	variables
\regularization_losses
ѕnon_trainable_variables
іmetrics
 
 
 

 їlayer_regularization_losses
јlayers
^trainable_variables
_	variables
`regularization_losses
љnon_trainable_variables
њmetrics
wu
VARIABLE_VALUE'movie_categories_embed_layer/embeddings:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUE

b0

b0
 

 ћlayer_regularization_losses
ќlayers
ctrainable_variables
d	variables
eregularization_losses
§non_trainable_variables
ўmetrics
 
 
 

 џlayer_regularization_losses
layers
gtrainable_variables
h	variables
iregularization_losses
non_trainable_variables
metrics
 
 
 

 layer_regularization_losses
layers
ktrainable_variables
l	variables
mregularization_losses
non_trainable_variables
metrics
om
VARIABLE_VALUEmovie_id_embed_layer/embeddings:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUE

o0

o0
 

 layer_regularization_losses
layers
ptrainable_variables
q	variables
rregularization_losses
non_trainable_variables
metrics
 
 
 
 
 
 
 

 layer_regularization_losses
layers
xtrainable_variables
y	variables
zregularization_losses
non_trainable_variables
metrics
 
 
 

 layer_regularization_losses
layers
|trainable_variables
}	variables
~regularization_losses
non_trainable_variables
metrics
jh
VARIABLE_VALUEuid_embed_layer/embeddings:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
Ё
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
db
VARIABLE_VALUEmovie_id_fc_layer/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEmovie_id_fc_layer/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Ё
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
lj
VARIABLE_VALUE movie_categories_fc_layer/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEmovie_categories_fc_layer/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Ё
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
 
 
 
Ё
 layer_regularization_losses
 layers
trainable_variables
	variables
regularization_losses
Ёnon_trainable_variables
Ђmetrics
`^
VARIABLE_VALUEuid_fc_layer/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEuid_fc_layer/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Ё
 Ѓlayer_regularization_losses
Єlayers
trainable_variables
	variables
regularization_losses
Ѕnon_trainable_variables
Іmetrics
 
 
 
Ё
 Їlayer_regularization_losses
Јlayers
trainable_variables
	variables
regularization_losses
Љnon_trainable_variables
Њmetrics
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
Ё
 Ћlayer_regularization_losses
Ќlayers
Ёtrainable_variables
Ђ	variables
Ѓregularization_losses
­non_trainable_variables
Ўmetrics
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

Ѕ0
І1

Ѕ0
І1
 
Ё
 Џlayer_regularization_losses
Аlayers
Їtrainable_variables
Ј	variables
Љregularization_losses
Бnon_trainable_variables
Вmetrics
 
 
 
Ё
 Гlayer_regularization_losses
Дlayers
Ћtrainable_variables
Ќ	variables
­regularization_losses
Еnon_trainable_variables
Жmetrics
 
 
 
Ё
 Зlayer_regularization_losses
Иlayers
Џtrainable_variables
А	variables
Бregularization_losses
Йnon_trainable_variables
Кmetrics
 
 
 
 
 
 
 
Ё
 Лlayer_regularization_losses
Мlayers
Зtrainable_variables
И	variables
Йregularization_losses
Нnon_trainable_variables
Оmetrics
 
 
 
 
 
 
 
Ё
 Пlayer_regularization_losses
Рlayers
Пtrainable_variables
Р	variables
Сregularization_losses
Сnon_trainable_variables
Тmetrics
 
ю
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
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
 *
_output_shapes
: 

serving_default_movie_genresPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
{
serving_default_movie_idPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_movie_titlesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
v
serving_default_uidPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_movie_genresserving_default_movie_idserving_default_movie_titlesserving_default_uid"movie_title_embed_layer/embeddingsconv2d_3/kernelconv2d_3/biasconv2d_2/kernelconv2d_2/biasconv2d_1/kernelconv2d_1/biasconv2d/kernelconv2d/bias'movie_categories_embed_layer/embeddingsmovie_id_embed_layer/embeddingsmovie_id_fc_layer/kernelmovie_id_fc_layer/bias movie_categories_fc_layer/kernelmovie_categories_fc_layer/biasuid_embed_layer/embeddingsuid_fc_layer/kerneluid_fc_layer/biasdense_1/kerneldense_1/biasdense/kernel
dense/bias*,
_gradient_op_typePartitionedCall-24370*-
config_proto

CPU

GPU2*0J 8*%
Tin
2*'
_output_shapes
:џџџџџџџџџ*
Tout
2*,
f'R%
#__inference_signature_wrapper_23174
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Џ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6movie_title_embed_layer/embeddings/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp;movie_categories_embed_layer/embeddings/Read/ReadVariableOp3movie_id_embed_layer/embeddings/Read/ReadVariableOp.uid_embed_layer/embeddings/Read/ReadVariableOp,movie_id_fc_layer/kernel/Read/ReadVariableOp*movie_id_fc_layer/bias/Read/ReadVariableOp4movie_categories_fc_layer/kernel/Read/ReadVariableOp2movie_categories_fc_layer/bias/Read/ReadVariableOp'uid_fc_layer/kernel/Read/ReadVariableOp%uid_fc_layer/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpConst*#
Tin
2*
_output_shapes
: *
Tout
2*'
f"R 
__inference__traced_save_24413*,
_gradient_op_typePartitionedCall-24414*-
config_proto

CPU

GPU2*0J 8
ђ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"movie_title_embed_layer/embeddingsconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/bias'movie_categories_embed_layer/embeddingsmovie_id_embed_layer/embeddingsuid_embed_layer/embeddingsmovie_id_fc_layer/kernelmovie_id_fc_layer/bias movie_categories_fc_layer/kernelmovie_categories_fc_layer/biasuid_fc_layer/kerneluid_fc_layer/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*"
Tin
2**
f%R#
!__inference__traced_restore_24492*
_output_shapes
: *
Tout
2*,
_gradient_op_typePartitionedCall-24493*-
config_proto

CPU

GPU2*0J 8лТ

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
strides
*
paddingVALID{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
иz
ч
@__inference_model_layer_call_and_return_conditional_losses_22959
uid
movie_id
movie_titles
movie_genres:
6movie_title_embed_layer_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_2+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_2+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_2)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_2?
;movie_categories_embed_layer_statefulpartitionedcall_args_17
3movie_id_embed_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_2<
8movie_categories_fc_layer_statefulpartitionedcall_args_1<
8movie_categories_fc_layer_statefulpartitionedcall_args_22
.uid_embed_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ4movie_categories_embed_layer/StatefulPartitionedCallЂ1movie_categories_fc_layer/StatefulPartitionedCallЂ,movie_id_embed_layer/StatefulPartitionedCallЂ)movie_id_fc_layer/StatefulPartitionedCallЂ/movie_title_embed_layer/StatefulPartitionedCallЂ'uid_embed_layer/StatefulPartitionedCallЂ$uid_fc_layer/StatefulPartitionedCall
/movie_title_embed_layer/StatefulPartitionedCallStatefulPartitionedCallmovie_titles6movie_title_embed_layer_statefulpartitionedcall_args_1*,
_gradient_op_typePartitionedCall-22162*-
config_proto

CPU

GPU2*0J 8*[
fVRT
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2м
reshape/PartitionedCallPartitionedCall8movie_title_embed_layer/StatefulPartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22191*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_22185*
Tin
2*/
_output_shapes
:џџџџџџџџџ *
Tout
2Њ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22064*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058*
Tin
2*/
_output_shapes
:џџџџџџџџџ*
Tout
2Њ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033*
Tin
2*
Tout
2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22039*-
config_proto

CPU

GPU2*0J 8Њ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008*
Tin
2*
Tout
2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22014*-
config_proto

CPU

GPU2*0J 8Ђ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_21983*
Tout
2*
Tin
2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-21989*-
config_proto

CPU

GPU2*0J 8з
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077*
Tout
2*
Tin
2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22083*-
config_proto

CPU

GPU2*0J 8н
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_gradient_op_typePartitionedCall-22100*/
_output_shapes
:џџџџџџџџџ*S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094*
Tin
2н
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_gradient_op_typePartitionedCall-22117*/
_output_shapes
:џџџџџџџџџ*S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111*
Tin
2н
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tout
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22134*/
_output_shapes
:џџџџџџџџџ*S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128*
Tin
2Д
movie_genres_1/PartitionedCallPartitionedCallmovie_genres*'
_output_shapes
:џџџџџџџџџ*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22224*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22236*-
config_proto

CPU

GPU2*0J 8б
pool_layer/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ *N
fIRG
E__inference_pool_layer_layer_call_and_return_conditional_losses_22250*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22259*-
config_proto

CPU

GPU2*0J 8П
4movie_categories_embed_layer/StatefulPartitionedCallStatefulPartitionedCall'movie_genres_1/PartitionedCall:output:0;movie_categories_embed_layer_statefulpartitionedcall_args_1*+
_output_shapes
:џџџџџџџџџ *`
f[RY
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22282*-
config_proto

CPU

GPU2*0J 8Ј
movie_id_1/PartitionedCallPartitionedCallmovie_id*'
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22301*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22313*-
config_proto

CPU

GPU2*0J 8г
pool_layer_flat/PartitionedCallPartitionedCall#pool_layer/PartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ *S
fNRL
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22337*-
config_proto

CPU

GPU2*0J 8л
lambda/PartitionedCallPartitionedCall=movie_categories_embed_layer/StatefulPartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22358*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22370*-
config_proto

CPU

GPU2*0J 8Ѓ
,movie_id_embed_layer/StatefulPartitionedCallStatefulPartitionedCall#movie_id_1/PartitionedCall:output:03movie_id_embed_layer_statefulpartitionedcall_args_1*X
fSRQ
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2*,
_gradient_op_typePartitionedCall-22391*-
config_proto

CPU

GPU2*0J 8
uid_1/PartitionedCallPartitionedCalluid*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22410*
Tin
2*'
_output_shapes
:џџџџџџџџџ*
Tout
2*,
_gradient_op_typePartitionedCall-22422*-
config_proto

CPU

GPU2*0J 8п
)movie_id_fc_layer/StatefulPartitionedCallStatefulPartitionedCall5movie_id_embed_layer/StatefulPartitionedCall:output:00movie_id_fc_layer_statefulpartitionedcall_args_10movie_id_fc_layer_statefulpartitionedcall_args_2*U
fPRN
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2*,
_gradient_op_typePartitionedCall-22468*-
config_proto

CPU

GPU2*0J 8щ
1movie_categories_fc_layer/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:08movie_categories_fc_layer_statefulpartitionedcall_args_18movie_categories_fc_layer_statefulpartitionedcall_args_2*]
fXRV
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2*,
_gradient_op_typePartitionedCall-22520*-
config_proto

CPU

GPU2*0J 8д
dropout_layer/PartitionedCallPartitionedCall(pool_layer_flat/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22570*Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22558*-
config_proto

CPU

GPU2*0J 8*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2
'uid_embed_layer/StatefulPartitionedCallStatefulPartitionedCalluid_1/PartitionedCall:output:0.uid_embed_layer_statefulpartitionedcall_args_1*,
_gradient_op_typePartitionedCall-22591*S
fNRL
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585*-
config_proto

CPU

GPU2*0J 8*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2Р
concatenate/PartitionedCallPartitionedCall2movie_id_fc_layer/StatefulPartitionedCall:output:0:movie_categories_fc_layer/StatefulPartitionedCall:output:0&dropout_layer/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22616*O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_22608*-
config_proto

CPU

GPU2*0J 8*
Tin
2*+
_output_shapes
:џџџџџџџџџ`*
Tout
2Ц
$uid_fc_layer/StatefulPartitionedCallStatefulPartitionedCall0uid_embed_layer/StatefulPartitionedCall:output:0+uid_fc_layer_statefulpartitionedcall_args_1+uid_fc_layer_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22664*P
fKRI
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658*-
config_proto

CPU

GPU2*0J 8*
Tin
2*+
_output_shapes
:џџџџџџџџџ *
Tout
2Ї
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22716*K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22710*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_output_shapes
:џџџџџџџџџШ*
Tout
2Ј
dense/StatefulPartitionedCallStatefulPartitionedCall-uid_fc_layer/StatefulPartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22762*
Tin
2*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_gradient_op_typePartitionedCall-22768*,
_output_shapes
:џџџџџџџџџШу
'user_combine_layer_flat/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*[
fVRT
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791*
Tin
2*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_gradient_op_typePartitionedCall-22797*(
_output_shapes
:џџџџџџџџџШч
(movie_combine_layer_flat/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*\
fWRU
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816*
Tin
2*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_gradient_op_typePartitionedCall-22822*(
_output_shapes
:џџџџџџџџџШ
inference/PartitionedCallPartitionedCall0user_combine_layer_flat/PartitionedCall:output:01movie_combine_layer_flat/PartitionedCall:output:0*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22847*
Tin
2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22861*#
_output_shapes
:џџџџџџџџџР
lambda_1/PartitionedCallPartitionedCall"inference/PartitionedCall:output:0*
Tout
2*,
_gradient_op_typePartitionedCall-22892*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22880*'
_output_shapes
:џџџџџџџџџ*
Tin
2ў
IdentityIdentity!lambda_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall5^movie_categories_embed_layer/StatefulPartitionedCall2^movie_categories_fc_layer/StatefulPartitionedCall-^movie_id_embed_layer/StatefulPartitionedCall*^movie_id_fc_layer/StatefulPartitionedCall0^movie_title_embed_layer/StatefulPartitionedCall(^uid_embed_layer/StatefulPartitionedCall%^uid_fc_layer/StatefulPartitionedCall*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2L
$uid_fc_layer/StatefulPartitionedCall$uid_fc_layer/StatefulPartitionedCall2f
1movie_categories_fc_layer/StatefulPartitionedCall1movie_categories_fc_layer/StatefulPartitionedCall2R
'uid_embed_layer/StatefulPartitionedCall'uid_embed_layer/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)movie_id_fc_layer/StatefulPartitionedCall)movie_id_fc_layer/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2\
,movie_id_embed_layer/StatefulPartitionedCall,movie_id_embed_layer/StatefulPartitionedCall2l
4movie_categories_embed_layer/StatefulPartitionedCall4movie_categories_embed_layer/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2b
/movie_title_embed_layer/StatefulPartitionedCall/movie_title_embed_layer/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :# 

_user_specified_nameuid: : : : : : :,(
&
_user_specified_namemovie_genres: : : 
До
й
@__inference_model_layer_call_and_return_conditional_losses_23721
inputs_0
inputs_1
inputs_2
inputs_3I
Emovie_title_embed_layer_embedding_lookup_read_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resourceN
Jmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resourceF
Bmovie_id_embed_layer_embedding_lookup_read_readvariableop_resource7
3movie_id_fc_layer_tensordot_readvariableop_resource5
1movie_id_fc_layer_biasadd_readvariableop_resource?
;movie_categories_fc_layer_tensordot_readvariableop_resource=
9movie_categories_fc_layer_biasadd_readvariableop_resourceA
=uid_embed_layer_embedding_lookup_read_readvariableop_resource2
.uid_fc_layer_tensordot_readvariableop_resource0
,uid_fc_layer_biasadd_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource+
'dense_tensordot_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂ dense_1/Tensordot/ReadVariableOpЂ-movie_categories_embed_layer/embedding_lookupЂAmovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpЂ0movie_categories_fc_layer/BiasAdd/ReadVariableOpЂ2movie_categories_fc_layer/Tensordot/ReadVariableOpЂ%movie_id_embed_layer/embedding_lookupЂ9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpЂ(movie_id_fc_layer/BiasAdd/ReadVariableOpЂ*movie_id_fc_layer/Tensordot/ReadVariableOpЂ(movie_title_embed_layer/embedding_lookupЂ<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpЂ uid_embed_layer/embedding_lookupЂ4uid_embed_layer/embedding_lookup/Read/ReadVariableOpЂ#uid_fc_layer/BiasAdd/ReadVariableOpЂ%uid_fc_layer/Tensordot/ReadVariableOpё
<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpEmovie_title_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	юY ­
1movie_title_embed_layer/embedding_lookup/IdentityIdentityDmovie_title_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	юY *
T0
(movie_title_embed_layer/embedding_lookupResourceGatherEmovie_title_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_2=^movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*O
_classE
CAloc:@movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp*
Tindices0*
dtype0*+
_output_shapes
:џџџџџџџџџ Ї
3movie_title_embed_layer/embedding_lookup/Identity_1Identity1movie_title_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *O
_classE
CAloc:@movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp*
T0Г
3movie_title_embed_layer/embedding_lookup/Identity_2Identity<movie_title_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ y
reshape/ShapeShape<movie_title_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0g
reshape/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0g
reshape/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0љ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0Y
reshape/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0Y
reshape/Reshape/shape/2Const*
value	B : *
_output_shapes
: *
dtype0Y
reshape/Reshape/shape/3Const*
value	B :*
_output_shapes
: *
dtype0б
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
T0*
N*
_output_shapes
:В
reshape/ReshapeReshape<movie_title_embed_layer/embedding_lookup/Identity_2:output:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ М
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: О
conv2d_3/Conv2DConv2Dreshape/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0*
strides
*
paddingVALIDВ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџj
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџМ
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: О
conv2d_2/Conv2DConv2Dreshape/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
strides
*
paddingVALIDВ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџj
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџМ
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: О
conv2d_1/Conv2DConv2Dreshape/Reshape:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
strides
*
T0В
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
T0И
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0К
conv2d/Conv2DConv2Dreshape/Reshape:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
Ў
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџf
conv2d/ReluReluconv2d/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
T0Ј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
Ќ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*
strides
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
ksize
Ќ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
strides
*
paddingVALIDЌ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
strides
*
paddingVALIDX
pool_layer/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
pool_layer/concatConcatV2max_pooling2d/MaxPool:output:0 max_pooling2d_1/MaxPool:output:0 max_pooling2d_2/MaxPool:output:0 max_pooling2d_3/MaxPool:output:0pool_layer/concat/axis:output:0*
N*/
_output_shapes
:џџџџџџџџџ *
T0њ
Amovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpJmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

: *
dtype0Ж
6movie_categories_embed_layer/embedding_lookup/IdentityIdentityImovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes

: *
T0Ї
-movie_categories_embed_layer/embedding_lookupResourceGatherJmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_3B^movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp*
dtype0*+
_output_shapes
:џџџџџџџџџ *
Tindices0Ж
8movie_categories_embed_layer/embedding_lookup/Identity_1Identity6movie_categories_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0Н
8movie_categories_embed_layer/embedding_lookup/Identity_2IdentityAmovie_categories_embed_layer/embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0_
pool_layer_flat/ShapeShapepool_layer/concat:output:0*
_output_shapes
:*
T0m
#pool_layer_flat/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:o
%pool_layer_flat/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:o
%pool_layer_flat/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:Ё
pool_layer_flat/strided_sliceStridedSlicepool_layer_flat/Shape:output:0,pool_layer_flat/strided_slice/stack:output:0.pool_layer_flat/strided_slice/stack_1:output:0.pool_layer_flat/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0a
pool_layer_flat/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: a
pool_layer_flat/Reshape/shape/2Const*
value	B : *
_output_shapes
: *
dtype0Я
pool_layer_flat/Reshape/shapePack&pool_layer_flat/strided_slice:output:0(pool_layer_flat/Reshape/shape/1:output:0(pool_layer_flat/Reshape/shape/2:output:0*
_output_shapes
:*
N*
T0
pool_layer_flat/ReshapeReshapepool_layer/concat:output:0&pool_layer_flat/Reshape/shape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0^
lambda/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0Т

lambda/SumSumAmovie_categories_embed_layer/embedding_lookup/Identity_2:output:0%lambda/Sum/reduction_indices:output:0*+
_output_shapes
:џџџџџџџџџ *
	keep_dims(*
T0ы
9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpBmovie_id_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	ќK *
dtype0Ї
.movie_id_embed_layer/embedding_lookup/IdentityIdentityAmovie_id_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	ќK *
T0
%movie_id_embed_layer/embedding_lookupResourceGatherBmovie_id_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_1:^movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
dtype0*
Tindices0*L
_classB
@>loc:@movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp
0movie_id_embed_layer/embedding_lookup/Identity_1Identity.movie_id_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*L
_classB
@>loc:@movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0­
0movie_id_embed_layer/embedding_lookup/Identity_2Identity9movie_id_embed_layer/embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Ь
*movie_id_fc_layer/Tensordot/ReadVariableOpReadVariableOp3movie_id_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  j
 movie_id_fc_layer/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:q
 movie_id_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0
!movie_id_fc_layer/Tensordot/ShapeShape9movie_id_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:k
)movie_id_fc_layer/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
$movie_id_fc_layer/Tensordot/GatherV2GatherV2*movie_id_fc_layer/Tensordot/Shape:output:0)movie_id_fc_layer/Tensordot/free:output:02movie_id_fc_layer/Tensordot/GatherV2/axis:output:0*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0m
+movie_id_fc_layer/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
&movie_id_fc_layer/Tensordot/GatherV2_1GatherV2*movie_id_fc_layer/Tensordot/Shape:output:0)movie_id_fc_layer/Tensordot/axes:output:04movie_id_fc_layer/Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0k
!movie_id_fc_layer/Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0Є
 movie_id_fc_layer/Tensordot/ProdProd-movie_id_fc_layer/Tensordot/GatherV2:output:0*movie_id_fc_layer/Tensordot/Const:output:0*
_output_shapes
: *
T0m
#movie_id_fc_layer/Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0Њ
"movie_id_fc_layer/Tensordot/Prod_1Prod/movie_id_fc_layer/Tensordot/GatherV2_1:output:0,movie_id_fc_layer/Tensordot/Const_1:output:0*
_output_shapes
: *
T0i
'movie_id_fc_layer/Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0ф
"movie_id_fc_layer/Tensordot/concatConcatV2)movie_id_fc_layer/Tensordot/free:output:0)movie_id_fc_layer/Tensordot/axes:output:00movie_id_fc_layer/Tensordot/concat/axis:output:0*
_output_shapes
:*
T0*
NЏ
!movie_id_fc_layer/Tensordot/stackPack)movie_id_fc_layer/Tensordot/Prod:output:0+movie_id_fc_layer/Tensordot/Prod_1:output:0*
_output_shapes
:*
T0*
Nа
%movie_id_fc_layer/Tensordot/transpose	Transpose9movie_id_embed_layer/embedding_lookup/Identity_2:output:0+movie_id_fc_layer/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Р
#movie_id_fc_layer/Tensordot/ReshapeReshape)movie_id_fc_layer/Tensordot/transpose:y:0*movie_id_fc_layer/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0}
,movie_id_fc_layer/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:Ш
'movie_id_fc_layer/Tensordot/transpose_1	Transpose2movie_id_fc_layer/Tensordot/ReadVariableOp:value:05movie_id_fc_layer/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  |
+movie_id_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
dtype0*
_output_shapes
:М
%movie_id_fc_layer/Tensordot/Reshape_1Reshape+movie_id_fc_layer/Tensordot/transpose_1:y:04movie_id_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  М
"movie_id_fc_layer/Tensordot/MatMulMatMul,movie_id_fc_layer/Tensordot/Reshape:output:0.movie_id_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ m
#movie_id_fc_layer/Tensordot/Const_2Const*
valueB: *
dtype0*
_output_shapes
:k
)movie_id_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: я
$movie_id_fc_layer/Tensordot/concat_1ConcatV2-movie_id_fc_layer/Tensordot/GatherV2:output:0,movie_id_fc_layer/Tensordot/Const_2:output:02movie_id_fc_layer/Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0Й
movie_id_fc_layer/TensordotReshape,movie_id_fc_layer/Tensordot/MatMul:product:0-movie_id_fc_layer/Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Ф
(movie_id_fc_layer/BiasAdd/ReadVariableOpReadVariableOp1movie_id_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: В
movie_id_fc_layer/BiasAddBiasAdd$movie_id_fc_layer/Tensordot:output:00movie_id_fc_layer/BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0x
movie_id_fc_layer/ReluRelu"movie_id_fc_layer/BiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0м
2movie_categories_fc_layer/Tensordot/ReadVariableOpReadVariableOp;movie_categories_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0r
(movie_categories_fc_layer/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0y
(movie_categories_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0l
)movie_categories_fc_layer/Tensordot/ShapeShapelambda/Sum:output:0*
_output_shapes
:*
T0s
1movie_categories_fc_layer/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: Ѓ
,movie_categories_fc_layer/Tensordot/GatherV2GatherV22movie_categories_fc_layer/Tensordot/Shape:output:01movie_categories_fc_layer/Tensordot/free:output:0:movie_categories_fc_layer/Tensordot/GatherV2/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
:*
Tparams0u
3movie_categories_fc_layer/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: Ї
.movie_categories_fc_layer/Tensordot/GatherV2_1GatherV22movie_categories_fc_layer/Tensordot/Shape:output:01movie_categories_fc_layer/Tensordot/axes:output:0<movie_categories_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
:*
Tparams0s
)movie_categories_fc_layer/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:М
(movie_categories_fc_layer/Tensordot/ProdProd5movie_categories_fc_layer/Tensordot/GatherV2:output:02movie_categories_fc_layer/Tensordot/Const:output:0*
_output_shapes
: *
T0u
+movie_categories_fc_layer/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:Т
*movie_categories_fc_layer/Tensordot/Prod_1Prod7movie_categories_fc_layer/Tensordot/GatherV2_1:output:04movie_categories_fc_layer/Tensordot/Const_1:output:0*
_output_shapes
: *
T0q
/movie_categories_fc_layer/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
*movie_categories_fc_layer/Tensordot/concatConcatV21movie_categories_fc_layer/Tensordot/free:output:01movie_categories_fc_layer/Tensordot/axes:output:08movie_categories_fc_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ч
)movie_categories_fc_layer/Tensordot/stackPack1movie_categories_fc_layer/Tensordot/Prod:output:03movie_categories_fc_layer/Tensordot/Prod_1:output:0*
T0*
N*
_output_shapes
:К
-movie_categories_fc_layer/Tensordot/transpose	Transposelambda/Sum:output:03movie_categories_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ и
+movie_categories_fc_layer/Tensordot/ReshapeReshape1movie_categories_fc_layer/Tensordot/transpose:y:02movie_categories_fc_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
4movie_categories_fc_layer/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:р
/movie_categories_fc_layer/Tensordot/transpose_1	Transpose:movie_categories_fc_layer/Tensordot/ReadVariableOp:value:0=movie_categories_fc_layer/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  
3movie_categories_fc_layer/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"        *
_output_shapes
:д
-movie_categories_fc_layer/Tensordot/Reshape_1Reshape3movie_categories_fc_layer/Tensordot/transpose_1:y:0<movie_categories_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  д
*movie_categories_fc_layer/Tensordot/MatMulMatMul4movie_categories_fc_layer/Tensordot/Reshape:output:06movie_categories_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ u
+movie_categories_fc_layer/Tensordot/Const_2Const*
dtype0*
valueB: *
_output_shapes
:s
1movie_categories_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
,movie_categories_fc_layer/Tensordot/concat_1ConcatV25movie_categories_fc_layer/Tensordot/GatherV2:output:04movie_categories_fc_layer/Tensordot/Const_2:output:0:movie_categories_fc_layer/Tensordot/concat_1/axis:output:0*
T0*
_output_shapes
:*
Nб
#movie_categories_fc_layer/TensordotReshape4movie_categories_fc_layer/Tensordot/MatMul:product:05movie_categories_fc_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ д
0movie_categories_fc_layer/BiasAdd/ReadVariableOpReadVariableOp9movie_categories_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: Ъ
!movie_categories_fc_layer/BiasAddBiasAdd,movie_categories_fc_layer/Tensordot:output:08movie_categories_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ 
movie_categories_fc_layer/ReluRelu*movie_categories_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ z
dropout_layer/IdentityIdentity pool_layer_flat/Reshape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ с
4uid_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOp=uid_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	х 
)uid_embed_layer/embedding_lookup/IdentityIdentity<uid_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	х ѓ
 uid_embed_layer/embedding_lookupResourceGather=uid_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_05^uid_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*+
_output_shapes
:џџџџџџџџџ *
Tindices0*G
_class=
;9loc:@uid_embed_layer/embedding_lookup/Read/ReadVariableOp
+uid_embed_layer/embedding_lookup/Identity_1Identity)uid_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*G
_class=
;9loc:@uid_embed_layer/embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0Ѓ
+uid_embed_layer/embedding_lookup/Identity_2Identity4uid_embed_layer/embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Y
concatenate/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0є
concatenate/concatConcatV2$movie_id_fc_layer/Relu:activations:0,movie_categories_fc_layer/Relu:activations:0dropout_layer/Identity:output:0 concatenate/concat/axis:output:0*
N*+
_output_shapes
:џџџџџџџџџ`*
T0Т
%uid_fc_layer/Tensordot/ReadVariableOpReadVariableOp.uid_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0e
uid_fc_layer/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:l
uid_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0
uid_fc_layer/Tensordot/ShapeShape4uid_embed_layer/embedding_lookup/Identity_2:output:0*
_output_shapes
:*
T0f
$uid_fc_layer/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: я
uid_fc_layer/Tensordot/GatherV2GatherV2%uid_fc_layer/Tensordot/Shape:output:0$uid_fc_layer/Tensordot/free:output:0-uid_fc_layer/Tensordot/GatherV2/axis:output:0*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0h
&uid_fc_layer/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: ѓ
!uid_fc_layer/Tensordot/GatherV2_1GatherV2%uid_fc_layer/Tensordot/Shape:output:0$uid_fc_layer/Tensordot/axes:output:0/uid_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0f
uid_fc_layer/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
uid_fc_layer/Tensordot/ProdProd(uid_fc_layer/Tensordot/GatherV2:output:0%uid_fc_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
uid_fc_layer/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
uid_fc_layer/Tensordot/Prod_1Prod*uid_fc_layer/Tensordot/GatherV2_1:output:0'uid_fc_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"uid_fc_layer/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: а
uid_fc_layer/Tensordot/concatConcatV2$uid_fc_layer/Tensordot/free:output:0$uid_fc_layer/Tensordot/axes:output:0+uid_fc_layer/Tensordot/concat/axis:output:0*
T0*
N*
_output_shapes
: 
uid_fc_layer/Tensordot/stackPack$uid_fc_layer/Tensordot/Prod:output:0&uid_fc_layer/Tensordot/Prod_1:output:0*
T0*
N*
_output_shapes
:С
 uid_fc_layer/Tensordot/transpose	Transpose4uid_embed_layer/embedding_lookup/Identity_2:output:0&uid_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Б
uid_fc_layer/Tensordot/ReshapeReshape$uid_fc_layer/Tensordot/transpose:y:0%uid_fc_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџx
'uid_fc_layer/Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0Й
"uid_fc_layer/Tensordot/transpose_1	Transpose-uid_fc_layer/Tensordot/ReadVariableOp:value:00uid_fc_layer/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  w
&uid_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0­
 uid_fc_layer/Tensordot/Reshape_1Reshape&uid_fc_layer/Tensordot/transpose_1:y:0/uid_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  ­
uid_fc_layer/Tensordot/MatMulMatMul'uid_fc_layer/Tensordot/Reshape:output:0)uid_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ h
uid_fc_layer/Tensordot/Const_2Const*
dtype0*
valueB: *
_output_shapes
:f
$uid_fc_layer/Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: л
uid_fc_layer/Tensordot/concat_1ConcatV2(uid_fc_layer/Tensordot/GatherV2:output:0'uid_fc_layer/Tensordot/Const_2:output:0-uid_fc_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Њ
uid_fc_layer/TensordotReshape'uid_fc_layer/Tensordot/MatMul:product:0(uid_fc_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ К
#uid_fc_layer/BiasAdd/ReadVariableOpReadVariableOp,uid_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: Ѓ
uid_fc_layer/BiasAddBiasAdduid_fc_layer/Tensordot:output:0+uid_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ n
uid_fc_layer/ReluReluuid_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Й
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	`Ш`
dense_1/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:g
dense_1/Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:b
dense_1/Tensordot/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: л
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: п
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: М
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transposeconcatenate/concat:output:0!dense_1/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0Ђ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџs
"dense_1/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:Ћ
dense_1/Tensordot/transpose_1	Transpose(dense_1/Tensordot/ReadVariableOp:value:0+dense_1/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	`Шr
!dense_1/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"`   Ш   *
_output_shapes
:
dense_1/Tensordot/Reshape_1Reshape!dense_1/Tensordot/transpose_1:y:0*dense_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	`Ш
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0$dense_1/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
dense_1/Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0a
dense_1/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ч
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
T0*
_output_shapes
:*
N
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШБ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШe
dense_1/TanhTanhdense_1/BiasAdd:output:0*,
_output_shapes
:џџџџџџџџџШ*
T0Е
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	 Ш*
dtype0^
dense/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0e
dense/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0d
dense/Tensordot/ShapeShapeuid_fc_layer/Relu:activations:0*
_output_shapes
:*
T0_
dense/Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0г
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
_output_shapes
:*
Tparams0*
Tindices0a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0з
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tparams0*
_output_shapes
:*
Tindices0_
dense/Tensordot/ConstConst*
_output_shapes
:*
valueB: *
dtype0
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
_output_shapes
: *
T0a
dense/Tensordot/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
_output_shapes
: *
T0]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0Д
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
_output_shapes
:*
N*
T0
dense/Tensordot/transpose	Transposeuid_fc_layer/Relu:activations:0dense/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0q
 dense/Tensordot/transpose_1/permConst*
_output_shapes
:*
valueB"       *
dtype0Ѕ
dense/Tensordot/transpose_1	Transpose&dense/Tensordot/ReadVariableOp:value:0)dense/Tensordot/transpose_1/perm:output:0*
_output_shapes
:	 Ш*
T0p
dense/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
valueB"    Ш   *
dtype0
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1:y:0(dense/Tensordot/Reshape_1/shape:output:0*
_output_shapes
:	 Ш*
T0
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0"dense/Tensordot/Reshape_1:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0b
dense/Tensordot/Const_2Const*
_output_shapes
:*
valueB:Ш*
dtype0_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0П
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
T0*
N
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ­
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШa

dense/TanhTanhdense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
user_combine_layer_flat/ShapeShapedense/Tanh:y:0*
T0*
_output_shapes
:u
+user_combine_layer_flat/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0w
-user_combine_layer_flat/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0w
-user_combine_layer_flat/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0Щ
%user_combine_layer_flat/strided_sliceStridedSlice&user_combine_layer_flat/Shape:output:04user_combine_layer_flat/strided_slice/stack:output:06user_combine_layer_flat/strided_slice/stack_1:output:06user_combine_layer_flat/strided_slice/stack_2:output:0*
Index0*
_output_shapes
: *
T0*
shrink_axis_maskj
'user_combine_layer_flat/Reshape/shape/1Const*
value
B :Ш*
_output_shapes
: *
dtype0Н
%user_combine_layer_flat/Reshape/shapePack.user_combine_layer_flat/strided_slice:output:00user_combine_layer_flat/Reshape/shape/1:output:0*
T0*
_output_shapes
:*
N
user_combine_layer_flat/ReshapeReshapedense/Tanh:y:0.user_combine_layer_flat/Reshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
movie_combine_layer_flat/ShapeShapedense_1/Tanh:y:0*
T0*
_output_shapes
:v
,movie_combine_layer_flat/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:x
.movie_combine_layer_flat/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:x
.movie_combine_layer_flat/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:Ю
&movie_combine_layer_flat/strided_sliceStridedSlice'movie_combine_layer_flat/Shape:output:05movie_combine_layer_flat/strided_slice/stack:output:07movie_combine_layer_flat/strided_slice/stack_1:output:07movie_combine_layer_flat/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0k
(movie_combine_layer_flat/Reshape/shape/1Const*
dtype0*
value
B :Ш*
_output_shapes
: Р
&movie_combine_layer_flat/Reshape/shapePack/movie_combine_layer_flat/strided_slice:output:01movie_combine_layer_flat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ё
 movie_combine_layer_flat/ReshapeReshapedense_1/Tanh:y:0/movie_combine_layer_flat/Reshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
inference/mulMul(user_combine_layer_flat/Reshape:output:0)movie_combine_layer_flat/Reshape:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0a
inference/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
inference/SumSuminference/mul:z:0(inference/Sum/reduction_indices:output:0*#
_output_shapes
:џџџџџџџџџ*
T0Y
lambda_1/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
lambda_1/ExpandDims
ExpandDimsinference/Sum:output:0 lambda_1/ExpandDims/dim:output:0*'
_output_shapes
:џџџџџџџџџ*
T0	
IdentityIdentitylambda_1/ExpandDims:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp.^movie_categories_embed_layer/embedding_lookupB^movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp1^movie_categories_fc_layer/BiasAdd/ReadVariableOp3^movie_categories_fc_layer/Tensordot/ReadVariableOp&^movie_id_embed_layer/embedding_lookup:^movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp)^movie_id_fc_layer/BiasAdd/ReadVariableOp+^movie_id_fc_layer/Tensordot/ReadVariableOp)^movie_title_embed_layer/embedding_lookup=^movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp!^uid_embed_layer/embedding_lookup5^uid_embed_layer/embedding_lookup/Read/ReadVariableOp$^uid_fc_layer/BiasAdd/ReadVariableOp&^uid_fc_layer/Tensordot/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2D
 uid_embed_layer/embedding_lookup uid_embed_layer/embedding_lookup2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2h
2movie_categories_fc_layer/Tensordot/ReadVariableOp2movie_categories_fc_layer/Tensordot/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2|
<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp2J
#uid_fc_layer/BiasAdd/ReadVariableOp#uid_fc_layer/BiasAdd/ReadVariableOp2T
(movie_id_fc_layer/BiasAdd/ReadVariableOp(movie_id_fc_layer/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2X
*movie_id_fc_layer/Tensordot/ReadVariableOp*movie_id_fc_layer/Tensordot/ReadVariableOp2l
4uid_embed_layer/embedding_lookup/Read/ReadVariableOp4uid_embed_layer/embedding_lookup/Read/ReadVariableOp2T
(movie_title_embed_layer/embedding_lookup(movie_title_embed_layer/embedding_lookup2N
%uid_fc_layer/Tensordot/ReadVariableOp%uid_fc_layer/Tensordot/ReadVariableOp2
Amovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpAmovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2v
9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp2N
%movie_id_embed_layer/embedding_lookup%movie_id_embed_layer/embedding_lookup2d
0movie_categories_fc_layer/BiasAdd/ReadVariableOp0movie_categories_fc_layer/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2^
-movie_categories_embed_layer/embedding_lookup-movie_categories_embed_layer/embedding_lookup2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp: : : :($
"
_user_specified_name
inputs/2: :
 : : :($
"
_user_specified_name
inputs/1: : :	 : : : :( $
"
_user_specified_name
inputs/0: : : : : : :($
"
_user_specified_name
inputs/3: : : 
м
T
8__inference_movie_combine_layer_flat_layer_call_fn_24269

inputs
identityЌ
PartitionedCallPartitionedCallinputs*(
_output_shapes
:џџџџџџџџџШ*
Tin
2*,
_gradient_op_typePartitionedCall-22822*\
fWRU
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816*
Tout
2*-
config_proto

CPU

GPU2*0J 8a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs
ё
r
*__inference_pool_layer_layer_call_fn_23885
inputs_0
inputs_1
inputs_2
inputs_3
identityШ
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*,
_gradient_op_typePartitionedCall-22259*N
fIRG
E__inference_pool_layer_layer_call_and_return_conditional_losses_22250*/
_output_shapes
:џџџџџџџџџ *
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*
_input_shapesn
l:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/3:($
"
_user_specified_name
inputs/2
Ъ 
ц
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  X
Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:_
Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0[
Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0Y
Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  j
Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"        *
_output_shapes
:
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
dtype0*
valueB: *
_output_shapes
:Y
Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ  
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: |
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
Ё
\
>__inference_uid_layer_call_and_return_conditional_losses_23893
inputs_0
identityP
IdentityIdentityinputs_0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
дя
й
@__inference_model_layer_call_and_return_conditional_losses_23456
inputs_0
inputs_1
inputs_2
inputs_3I
Emovie_title_embed_layer_embedding_lookup_read_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resourceN
Jmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resourceF
Bmovie_id_embed_layer_embedding_lookup_read_readvariableop_resource7
3movie_id_fc_layer_tensordot_readvariableop_resource5
1movie_id_fc_layer_biasadd_readvariableop_resource?
;movie_categories_fc_layer_tensordot_readvariableop_resource=
9movie_categories_fc_layer_biasadd_readvariableop_resourceA
=uid_embed_layer_embedding_lookup_read_readvariableop_resource2
.uid_fc_layer_tensordot_readvariableop_resource0
,uid_fc_layer_biasadd_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource+
'dense_tensordot_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂ dense_1/Tensordot/ReadVariableOpЂ-movie_categories_embed_layer/embedding_lookupЂAmovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpЂ0movie_categories_fc_layer/BiasAdd/ReadVariableOpЂ2movie_categories_fc_layer/Tensordot/ReadVariableOpЂ%movie_id_embed_layer/embedding_lookupЂ9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpЂ(movie_id_fc_layer/BiasAdd/ReadVariableOpЂ*movie_id_fc_layer/Tensordot/ReadVariableOpЂ(movie_title_embed_layer/embedding_lookupЂ<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpЂ uid_embed_layer/embedding_lookupЂ4uid_embed_layer/embedding_lookup/Read/ReadVariableOpЂ#uid_fc_layer/BiasAdd/ReadVariableOpЂ%uid_fc_layer/Tensordot/ReadVariableOpё
<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpEmovie_title_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	юY *
dtype0­
1movie_title_embed_layer/embedding_lookup/IdentityIdentityDmovie_title_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	юY 
(movie_title_embed_layer/embedding_lookupResourceGatherEmovie_title_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_2=^movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*O
_classE
CAloc:@movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp*
Tindices0*
dtype0*+
_output_shapes
:џџџџџџџџџ Ї
3movie_title_embed_layer/embedding_lookup/Identity_1Identity1movie_title_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*O
_classE
CAloc:@movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ Г
3movie_title_embed_layer/embedding_lookup/Identity_2Identity<movie_title_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ y
reshape/ShapeShape<movie_title_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:g
reshape/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0g
reshape/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0љ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
T0*
_output_shapes
: *
Index0*
shrink_axis_maskY
reshape/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: Y
reshape/Reshape/shape/2Const*
dtype0*
value	B : *
_output_shapes
: Y
reshape/Reshape/shape/3Const*
value	B :*
_output_shapes
: *
dtype0б
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
T0*
N*
_output_shapes
:В
reshape/ReshapeReshape<movie_title_embed_layer/embedding_lookup/Identity_2:output:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ М
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: О
conv2d_3/Conv2DConv2Dreshape/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
paddingVALID*
T0*
strides
*/
_output_shapes
:џџџџџџџџџВ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџj
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџМ
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: О
conv2d_2/Conv2DConv2Dreshape/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0*
paddingVALID*
strides
В
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџj
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџМ
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0О
conv2d_1/Conv2DConv2Dreshape/Reshape:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0*
paddingVALID*
strides
В
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџj
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџИ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0К
conv2d/Conv2DConv2Dreshape/Reshape:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
paddingVALID*
T0*/
_output_shapes
:џџџџџџџџџ*
strides
Ў
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџЈ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*
strides
*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
ksize
Ќ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*
strides
*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
ksize
Ќ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*
strides
*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
ksize
Ќ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*
strides
*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
ksize
X
pool_layer/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
pool_layer/concatConcatV2max_pooling2d/MaxPool:output:0 max_pooling2d_1/MaxPool:output:0 max_pooling2d_2/MaxPool:output:0 max_pooling2d_3/MaxPool:output:0pool_layer/concat/axis:output:0*
N*/
_output_shapes
:џџџџџџџџџ *
T0њ
Amovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpJmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

: *
dtype0Ж
6movie_categories_embed_layer/embedding_lookup/IdentityIdentityImovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes

: Ї
-movie_categories_embed_layer/embedding_lookupResourceGatherJmovie_categories_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_3B^movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *T
_classJ
HFloc:@movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0Ж
8movie_categories_embed_layer/embedding_lookup/Identity_1Identity6movie_categories_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_output_shapes
:џџџџџџџџџ *T
_classJ
HFloc:@movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpН
8movie_categories_embed_layer/embedding_lookup/Identity_2IdentityAmovie_categories_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ _
pool_layer_flat/ShapeShapepool_layer/concat:output:0*
T0*
_output_shapes
:m
#pool_layer_flat/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0o
%pool_layer_flat/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0o
%pool_layer_flat/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0Ё
pool_layer_flat/strided_sliceStridedSlicepool_layer_flat/Shape:output:0,pool_layer_flat/strided_slice/stack:output:0.pool_layer_flat/strided_slice/stack_1:output:0.pool_layer_flat/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maska
pool_layer_flat/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0a
pool_layer_flat/Reshape/shape/2Const*
value	B : *
_output_shapes
: *
dtype0Я
pool_layer_flat/Reshape/shapePack&pool_layer_flat/strided_slice:output:0(pool_layer_flat/Reshape/shape/1:output:0(pool_layer_flat/Reshape/shape/2:output:0*
T0*
_output_shapes
:*
N
pool_layer_flat/ReshapeReshapepool_layer/concat:output:0&pool_layer_flat/Reshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ ^
lambda/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0Т

lambda/SumSumAmovie_categories_embed_layer/embedding_lookup/Identity_2:output:0%lambda/Sum/reduction_indices:output:0*
T0*
	keep_dims(*+
_output_shapes
:џџџџџџџџџ ы
9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpBmovie_id_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	ќK *
dtype0Ї
.movie_id_embed_layer/embedding_lookup/IdentityIdentityAmovie_id_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ќK 
%movie_id_embed_layer/embedding_lookupResourceGatherBmovie_id_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_1:^movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*L
_classB
@>loc:@movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ 
0movie_id_embed_layer/embedding_lookup/Identity_1Identity.movie_id_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*L
_classB
@>loc:@movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ ­
0movie_id_embed_layer/embedding_lookup/Identity_2Identity9movie_id_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Ь
*movie_id_fc_layer/Tensordot/ReadVariableOpReadVariableOp3movie_id_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  j
 movie_id_fc_layer/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:q
 movie_id_fc_layer/Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:
!movie_id_fc_layer/Tensordot/ShapeShape9movie_id_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:k
)movie_id_fc_layer/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
$movie_id_fc_layer/Tensordot/GatherV2GatherV2*movie_id_fc_layer/Tensordot/Shape:output:0)movie_id_fc_layer/Tensordot/free:output:02movie_id_fc_layer/Tensordot/GatherV2/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
:*
Tparams0m
+movie_id_fc_layer/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
&movie_id_fc_layer/Tensordot/GatherV2_1GatherV2*movie_id_fc_layer/Tensordot/Shape:output:0)movie_id_fc_layer/Tensordot/axes:output:04movie_id_fc_layer/Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Tindices0*
Taxis0*
Tparams0k
!movie_id_fc_layer/Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0Є
 movie_id_fc_layer/Tensordot/ProdProd-movie_id_fc_layer/Tensordot/GatherV2:output:0*movie_id_fc_layer/Tensordot/Const:output:0*
_output_shapes
: *
T0m
#movie_id_fc_layer/Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0Њ
"movie_id_fc_layer/Tensordot/Prod_1Prod/movie_id_fc_layer/Tensordot/GatherV2_1:output:0,movie_id_fc_layer/Tensordot/Const_1:output:0*
_output_shapes
: *
T0i
'movie_id_fc_layer/Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0ф
"movie_id_fc_layer/Tensordot/concatConcatV2)movie_id_fc_layer/Tensordot/free:output:0)movie_id_fc_layer/Tensordot/axes:output:00movie_id_fc_layer/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0Џ
!movie_id_fc_layer/Tensordot/stackPack)movie_id_fc_layer/Tensordot/Prod:output:0+movie_id_fc_layer/Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0а
%movie_id_fc_layer/Tensordot/transpose	Transpose9movie_id_embed_layer/embedding_lookup/Identity_2:output:0+movie_id_fc_layer/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Р
#movie_id_fc_layer/Tensordot/ReshapeReshape)movie_id_fc_layer/Tensordot/transpose:y:0*movie_id_fc_layer/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0}
,movie_id_fc_layer/Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0Ш
'movie_id_fc_layer/Tensordot/transpose_1	Transpose2movie_id_fc_layer/Tensordot/ReadVariableOp:value:05movie_id_fc_layer/Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0|
+movie_id_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0М
%movie_id_fc_layer/Tensordot/Reshape_1Reshape+movie_id_fc_layer/Tensordot/transpose_1:y:04movie_id_fc_layer/Tensordot/Reshape_1/shape:output:0*
_output_shapes

:  *
T0М
"movie_id_fc_layer/Tensordot/MatMulMatMul,movie_id_fc_layer/Tensordot/Reshape:output:0.movie_id_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ m
#movie_id_fc_layer/Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0k
)movie_id_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0я
$movie_id_fc_layer/Tensordot/concat_1ConcatV2-movie_id_fc_layer/Tensordot/GatherV2:output:0,movie_id_fc_layer/Tensordot/Const_2:output:02movie_id_fc_layer/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
N*
T0Й
movie_id_fc_layer/TensordotReshape,movie_id_fc_layer/Tensordot/MatMul:product:0-movie_id_fc_layer/Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Ф
(movie_id_fc_layer/BiasAdd/ReadVariableOpReadVariableOp1movie_id_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: В
movie_id_fc_layer/BiasAddBiasAdd$movie_id_fc_layer/Tensordot:output:00movie_id_fc_layer/BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0x
movie_id_fc_layer/ReluRelu"movie_id_fc_layer/BiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0м
2movie_categories_fc_layer/Tensordot/ReadVariableOpReadVariableOp;movie_categories_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0r
(movie_categories_fc_layer/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0y
(movie_categories_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0l
)movie_categories_fc_layer/Tensordot/ShapeShapelambda/Sum:output:0*
T0*
_output_shapes
:s
1movie_categories_fc_layer/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Ѓ
,movie_categories_fc_layer/Tensordot/GatherV2GatherV22movie_categories_fc_layer/Tensordot/Shape:output:01movie_categories_fc_layer/Tensordot/free:output:0:movie_categories_fc_layer/Tensordot/GatherV2/axis:output:0*
Tindices0*
Taxis0*
Tparams0*
_output_shapes
:u
3movie_categories_fc_layer/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ї
.movie_categories_fc_layer/Tensordot/GatherV2_1GatherV22movie_categories_fc_layer/Tensordot/Shape:output:01movie_categories_fc_layer/Tensordot/axes:output:0<movie_categories_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Taxis0*
Tparams0*
_output_shapes
:s
)movie_categories_fc_layer/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:М
(movie_categories_fc_layer/Tensordot/ProdProd5movie_categories_fc_layer/Tensordot/GatherV2:output:02movie_categories_fc_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+movie_categories_fc_layer/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:Т
*movie_categories_fc_layer/Tensordot/Prod_1Prod7movie_categories_fc_layer/Tensordot/GatherV2_1:output:04movie_categories_fc_layer/Tensordot/Const_1:output:0*
_output_shapes
: *
T0q
/movie_categories_fc_layer/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
*movie_categories_fc_layer/Tensordot/concatConcatV21movie_categories_fc_layer/Tensordot/free:output:01movie_categories_fc_layer/Tensordot/axes:output:08movie_categories_fc_layer/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0Ч
)movie_categories_fc_layer/Tensordot/stackPack1movie_categories_fc_layer/Tensordot/Prod:output:03movie_categories_fc_layer/Tensordot/Prod_1:output:0*
T0*
N*
_output_shapes
:К
-movie_categories_fc_layer/Tensordot/transpose	Transposelambda/Sum:output:03movie_categories_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ и
+movie_categories_fc_layer/Tensordot/ReshapeReshape1movie_categories_fc_layer/Tensordot/transpose:y:02movie_categories_fc_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
4movie_categories_fc_layer/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:р
/movie_categories_fc_layer/Tensordot/transpose_1	Transpose:movie_categories_fc_layer/Tensordot/ReadVariableOp:value:0=movie_categories_fc_layer/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  
3movie_categories_fc_layer/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"        *
_output_shapes
:д
-movie_categories_fc_layer/Tensordot/Reshape_1Reshape3movie_categories_fc_layer/Tensordot/transpose_1:y:0<movie_categories_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  д
*movie_categories_fc_layer/Tensordot/MatMulMatMul4movie_categories_fc_layer/Tensordot/Reshape:output:06movie_categories_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ u
+movie_categories_fc_layer/Tensordot/Const_2Const*
dtype0*
valueB: *
_output_shapes
:s
1movie_categories_fc_layer/Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
,movie_categories_fc_layer/Tensordot/concat_1ConcatV25movie_categories_fc_layer/Tensordot/GatherV2:output:04movie_categories_fc_layer/Tensordot/Const_2:output:0:movie_categories_fc_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:б
#movie_categories_fc_layer/TensordotReshape4movie_categories_fc_layer/Tensordot/MatMul:product:05movie_categories_fc_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ д
0movie_categories_fc_layer/BiasAdd/ReadVariableOpReadVariableOp9movie_categories_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: Ъ
!movie_categories_fc_layer/BiasAddBiasAdd,movie_categories_fc_layer/Tensordot:output:08movie_categories_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ 
movie_categories_fc_layer/ReluRelu*movie_categories_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ _
dropout_layer/dropout/rateConst*
dtype0*
valueB
 *   ?*
_output_shapes
: k
dropout_layer/dropout/ShapeShape pool_layer_flat/Reshape:output:0*
T0*
_output_shapes
:m
(dropout_layer/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: m
(dropout_layer/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ?*
_output_shapes
: Ќ
2dropout_layer/dropout/random_uniform/RandomUniformRandomUniform$dropout_layer/dropout/Shape:output:0*
dtype0*
T0*+
_output_shapes
:џџџџџџџџџ Ж
(dropout_layer/dropout/random_uniform/subSub1dropout_layer/dropout/random_uniform/max:output:01dropout_layer/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: а
(dropout_layer/dropout/random_uniform/mulMul;dropout_layer/dropout/random_uniform/RandomUniform:output:0,dropout_layer/dropout/random_uniform/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ Т
$dropout_layer/dropout/random_uniformAdd,dropout_layer/dropout/random_uniform/mul:z:01dropout_layer/dropout/random_uniform/min:output:0*
T0*+
_output_shapes
:џџџџџџџџџ `
dropout_layer/dropout/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
dropout_layer/dropout/subSub$dropout_layer/dropout/sub/x:output:0#dropout_layer/dropout/rate:output:0*
T0*
_output_shapes
: d
dropout_layer/dropout/truediv/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
dropout_layer/dropout/truedivRealDiv(dropout_layer/dropout/truediv/x:output:0dropout_layer/dropout/sub:z:0*
T0*
_output_shapes
: З
"dropout_layer/dropout/GreaterEqualGreaterEqual(dropout_layer/dropout/random_uniform:z:0#dropout_layer/dropout/rate:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
dropout_layer/dropout/mulMul pool_layer_flat/Reshape:output:0!dropout_layer/dropout/truediv:z:0*
T0*+
_output_shapes
:џџџџџџџџџ 
dropout_layer/dropout/CastCast&dropout_layer/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*+
_output_shapes
:џџџџџџџџџ 
dropout_layer/dropout/mul_1Muldropout_layer/dropout/mul:z:0dropout_layer/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ с
4uid_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOp=uid_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	х *
dtype0
)uid_embed_layer/embedding_lookup/IdentityIdentity<uid_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	х ѓ
 uid_embed_layer/embedding_lookupResourceGather=uid_embed_layer_embedding_lookup_read_readvariableop_resourceinputs_05^uid_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *G
_class=
;9loc:@uid_embed_layer/embedding_lookup/Read/ReadVariableOp*
Tindices0*
dtype0
+uid_embed_layer/embedding_lookup/Identity_1Identity)uid_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*G
_class=
;9loc:@uid_embed_layer/embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ Ѓ
+uid_embed_layer/embedding_lookup/Identity_2Identity4uid_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Y
concatenate/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0є
concatenate/concatConcatV2$movie_id_fc_layer/Relu:activations:0,movie_categories_fc_layer/Relu:activations:0dropout_layer/dropout/mul_1:z:0 concatenate/concat/axis:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`*
NТ
%uid_fc_layer/Tensordot/ReadVariableOpReadVariableOp.uid_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0e
uid_fc_layer/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0l
uid_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0
uid_fc_layer/Tensordot/ShapeShape4uid_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:f
$uid_fc_layer/Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0я
uid_fc_layer/Tensordot/GatherV2GatherV2%uid_fc_layer/Tensordot/Shape:output:0$uid_fc_layer/Tensordot/free:output:0-uid_fc_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&uid_fc_layer/Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0ѓ
!uid_fc_layer/Tensordot/GatherV2_1GatherV2%uid_fc_layer/Tensordot/Shape:output:0$uid_fc_layer/Tensordot/axes:output:0/uid_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
uid_fc_layer/Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0
uid_fc_layer/Tensordot/ProdProd(uid_fc_layer/Tensordot/GatherV2:output:0%uid_fc_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
uid_fc_layer/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
uid_fc_layer/Tensordot/Prod_1Prod*uid_fc_layer/Tensordot/GatherV2_1:output:0'uid_fc_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"uid_fc_layer/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: а
uid_fc_layer/Tensordot/concatConcatV2$uid_fc_layer/Tensordot/free:output:0$uid_fc_layer/Tensordot/axes:output:0+uid_fc_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
: 
uid_fc_layer/Tensordot/stackPack$uid_fc_layer/Tensordot/Prod:output:0&uid_fc_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:С
 uid_fc_layer/Tensordot/transpose	Transpose4uid_embed_layer/embedding_lookup/Identity_2:output:0&uid_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Б
uid_fc_layer/Tensordot/ReshapeReshape$uid_fc_layer/Tensordot/transpose:y:0%uid_fc_layer/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0x
'uid_fc_layer/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:Й
"uid_fc_layer/Tensordot/transpose_1	Transpose-uid_fc_layer/Tensordot/ReadVariableOp:value:00uid_fc_layer/Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0w
&uid_fc_layer/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"        *
_output_shapes
:­
 uid_fc_layer/Tensordot/Reshape_1Reshape&uid_fc_layer/Tensordot/transpose_1:y:0/uid_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  ­
uid_fc_layer/Tensordot/MatMulMatMul'uid_fc_layer/Tensordot/Reshape:output:0)uid_fc_layer/Tensordot/Reshape_1:output:0*'
_output_shapes
:џџџџџџџџџ *
T0h
uid_fc_layer/Tensordot/Const_2Const*
dtype0*
valueB: *
_output_shapes
:f
$uid_fc_layer/Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: л
uid_fc_layer/Tensordot/concat_1ConcatV2(uid_fc_layer/Tensordot/GatherV2:output:0'uid_fc_layer/Tensordot/Const_2:output:0-uid_fc_layer/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
T0*
NЊ
uid_fc_layer/TensordotReshape'uid_fc_layer/Tensordot/MatMul:product:0(uid_fc_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ К
#uid_fc_layer/BiasAdd/ReadVariableOpReadVariableOp,uid_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0Ѓ
uid_fc_layer/BiasAddBiasAdduid_fc_layer/Tensordot:output:0+uid_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ n
uid_fc_layer/ReluReluuid_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Й
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	`Ш*
dtype0`
dense_1/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0g
dense_1/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0b
dense_1/Tensordot/ShapeShapeconcatenate/concat:output:0*
_output_shapes
:*
T0a
dense_1/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: л
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Tparams0*
Taxis0*
Tindices0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: п
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Tparams0*
Taxis0*
Tindices0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
_output_shapes
: *
T0c
dense_1/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
_output_shapes
: *
T0_
dense_1/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: М
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0
dense_1/Tensordot/transpose	Transposeconcatenate/concat:output:0!dense_1/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0Ђ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџs
"dense_1/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:Ћ
dense_1/Tensordot/transpose_1	Transpose(dense_1/Tensordot/ReadVariableOp:value:0+dense_1/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	`Шr
!dense_1/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"`   Ш   *
_output_shapes
:
dense_1/Tensordot/Reshape_1Reshape!dense_1/Tensordot/transpose_1:y:0*dense_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	`Ш
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0$dense_1/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
dense_1/Tensordot/Const_2Const*
dtype0*
valueB:Ш*
_output_shapes
:a
dense_1/Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ч
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
T0*
N
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*,
_output_shapes
:џџџџџџџџџШ*
T0Б
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*,
_output_shapes
:џџџџџџџџџШ*
T0e
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЕ
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	 Ш*
dtype0^
dense/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0e
dense/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0d
dense/Tensordot/ShapeShapeuid_fc_layer/Relu:activations:0*
_output_shapes
:*
T0_
dense/Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0г
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tparams0*
_output_shapes
:*
Tindices0a
dense/Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0з
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tparams0*
_output_shapes
:*
Tindices0_
dense/Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0Д
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
T0*
N*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
T0*
N*
_output_shapes
:
dense/Tensordot/transpose	Transposeuid_fc_layer/Relu:activations:0dense/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0q
 dense/Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0Ѕ
dense/Tensordot/transpose_1	Transpose&dense/Tensordot/ReadVariableOp:value:0)dense/Tensordot/transpose_1/perm:output:0*
_output_shapes
:	 Ш*
T0p
dense/Tensordot/Reshape_1/shapeConst*
valueB"    Ш   *
_output_shapes
:*
dtype0
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1:y:0(dense/Tensordot/Reshape_1/shape:output:0*
_output_shapes
:	 Ш*
T0
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0"dense/Tensordot/Reshape_1:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0b
dense/Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0_
dense/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ­
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШa

dense/TanhTanhdense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
user_combine_layer_flat/ShapeShapedense/Tanh:y:0*
T0*
_output_shapes
:u
+user_combine_layer_flat/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0w
-user_combine_layer_flat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-user_combine_layer_flat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%user_combine_layer_flat/strided_sliceStridedSlice&user_combine_layer_flat/Shape:output:04user_combine_layer_flat/strided_slice/stack:output:06user_combine_layer_flat/strided_slice/stack_1:output:06user_combine_layer_flat/strided_slice/stack_2:output:0*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: j
'user_combine_layer_flat/Reshape/shape/1Const*
value
B :Ш*
_output_shapes
: *
dtype0Н
%user_combine_layer_flat/Reshape/shapePack.user_combine_layer_flat/strided_slice:output:00user_combine_layer_flat/Reshape/shape/1:output:0*
_output_shapes
:*
T0*
N
user_combine_layer_flat/ReshapeReshapedense/Tanh:y:0.user_combine_layer_flat/Reshape/shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0^
movie_combine_layer_flat/ShapeShapedense_1/Tanh:y:0*
_output_shapes
:*
T0v
,movie_combine_layer_flat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.movie_combine_layer_flat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.movie_combine_layer_flat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&movie_combine_layer_flat/strided_sliceStridedSlice'movie_combine_layer_flat/Shape:output:05movie_combine_layer_flat/strided_slice/stack:output:07movie_combine_layer_flat/strided_slice/stack_1:output:07movie_combine_layer_flat/strided_slice/stack_2:output:0*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0k
(movie_combine_layer_flat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :ШР
&movie_combine_layer_flat/Reshape/shapePack/movie_combine_layer_flat/strided_slice:output:01movie_combine_layer_flat/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:Ё
 movie_combine_layer_flat/ReshapeReshapedense_1/Tanh:y:0/movie_combine_layer_flat/Reshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
inference/mulMul(user_combine_layer_flat/Reshape:output:0)movie_combine_layer_flat/Reshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
inference/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
inference/SumSuminference/mul:z:0(inference/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџY
lambda_1/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
lambda_1/ExpandDims
ExpandDimsinference/Sum:output:0 lambda_1/ExpandDims/dim:output:0*'
_output_shapes
:џџџџџџџџџ*
T0	
IdentityIdentitylambda_1/ExpandDims:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp.^movie_categories_embed_layer/embedding_lookupB^movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp1^movie_categories_fc_layer/BiasAdd/ReadVariableOp3^movie_categories_fc_layer/Tensordot/ReadVariableOp&^movie_id_embed_layer/embedding_lookup:^movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp)^movie_id_fc_layer/BiasAdd/ReadVariableOp+^movie_id_fc_layer/Tensordot/ReadVariableOp)^movie_title_embed_layer/embedding_lookup=^movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp!^uid_embed_layer/embedding_lookup5^uid_embed_layer/embedding_lookup/Read/ReadVariableOp$^uid_fc_layer/BiasAdd/ReadVariableOp&^uid_fc_layer/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2J
#uid_fc_layer/BiasAdd/ReadVariableOp#uid_fc_layer/BiasAdd/ReadVariableOp2T
(movie_id_fc_layer/BiasAdd/ReadVariableOp(movie_id_fc_layer/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2X
*movie_id_fc_layer/Tensordot/ReadVariableOp*movie_id_fc_layer/Tensordot/ReadVariableOp2T
(movie_title_embed_layer/embedding_lookup(movie_title_embed_layer/embedding_lookup2l
4uid_embed_layer/embedding_lookup/Read/ReadVariableOp4uid_embed_layer/embedding_lookup/Read/ReadVariableOp2
Amovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpAmovie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp2N
%uid_fc_layer/Tensordot/ReadVariableOp%uid_fc_layer/Tensordot/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2v
9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp9movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp2N
%movie_id_embed_layer/embedding_lookup%movie_id_embed_layer/embedding_lookup2d
0movie_categories_fc_layer/BiasAdd/ReadVariableOp0movie_categories_fc_layer/BiasAdd/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2^
-movie_categories_embed_layer/embedding_lookup-movie_categories_embed_layer/embedding_lookup2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2D
 uid_embed_layer/embedding_lookup uid_embed_layer/embedding_lookup2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2h
2movie_categories_fc_layer/Tensordot/ReadVariableOp2movie_categories_fc_layer/Tensordot/ReadVariableOp2|
<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp<movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp: : :($
"
_user_specified_name
inputs/1: : :	 : : : :( $
"
_user_specified_name
inputs/0: : : : : : :($
"
_user_specified_name
inputs/3: : : : : : :($
"
_user_specified_name
inputs/2: :
 
І
Љ
(__inference_conv2d_1_layer_call_fn_22019

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22014*
Tout
2*L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
Tin
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
І
Љ
(__inference_conv2d_2_layer_call_fn_22044

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22039*
Tout
2*L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
Tin
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
і
В
1__inference_movie_id_fc_layer_layer_call_fn_24017

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22468*
Tout
2*U
fPRN
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462*-
config_proto

CPU

GPU2*0J 8
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
њ

^
B__inference_reshape_layer_call_and_return_conditional_losses_23811

inputs
identity;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:_
strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskQ
Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: Q
Reshape/shape/2Const*
dtype0*
value	B : *
_output_shapes
: Q
Reshape/shape/3Const*
dtype0*
value	B :*
_output_shapes
: Љ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
T0*
N*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs

м
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOpЊ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*
paddingVALID*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
strides
 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
І
a
C__inference_movie_id_layer_call_and_return_conditional_losses_23838
inputs_0
identityP
IdentityIdentityinputs_0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
з
л
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_23913

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	ќK }
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	ќK *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOpп
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
T0
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs

м
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOpЊ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
strides
*
paddingVALID*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0Ѕ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
г
K
/__inference_pool_layer_flat_layer_call_fn_23959

inputs
identityІ
PartitionedCallPartitionedCallinputs*
Tin
2*S
fNRL
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331*,
_gradient_op_typePartitionedCall-22337*-
config_proto

CPU

GPU2*0J 8*
Tout
2*+
_output_shapes
:џџџџџџџџџ d
IdentityIdentityPartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Є	
o
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:_
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:_
strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
Index0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
dtype0*
value
B :Ш*
_output_shapes
: u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs
Є	
o
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_24264

inputs
identity;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0_
strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0_
strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0R
Reshape/shape/1Const*
value
B :Ш*
_output_shapes
: *
dtype0u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
_output_shapes
:*
T0*
Ne
ReshapeReshapeinputsReshape/shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0Y
IdentityIdentityReshape:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs
 
_
C__inference_movie_id_layer_call_and_return_conditional_losses_22295

inputs
identityN
IdentityIdentityinputs*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Ё
\
>__inference_uid_layer_call_and_return_conditional_losses_23889
inputs_0
identityP
IdentityIdentityinputs_0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
У 
п
@__inference_dense_layer_call_and_return_conditional_losses_22762

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЉ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	 Ш*
dtype0X
Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
_output_shapes
:*
T0Y
Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
:*
Tparams0[
Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
:*
Tparams0Y
Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	 Шj
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    Ш   
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	 Ш
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
T0*
_output_shapes
:*
N
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*,
_output_shapes
:џџџџџџџџџШ*
T0Ё
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*,
_output_shapes
:џџџџџџџџџШ*
T0U
TanhTanhBiasAdd:output:0*,
_output_shapes
:џџџџџџџџџШ*
T0
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*,
_output_shapes
:џџџџџџџџџШ*
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 

e
+__inference_concatenate_layer_call_fn_24151
inputs_0
inputs_1
inputs_2
identityК
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*,
_gradient_op_typePartitionedCall-22616*
Tout
2*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_22608*+
_output_shapes
:џџџџџџџџџ`*
Tin
2d
IdentityIdentityPartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0"
identityIdentity:output:0*X
_input_shapesG
E:џџџџџџџџџ :џџџџџџџџџ :џџџџџџџџџ :($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/2
Є
c
G__inference_movie_genres_layer_call_and_return_conditional_losses_22224

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
з
л
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	ќK *
dtype0}
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ќK Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ п
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
T0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs
ћ
n
D__inference_inference_layer_call_and_return_conditional_losses_22847

inputs
inputs_1
identityO
mulMulinputsinputs_1*
T0*(
_output_shapes
:џџџџџџџџџШW
Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0a
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџP
IdentityIdentitySum:output:0*
T0*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:&"
 
_user_specified_nameinputs:& "
 
_user_specified_nameinputs

]
A__inference_lambda_layer_call_and_return_conditional_losses_23931

inputs
identityW
Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0y
SumSuminputsSum/reduction_indices:output:0*
	keep_dims(*
T0*+
_output_shapes
:џџџџџџџџџ X
IdentityIdentitySum:output:0*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Ў

F__inference_concatenate_layer_call_and_return_conditional_losses_24144
inputs_0
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
T0*
N*+
_output_shapes
:џџџџџџџџџ`[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`"
identityIdentity:output:0*X
_input_shapesG
E:џџџџџџџџџ :џџџџџџџџџ :џџџџџџџџџ :($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/2

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077

inputs
identityЂ
MaxPoolMaxPoolinputs*
strides
*
ksize
*
paddingVALID*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
к
о
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_23791

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	юY *
dtype0}
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	юY *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*+
_output_shapes
:џџџџџџџџџ *
Tindices0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOpп
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
T0
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs
Є
c
G__inference_movie_genres_layer_call_and_return_conditional_losses_22218

inputs
identityN
IdentityIdentityinputs*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
я{

@__inference_model_layer_call_and_return_conditional_losses_23024

inputs
inputs_1
inputs_2
inputs_3:
6movie_title_embed_layer_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_2+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_2+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_2)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_2?
;movie_categories_embed_layer_statefulpartitionedcall_args_17
3movie_id_embed_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_2<
8movie_categories_fc_layer_statefulpartitionedcall_args_1<
8movie_categories_fc_layer_statefulpartitionedcall_args_22
.uid_embed_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ%dropout_layer/StatefulPartitionedCallЂ4movie_categories_embed_layer/StatefulPartitionedCallЂ1movie_categories_fc_layer/StatefulPartitionedCallЂ,movie_id_embed_layer/StatefulPartitionedCallЂ)movie_id_fc_layer/StatefulPartitionedCallЂ/movie_title_embed_layer/StatefulPartitionedCallЂ'uid_embed_layer/StatefulPartitionedCallЂ$uid_fc_layer/StatefulPartitionedCall
/movie_title_embed_layer/StatefulPartitionedCallStatefulPartitionedCallinputs_26movie_title_embed_layer_statefulpartitionedcall_args_1*
Tout
2*,
_gradient_op_typePartitionedCall-22162*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *
Tin
2*[
fVRT
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156м
reshape/PartitionedCallPartitionedCall8movie_title_embed_layer/StatefulPartitionedCall:output:0*
Tout
2*,
_gradient_op_typePartitionedCall-22191*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ *
Tin
2*K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_22185Њ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058*,
_gradient_op_typePartitionedCall-22064*/
_output_shapes
:џџџџџџџџџ*
Tout
2Њ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*
Tout
2*,
_gradient_op_typePartitionedCall-22039*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*
Tin
2*L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033Њ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*
Tout
2*,
_gradient_op_typePartitionedCall-22014*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*
Tin
2*L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008Ђ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_21983*,
_gradient_op_typePartitionedCall-21989*
Tout
2*/
_output_shapes
:џџџџџџџџџз
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077*,
_gradient_op_typePartitionedCall-22083*
Tout
2*/
_output_shapes
:џџџџџџџџџн
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094*,
_gradient_op_typePartitionedCall-22100*
Tout
2*/
_output_shapes
:џџџџџџџџџн
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22117*S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111*
Tout
2*-
config_proto

CPU

GPU2*0J 8н
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22134*S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128*
Tout
2*-
config_proto

CPU

GPU2*0J 8Ў
movie_genres/PartitionedCallPartitionedCallinputs_3*'
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22228*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22218*
Tout
2*-
config_proto

CPU

GPU2*0J 8б
pool_layer/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*N
fIRG
E__inference_pool_layer_layer_call_and_return_conditional_losses_22250*,
_gradient_op_typePartitionedCall-22259*/
_output_shapes
:џџџџџџџџџ *
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8Н
4movie_categories_embed_layer/StatefulPartitionedCallStatefulPartitionedCall%movie_genres/PartitionedCall:output:0;movie_categories_embed_layer_statefulpartitionedcall_args_1*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22282*`
f[RY
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276*
Tout
2*-
config_proto

CPU

GPU2*0J 8І
movie_id/PartitionedCallPartitionedCallinputs_1*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22295*,
_gradient_op_typePartitionedCall-22305*'
_output_shapes
:џџџџџџџџџ*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8г
pool_layer_flat/PartitionedCallPartitionedCall#pool_layer/PartitionedCall:output:0*S
fNRL
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331*,
_gradient_op_typePartitionedCall-22337*+
_output_shapes
:џџџџџџџџџ *
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2л
lambda/PartitionedCallPartitionedCall=movie_categories_embed_layer/StatefulPartitionedCall:output:0*J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22350*,
_gradient_op_typePartitionedCall-22362*+
_output_shapes
:џџџџџџџџџ *
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2Ё
,movie_id_embed_layer/StatefulPartitionedCallStatefulPartitionedCall!movie_id/PartitionedCall:output:03movie_id_embed_layer_statefulpartitionedcall_args_1*X
fSRQ
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385*,
_gradient_op_typePartitionedCall-22391*+
_output_shapes
:џџџџџџџџџ *
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2
uid/PartitionedCallPartitionedCallinputs*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22404*,
_gradient_op_typePartitionedCall-22414*'
_output_shapes
:џџџџџџџџџ*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2п
)movie_id_fc_layer/StatefulPartitionedCallStatefulPartitionedCall5movie_id_embed_layer/StatefulPartitionedCall:output:00movie_id_fc_layer_statefulpartitionedcall_args_10movie_id_fc_layer_statefulpartitionedcall_args_2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22468*U
fPRN
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462*
Tout
2*+
_output_shapes
:џџџџџџџџџ щ
1movie_categories_fc_layer/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:08movie_categories_fc_layer_statefulpartitionedcall_args_18movie_categories_fc_layer_statefulpartitionedcall_args_2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22520*]
fXRV
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514*
Tout
2*+
_output_shapes
:џџџџџџџџџ ф
%dropout_layer/StatefulPartitionedCallStatefulPartitionedCall(pool_layer_flat/PartitionedCall:output:0*
Tin
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22562*Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22551*
Tout
2*+
_output_shapes
:џџџџџџџџџ 
'uid_embed_layer/StatefulPartitionedCallStatefulPartitionedCalluid/PartitionedCall:output:0.uid_embed_layer_statefulpartitionedcall_args_1*
Tin
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22591*S
fNRL
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585*
Tout
2*+
_output_shapes
:џџџџџџџџџ Ш
concatenate/PartitionedCallPartitionedCall2movie_id_fc_layer/StatefulPartitionedCall:output:0:movie_categories_fc_layer/StatefulPartitionedCall:output:0.dropout_layer/StatefulPartitionedCall:output:0*
Tin
2*O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_22608*,
_gradient_op_typePartitionedCall-22616*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ`Ц
$uid_fc_layer/StatefulPartitionedCallStatefulPartitionedCall0uid_embed_layer/StatefulPartitionedCall:output:0+uid_fc_layer_statefulpartitionedcall_args_1+uid_fc_layer_statefulpartitionedcall_args_2*
Tin
2*P
fKRI
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658*,
_gradient_op_typePartitionedCall-22664*-
config_proto

CPU

GPU2*0J 8*
Tout
2*+
_output_shapes
:џџџџџџџџџ Ї
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tin
2*K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22710*,
_gradient_op_typePartitionedCall-22716*-
config_proto

CPU

GPU2*0J 8*
Tout
2*,
_output_shapes
:џџџџџџџџџШЈ
dense/StatefulPartitionedCallStatefulPartitionedCall-uid_fc_layer/StatefulPartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tin
2*I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22762*,
_gradient_op_typePartitionedCall-22768*
Tout
2*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШу
'user_combine_layer_flat/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*[
fVRT
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791*,
_gradient_op_typePartitionedCall-22797*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШч
(movie_combine_layer_flat/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22822*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШ*
Tin
2*\
fWRU
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816
inference/PartitionedCallPartitionedCall0user_combine_layer_flat/PartitionedCall:output:01movie_combine_layer_flat/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22852*
Tout
2*-
config_proto

CPU

GPU2*0J 8*#
_output_shapes
:џџџџџџџџџ*
Tin
2*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22837Р
lambda_1/PartitionedCallPartitionedCall"inference/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22884*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*
Tin
2*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22872І
IdentityIdentity!lambda_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^dropout_layer/StatefulPartitionedCall5^movie_categories_embed_layer/StatefulPartitionedCall2^movie_categories_fc_layer/StatefulPartitionedCall-^movie_id_embed_layer/StatefulPartitionedCall*^movie_id_fc_layer/StatefulPartitionedCall0^movie_title_embed_layer/StatefulPartitionedCall(^uid_embed_layer/StatefulPartitionedCall%^uid_fc_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2L
$uid_fc_layer/StatefulPartitionedCall$uid_fc_layer/StatefulPartitionedCall2f
1movie_categories_fc_layer/StatefulPartitionedCall1movie_categories_fc_layer/StatefulPartitionedCall2R
'uid_embed_layer/StatefulPartitionedCall'uid_embed_layer/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)movie_id_fc_layer/StatefulPartitionedCall)movie_id_fc_layer/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2\
,movie_id_embed_layer/StatefulPartitionedCall,movie_id_embed_layer/StatefulPartitionedCall2N
%dropout_layer/StatefulPartitionedCall%dropout_layer/StatefulPartitionedCall2l
4movie_categories_embed_layer/StatefulPartitionedCall4movie_categories_embed_layer/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2b
/movie_title_embed_layer/StatefulPartitionedCall/movie_title_embed_layer/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall: : : :&"
 
_user_specified_nameinputs: :
 : : :&"
 
_user_specified_nameinputs: : :	 : : : :& "
 
_user_specified_nameinputs: : : : : : :&"
 
_user_specified_nameinputs: : : 


f
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_23954

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0_
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0Q
Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: Q
Reshape/shape/2Const*
dtype0*
value	B : *
_output_shapes
: 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
_output_shapes
:*
T0h
ReshapeReshapeinputsReshape/shape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0\
IdentityIdentityReshape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
|

@__inference_model_layer_call_and_return_conditional_losses_22898
uid
movie_id
movie_titles
movie_genres:
6movie_title_embed_layer_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_2+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_2+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_2)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_2?
;movie_categories_embed_layer_statefulpartitionedcall_args_17
3movie_id_embed_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_2<
8movie_categories_fc_layer_statefulpartitionedcall_args_1<
8movie_categories_fc_layer_statefulpartitionedcall_args_22
.uid_embed_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ%dropout_layer/StatefulPartitionedCallЂ4movie_categories_embed_layer/StatefulPartitionedCallЂ1movie_categories_fc_layer/StatefulPartitionedCallЂ,movie_id_embed_layer/StatefulPartitionedCallЂ)movie_id_fc_layer/StatefulPartitionedCallЂ/movie_title_embed_layer/StatefulPartitionedCallЂ'uid_embed_layer/StatefulPartitionedCallЂ$uid_fc_layer/StatefulPartitionedCall
/movie_title_embed_layer/StatefulPartitionedCallStatefulPartitionedCallmovie_titles6movie_title_embed_layer_statefulpartitionedcall_args_1*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-22162*
Tout
2*+
_output_shapes
:џџџџџџџџџ *[
fVRT
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156м
reshape/PartitionedCallPartitionedCall8movie_title_embed_layer/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-22191*
Tout
2*/
_output_shapes
:џџџџџџџџџ *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_22185Њ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-22064*
Tout
2*/
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058Њ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-22039*
Tout
2*/
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033Њ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22014*
Tout
2*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008*/
_output_shapes
:џџџџџџџџџ*
Tin
2Ђ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-21989*
Tout
2*-
config_proto

CPU

GPU2*0J 8*J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_21983*/
_output_shapes
:џџџџџџџџџ*
Tin
2з
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22083*
Tout
2*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077*/
_output_shapes
:џџџџџџџџџ*
Tin
2н
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22100*
Tout
2*S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094*
Tin
2н
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22117*
Tout
2*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111н
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22134*
Tout
2*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128Д
movie_genres_1/PartitionedCallPartitionedCallmovie_genres*'
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22228*
Tout
2*-
config_proto

CPU

GPU2*0J 8*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22218б
pool_layer/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22259*
Tout
2*-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_pool_layer_layer_call_and_return_conditional_losses_22250П
4movie_categories_embed_layer/StatefulPartitionedCallStatefulPartitionedCall'movie_genres_1/PartitionedCall:output:0;movie_categories_embed_layer_statefulpartitionedcall_args_1*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22282*
Tout
2*`
f[RY
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276*
Tin
2Ј
movie_id_1/PartitionedCallPartitionedCallmovie_id*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22305*
Tout
2*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22295*
Tin
2г
pool_layer_flat/PartitionedCallPartitionedCall#pool_layer/PartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22337*
Tout
2*S
fNRL
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331*
Tin
2л
lambda/PartitionedCallPartitionedCall=movie_categories_embed_layer/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22362*
Tout
2*J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22350*
Tin
2Ѓ
,movie_id_embed_layer/StatefulPartitionedCallStatefulPartitionedCall#movie_id_1/PartitionedCall:output:03movie_id_embed_layer_statefulpartitionedcall_args_1*
Tin
2*,
_gradient_op_typePartitionedCall-22391*
Tout
2*-
config_proto

CPU

GPU2*0J 8*X
fSRQ
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385*+
_output_shapes
:џџџџџџџџџ 
uid_1/PartitionedCallPartitionedCalluid*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22404*
Tin
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22414*
Tout
2п
)movie_id_fc_layer/StatefulPartitionedCallStatefulPartitionedCall5movie_id_embed_layer/StatefulPartitionedCall:output:00movie_id_fc_layer_statefulpartitionedcall_args_10movie_id_fc_layer_statefulpartitionedcall_args_2*U
fPRN
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462*
Tin
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22468*
Tout
2щ
1movie_categories_fc_layer/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:08movie_categories_fc_layer_statefulpartitionedcall_args_18movie_categories_fc_layer_statefulpartitionedcall_args_2*]
fXRV
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514*
Tin
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22520*
Tout
2ф
%dropout_layer/StatefulPartitionedCallStatefulPartitionedCall(pool_layer_flat/PartitionedCall:output:0*Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22551*
Tin
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22562*
Tout
2
'uid_embed_layer/StatefulPartitionedCallStatefulPartitionedCalluid_1/PartitionedCall:output:0.uid_embed_layer_statefulpartitionedcall_args_1*
Tin
2*,
_gradient_op_typePartitionedCall-22591*
Tout
2*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585*+
_output_shapes
:џџџџџџџџџ Ш
concatenate/PartitionedCallPartitionedCall2movie_id_fc_layer/StatefulPartitionedCall:output:0:movie_categories_fc_layer/StatefulPartitionedCall:output:0.dropout_layer/StatefulPartitionedCall:output:0*
Tin
2*,
_gradient_op_typePartitionedCall-22616*
Tout
2*O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_22608*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ`Ц
$uid_fc_layer/StatefulPartitionedCallStatefulPartitionedCall0uid_embed_layer/StatefulPartitionedCall:output:0+uid_fc_layer_statefulpartitionedcall_args_1+uid_fc_layer_statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22664*
Tout
2*-
config_proto

CPU

GPU2*0J 8*P
fKRI
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658*+
_output_shapes
:џџџџџџџџџ Ї
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22716*
Tout
2*K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22710*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШЈ
dense/StatefulPartitionedCallStatefulPartitionedCall-uid_fc_layer/StatefulPartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-22768*
Tout
2*I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22762*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШ*
Tin
2у
'user_combine_layer_flat/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*[
fVRT
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791*,
_gradient_op_typePartitionedCall-22797*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШч
(movie_combine_layer_flat/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22822*
Tout
2*\
fWRU
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШ*
Tin
2
inference/PartitionedCallPartitionedCall0user_combine_layer_flat/PartitionedCall:output:01movie_combine_layer_flat/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22852*
Tout
2*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22837*-
config_proto

CPU

GPU2*0J 8*#
_output_shapes
:џџџџџџџџџ*
Tin
2Р
lambda_1/PartitionedCallPartitionedCall"inference/PartitionedCall:output:0*,
_gradient_op_typePartitionedCall-22884*
Tout
2*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22872*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*
Tin
2І
IdentityIdentity!lambda_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^dropout_layer/StatefulPartitionedCall5^movie_categories_embed_layer/StatefulPartitionedCall2^movie_categories_fc_layer/StatefulPartitionedCall-^movie_id_embed_layer/StatefulPartitionedCall*^movie_id_fc_layer/StatefulPartitionedCall0^movie_title_embed_layer/StatefulPartitionedCall(^uid_embed_layer/StatefulPartitionedCall%^uid_fc_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2L
$uid_fc_layer/StatefulPartitionedCall$uid_fc_layer/StatefulPartitionedCall2f
1movie_categories_fc_layer/StatefulPartitionedCall1movie_categories_fc_layer/StatefulPartitionedCall2R
'uid_embed_layer/StatefulPartitionedCall'uid_embed_layer/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)movie_id_fc_layer/StatefulPartitionedCall)movie_id_fc_layer/StatefulPartitionedCall2\
,movie_id_embed_layer/StatefulPartitionedCall,movie_id_embed_layer/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2N
%dropout_layer/StatefulPartitionedCall%dropout_layer/StatefulPartitionedCall2l
4movie_categories_embed_layer/StatefulPartitionedCall4movie_categories_embed_layer/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2b
/movie_title_embed_layer/StatefulPartitionedCall/movie_title_embed_layer/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :# 

_user_specified_nameuid: : : : : : :,(
&
_user_specified_namemovie_genres: : : 
Б
A
#__inference_uid_layer_call_fn_23898
inputs_0
identity
PartitionedCallPartitionedCallinputs_0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22404*,
_gradient_op_typePartitionedCall-22414*'
_output_shapes
:џџџџџџџџџ*
Tout
2`
IdentityIdentityPartitionedCall:output:0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
Ѓ
~
F__inference_concatenate_layer_call_and_return_conditional_losses_22608

inputs
inputs_1
inputs_2
identityM
concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0*
N[
IdentityIdentityconcat:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0"
identityIdentity:output:0*X
_input_shapesG
E:џџџџџџџџџ :џџџџџџџџџ :џџџџџџџџџ :&"
 
_user_specified_nameinputs:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs
Я
f
-__inference_dropout_layer_layer_call_fn_24089

inputs
identityЂStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputs*,
_gradient_op_typePartitionedCall-22562*-
config_proto

CPU

GPU2*0J 8*
Tout
2*+
_output_shapes
:џџџџџџџџџ *
Tin
2*Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22551
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs


f
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskQ
Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :Q
Reshape/shape/2Const*
dtype0*
_output_shapes
: *
value	B : 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
_output_shapes
:*
T0h
ReshapeReshapeinputsReshape/shape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0\
IdentityIdentityReshape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Н
B
&__inference_lambda_layer_call_fn_23941

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22358*,
_gradient_op_typePartitionedCall-22370*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ d
IdentityIdentityPartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Л
F
(__inference_movie_id_layer_call_fn_23852
inputs_0
identity
PartitionedCallPartitionedCallinputs_0*
Tin
2*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22301*,
_gradient_op_typePartitionedCall-22313*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
­
K
/__inference_max_pooling2d_2_layer_call_fn_22120

inputs
identityХ
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_gradient_op_typePartitionedCall-22117*
Tout
2*
Tin
2
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
н
у
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_23862

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpР
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

: *
dtype0|
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes

: *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ п
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
T0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs
к
S
7__inference_user_combine_layer_flat_layer_call_fn_24252

inputs
identityЋ
PartitionedCallPartitionedCallinputs*
Tin
2*(
_output_shapes
:џџџџџџџџџШ*,
_gradient_op_typePartitionedCall-22797*
Tout
2*[
fVRT
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791*-
config_proto

CPU

GPU2*0J 8a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:џџџџџџџџџШ*
T0"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs


/__inference_uid_embed_layer_layer_call_fn_23975

inputs"
statefulpartitionedcall_args_1
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1*
Tin
2*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22591*
Tout
2*S
fNRL
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585*-
config_proto

CPU

GPU2*0J 8
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs
­
K
/__inference_max_pooling2d_1_layer_call_fn_22103

inputs
identityХ
PartitionedCallPartitionedCallinputs*S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-22100*
Tout
2*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
з 
ѓ
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_24052

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
valueB:*
dtype0_
Tensordot/freeConst*
_output_shapes
:*
valueB"       *
dtype0E
Tensordot/ShapeShapeinputs*
_output_shapes
:*
T0Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
_output_shapes
:*
Taxis0*
Tparams0*
Tindices0[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Taxis0*
Tparams0*
Tindices0Y
Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
T0*
N*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
T0*
N*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0j
Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
_output_shapes
:*
T0*
N
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0T
ReluReluBiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
а
g
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24079

inputs
identityQ
dropout/rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0_
dropout/random_uniform/maxConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ *
dtype0
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: І
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*+
_output_shapes
:џџџџџџџџџ *
T0
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*+
_output_shapes
:џџџџџџџџџ R
dropout/sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: 
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*+
_output_shapes
:џџџџџџџџџ e
dropout/mulMulinputsdropout/truediv:z:0*+
_output_shapes
:џџџџџџџџџ *
T0s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*+
_output_shapes
:џџџџџџџџџ *

SrcT0
m
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*+
_output_shapes
:џџџџџџџџџ *
T0]
IdentityIdentitydropout/mul_1:z:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Х 
с
B__inference_dense_1_layer_call_and_return_conditional_losses_22710

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЉ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	`ШX
Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:_
Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:E
Tensordot/ShapeShapeinputs*
_output_shapes
:*
T0Y
Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
_output_shapes
:*
Tindices0*
Taxis0*
Tparams0[
Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Tindices0*
Taxis0*
Tparams0Y
Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
_output_shapes
:*
N*
T0y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0k
Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	`Шj
Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"`   Ш   *
_output_shapes
:
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	`Ш
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
Tensordot/Const_2Const*
dtype0*
valueB:Ш*
_output_shapes
:Y
Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
T0*
N*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЁ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:Ш}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШU
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ`::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
І
a
C__inference_movie_id_layer_call_and_return_conditional_losses_23842
inputs_0
identityP
IdentityIdentityinputs_0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0

к
A__inference_conv2d_layer_call_and_return_conditional_losses_21983

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOpЊ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*
paddingVALID*
strides
*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
з 
ѓ
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
_output_shapes
:*
Tparams0*
Taxis0*
Tindices0[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Tparams0*
Taxis0*
Tindices0Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
_output_shapes
:*
N*
T0y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
_output_shapes
:*
N*
T0y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0k
Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0j
Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
_output_shapes

:  *
T0
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ  
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0T
ReluReluBiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
ш
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_22880

inputs
identityP
ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*'
_output_shapes
:џџџџџџџџџ*
T0[
IdentityIdentityExpandDims:output:0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Х 
с
B__inference_dense_1_layer_call_and_return_conditional_losses_24228

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЉ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	`Ш*
dtype0X
Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
_output_shapes
:*
T0Y
Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tparams0*
Taxis0*
Tindices0*
_output_shapes
:Y
Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ`*
T0
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	`Шj
Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"`   Ш   *
_output_shapes
:
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	`Ш
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
Tensordot/Const_2Const*
dtype0*
valueB:Ш*
_output_shapes
:Y
Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЁ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:Ш}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШU
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ`::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
к
о
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	юY }
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	юY *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0п
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
T0
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs


E__inference_pool_layer_layer_call_and_return_conditional_losses_22250

inputs
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*/
_output_shapes
:џџџџџџџџџ *
N*
T0_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*
_input_shapesn
l:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:&"
 
_user_specified_nameinputs:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs

К
9__inference_movie_categories_fc_layer_layer_call_fn_24059

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22520*+
_output_shapes
:џџџџџџџџџ *
Tout
2*]
fXRV
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514*-
config_proto

CPU

GPU2*0J 8
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
Б
A
#__inference_uid_layer_call_fn_23903
inputs_0
identity
PartitionedCallPartitionedCallinputs_0*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22422*
Tin
2*
Tout
2*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22410*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
р
І
%__inference_dense_layer_call_fn_24193

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22768*
Tin
2*
Tout
2*I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22762*,
_output_shapes
:џџџџџџџџџШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
В
Е
%__inference_model_layer_call_fn_23142
uid
movie_id
movie_titles
movie_genres"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25
identityЂStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCalluidmovie_idmovie_titlesmovie_genresstatefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25*%
Tin
2*I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23116*,
_gradient_op_typePartitionedCall-23117*-
config_proto

CPU

GPU2*0J 8*
Tout
2*'
_output_shapes
:џџџџџџџџџ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :# 

_user_specified_nameuid: : : : : : :,(
&
_user_specified_namemovie_genres: : : 

Z
>__inference_uid_layer_call_and_return_conditional_losses_22404

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Ъ 
ц
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_24129

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0[
Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0Y
Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
T0*
_output_shapes
:*
Ny
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
T0*
_output_shapes
:*
Ny
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  j
Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ  
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
Я 
ы
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_24010

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tparams0*
Tindices0*
_output_shapes
:*
Taxis0[
Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
T0*
_output_shapes
:*
Ny
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
T0*
_output_shapes
:*
Ny
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0j
Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
_output_shapes

:  *
T0
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*'
_output_shapes
:џџџџџџџџџ *
T0[
Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
_output_shapes
:*
N*
T0
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0T
ReluReluBiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
Љ
В
%__inference_model_layer_call_fn_23751
inputs_0
inputs_1
inputs_2
inputs_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25*'
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-23025*
Tout
2*I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23024*-
config_proto

CPU

GPU2*0J 8*%
Tin
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :($
"
_user_specified_name
inputs/2: :
 : : :($
"
_user_specified_name
inputs/1: : :	 : : : :( $
"
_user_specified_name
inputs/0: : : : : : :($
"
_user_specified_name
inputs/3: : : 
Ы
I
-__inference_dropout_layer_layer_call_fn_24094

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*,
_gradient_op_typePartitionedCall-22570*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22558d
IdentityIdentityPartitionedCall:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Ч
C
'__inference_reshape_layer_call_fn_23816

inputs
identityЂ
PartitionedCallPartitionedCallinputs*
Tin
2*,
_gradient_op_typePartitionedCall-22191*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_22185h
IdentityIdentityPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
ф
Ј
'__inference_dense_1_layer_call_fn_24235

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2*K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22710*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШ*
Tin
2*,
_gradient_op_typePartitionedCall-22716
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ`::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 

U
)__inference_inference_layer_call_fn_24291
inputs_0
inputs_1
identityЅ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tout
2*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22837*-
config_proto

CPU

GPU2*0J 8*#
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22852\
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0
Њ
e
G__inference_movie_genres_layer_call_and_return_conditional_losses_23824
inputs_0
identityP
IdentityIdentityinputs_0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
В
Е
%__inference_model_layer_call_fn_23050
uid
movie_id
movie_titles
movie_genres"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25
identityЂStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCalluidmovie_idmovie_titlesmovie_genresstatefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25*%
Tin
2*,
_gradient_op_typePartitionedCall-23025*-
config_proto

CPU

GPU2*0J 8*
Tout
2*I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23024*'
_output_shapes
:џџџџџџџџџ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :# 

_user_specified_nameuid: : : : : : :,(
&
_user_specified_namemovie_genres: : : 
Я 
ы
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЈ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:_
Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tindices0*
_output_shapes
:*
Tparams0*
Taxis0[
Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tindices0*
_output_shapes
:*
Tparams0*
Taxis0Y
Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџk
Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  j
Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: |
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0T
ReluReluBiasAdd:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
І
Љ
(__inference_conv2d_3_layer_call_fn_22069

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22064*L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058*
Tout
2*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
Б
D
(__inference_lambda_1_layer_call_fn_24314

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*,
_gradient_op_typePartitionedCall-22884*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22872*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Љ
I
-__inference_max_pooling2d_layer_call_fn_22086

inputs
identityУ
PartitionedCallPartitionedCallinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077*,
_gradient_op_typePartitionedCall-22083*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
н
у
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpР
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

: *
dtype0|
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes

: *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
dtype0п
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
T0
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs

Z
>__inference_uid_layer_call_and_return_conditional_losses_22410

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs

p
D__inference_inference_layer_call_and_return_conditional_losses_24277
inputs_0
inputs_1
identityQ
mulMulinputs_0inputs_1*(
_output_shapes
:џџџџџџџџџШ*
T0W
Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0a
SumSummul:z:0Sum/reduction_indices:output:0*#
_output_shapes
:џџџџџџџџџ*
T0P
IdentityIdentitySum:output:0*#
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0
Е§
м
 __inference__wrapped_model_21969
uid
movie_id
movie_titles
movie_genresO
Kmodel_movie_title_embed_layer_embedding_lookup_read_readvariableop_resource1
-model_conv2d_3_conv2d_readvariableop_resource2
.model_conv2d_3_biasadd_readvariableop_resource1
-model_conv2d_2_conv2d_readvariableop_resource2
.model_conv2d_2_biasadd_readvariableop_resource1
-model_conv2d_1_conv2d_readvariableop_resource2
.model_conv2d_1_biasadd_readvariableop_resource/
+model_conv2d_conv2d_readvariableop_resource0
,model_conv2d_biasadd_readvariableop_resourceT
Pmodel_movie_categories_embed_layer_embedding_lookup_read_readvariableop_resourceL
Hmodel_movie_id_embed_layer_embedding_lookup_read_readvariableop_resource=
9model_movie_id_fc_layer_tensordot_readvariableop_resource;
7model_movie_id_fc_layer_biasadd_readvariableop_resourceE
Amodel_movie_categories_fc_layer_tensordot_readvariableop_resourceC
?model_movie_categories_fc_layer_biasadd_readvariableop_resourceG
Cmodel_uid_embed_layer_embedding_lookup_read_readvariableop_resource8
4model_uid_fc_layer_tensordot_readvariableop_resource6
2model_uid_fc_layer_biasadd_readvariableop_resource3
/model_dense_1_tensordot_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource1
-model_dense_tensordot_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource
identityЂ#model/conv2d/BiasAdd/ReadVariableOpЂ"model/conv2d/Conv2D/ReadVariableOpЂ%model/conv2d_1/BiasAdd/ReadVariableOpЂ$model/conv2d_1/Conv2D/ReadVariableOpЂ%model/conv2d_2/BiasAdd/ReadVariableOpЂ$model/conv2d_2/Conv2D/ReadVariableOpЂ%model/conv2d_3/BiasAdd/ReadVariableOpЂ$model/conv2d_3/Conv2D/ReadVariableOpЂ"model/dense/BiasAdd/ReadVariableOpЂ$model/dense/Tensordot/ReadVariableOpЂ$model/dense_1/BiasAdd/ReadVariableOpЂ&model/dense_1/Tensordot/ReadVariableOpЂ3model/movie_categories_embed_layer/embedding_lookupЂGmodel/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpЂ6model/movie_categories_fc_layer/BiasAdd/ReadVariableOpЂ8model/movie_categories_fc_layer/Tensordot/ReadVariableOpЂ+model/movie_id_embed_layer/embedding_lookupЂ?model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpЂ.model/movie_id_fc_layer/BiasAdd/ReadVariableOpЂ0model/movie_id_fc_layer/Tensordot/ReadVariableOpЂ.model/movie_title_embed_layer/embedding_lookupЂBmodel/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpЂ&model/uid_embed_layer/embedding_lookupЂ:model/uid_embed_layer/embedding_lookup/Read/ReadVariableOpЂ)model/uid_fc_layer/BiasAdd/ReadVariableOpЂ+model/uid_fc_layer/Tensordot/ReadVariableOp§
Bmodel/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpKmodel_movie_title_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	юY *
dtype0Й
7model/movie_title_embed_layer/embedding_lookup/IdentityIdentityJmodel/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	юY Џ
.model/movie_title_embed_layer/embedding_lookupResourceGatherKmodel_movie_title_embed_layer_embedding_lookup_read_readvariableop_resourcemovie_titlesC^model/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
Tindices0*U
_classK
IGloc:@model/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp*
dtype0Й
9model/movie_title_embed_layer/embedding_lookup/Identity_1Identity7model/movie_title_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_output_shapes
:џџџџџџџџџ *U
_classK
IGloc:@model/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpП
9model/movie_title_embed_layer/embedding_lookup/Identity_2IdentityBmodel/movie_title_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
model/reshape/ShapeShapeBmodel/movie_title_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:k
!model/reshape/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0m
#model/reshape/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0m
#model/reshape/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask_
model/reshape/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0_
model/reshape/Reshape/shape/2Const*
value	B : *
_output_shapes
: *
dtype0_
model/reshape/Reshape/shape/3Const*
value	B :*
_output_shapes
: *
dtype0я
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0&model/reshape/Reshape/shape/3:output:0*
_output_shapes
:*
T0*
NФ
model/reshape/ReshapeReshapeBmodel/movie_title_embed_layer/embedding_lookup/Identity_2:output:0$model/reshape/Reshape/shape:output:0*/
_output_shapes
:џџџџџџџџџ *
T0Ш
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0а
model/conv2d_3/Conv2DConv2Dmodel/reshape/Reshape:output:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
paddingVALID*
strides
*
T0*/
_output_shapes
:џџџџџџџџџО
%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:Њ
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2D:output:0-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0v
model/conv2d_3/ReluRelumodel/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџШ
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: а
model/conv2d_2/Conv2DConv2Dmodel/reshape/Reshape:output:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
paddingVALID*
strides
*
T0*/
_output_shapes
:џџџџџџџџџО
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:Њ
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0v
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
T0Ш
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0а
model/conv2d_1/Conv2DConv2Dmodel/reshape/Reshape:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*
paddingVALID*
strides
*/
_output_shapes
:џџџџџџџџџО
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0Њ
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:џџџџџџџџџ*
T0v
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
T0Ф
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: Ь
model/conv2d/Conv2DConv2Dmodel/reshape/Reshape:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*
paddingVALID*
strides
*/
_output_shapes
:џџџџџџџџџК
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:Є
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџr
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџД
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/Relu:activations:0*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:џџџџџџџџџИ
model/max_pooling2d_1/MaxPoolMaxPool!model/conv2d_1/Relu:activations:0*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:џџџџџџџџџИ
model/max_pooling2d_2/MaxPoolMaxPool!model/conv2d_2/Relu:activations:0*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџИ
model/max_pooling2d_3/MaxPoolMaxPool!model/conv2d_3/Relu:activations:0*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ^
model/pool_layer/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: Ћ
model/pool_layer/concatConcatV2$model/max_pooling2d/MaxPool:output:0&model/max_pooling2d_1/MaxPool:output:0&model/max_pooling2d_2/MaxPool:output:0&model/max_pooling2d_3/MaxPool:output:0%model/pool_layer/concat/axis:output:0*
T0*
N*/
_output_shapes
:џџџџџџџџџ 
Gmodel/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpPmodel_movie_categories_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: Т
<model/movie_categories_embed_layer/embedding_lookup/IdentityIdentityOmodel/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes

: У
3model/movie_categories_embed_layer/embedding_lookupResourceGatherPmodel_movie_categories_embed_layer_embedding_lookup_read_readvariableop_resourcemovie_genresH^model/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*+
_output_shapes
:џџџџџџџџџ *Z
_classP
NLloc:@model/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp*
Tindices0Ш
>model/movie_categories_embed_layer/embedding_lookup/Identity_1Identity<model/movie_categories_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *Z
_classP
NLloc:@model/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp*
T0Щ
>model/movie_categories_embed_layer/embedding_lookup/Identity_2IdentityGmodel/movie_categories_embed_layer/embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0k
model/pool_layer_flat/ShapeShape model/pool_layer/concat:output:0*
_output_shapes
:*
T0s
)model/pool_layer_flat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+model/pool_layer_flat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+model/pool_layer_flat/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:П
#model/pool_layer_flat/strided_sliceStridedSlice$model/pool_layer_flat/Shape:output:02model/pool_layer_flat/strided_slice/stack:output:04model/pool_layer_flat/strided_slice/stack_1:output:04model/pool_layer_flat/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0g
%model/pool_layer_flat/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: g
%model/pool_layer_flat/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : ч
#model/pool_layer_flat/Reshape/shapePack,model/pool_layer_flat/strided_slice:output:0.model/pool_layer_flat/Reshape/shape/1:output:0.model/pool_layer_flat/Reshape/shape/2:output:0*
T0*
_output_shapes
:*
NЎ
model/pool_layer_flat/ReshapeReshape model/pool_layer/concat:output:0,model/pool_layer_flat/Reshape/shape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0d
"model/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :д
model/lambda/SumSumGmodel/movie_categories_embed_layer/embedding_lookup/Identity_2:output:0+model/lambda/Sum/reduction_indices:output:0*+
_output_shapes
:џџџџџџџџџ *
T0*
	keep_dims(ї
?model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpHmodel_movie_id_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	ќK *
dtype0Г
4model/movie_id_embed_layer/embedding_lookup/IdentityIdentityGmodel/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	ќK *
T0
+model/movie_id_embed_layer/embedding_lookupResourceGatherHmodel_movie_id_embed_layer_embedding_lookup_read_readvariableop_resourcemovie_id@^model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ *R
_classH
FDloc:@model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpА
6model/movie_id_embed_layer/embedding_lookup/Identity_1Identity4model/movie_id_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
T0*R
_classH
FDloc:@model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOpЙ
6model/movie_id_embed_layer/embedding_lookup/Identity_2Identity?model/movie_id_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ и
0model/movie_id_fc_layer/Tensordot/ReadVariableOpReadVariableOp9model_movie_id_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  p
&model/movie_id_fc_layer/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:w
&model/movie_id_fc_layer/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0
'model/movie_id_fc_layer/Tensordot/ShapeShape?model/movie_id_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:q
/model/movie_id_fc_layer/Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
*model/movie_id_fc_layer/Tensordot/GatherV2GatherV20model/movie_id_fc_layer/Tensordot/Shape:output:0/model/movie_id_fc_layer/Tensordot/free:output:08model/movie_id_fc_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tparams0*
_output_shapes
:*
Tindices0s
1model/movie_id_fc_layer/Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
,model/movie_id_fc_layer/Tensordot/GatherV2_1GatherV20model/movie_id_fc_layer/Tensordot/Shape:output:0/model/movie_id_fc_layer/Tensordot/axes:output:0:model/movie_id_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
_output_shapes
:*
Tindices0*
Tparams0q
'model/movie_id_fc_layer/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:Ж
&model/movie_id_fc_layer/Tensordot/ProdProd3model/movie_id_fc_layer/Tensordot/GatherV2:output:00model/movie_id_fc_layer/Tensordot/Const:output:0*
_output_shapes
: *
T0s
)model/movie_id_fc_layer/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:М
(model/movie_id_fc_layer/Tensordot/Prod_1Prod5model/movie_id_fc_layer/Tensordot/GatherV2_1:output:02model/movie_id_fc_layer/Tensordot/Const_1:output:0*
_output_shapes
: *
T0o
-model/movie_id_fc_layer/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: ќ
(model/movie_id_fc_layer/Tensordot/concatConcatV2/model/movie_id_fc_layer/Tensordot/free:output:0/model/movie_id_fc_layer/Tensordot/axes:output:06model/movie_id_fc_layer/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0С
'model/movie_id_fc_layer/Tensordot/stackPack/model/movie_id_fc_layer/Tensordot/Prod:output:01model/movie_id_fc_layer/Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0т
+model/movie_id_fc_layer/Tensordot/transpose	Transpose?model/movie_id_embed_layer/embedding_lookup/Identity_2:output:01model/movie_id_fc_layer/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0в
)model/movie_id_fc_layer/Tensordot/ReshapeReshape/model/movie_id_fc_layer/Tensordot/transpose:y:00model/movie_id_fc_layer/Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
2model/movie_id_fc_layer/Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0к
-model/movie_id_fc_layer/Tensordot/transpose_1	Transpose8model/movie_id_fc_layer/Tensordot/ReadVariableOp:value:0;model/movie_id_fc_layer/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes

:  
1model/movie_id_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0Ю
+model/movie_id_fc_layer/Tensordot/Reshape_1Reshape1model/movie_id_fc_layer/Tensordot/transpose_1:y:0:model/movie_id_fc_layer/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:  Ю
(model/movie_id_fc_layer/Tensordot/MatMulMatMul2model/movie_id_fc_layer/Tensordot/Reshape:output:04model/movie_id_fc_layer/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ s
)model/movie_id_fc_layer/Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0q
/model/movie_id_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
*model/movie_id_fc_layer/Tensordot/concat_1ConcatV23model/movie_id_fc_layer/Tensordot/GatherV2:output:02model/movie_id_fc_layer/Tensordot/Const_2:output:08model/movie_id_fc_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
!model/movie_id_fc_layer/TensordotReshape2model/movie_id_fc_layer/Tensordot/MatMul:product:03model/movie_id_fc_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ а
.model/movie_id_fc_layer/BiasAdd/ReadVariableOpReadVariableOp7model_movie_id_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: Ф
model/movie_id_fc_layer/BiasAddBiasAdd*model/movie_id_fc_layer/Tensordot:output:06model/movie_id_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ 
model/movie_id_fc_layer/ReluRelu(model/movie_id_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ ш
8model/movie_categories_fc_layer/Tensordot/ReadVariableOpReadVariableOpAmodel_movie_categories_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  x
.model/movie_categories_fc_layer/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:
.model/movie_categories_fc_layer/Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:x
/model/movie_categories_fc_layer/Tensordot/ShapeShapemodel/lambda/Sum:output:0*
T0*
_output_shapes
:y
7model/movie_categories_fc_layer/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: Л
2model/movie_categories_fc_layer/Tensordot/GatherV2GatherV28model/movie_categories_fc_layer/Tensordot/Shape:output:07model/movie_categories_fc_layer/Tensordot/free:output:0@model/movie_categories_fc_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tparams0*
_output_shapes
:*
Tindices0{
9model/movie_categories_fc_layer/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: П
4model/movie_categories_fc_layer/Tensordot/GatherV2_1GatherV28model/movie_categories_fc_layer/Tensordot/Shape:output:07model/movie_categories_fc_layer/Tensordot/axes:output:0Bmodel/movie_categories_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Tindices0*
Tparams0*
Taxis0*
_output_shapes
:y
/model/movie_categories_fc_layer/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:Ю
.model/movie_categories_fc_layer/Tensordot/ProdProd;model/movie_categories_fc_layer/Tensordot/GatherV2:output:08model/movie_categories_fc_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/movie_categories_fc_layer/Tensordot/Const_1Const*
dtype0*
valueB: *
_output_shapes
:д
0model/movie_categories_fc_layer/Tensordot/Prod_1Prod=model/movie_categories_fc_layer/Tensordot/GatherV2_1:output:0:model/movie_categories_fc_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/movie_categories_fc_layer/Tensordot/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
0model/movie_categories_fc_layer/Tensordot/concatConcatV27model/movie_categories_fc_layer/Tensordot/free:output:07model/movie_categories_fc_layer/Tensordot/axes:output:0>model/movie_categories_fc_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:й
/model/movie_categories_fc_layer/Tensordot/stackPack7model/movie_categories_fc_layer/Tensordot/Prod:output:09model/movie_categories_fc_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
3model/movie_categories_fc_layer/Tensordot/transpose	Transposemodel/lambda/Sum:output:09model/movie_categories_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ ъ
1model/movie_categories_fc_layer/Tensordot/ReshapeReshape7model/movie_categories_fc_layer/Tensordot/transpose:y:08model/movie_categories_fc_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
:model/movie_categories_fc_layer/Tensordot/transpose_1/permConst*
dtype0*
valueB"       *
_output_shapes
:ђ
5model/movie_categories_fc_layer/Tensordot/transpose_1	Transpose@model/movie_categories_fc_layer/Tensordot/ReadVariableOp:value:0Cmodel/movie_categories_fc_layer/Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0
9model/movie_categories_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0ц
3model/movie_categories_fc_layer/Tensordot/Reshape_1Reshape9model/movie_categories_fc_layer/Tensordot/transpose_1:y:0Bmodel/movie_categories_fc_layer/Tensordot/Reshape_1/shape:output:0*
_output_shapes

:  *
T0ц
0model/movie_categories_fc_layer/Tensordot/MatMulMatMul:model/movie_categories_fc_layer/Tensordot/Reshape:output:0<model/movie_categories_fc_layer/Tensordot/Reshape_1:output:0*'
_output_shapes
:џџџџџџџџџ *
T0{
1model/movie_categories_fc_layer/Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0y
7model/movie_categories_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
2model/movie_categories_fc_layer/Tensordot/concat_1ConcatV2;model/movie_categories_fc_layer/Tensordot/GatherV2:output:0:model/movie_categories_fc_layer/Tensordot/Const_2:output:0@model/movie_categories_fc_layer/Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0у
)model/movie_categories_fc_layer/TensordotReshape:model/movie_categories_fc_layer/Tensordot/MatMul:product:0;model/movie_categories_fc_layer/Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0р
6model/movie_categories_fc_layer/BiasAdd/ReadVariableOpReadVariableOp?model_movie_categories_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0м
'model/movie_categories_fc_layer/BiasAddBiasAdd2model/movie_categories_fc_layer/Tensordot:output:0>model/movie_categories_fc_layer/BiasAdd/ReadVariableOp:value:0*+
_output_shapes
:џџџџџџџџџ *
T0
$model/movie_categories_fc_layer/ReluRelu0model/movie_categories_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ 
model/dropout_layer/IdentityIdentity&model/pool_layer_flat/Reshape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ э
:model/uid_embed_layer/embedding_lookup/Read/ReadVariableOpReadVariableOpCmodel_uid_embed_layer_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	х *
dtype0Љ
/model/uid_embed_layer/embedding_lookup/IdentityIdentityBmodel/uid_embed_layer/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	х 
&model/uid_embed_layer/embedding_lookupResourceGatherCmodel_uid_embed_layer_embedding_lookup_read_readvariableop_resourceuid;^model/uid_embed_layer/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0*+
_output_shapes
:џџџџџџџџџ *M
_classC
A?loc:@model/uid_embed_layer/embedding_lookup/Read/ReadVariableOpЁ
1model/uid_embed_layer/embedding_lookup/Identity_1Identity/model/uid_embed_layer/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*M
_classC
A?loc:@model/uid_embed_layer/embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0Џ
1model/uid_embed_layer/embedding_lookup/Identity_2Identity:model/uid_embed_layer/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ _
model/concatenate/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
model/concatenate/concatConcatV2*model/movie_id_fc_layer/Relu:activations:02model/movie_categories_fc_layer/Relu:activations:0%model/dropout_layer/Identity:output:0&model/concatenate/concat/axis:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`*
NЮ
+model/uid_fc_layer/Tensordot/ReadVariableOpReadVariableOp4model_uid_fc_layer_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes

:  k
!model/uid_fc_layer/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:r
!model/uid_fc_layer/Tensordot/freeConst*
dtype0*
valueB"       *
_output_shapes
:
"model/uid_fc_layer/Tensordot/ShapeShape:model/uid_embed_layer/embedding_lookup/Identity_2:output:0*
T0*
_output_shapes
:l
*model/uid_fc_layer/Tensordot/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
%model/uid_fc_layer/Tensordot/GatherV2GatherV2+model/uid_fc_layer/Tensordot/Shape:output:0*model/uid_fc_layer/Tensordot/free:output:03model/uid_fc_layer/Tensordot/GatherV2/axis:output:0*
Tparams0*
Taxis0*
_output_shapes
:*
Tindices0n
,model/uid_fc_layer/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
'model/uid_fc_layer/Tensordot/GatherV2_1GatherV2+model/uid_fc_layer/Tensordot/Shape:output:0*model/uid_fc_layer/Tensordot/axes:output:05model/uid_fc_layer/Tensordot/GatherV2_1/axis:output:0*
Tparams0*
Taxis0*
_output_shapes
:*
Tindices0l
"model/uid_fc_layer/Tensordot/ConstConst*
dtype0*
valueB: *
_output_shapes
:Ї
!model/uid_fc_layer/Tensordot/ProdProd.model/uid_fc_layer/Tensordot/GatherV2:output:0+model/uid_fc_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$model/uid_fc_layer/Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0­
#model/uid_fc_layer/Tensordot/Prod_1Prod0model/uid_fc_layer/Tensordot/GatherV2_1:output:0-model/uid_fc_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(model/uid_fc_layer/Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0ш
#model/uid_fc_layer/Tensordot/concatConcatV2*model/uid_fc_layer/Tensordot/free:output:0*model/uid_fc_layer/Tensordot/axes:output:01model/uid_fc_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:В
"model/uid_fc_layer/Tensordot/stackPack*model/uid_fc_layer/Tensordot/Prod:output:0,model/uid_fc_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:г
&model/uid_fc_layer/Tensordot/transpose	Transpose:model/uid_embed_layer/embedding_lookup/Identity_2:output:0,model/uid_fc_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ У
$model/uid_fc_layer/Tensordot/ReshapeReshape*model/uid_fc_layer/Tensordot/transpose:y:0+model/uid_fc_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ~
-model/uid_fc_layer/Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0Ы
(model/uid_fc_layer/Tensordot/transpose_1	Transpose3model/uid_fc_layer/Tensordot/ReadVariableOp:value:06model/uid_fc_layer/Tensordot/transpose_1/perm:output:0*
_output_shapes

:  *
T0}
,model/uid_fc_layer/Tensordot/Reshape_1/shapeConst*
valueB"        *
_output_shapes
:*
dtype0П
&model/uid_fc_layer/Tensordot/Reshape_1Reshape,model/uid_fc_layer/Tensordot/transpose_1:y:05model/uid_fc_layer/Tensordot/Reshape_1/shape:output:0*
_output_shapes

:  *
T0П
#model/uid_fc_layer/Tensordot/MatMulMatMul-model/uid_fc_layer/Tensordot/Reshape:output:0/model/uid_fc_layer/Tensordot/Reshape_1:output:0*'
_output_shapes
:џџџџџџџџџ *
T0n
$model/uid_fc_layer/Tensordot/Const_2Const*
valueB: *
_output_shapes
:*
dtype0l
*model/uid_fc_layer/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0ѓ
%model/uid_fc_layer/Tensordot/concat_1ConcatV2.model/uid_fc_layer/Tensordot/GatherV2:output:0-model/uid_fc_layer/Tensordot/Const_2:output:03model/uid_fc_layer/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
T0*
NМ
model/uid_fc_layer/TensordotReshape-model/uid_fc_layer/Tensordot/MatMul:product:0.model/uid_fc_layer/Tensordot/concat_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Ц
)model/uid_fc_layer/BiasAdd/ReadVariableOpReadVariableOp2model_uid_fc_layer_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0Е
model/uid_fc_layer/BiasAddBiasAdd%model/uid_fc_layer/Tensordot:output:01model/uid_fc_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ z
model/uid_fc_layer/ReluRelu#model/uid_fc_layer/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Х
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	`Ш*
dtype0f
model/dense_1/Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0m
model/dense_1/Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0n
model/dense_1/Tensordot/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
:g
%model/dense_1/Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0ѓ
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Tindices0*
Tparams0*
Taxis0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0ї
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Tindices0*
Taxis0*
Tparams0g
model/dense_1/Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
_output_shapes
: *
T0i
model/dense_1/Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
_output_shapes
: *
T0e
#model/dense_1/Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0д
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0Ѓ
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
_output_shapes
:*
T0А
!model/dense_1/Tensordot/transpose	Transpose!model/concatenate/concat:output:0'model/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`Д
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџy
(model/dense_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:Н
#model/dense_1/Tensordot/transpose_1	Transpose.model/dense_1/Tensordot/ReadVariableOp:value:01model/dense_1/Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	`Шx
'model/dense_1/Tensordot/Reshape_1/shapeConst*
valueB"`   Ш   *
_output_shapes
:*
dtype0Б
!model/dense_1/Tensordot/Reshape_1Reshape'model/dense_1/Tensordot/transpose_1:y:00model/dense_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	`ШБ
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0*model/dense_1/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШj
model/dense_1/Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
_output_shapes
:*
N*
T0Ў
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШН
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:ШЇ
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШq
model/dense_1/TanhTanhmodel/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШС
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	 Шd
model/dense/Tensordot/axesConst*
dtype0*
valueB:*
_output_shapes
:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
model/dense/Tensordot/ShapeShape%model/uid_fc_layer/Relu:activations:0*
_output_shapes
:*
T0e
#model/dense/Tensordot/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : ы
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0g
%model/dense/Tensordot/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : я
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0e
model/dense/Tensordot/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
_output_shapes
: *
T0g
model/dense/Tensordot/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
_output_shapes
: *
T0c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
_output_shapes
:*
T0*
N
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
_output_shapes
:*
T0*
NА
model/dense/Tensordot/transpose	Transpose%model/uid_fc_layer/Relu:activations:0%model/dense/Tensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Ў
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџw
&model/dense/Tensordot/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       З
!model/dense/Tensordot/transpose_1	Transpose,model/dense/Tensordot/ReadVariableOp:value:0/model/dense/Tensordot/transpose_1/perm:output:0*
_output_shapes
:	 Ш*
T0v
%model/dense/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    Ш   Ћ
model/dense/Tensordot/Reshape_1Reshape%model/dense/Tensordot/transpose_1:y:0.model/dense/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	 ШЋ
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0(model/dense/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШh
model/dense/Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0e
#model/dense/Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0з
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0Ј
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЙ
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0Ё
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШm
model/dense/TanhTanhmodel/dense/BiasAdd:output:0*,
_output_shapes
:џџџџџџџџџШ*
T0g
#model/user_combine_layer_flat/ShapeShapemodel/dense/Tanh:y:0*
_output_shapes
:*
T0{
1model/user_combine_layer_flat/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:}
3model/user_combine_layer_flat/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:}
3model/user_combine_layer_flat/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:ч
+model/user_combine_layer_flat/strided_sliceStridedSlice,model/user_combine_layer_flat/Shape:output:0:model/user_combine_layer_flat/strided_slice/stack:output:0<model/user_combine_layer_flat/strided_slice/stack_1:output:0<model/user_combine_layer_flat/strided_slice/stack_2:output:0*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0p
-model/user_combine_layer_flat/Reshape/shape/1Const*
dtype0*
value
B :Ш*
_output_shapes
: Я
+model/user_combine_layer_flat/Reshape/shapePack4model/user_combine_layer_flat/strided_slice:output:06model/user_combine_layer_flat/Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0Џ
%model/user_combine_layer_flat/ReshapeReshapemodel/dense/Tanh:y:04model/user_combine_layer_flat/Reshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШj
$model/movie_combine_layer_flat/ShapeShapemodel/dense_1/Tanh:y:0*
_output_shapes
:*
T0|
2model/movie_combine_layer_flat/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0~
4model/movie_combine_layer_flat/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0~
4model/movie_combine_layer_flat/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0ь
,model/movie_combine_layer_flat/strided_sliceStridedSlice-model/movie_combine_layer_flat/Shape:output:0;model/movie_combine_layer_flat/strided_slice/stack:output:0=model/movie_combine_layer_flat/strided_slice/stack_1:output:0=model/movie_combine_layer_flat/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: q
.model/movie_combine_layer_flat/Reshape/shape/1Const*
value
B :Ш*
_output_shapes
: *
dtype0в
,model/movie_combine_layer_flat/Reshape/shapePack5model/movie_combine_layer_flat/strided_slice:output:07model/movie_combine_layer_flat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Г
&model/movie_combine_layer_flat/ReshapeReshapemodel/dense_1/Tanh:y:05model/movie_combine_layer_flat/Reshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЎ
model/inference/mulMul.model/user_combine_layer_flat/Reshape:output:0/model/movie_combine_layer_flat/Reshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%model/inference/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
model/inference/SumSummodel/inference/mul:z:0.model/inference/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ_
model/lambda_1/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
model/lambda_1/ExpandDims
ExpandDimsmodel/inference/Sum:output:0&model/lambda_1/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџМ

IdentityIdentity"model/lambda_1/ExpandDims:output:0$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp4^model/movie_categories_embed_layer/embedding_lookupH^model/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp7^model/movie_categories_fc_layer/BiasAdd/ReadVariableOp9^model/movie_categories_fc_layer/Tensordot/ReadVariableOp,^model/movie_id_embed_layer/embedding_lookup@^model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp/^model/movie_id_fc_layer/BiasAdd/ReadVariableOp1^model/movie_id_fc_layer/Tensordot/ReadVariableOp/^model/movie_title_embed_layer/embedding_lookupC^model/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp'^model/uid_embed_layer/embedding_lookup;^model/uid_embed_layer/embedding_lookup/Read/ReadVariableOp*^model/uid_fc_layer/BiasAdd/ReadVariableOp,^model/uid_fc_layer/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2d
0model/movie_id_fc_layer/Tensordot/ReadVariableOp0model/movie_id_fc_layer/Tensordot/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2P
&model/uid_embed_layer/embedding_lookup&model/uid_embed_layer/embedding_lookup2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2
Bmodel/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOpBmodel/movie_title_embed_layer/embedding_lookup/Read/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2`
.model/movie_id_fc_layer/BiasAdd/ReadVariableOp.model/movie_id_fc_layer/BiasAdd/ReadVariableOp2
Gmodel/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOpGmodel/movie_categories_embed_layer/embedding_lookup/Read/ReadVariableOp2Z
+model/uid_fc_layer/Tensordot/ReadVariableOp+model/uid_fc_layer/Tensordot/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2
?model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp?model/movie_id_embed_layer/embedding_lookup/Read/ReadVariableOp2Z
+model/movie_id_embed_layer/embedding_lookup+model/movie_id_embed_layer/embedding_lookup2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2`
.model/movie_title_embed_layer/embedding_lookup.model/movie_title_embed_layer/embedding_lookup2x
:model/uid_embed_layer/embedding_lookup/Read/ReadVariableOp:model/uid_embed_layer/embedding_lookup/Read/ReadVariableOp2V
)model/uid_fc_layer/BiasAdd/ReadVariableOp)model/uid_fc_layer/BiasAdd/ReadVariableOp2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2j
3model/movie_categories_embed_layer/embedding_lookup3model/movie_categories_embed_layer/embedding_lookup2t
8model/movie_categories_fc_layer/Tensordot/ReadVariableOp8model/movie_categories_fc_layer/Tensordot/ReadVariableOp2p
6model/movie_categories_fc_layer/BiasAdd/ReadVariableOp6model/movie_categories_fc_layer/BiasAdd/ReadVariableOp: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :# 

_user_specified_nameuid: : : : : : :,(
&
_user_specified_namemovie_genres: : : 
Б
D
(__inference_lambda_1_layer_call_fn_24319

inputs
identity
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCall-22892*'
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22880`
IdentityIdentityPartitionedCall:output:0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Н
B
&__inference_lambda_layer_call_fn_23936

inputs
identity
PartitionedCallPartitionedCallinputs*,
_gradient_op_typePartitionedCall-22362*
Tin
2*
Tout
2*J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22350*+
_output_shapes
:џџџџџџџџџ *-
config_proto

CPU

GPU2*0J 8d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
ш
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_22872

inputs
identityP
ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs

]
A__inference_lambda_layer_call_and_return_conditional_losses_22350

inputs
identityW
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: y
SumSuminputsSum/reduction_indices:output:0*
	keep_dims(*+
_output_shapes
:џџџџџџџџџ *
T0X
IdentityIdentitySum:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs

]
A__inference_lambda_layer_call_and_return_conditional_losses_22358

inputs
identityW
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: y
SumSuminputsSum/reduction_indices:output:0*
	keep_dims(*+
_output_shapes
:џџџџџџџџџ *
T0X
IdentityIdentitySum:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Ѓ	
n
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_24247

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: R
Reshape/shape/1Const*
value
B :Ш*
dtype0*
_output_shapes
: u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs
W

!__inference__traced_restore_24492
file_prefix7
3assignvariableop_movie_title_embed_layer_embeddings$
 assignvariableop_1_conv2d_kernel"
assignvariableop_2_conv2d_bias&
"assignvariableop_3_conv2d_1_kernel$
 assignvariableop_4_conv2d_1_bias&
"assignvariableop_5_conv2d_2_kernel$
 assignvariableop_6_conv2d_2_bias&
"assignvariableop_7_conv2d_3_kernel$
 assignvariableop_8_conv2d_3_bias>
:assignvariableop_9_movie_categories_embed_layer_embeddings7
3assignvariableop_10_movie_id_embed_layer_embeddings2
.assignvariableop_11_uid_embed_layer_embeddings0
,assignvariableop_12_movie_id_fc_layer_kernel.
*assignvariableop_13_movie_id_fc_layer_bias8
4assignvariableop_14_movie_categories_fc_layer_kernel6
2assignvariableop_15_movie_categories_fc_layer_bias+
'assignvariableop_16_uid_fc_layer_kernel)
%assignvariableop_17_uid_fc_layer_bias$
 assignvariableop_18_dense_kernel"
assignvariableop_19_dense_bias&
"assignvariableop_20_dense_1_kernel$
 assignvariableop_21_dense_1_bias
identity_23ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ђ	RestoreV2ЂRestoreV2_1У

RestoreV2/tensor_namesConst"/device:CPU:0*щ	
valueп	Bм	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
dtypes
2*l
_output_shapesZ
X::::::::::::::::::::::L
IdentityIdentityRestoreV2:tensors:0*
_output_shapes
:*
T0
AssignVariableOpAssignVariableOp3assignvariableop_movie_title_embed_layer_embeddingsIdentity:output:0*
_output_shapes
 *
dtype0N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_kernelIdentity_1:output:0*
_output_shapes
 *
dtype0N

Identity_2IdentityRestoreV2:tensors:2*
_output_shapes
:*
T0~
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv2d_biasIdentity_2:output:0*
_output_shapes
 *
dtype0N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_1_kernelIdentity_3:output:0*
_output_shapes
 *
dtype0N

Identity_4IdentityRestoreV2:tensors:4*
_output_shapes
:*
T0
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv2d_1_biasIdentity_4:output:0*
_output_shapes
 *
dtype0N

Identity_5IdentityRestoreV2:tensors:5*
_output_shapes
:*
T0
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_2_kernelIdentity_5:output:0*
_output_shapes
 *
dtype0N

Identity_6IdentityRestoreV2:tensors:6*
_output_shapes
:*
T0
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_2_biasIdentity_6:output:0*
_output_shapes
 *
dtype0N

Identity_7IdentityRestoreV2:tensors:7*
_output_shapes
:*
T0
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_3_kernelIdentity_7:output:0*
_output_shapes
 *
dtype0N

Identity_8IdentityRestoreV2:tensors:8*
_output_shapes
:*
T0
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_3_biasIdentity_8:output:0*
_output_shapes
 *
dtype0N

Identity_9IdentityRestoreV2:tensors:9*
_output_shapes
:*
T0
AssignVariableOp_9AssignVariableOp:assignvariableop_9_movie_categories_embed_layer_embeddingsIdentity_9:output:0*
_output_shapes
 *
dtype0P
Identity_10IdentityRestoreV2:tensors:10*
_output_shapes
:*
T0
AssignVariableOp_10AssignVariableOp3assignvariableop_10_movie_id_embed_layer_embeddingsIdentity_10:output:0*
_output_shapes
 *
dtype0P
Identity_11IdentityRestoreV2:tensors:11*
_output_shapes
:*
T0
AssignVariableOp_11AssignVariableOp.assignvariableop_11_uid_embed_layer_embeddingsIdentity_11:output:0*
_output_shapes
 *
dtype0P
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp,assignvariableop_12_movie_id_fc_layer_kernelIdentity_12:output:0*
_output_shapes
 *
dtype0P
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp*assignvariableop_13_movie_id_fc_layer_biasIdentity_13:output:0*
_output_shapes
 *
dtype0P
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp4assignvariableop_14_movie_categories_fc_layer_kernelIdentity_14:output:0*
dtype0*
_output_shapes
 P
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp2assignvariableop_15_movie_categories_fc_layer_biasIdentity_15:output:0*
_output_shapes
 *
dtype0P
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp'assignvariableop_16_uid_fc_layer_kernelIdentity_16:output:0*
_output_shapes
 *
dtype0P
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp%assignvariableop_17_uid_fc_layer_biasIdentity_17:output:0*
_output_shapes
 *
dtype0P
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_kernelIdentity_18:output:0*
_output_shapes
 *
dtype0P
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_dense_biasIdentity_19:output:0*
_output_shapes
 *
dtype0P
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_1_kernelIdentity_20:output:0*
_output_shapes
 *
dtype0P
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_1_biasIdentity_21:output:0*
dtype0*
_output_shapes
 
RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
_output_shapes
:t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:Е
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
_output_shapes
: *
T0Р
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"#
identity_23Identity_23:output:0*m
_input_shapes\
Z: ::::::::::::::::::::::2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122
RestoreV2_1RestoreV2_12*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV2: : : : :+ '
%
_user_specified_namefile_prefix: : : : : :
 : : : : : : : : : : :	 : 

f
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22558

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
а
g
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22551

inputs
identityQ
dropout/rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0C
dropout/ShapeShapeinputs*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0_
dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*+
_output_shapes
:џџџџџџџџџ *
T0*
dtype0
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: І
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ 
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*+
_output_shapes
:џџџџџџџџџ *
T0R
dropout/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: 
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*+
_output_shapes
:џџџџџџџџџ *
T0e
dropout/mulMulinputsdropout/truediv:z:0*
T0*+
_output_shapes
:џџџџџџџџџ s
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ *

DstT0m
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ ]
IdentityIdentitydropout/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
ш
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_24303

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
ш
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_24309

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*'
_output_shapes
:џџџџџџџџџ*
T0[
IdentityIdentityExpandDims:output:0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*"
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs

Г
#__inference_signature_wrapper_23174
movie_genres
movie_id
movie_titles
uid"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalluidmovie_idmovie_titlesmovie_genresstatefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25*%
Tin
2*'
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-23149*
Tout
2*-
config_proto

CPU

GPU2*0J 8*)
f$R"
 __inference__wrapped_model_21969
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :,(
&
_user_specified_namemovie_titles: :
 : : :($
"
_user_specified_name
movie_id: : :	 : : : :, (
&
_user_specified_namemovie_genres: : : : : : :#

_user_specified_nameuid: : : 
њ

^
B__inference_reshape_layer_call_and_return_conditional_losses_22185

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:_
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:_
strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: Q
Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: Q
Reshape/shape/2Const*
dtype0*
value	B : *
_output_shapes
: Q
Reshape/shape/3Const*
dtype0*
value	B :*
_output_shapes
: Љ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
T0*
N*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs

м
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOpЊ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
paddingVALID*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
strides
*
T0 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0j
ReluReluBiasAdd:output:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0Ѕ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
Љ
В
%__inference_model_layer_call_fn_23781
inputs_0
inputs_1
inputs_2
inputs_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25*I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23116*%
Tin
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-23117*
Tout
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :($
"
_user_specified_name
inputs/2: :
 : : :($
"
_user_specified_name
inputs/1: : :	 : : : :( $
"
_user_specified_name
inputs/0: : : : : : :($
"
_user_specified_name
inputs/3: : : 
­
K
/__inference_max_pooling2d_3_layer_call_fn_22137

inputs
identityХ
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*,
_gradient_op_typePartitionedCall-22134*
Tout
2*S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs

f
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24084

inputs

identity_1R
IdentityIdentityinputs*+
_output_shapes
:џџџџџџџџџ *
T0_

Identity_1IdentityIdentity:output:0*+
_output_shapes
:џџџџџџџџџ *
T0"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs
Њ
e
G__inference_movie_genres_layer_call_and_return_conditional_losses_23820
inputs_0
identityP
IdentityIdentityinputs_0*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
Й

<__inference_movie_categories_embed_layer_layer_call_fn_23868

inputs"
statefulpartitionedcall_args_1
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1*
Tout
2*-
config_proto

CPU

GPU2*0J 8*`
f[RY
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22282
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs
ћ
n
D__inference_inference_layer_call_and_return_conditional_losses_22837

inputs
inputs_1
identityO
mulMulinputsinputs_1*
T0*(
_output_shapes
:џџџџџџџџџШW
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: a
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџP
IdentityIdentitySum:output:0*
T0*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:&"
 
_user_specified_nameinputs:& "
 
_user_specified_nameinputs
в
ж
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	х }
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	х *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*
Tindices0п
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*+
_output_shapes
:џџџџџџџџџ *
T0Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs
С2


__inference__traced_save_24413
file_prefixA
=savev2_movie_title_embed_layer_embeddings_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableopF
Bsavev2_movie_categories_embed_layer_embeddings_read_readvariableop>
:savev2_movie_id_embed_layer_embeddings_read_readvariableop9
5savev2_uid_embed_layer_embeddings_read_readvariableop7
3savev2_movie_id_fc_layer_kernel_read_readvariableop5
1savev2_movie_id_fc_layer_bias_read_readvariableop?
;savev2_movie_categories_fc_layer_kernel_read_readvariableop=
9savev2_movie_categories_fc_layer_bias_read_readvariableop2
.savev2_uid_fc_layer_kernel_read_readvariableop0
,savev2_uid_fc_layer_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop
savev2_1_const

identity_1ЂMergeV2CheckpointsЂSaveV2ЂSaveV2_1
StringJoin/inputs_1Const"/device:CPU:0*
dtype0*<
value3B1 B+_temp_40e7b007fe244d599b3d251da1a09352/part*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
dtype0*
value	B :*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Р

SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*щ	
valueп	Bм	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:у	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_movie_title_embed_layer_embeddings_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableopBsavev2_movie_categories_embed_layer_embeddings_read_readvariableop:savev2_movie_id_embed_layer_embeddings_read_readvariableop5savev2_uid_embed_layer_embeddings_read_readvariableop3savev2_movie_id_fc_layer_kernel_read_readvariableop1savev2_movie_id_fc_layer_bias_read_readvariableop;savev2_movie_categories_fc_layer_kernel_read_readvariableop9savev2_movie_categories_fc_layer_bias_read_readvariableop.savev2_uid_fc_layer_kernel_read_readvariableop,savev2_uid_fc_layer_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop"/device:CPU:0*$
dtypes
2*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
_output_shapes
: *
dtype0
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
_output_shapes
:*
dtype0q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0У
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 Й
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
_output_shapes
:*
T0
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*ј
_input_shapesц
у: :	юY : :: :: :: :: :	ќK :	х :  : :  : :  : :	 Ш:Ш:	`Ш:Ш: 2
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2_1SaveV2_1: : : : : :
 : : : : : :	 : : : :+ '
%
_user_specified_namefile_prefix: : : : : : : : 


E__inference_pool_layer_layer_call_and_return_conditional_losses_23877
inputs_0
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*/
_output_shapes
:џџџџџџџџџ *
T0_
IdentityIdentityconcat:output:0*/
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0*
_input_shapesn
l:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/3:($
"
_user_specified_name
inputs/2
У 
п
@__inference_dense_layer_call_and_return_conditional_losses_24186

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЉ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	 Ш*
dtype0X
Tensordot/axesConst*
valueB:*
_output_shapes
:*
dtype0_
Tensordot/freeConst*
valueB"       *
_output_shapes
:*
dtype0E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
_output_shapes
:*
Tindices0*
Tparams0[
Tensordot/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
_output_shapes
:*
Tparams0*
Tindices0Y
Tensordot/ConstConst*
valueB: *
_output_shapes
:*
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
valueB: *
_output_shapes
:*
dtype0t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
_output_shapes
:*
T0*
Ny
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
_output_shapes
:*
T0*
Ny
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*+
_output_shapes
:џџџџџџџџџ *
T0
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0k
Tensordot/transpose_1/permConst*
valueB"       *
_output_shapes
:*
dtype0
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	 Шj
Tensordot/Reshape_1/shapeConst*
valueB"    Ш   *
_output_shapes
:*
dtype0
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	 Ш
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ\
Tensordot/Const_2Const*
valueB:Ш*
_output_shapes
:*
dtype0Y
Tensordot/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
T0*
_output_shapes
:*
N
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЁ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:Ш*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШU
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*,
_output_shapes
:џџџџџџџџџШ*
T0"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 

U
)__inference_inference_layer_call_fn_24297
inputs_0
inputs_1
identityЅ
PartitionedCallPartitionedCallinputs_0inputs_1*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22847*
Tin
2*#
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22861*
Tout
2\
IdentityIdentityPartitionedCall:output:0*#
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0

]
A__inference_lambda_layer_call_and_return_conditional_losses_23925

inputs
identityW
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: y
SumSuminputsSum/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ *
	keep_dims(X
IdentityIdentitySum:output:0*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ :& "
 
_user_specified_nameinputs

p
D__inference_inference_layer_call_and_return_conditional_losses_24285
inputs_0
inputs_1
identityQ
mulMulinputs_0inputs_1*
T0*(
_output_shapes
:џџџџџџџџџШW
Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0a
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџP
IdentityIdentitySum:output:0*
T0*#
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*;
_input_shapes*
(:џџџџџџџџџШ:џџџџџџџџџШ:($
"
_user_specified_name
inputs/1:( $
"
_user_specified_name
inputs/0
Џ

7__inference_movie_title_embed_layer_layer_call_fn_23797

inputs"
statefulpartitionedcall_args_1
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *[
fVRT
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156*
Tin
2*,
_gradient_op_typePartitionedCall-22162*
Tout
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs
Л
F
(__inference_movie_id_layer_call_fn_23847
inputs_0
identity
PartitionedCallPartitionedCallinputs_0*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22295*
Tin
2*,
_gradient_op_typePartitionedCall-22305*
Tout
2`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
Зz
т
@__inference_model_layer_call_and_return_conditional_losses_23116

inputs
inputs_1
inputs_2
inputs_3:
6movie_title_embed_layer_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_2+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_2+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_2)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_2?
;movie_categories_embed_layer_statefulpartitionedcall_args_17
3movie_id_embed_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_14
0movie_id_fc_layer_statefulpartitionedcall_args_2<
8movie_categories_fc_layer_statefulpartitionedcall_args_1<
8movie_categories_fc_layer_statefulpartitionedcall_args_22
.uid_embed_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_1/
+uid_fc_layer_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ4movie_categories_embed_layer/StatefulPartitionedCallЂ1movie_categories_fc_layer/StatefulPartitionedCallЂ,movie_id_embed_layer/StatefulPartitionedCallЂ)movie_id_fc_layer/StatefulPartitionedCallЂ/movie_title_embed_layer/StatefulPartitionedCallЂ'uid_embed_layer/StatefulPartitionedCallЂ$uid_fc_layer/StatefulPartitionedCall
/movie_title_embed_layer/StatefulPartitionedCallStatefulPartitionedCallinputs_26movie_title_embed_layer_statefulpartitionedcall_args_1*+
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22162*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*[
fVRT
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_22156м
reshape/PartitionedCallPartitionedCall8movie_title_embed_layer/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ *,
_gradient_op_typePartitionedCall-22191*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_22185Њ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22064*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058Њ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22039*
Tout
2*
Tin
2*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033Њ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22014*
Tout
2*L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008*
Tin
2*-
config_proto

CPU

GPU2*0J 8Ђ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-21989*
Tout
2*J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_21983*
Tin
2*-
config_proto

CPU

GPU2*0J 8з
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*/
_output_shapes
:џџџџџџџџџ*,
_gradient_op_typePartitionedCall-22083*
Tout
2*Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077*
Tin
2*-
config_proto

CPU

GPU2*0J 8н
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22100*
Tout
2н
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22117*
Tout
2н
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22134*
Tout
2Ў
movie_genres/PartitionedCallPartitionedCallinputs_3*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22224*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*
Tin
2*,
_gradient_op_typePartitionedCall-22236*
Tout
2б
pool_layer/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*,
_gradient_op_typePartitionedCall-22259*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:џџџџџџџџџ *N
fIRG
E__inference_pool_layer_layer_call_and_return_conditional_losses_22250Н
4movie_categories_embed_layer/StatefulPartitionedCallStatefulPartitionedCall%movie_genres/PartitionedCall:output:0;movie_categories_embed_layer_statefulpartitionedcall_args_1*
Tin
2*,
_gradient_op_typePartitionedCall-22282*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *`
f[RY
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_22276І
movie_id/PartitionedCallPartitionedCallinputs_1*
Tin
2*,
_gradient_op_typePartitionedCall-22313*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:џџџџџџџџџ*L
fGRE
C__inference_movie_id_layer_call_and_return_conditional_losses_22301г
pool_layer_flat/PartitionedCallPartitionedCall#pool_layer/PartitionedCall:output:0*
Tin
2*,
_gradient_op_typePartitionedCall-22337*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *S
fNRL
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_22331л
lambda/PartitionedCallPartitionedCall=movie_categories_embed_layer/StatefulPartitionedCall:output:0*
Tin
2*,
_gradient_op_typePartitionedCall-22370*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_22358Ё
,movie_id_embed_layer/StatefulPartitionedCallStatefulPartitionedCall!movie_id/PartitionedCall:output:03movie_id_embed_layer_statefulpartitionedcall_args_1*
Tout
2*X
fSRQ
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22391
uid/PartitionedCallPartitionedCallinputs*
Tin
2*,
_gradient_op_typePartitionedCall-22422*G
fBR@
>__inference_uid_layer_call_and_return_conditional_losses_22410*-
config_proto

CPU

GPU2*0J 8*
Tout
2*'
_output_shapes
:џџџџџџџџџп
)movie_id_fc_layer/StatefulPartitionedCallStatefulPartitionedCall5movie_id_embed_layer/StatefulPartitionedCall:output:00movie_id_fc_layer_statefulpartitionedcall_args_10movie_id_fc_layer_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*U
fPRN
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_22462*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22468щ
1movie_categories_fc_layer/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:08movie_categories_fc_layer_statefulpartitionedcall_args_18movie_categories_fc_layer_statefulpartitionedcall_args_2*
Tout
2*]
fXRV
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_22514*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22520д
dropout_layer/PartitionedCallPartitionedCall(pool_layer_flat/PartitionedCall:output:0*
Tout
2*Q
fLRJ
H__inference_dropout_layer_layer_call_and_return_conditional_losses_22558*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ *
Tin
2*,
_gradient_op_typePartitionedCall-22570
'uid_embed_layer/StatefulPartitionedCallStatefulPartitionedCalluid/PartitionedCall:output:0.uid_embed_layer_statefulpartitionedcall_args_1*
Tin
2*,
_gradient_op_typePartitionedCall-22591*S
fNRL
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_22585*-
config_proto

CPU

GPU2*0J 8*
Tout
2*+
_output_shapes
:џџџџџџџџџ Р
concatenate/PartitionedCallPartitionedCall2movie_id_fc_layer/StatefulPartitionedCall:output:0:movie_categories_fc_layer/StatefulPartitionedCall:output:0&dropout_layer/PartitionedCall:output:0*
Tin
2*,
_gradient_op_typePartitionedCall-22616*O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_22608*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ`Ц
$uid_fc_layer/StatefulPartitionedCallStatefulPartitionedCall0uid_embed_layer/StatefulPartitionedCall:output:0+uid_fc_layer_statefulpartitionedcall_args_1+uid_fc_layer_statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22664*P
fKRI
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
_output_shapes
:џџџџџџџџџ Ї
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tin
2*,
_gradient_op_typePartitionedCall-22716*K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22710*
Tout
2*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШЈ
dense/StatefulPartitionedCallStatefulPartitionedCall-uid_fc_layer/StatefulPartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*,
_output_shapes
:џџџџџџџџџШ*
Tin
2*,
_gradient_op_typePartitionedCall-22768*I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22762*
Tout
2у
'user_combine_layer_flat/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШ*
Tin
2*[
fVRT
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791*,
_gradient_op_typePartitionedCall-22797*
Tout
2ч
(movie_combine_layer_flat/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:џџџџџџџџџШ*
Tin
2*\
fWRU
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_22816*,
_gradient_op_typePartitionedCall-22822*
Tout
2
inference/PartitionedCallPartitionedCall0user_combine_layer_flat/PartitionedCall:output:01movie_combine_layer_flat/PartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*#
_output_shapes
:џџџџџџџџџ*
Tin
2*M
fHRF
D__inference_inference_layer_call_and_return_conditional_losses_22847*,
_gradient_op_typePartitionedCall-22861*
Tout
2Р
lambda_1/PartitionedCallPartitionedCall"inference/PartitionedCall:output:0*
Tin
2*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22892*L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_22880*'
_output_shapes
:џџџџџџџџџ*
Tout
2ў
IdentityIdentity!lambda_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall5^movie_categories_embed_layer/StatefulPartitionedCall2^movie_categories_fc_layer/StatefulPartitionedCall-^movie_id_embed_layer/StatefulPartitionedCall*^movie_id_fc_layer/StatefulPartitionedCall0^movie_title_embed_layer/StatefulPartitionedCall(^uid_embed_layer/StatefulPartitionedCall%^uid_fc_layer/StatefulPartitionedCall*'
_output_shapes
:џџџџџџџџџ*
T0"
identityIdentity:output:0*Й
_input_shapesЇ
Є:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::::::2L
$uid_fc_layer/StatefulPartitionedCall$uid_fc_layer/StatefulPartitionedCall2f
1movie_categories_fc_layer/StatefulPartitionedCall1movie_categories_fc_layer/StatefulPartitionedCall2R
'uid_embed_layer/StatefulPartitionedCall'uid_embed_layer/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,movie_id_embed_layer/StatefulPartitionedCall,movie_id_embed_layer/StatefulPartitionedCall2V
)movie_id_fc_layer/StatefulPartitionedCall)movie_id_fc_layer/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2l
4movie_categories_embed_layer/StatefulPartitionedCall4movie_categories_embed_layer/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2b
/movie_title_embed_layer/StatefulPartitionedCall/movie_title_embed_layer/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall: : : :&"
 
_user_specified_nameinputs: :
 : : :&"
 
_user_specified_nameinputs: : :	 : : : :& "
 
_user_specified_nameinputs: : : : : : :&"
 
_user_specified_nameinputs: : : 
У
J
,__inference_movie_genres_layer_call_fn_23834
inputs_0
identityЁ
PartitionedCallPartitionedCallinputs_0*
Tout
2*'
_output_shapes
:џџџџџџџџџ*-
config_proto

CPU

GPU2*0J 8*
Tin
2*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22224*,
_gradient_op_typePartitionedCall-22236`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0
Ђ
Ї
&__inference_conv2d_layer_call_fn_21994

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*-
config_proto

CPU

GPU2*0J 8*
Tin
2*,
_gradient_op_typePartitionedCall-21989*J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_21983
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
ь
­
,__inference_uid_fc_layer_layer_call_fn_24136

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tout
2*+
_output_shapes
:џџџџџџџџџ *
Tin
2*P
fKRI
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_22658*,
_gradient_op_typePartitionedCall-22664
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
 
_
C__inference_movie_id_layer_call_and_return_conditional_losses_22301

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:& "
 
_user_specified_nameinputs
Ѓ	
n
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_22791

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0_
strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0_
strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
_output_shapes
: *
Index0*
shrink_axis_maskR
Reshape/shape/1Const*
value
B :Ш*
dtype0*
_output_shapes
: u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџШ:& "
 
_user_specified_nameinputs
У
J
,__inference_movie_genres_layer_call_fn_23829
inputs_0
identityЁ
PartitionedCallPartitionedCallinputs_0*
Tin
2*P
fKRI
G__inference_movie_genres_layer_call_and_return_conditional_losses_22218*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22228*'
_output_shapes
:џџџџџџџџџ*
Tout
2`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:( $
"
_user_specified_name
inputs/0

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:& "
 
_user_specified_nameinputs
Љ

4__inference_movie_id_embed_layer_layer_call_fn_23919

inputs"
statefulpartitionedcall_args_1
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1*
Tin
2*X
fSRQ
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_22385*-
config_proto

CPU

GPU2*0J 8*,
_gradient_op_typePartitionedCall-22391*+
_output_shapes
:џџџџџџџџџ *
Tout
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*+
_output_shapes
:џџџџџџџџџ *
T0"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs
в
ж
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_23969

inputs1
-embedding_lookup_read_readvariableop_resource
identityЂembedding_lookupЂ$embedding_lookup/Read/ReadVariableOpС
$embedding_lookup/Read/ReadVariableOpReadVariableOp-embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	х }
embedding_lookup/IdentityIdentity,embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	х *
T0Б
embedding_lookupResourceGather-embedding_lookup_read_readvariableop_resourceinputs%^embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_output_shapes
:џџџџџџџџџ *
dtype0*
Tindices0*7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOpп
embedding_lookup/Identity_1Identityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_output_shapes
:џџџџџџџџџ *7
_class-
+)loc:@embedding_lookup/Read/ReadVariableOp
embedding_lookup/Identity_2Identity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ Њ
IdentityIdentity$embedding_lookup/Identity_2:output:0^embedding_lookup%^embedding_lookup/Read/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2L
$embedding_lookup/Read/ReadVariableOp$embedding_lookup/Read/ReadVariableOp2$
embedding_lookupembedding_lookup: :& "
 
_user_specified_nameinputs"wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*№
serving_defaultм
3
uid,
serving_default_uid:0џџџџџџџџџ
=
movie_id1
serving_default_movie_id:0џџџџџџџџџ
E
movie_genres5
serving_default_movie_genres:0џџџџџџџџџ
E
movie_titles5
serving_default_movie_titles:0џџџџџџџџџ<
lambda_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
Э
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer_with_weights-7
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer-22
layer_with_weights-10
layer-23
layer-24
layer_with_weights-11
layer-25
layer_with_weights-12
layer-26
layer-27
layer-28
layer-29
layer-30
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
У_default_save_signature
+Ф&call_and_return_all_conditional_losses
Х__call__"ШХ
_tf_keras_model­Х{"class_name": "Model", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 15], "dtype": "int32", "sparse": false, "name": "movie_titles"}, "name": "movie_titles", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_title_embed_layer", "trainable": true, "batch_input_shape": [null, 15], "dtype": "float32", "input_dim": 11502, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 15}, "name": "movie_title_embed_layer", "inbound_nodes": [[["movie_titles", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": [15, 32, 1]}, "name": "reshape", "inbound_nodes": [[["movie_title_embed_layer", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [2, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [3, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [4, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [5, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 20], "dtype": "int32", "sparse": false, "name": "movie_genres"}, "name": "movie_genres", "inbound_nodes": []}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": [14, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": [13, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": [12, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": [11, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "movie_id"}, "name": "movie_id", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_categories_embed_layer", "trainable": true, "batch_input_shape": [null, 20], "dtype": "float32", "input_dim": 21, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 20}, "name": "movie_categories_embed_layer", "inbound_nodes": [[["movie_genres", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "pool_layer", "trainable": true, "dtype": "float32", "axis": 3}, "name": "pool_layer", "inbound_nodes": [[["max_pooling2d", 0, 0, {}], ["max_pooling2d_1", 0, 0, {}], ["max_pooling2d_2", 0, 0, {}], ["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "uid"}, "name": "uid", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_id_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 9724, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "movie_id_embed_layer", "inbound_nodes": [[["movie_id", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxAAAAB0AGoBfABkAWQCZAONA1MAKQRO6QEAAABUKQLaBGF4\naXPaCGtlZXBkaW1zKQLaAnRm2gpyZWR1Y2Vfc3VtKQHaBWxheWVyqQByBwAAAPpMQzovVXNlcnMv\nMTgzNTEvUHljaGFybVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmlu\nZ19yZWNvbS5wedoIPGxhbWJkYT6FAQAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["movie_categories_embed_layer", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "pool_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [1, 32]}, "name": "pool_layer_flat", "inbound_nodes": [[["pool_layer", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "uid_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 613, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "uid_embed_layer", "inbound_nodes": [[["uid", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "movie_id_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "movie_id_fc_layer", "inbound_nodes": [[["movie_id_embed_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "movie_categories_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "movie_categories_fc_layer", "inbound_nodes": [[["lambda", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_layer", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_layer", "inbound_nodes": [[["pool_layer_flat", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "uid_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "uid_fc_layer", "inbound_nodes": [[["uid_embed_layer", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 2}, "name": "concatenate", "inbound_nodes": [[["movie_id_fc_layer", 0, 0, {}], ["movie_categories_fc_layer", 0, 0, {}], ["dropout_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["uid_fc_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "user_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}, "name": "user_combine_layer_flat", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "movie_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}, "name": "movie_combine_layer_flat", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "inference", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxoAAAB0AGoBfABkARkAfABkAhkAFABkAmQDjQJTACkETukA\nAAAA6QEAAAApAdoEYXhpcykC2gJ0ZtoKcmVkdWNlX3N1bSkB2gVsYXllcqkAcgcAAAD6TEM6L1Vz\nZXJzLzE4MzUxL1B5Y2hhcm1Qcm9qZWN0cy9Nb3ZpZVJlY1N5cy9zcmMvb2ZmbGluZS9kZWVwbGVh\ncm5pbmdfcmVjb20ucHnaCDxsYW1iZGE+vgAAAHMCAAAAAAE=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "inference", "inbound_nodes": [[["user_combine_layer_flat", 0, 0, {}], ["movie_combine_layer_flat", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaBWxheWVyqQByBgAAAPpMQzovVXNlcnMvMTgzNTEvUHljaGFy\nbVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmluZ19yZWNvbS5wedoI\nPGxhbWJkYT7BAAAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1", "inbound_nodes": [[["inference", 0, 0, {}]]]}], "input_layers": [["uid", 0, 0], ["movie_id", 0, 0], ["movie_titles", 0, 0], ["movie_genres", 0, 0]], "output_layers": [["lambda_1", 0, 0]]}, "input_spec": [null, null, null, null], "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 15], "dtype": "int32", "sparse": false, "name": "movie_titles"}, "name": "movie_titles", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_title_embed_layer", "trainable": true, "batch_input_shape": [null, 15], "dtype": "float32", "input_dim": 11502, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 15}, "name": "movie_title_embed_layer", "inbound_nodes": [[["movie_titles", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": [15, 32, 1]}, "name": "reshape", "inbound_nodes": [[["movie_title_embed_layer", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [2, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [3, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [4, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [5, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 20], "dtype": "int32", "sparse": false, "name": "movie_genres"}, "name": "movie_genres", "inbound_nodes": []}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": [14, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": [13, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": [12, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": [11, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "movie_id"}, "name": "movie_id", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_categories_embed_layer", "trainable": true, "batch_input_shape": [null, 20], "dtype": "float32", "input_dim": 21, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 20}, "name": "movie_categories_embed_layer", "inbound_nodes": [[["movie_genres", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "pool_layer", "trainable": true, "dtype": "float32", "axis": 3}, "name": "pool_layer", "inbound_nodes": [[["max_pooling2d", 0, 0, {}], ["max_pooling2d_1", 0, 0, {}], ["max_pooling2d_2", 0, 0, {}], ["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "uid"}, "name": "uid", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "movie_id_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 9724, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "movie_id_embed_layer", "inbound_nodes": [[["movie_id", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxAAAAB0AGoBfABkAWQCZAONA1MAKQRO6QEAAABUKQLaBGF4\naXPaCGtlZXBkaW1zKQLaAnRm2gpyZWR1Y2Vfc3VtKQHaBWxheWVyqQByBwAAAPpMQzovVXNlcnMv\nMTgzNTEvUHljaGFybVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmlu\nZ19yZWNvbS5wedoIPGxhbWJkYT6FAQAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["movie_categories_embed_layer", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "pool_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [1, 32]}, "name": "pool_layer_flat", "inbound_nodes": [[["pool_layer", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "uid_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 613, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "uid_embed_layer", "inbound_nodes": [[["uid", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "movie_id_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "movie_id_fc_layer", "inbound_nodes": [[["movie_id_embed_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "movie_categories_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "movie_categories_fc_layer", "inbound_nodes": [[["lambda", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_layer", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_layer", "inbound_nodes": [[["pool_layer_flat", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "uid_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "uid_fc_layer", "inbound_nodes": [[["uid_embed_layer", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 2}, "name": "concatenate", "inbound_nodes": [[["movie_id_fc_layer", 0, 0, {}], ["movie_categories_fc_layer", 0, 0, {}], ["dropout_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["uid_fc_layer", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "user_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}, "name": "user_combine_layer_flat", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "movie_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}, "name": "movie_combine_layer_flat", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "inference", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxoAAAB0AGoBfABkARkAfABkAhkAFABkAmQDjQJTACkETukA\nAAAA6QEAAAApAdoEYXhpcykC2gJ0ZtoKcmVkdWNlX3N1bSkB2gVsYXllcqkAcgcAAAD6TEM6L1Vz\nZXJzLzE4MzUxL1B5Y2hhcm1Qcm9qZWN0cy9Nb3ZpZVJlY1N5cy9zcmMvb2ZmbGluZS9kZWVwbGVh\ncm5pbmdfcmVjb20ucHnaCDxsYW1iZGE+vgAAAHMCAAAAAAE=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "inference", "inbound_nodes": [[["user_combine_layer_flat", 0, 0, {}], ["movie_combine_layer_flat", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaBWxheWVyqQByBgAAAPpMQzovVXNlcnMvMTgzNTEvUHljaGFy\nbVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmluZ19yZWNvbS5wedoI\nPGxhbWJkYT7BAAAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1", "inbound_nodes": [[["inference", 0, 0, {}]]]}], "input_layers": [["uid", 0, 0], ["movie_id", 0, 0], ["movie_titles", 0, 0], ["movie_genres", 0, 0]], "output_layers": [["lambda_1", 0, 0]]}}}
Ћ
%trainable_variables
&	variables
'regularization_losses
(	keras_api
+Ц&call_and_return_all_conditional_losses
Ч__call__"
_tf_keras_layer{"class_name": "InputLayer", "name": "movie_titles", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null, 15], "config": {"batch_input_shape": [null, 15], "dtype": "int32", "sparse": false, "name": "movie_titles"}}
ј
)
embeddings
*trainable_variables
+	variables
,regularization_losses
-	keras_api
+Ш&call_and_return_all_conditional_losses
Щ__call__"з
_tf_keras_layerН{"class_name": "Embedding", "name": "movie_title_embed_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 15], "config": {"name": "movie_title_embed_layer", "trainable": true, "batch_input_shape": [null, 15], "dtype": "float32", "input_dim": 11502, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 15}}

.trainable_variables
/	variables
0regularization_losses
1	keras_api
+Ъ&call_and_return_all_conditional_losses
Ы__call__"
_tf_keras_layer№{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": [15, 32, 1]}}
ъ

2kernel
3bias
4trainable_variables
5	variables
6regularization_losses
7	keras_api
+Ь&call_and_return_all_conditional_losses
Э__call__"У
_tf_keras_layerЉ{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [2, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}}
ю

8kernel
9bias
:trainable_variables
;	variables
<regularization_losses
=	keras_api
+Ю&call_and_return_all_conditional_losses
Я__call__"Ч
_tf_keras_layer­{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [3, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}}
ю

>kernel
?bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+а&call_and_return_all_conditional_losses
б__call__"Ч
_tf_keras_layer­{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [4, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}}
ю

Dkernel
Ebias
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
+в&call_and_return_all_conditional_losses
г__call__"Ч
_tf_keras_layer­{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [5, 32], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}}
Ћ
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api
+д&call_and_return_all_conditional_losses
е__call__"
_tf_keras_layer{"class_name": "InputLayer", "name": "movie_genres", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null, 20], "config": {"batch_input_shape": [null, 20], "dtype": "int32", "sparse": false, "name": "movie_genres"}}
ќ
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
+ж&call_and_return_all_conditional_losses
з__call__"ы
_tf_keras_layerб{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": [14, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
+и&call_and_return_all_conditional_losses
й__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": [13, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
+к&call_and_return_all_conditional_losses
л__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": [12, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

Ztrainable_variables
[	variables
\regularization_losses
]	keras_api
+м&call_and_return_all_conditional_losses
н__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": [11, 1], "padding": "valid", "strides": [1, 1], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ё
^trainable_variables
_	variables
`regularization_losses
a	keras_api
+о&call_and_return_all_conditional_losses
п__call__"
_tf_keras_layerі{"class_name": "InputLayer", "name": "movie_id", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null, 1], "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "movie_id"}}
џ
b
embeddings
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
+р&call_and_return_all_conditional_losses
с__call__"о
_tf_keras_layerФ{"class_name": "Embedding", "name": "movie_categories_embed_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 20], "config": {"name": "movie_categories_embed_layer", "trainable": true, "batch_input_shape": [null, 20], "dtype": "float32", "input_dim": 21, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 20}}

gtrainable_variables
h	variables
iregularization_losses
j	keras_api
+т&call_and_return_all_conditional_losses
у__call__"
_tf_keras_layerш{"class_name": "Concatenate", "name": "pool_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "pool_layer", "trainable": true, "dtype": "float32", "axis": 3}}

ktrainable_variables
l	variables
mregularization_losses
n	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"
_tf_keras_layerь{"class_name": "InputLayer", "name": "uid", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null, 1], "config": {"batch_input_shape": [null, 1], "dtype": "int32", "sparse": false, "name": "uid"}}
ю
o
embeddings
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"Э
_tf_keras_layerГ{"class_name": "Embedding", "name": "movie_id_embed_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1], "config": {"name": "movie_id_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 9724, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}}

t	arguments
u_variable_dict
v_trainable_weights
w_non_trainable_weights
xtrainable_variables
y	variables
zregularization_losses
{	keras_api
+ш&call_and_return_all_conditional_losses
щ__call__"Ќ
_tf_keras_layer{"class_name": "Lambda", "name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxAAAAB0AGoBfABkAWQCZAONA1MAKQRO6QEAAABUKQLaBGF4\naXPaCGtlZXBkaW1zKQLaAnRm2gpyZWR1Y2Vfc3VtKQHaBWxheWVyqQByBwAAAPpMQzovVXNlcnMv\nMTgzNTEvUHljaGFybVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmlu\nZ19yZWNvbS5wedoIPGxhbWJkYT6FAQAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
Ї
|trainable_variables
}	variables
~regularization_losses
	keras_api
+ъ&call_and_return_all_conditional_losses
ы__call__"
_tf_keras_layerќ{"class_name": "Reshape", "name": "pool_layer_flat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "pool_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [1, 32]}}
ш

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
+ь&call_and_return_all_conditional_losses
э__call__"Т
_tf_keras_layerЈ{"class_name": "Embedding", "name": "uid_embed_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1], "config": {"name": "uid_embed_layer", "trainable": true, "batch_input_shape": [null, 1], "dtype": "float32", "input_dim": 613, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}}

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
+ю&call_and_return_all_conditional_losses
я__call__"р
_tf_keras_layerЦ{"class_name": "Dense", "name": "movie_id_fc_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "movie_id_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
+№&call_and_return_all_conditional_losses
ё__call__"№
_tf_keras_layerж{"class_name": "Dense", "name": "movie_categories_fc_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "movie_categories_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}
Н
trainable_variables
	variables
regularization_losses
	keras_api
+ђ&call_and_return_all_conditional_losses
ѓ__call__"Ј
_tf_keras_layer{"class_name": "Dropout", "name": "dropout_layer", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dropout_layer", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
+є&call_and_return_all_conditional_losses
ѕ__call__"ж
_tf_keras_layerМ{"class_name": "Dense", "name": "uid_fc_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "uid_fc_layer", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}

trainable_variables
	variables
regularization_losses
	keras_api
+і&call_and_return_all_conditional_losses
ї__call__"
_tf_keras_layerъ{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 2}}
і
kernel
	 bias
Ёtrainable_variables
Ђ	variables
Ѓregularization_losses
Є	keras_api
+ј&call_and_return_all_conditional_losses
љ__call__"Щ
_tf_keras_layerЏ{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}
њ
Ѕkernel
	Іbias
Їtrainable_variables
Ј	variables
Љregularization_losses
Њ	keras_api
+њ&call_and_return_all_conditional_losses
ћ__call__"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 96}}}}
Й
Ћtrainable_variables
Ќ	variables
­regularization_losses
Ў	keras_api
+ќ&call_and_return_all_conditional_losses
§__call__"Є
_tf_keras_layer{"class_name": "Reshape", "name": "user_combine_layer_flat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "user_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}}
Л
Џtrainable_variables
А	variables
Бregularization_losses
В	keras_api
+ў&call_and_return_all_conditional_losses
џ__call__"І
_tf_keras_layer{"class_name": "Reshape", "name": "movie_combine_layer_flat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "movie_combine_layer_flat", "trainable": true, "dtype": "float32", "target_shape": [200]}}
Њ
Г	arguments
Д_variable_dict
Е_trainable_weights
Ж_non_trainable_weights
Зtrainable_variables
И	variables
Йregularization_losses
К	keras_api
+&call_and_return_all_conditional_losses
__call__"К
_tf_keras_layer {"class_name": "Lambda", "name": "inference", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "inference", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxoAAAB0AGoBfABkARkAfABkAhkAFABkAmQDjQJTACkETukA\nAAAA6QEAAAApAdoEYXhpcykC2gJ0ZtoKcmVkdWNlX3N1bSkB2gVsYXllcqkAcgcAAAD6TEM6L1Vz\nZXJzLzE4MzUxL1B5Y2hhcm1Qcm9qZWN0cy9Nb3ZpZVJlY1N5cy9zcmMvb2ZmbGluZS9kZWVwbGVh\ncm5pbmdfcmVjb20ucHnaCDxsYW1iZGE+vgAAAHMCAAAAAAE=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}

Л	arguments
М_variable_dict
Н_trainable_weights
О_non_trainable_weights
Пtrainable_variables
Р	variables
Сregularization_losses
Т	keras_api
+&call_and_return_all_conditional_losses
__call__" 
_tf_keras_layer{"class_name": "Lambda", "name": "lambda_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoCdGbaC2V4cGFuZF9kaW1zKQHaBWxheWVyqQByBgAAAPpMQzovVXNlcnMvMTgzNTEvUHljaGFy\nbVByb2plY3RzL01vdmllUmVjU3lzL3NyYy9vZmZsaW5lL2RlZXBsZWFybmluZ19yZWNvbS5wedoI\nPGxhbWJkYT7BAAAA8wAAAAA=\n", null, null], "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
б
)0
21
32
83
94
>5
?6
D7
E8
b9
o10
11
12
13
14
15
16
17
18
 19
Ѕ20
І21"
trackable_list_wrapper
б
)0
21
32
83
94
>5
?6
D7
E8
b9
o10
11
12
13
14
15
16
17
18
 19
Ѕ20
І21"
trackable_list_wrapper
 "
trackable_list_wrapper
П
 Уlayer_regularization_losses
Фlayers
 	variables
!trainable_variables
"regularization_losses
Хnon_trainable_variables
Цmetrics
Х__call__
У_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 Чlayer_regularization_losses
Шlayers
%trainable_variables
&	variables
'regularization_losses
Щnon_trainable_variables
Ъmetrics
Ч__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
5:3	юY 2"movie_title_embed_layer/embeddings
'
)0"
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 Ыlayer_regularization_losses
Ьlayers
*trainable_variables
+	variables
,regularization_losses
Эnon_trainable_variables
Юmetrics
Щ__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 Яlayer_regularization_losses
аlayers
.trainable_variables
/	variables
0regularization_losses
бnon_trainable_variables
вmetrics
Ы__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
':% 2conv2d/kernel
:2conv2d/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 гlayer_regularization_losses
дlayers
4trainable_variables
5	variables
6regularization_losses
еnon_trainable_variables
жmetrics
Э__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_1/kernel
:2conv2d_1/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 зlayer_regularization_losses
иlayers
:trainable_variables
;	variables
<regularization_losses
йnon_trainable_variables
кmetrics
Я__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_2/kernel
:2conv2d_2/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 лlayer_regularization_losses
мlayers
@trainable_variables
A	variables
Bregularization_losses
нnon_trainable_variables
оmetrics
б__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_3/kernel
:2conv2d_3/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 пlayer_regularization_losses
рlayers
Ftrainable_variables
G	variables
Hregularization_losses
сnon_trainable_variables
тmetrics
г__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 уlayer_regularization_losses
фlayers
Jtrainable_variables
K	variables
Lregularization_losses
хnon_trainable_variables
цmetrics
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 чlayer_regularization_losses
шlayers
Ntrainable_variables
O	variables
Pregularization_losses
щnon_trainable_variables
ъmetrics
з__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 ыlayer_regularization_losses
ьlayers
Rtrainable_variables
S	variables
Tregularization_losses
эnon_trainable_variables
юmetrics
й__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 яlayer_regularization_losses
№layers
Vtrainable_variables
W	variables
Xregularization_losses
ёnon_trainable_variables
ђmetrics
л__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 ѓlayer_regularization_losses
єlayers
Ztrainable_variables
[	variables
\regularization_losses
ѕnon_trainable_variables
іmetrics
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 їlayer_regularization_losses
јlayers
^trainable_variables
_	variables
`regularization_losses
љnon_trainable_variables
њmetrics
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
9:7 2'movie_categories_embed_layer/embeddings
'
b0"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 ћlayer_regularization_losses
ќlayers
ctrainable_variables
d	variables
eregularization_losses
§non_trainable_variables
ўmetrics
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 џlayer_regularization_losses
layers
gtrainable_variables
h	variables
iregularization_losses
non_trainable_variables
metrics
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 layer_regularization_losses
layers
ktrainable_variables
l	variables
mregularization_losses
non_trainable_variables
metrics
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
2:0	ќK 2movie_id_embed_layer/embeddings
'
o0"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 layer_regularization_losses
layers
ptrainable_variables
q	variables
rregularization_losses
non_trainable_variables
metrics
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
trackable_list_wrapper
Ё
 layer_regularization_losses
layers
xtrainable_variables
y	variables
zregularization_losses
non_trainable_variables
metrics
щ__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ё
 layer_regularization_losses
layers
|trainable_variables
}	variables
~regularization_losses
non_trainable_variables
metrics
ы__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
-:+	х 2uid_embed_layer/embeddings
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
э__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
*:(  2movie_id_fc_layer/kernel
$:" 2movie_id_fc_layer/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
я__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
2:0  2 movie_categories_fc_layer/kernel
,:* 2movie_categories_fc_layer/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 layer_regularization_losses
layers
trainable_variables
	variables
regularization_losses
non_trainable_variables
metrics
ё__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 layer_regularization_losses
 layers
trainable_variables
	variables
regularization_losses
Ёnon_trainable_variables
Ђmetrics
ѓ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
%:#  2uid_fc_layer/kernel
: 2uid_fc_layer/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Ѓlayer_regularization_losses
Єlayers
trainable_variables
	variables
regularization_losses
Ѕnon_trainable_variables
Іmetrics
ѕ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Їlayer_regularization_losses
Јlayers
trainable_variables
	variables
regularization_losses
Љnon_trainable_variables
Њmetrics
ї__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
:	 Ш2dense/kernel
:Ш2
dense/bias
0
0
 1"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Ћlayer_regularization_losses
Ќlayers
Ёtrainable_variables
Ђ	variables
Ѓregularization_losses
­non_trainable_variables
Ўmetrics
љ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
!:	`Ш2dense_1/kernel
:Ш2dense_1/bias
0
Ѕ0
І1"
trackable_list_wrapper
0
Ѕ0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Џlayer_regularization_losses
Аlayers
Їtrainable_variables
Ј	variables
Љregularization_losses
Бnon_trainable_variables
Вmetrics
ћ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Гlayer_regularization_losses
Дlayers
Ћtrainable_variables
Ќ	variables
­regularization_losses
Еnon_trainable_variables
Жmetrics
§__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 Зlayer_regularization_losses
Иlayers
Џtrainable_variables
А	variables
Бregularization_losses
Йnon_trainable_variables
Кmetrics
џ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
trackable_list_wrapper
Є
 Лlayer_regularization_losses
Мlayers
Зtrainable_variables
И	variables
Йregularization_losses
Нnon_trainable_variables
Оmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
trackable_list_wrapper
Є
 Пlayer_regularization_losses
Рlayers
Пtrainable_variables
Р	variables
Сregularization_losses
Сnon_trainable_variables
Тmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
з2д
 __inference__wrapped_model_21969Џ
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
annotationsЊ *Ђ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
Ю2Ы
@__inference_model_layer_call_and_return_conditional_losses_23456
@__inference_model_layer_call_and_return_conditional_losses_23721
@__inference_model_layer_call_and_return_conditional_losses_22898
@__inference_model_layer_call_and_return_conditional_losses_22959Р
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
т2п
%__inference_model_layer_call_fn_23050
%__inference_model_layer_call_fn_23751
%__inference_model_layer_call_fn_23781
%__inference_model_layer_call_fn_23142Р
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
Ь2ЩЦ
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
Ь2ЩЦ
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ќ2љ
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_23791Ђ
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
с2о
7__inference_movie_title_embed_layer_layer_call_fn_23797Ђ
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
ь2щ
B__inference_reshape_layer_call_and_return_conditional_losses_23811Ђ
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
б2Ю
'__inference_reshape_layer_call_fn_23816Ђ
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
 2
A__inference_conv2d_layer_call_and_return_conditional_losses_21983з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
&__inference_conv2d_layer_call_fn_21994з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ђ2
C__inference_conv2d_1_layer_call_and_return_conditional_losses_22008з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
(__inference_conv2d_1_layer_call_fn_22019з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ђ2
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
(__inference_conv2d_2_layer_call_fn_22044з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ђ2
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
(__inference_conv2d_3_layer_call_fn_22069з
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
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
о2л
G__inference_movie_genres_layer_call_and_return_conditional_losses_23820
G__inference_movie_genres_layer_call_and_return_conditional_losses_23824Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
Ј2Ѕ
,__inference_movie_genres_layer_call_fn_23829
,__inference_movie_genres_layer_call_fn_23834Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
А2­
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077р
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
2
-__inference_max_pooling2d_layer_call_fn_22086р
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
В2Џ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094р
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
2
/__inference_max_pooling2d_1_layer_call_fn_22103р
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
В2Џ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111р
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
2
/__inference_max_pooling2d_2_layer_call_fn_22120р
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
В2Џ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128р
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
2
/__inference_max_pooling2d_3_layer_call_fn_22137р
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
ж2г
C__inference_movie_id_layer_call_and_return_conditional_losses_23838
C__inference_movie_id_layer_call_and_return_conditional_losses_23842Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
 2
(__inference_movie_id_layer_call_fn_23852
(__inference_movie_id_layer_call_fn_23847Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
2ў
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_23862Ђ
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
ц2у
<__inference_movie_categories_embed_layer_layer_call_fn_23868Ђ
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
E__inference_pool_layer_layer_call_and_return_conditional_losses_23877Ђ
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
*__inference_pool_layer_layer_call_fn_23885Ђ
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
>__inference_uid_layer_call_and_return_conditional_losses_23889
>__inference_uid_layer_call_and_return_conditional_losses_23893Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
2
#__inference_uid_layer_call_fn_23898
#__inference_uid_layer_call_fn_23903Ц
НВЙ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
љ2і
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_23913Ђ
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
о2л
4__inference_movie_id_embed_layer_layer_call_fn_23919Ђ
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
A__inference_lambda_layer_call_and_return_conditional_losses_23925
A__inference_lambda_layer_call_and_return_conditional_losses_23931Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
&__inference_lambda_layer_call_fn_23941
&__inference_lambda_layer_call_fn_23936Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
є2ё
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_23954Ђ
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
/__inference_pool_layer_flat_layer_call_fn_23959Ђ
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
є2ё
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_23969Ђ
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
/__inference_uid_embed_layer_layer_call_fn_23975Ђ
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
і2ѓ
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_24010Ђ
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
л2и
1__inference_movie_id_fc_layer_layer_call_fn_24017Ђ
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
ў2ћ
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_24052Ђ
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
у2р
9__inference_movie_categories_fc_layer_layer_call_fn_24059Ђ
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
Ю2Ы
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24084
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24079Д
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
2
-__inference_dropout_layer_layer_call_fn_24089
-__inference_dropout_layer_layer_call_fn_24094Д
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
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_24129Ђ
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
,__inference_uid_fc_layer_layer_call_fn_24136Ђ
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
F__inference_concatenate_layer_call_and_return_conditional_losses_24144Ђ
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
+__inference_concatenate_layer_call_fn_24151Ђ
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
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_24186Ђ
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
Я2Ь
%__inference_dense_layer_call_fn_24193Ђ
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
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_24228Ђ
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
б2Ю
'__inference_dense_1_layer_call_fn_24235Ђ
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
ќ2љ
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_24247Ђ
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
с2о
7__inference_user_combine_layer_flat_layer_call_fn_24252Ђ
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
§2њ
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_24264Ђ
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
т2п
8__inference_movie_combine_layer_flat_layer_call_fn_24269Ђ
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
в2Я
D__inference_inference_layer_call_and_return_conditional_losses_24285
D__inference_inference_layer_call_and_return_conditional_losses_24277Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_inference_layer_call_fn_24291
)__inference_inference_layer_call_fn_24297Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
C__inference_lambda_1_layer_call_and_return_conditional_losses_24309
C__inference_lambda_1_layer_call_and_return_conditional_losses_24303Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
(__inference_lambda_1_layer_call_fn_24314
(__inference_lambda_1_layer_call_fn_24319Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
RBP
#__inference_signature_wrapper_23174movie_genresmovie_idmovie_titlesuid
8__inference_movie_combine_layer_flat_layer_call_fn_24269Q4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ
Њ "џџџџџџџџџШД
R__inference_user_combine_layer_flat_layer_call_and_return_conditional_losses_24247^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ
Њ "&Ђ#

0џџџџџџџџџШ
 ж
A__inference_conv2d_layer_call_and_return_conditional_losses_2198323IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 У
E__inference_pool_layer_layer_call_and_return_conditional_losses_23877љЧЂУ
ЛЂЗ
ДА
*'
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ
*'
inputs/2џџџџџџџџџ
*'
inputs/3џџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ 
 
%__inference_model_layer_call_fn_23050ђ!)DE>?8923boЅІ ВЂЎ
ІЂЂ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
%__inference_model_layer_call_fn_23751я!)DE>?8923boЅІ ЏЂЋ
ЃЂ

"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
p

 
Њ "џџџџџџџџџХ
/__inference_max_pooling2d_1_layer_call_fn_22103RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_user_combine_layer_flat_layer_call_fn_24252Q4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ
Њ "џџџџџџџџџШФ
@__inference_model_layer_call_and_return_conditional_losses_22898џ!)DE>?8923boЅІ ВЂЎ
ІЂЂ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 С
G__inference_movie_genres_layer_call_and_return_conditional_losses_23820vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp",Ђ)
"

0/0џџџџџџџџџ
 
#__inference_uid_layer_call_fn_23898jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp" 

0џџџџџџџџџ
'__inference_dense_1_layer_call_fn_24235ZЅІ3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ`
Њ "џџџџџџџџџШИ
>__inference_uid_layer_call_and_return_conditional_losses_23889vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp",Ђ)
"

0/0џџџџџџџџџ
 С
G__inference_movie_genres_layer_call_and_return_conditional_losses_23824vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp ",Ђ)
"

0/0џџџџџџџџџ
 А
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24079d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ 
p
Њ ")Ђ&

0џџџџџџџџџ 
 
%__inference_dense_layer_call_fn_24193Z 3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџШ
7__inference_movie_title_embed_layer_layer_call_fn_23797R)/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ Е
R__inference_movie_title_embed_layer_layer_call_and_return_conditional_losses_23791_)/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ 
 
,__inference_uid_fc_layer_layer_call_fn_24136Y3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ в
D__inference_inference_layer_call_and_return_conditional_losses_24285dЂa
ZЂW
MЂJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ

 
p 
Њ "!Ђ

0џџџџџџџџџ
 
&__inference_lambda_layer_call_fn_23936[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ 

 
p
Њ "џџџџџџџџџ ы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_22077RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 э
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_22128RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Њ
 __inference__wrapped_model_21969!)DE>?8923boЅІ ЊЂІ
Ђ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
Њ "3Њ0
.
lambda_1"
lambda_1џџџџџџџџџ­
B__inference_dense_1_layer_call_and_return_conditional_losses_24228gЅІ3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ`
Њ "*Ђ'
 
0џџџџџџџџџШ
 э
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22111RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ў
&__inference_conv2d_layer_call_fn_2199423IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџУ
-__inference_max_pooling2d_layer_call_fn_22086RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
,__inference_movie_genres_layer_call_fn_23834jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp " 

0џџџџџџџџџэ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_22094RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ѓ
C__inference_lambda_1_layer_call_and_return_conditional_losses_24303\3Ђ0
)Ђ&

inputsџџџџџџџџџ

 
p
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_dropout_layer_layer_call_fn_24089W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ 
p
Њ "џџџџџџџџџ и
C__inference_conv2d_2_layer_call_and_return_conditional_losses_22033>?IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
(__inference_movie_id_layer_call_fn_23852jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp " 

0џџџџџџџџџК
W__inference_movie_categories_embed_layer_layer_call_and_return_conditional_losses_23862_b/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ 
 Х
/__inference_max_pooling2d_2_layer_call_fn_22120RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЃ
C__inference_lambda_1_layer_call_and_return_conditional_losses_24309\3Ђ0
)Ђ&

inputsџџџџџџџџџ

 
p 
Њ "%Ђ"

0џџџџџџџџџ
 Е
S__inference_movie_combine_layer_flat_layer_call_and_return_conditional_losses_24264^4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ
Њ "&Ђ#

0џџџџџџџџџШ
 н
+__inference_concatenate_layer_call_fn_24151­Ђ
Ђ}
{x
&#
inputs/0џџџџџџџџџ 
&#
inputs/1џџџџџџџџџ 
&#
inputs/2џџџџџџџџџ 
Њ "џџџџџџџџџ`{
(__inference_lambda_1_layer_call_fn_24319O3Ђ0
)Ђ&

inputsџџџџџџџџџ

 
p 
Њ "џџџџџџџџџ
1__inference_movie_id_fc_layer_layer_call_fn_24017Y3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ Ж
L__inference_movie_id_fc_layer_layer_call_and_return_conditional_losses_24010f3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ ")Ђ&

0џџџџџџџџџ 
 {
(__inference_lambda_1_layer_call_fn_24314O3Ђ0
)Ђ&

inputsџџџџџџџџџ

 
p
Њ "џџџџџџџџџС
@__inference_model_layer_call_and_return_conditional_losses_23721ќ!)DE>?8923boЅІ ЏЂЋ
ЃЂ

"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
*__inference_pool_layer_layer_call_fn_23885ьЧЂУ
ЛЂЗ
ДА
*'
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ
*'
inputs/2џџџџџџџџџ
*'
inputs/3џџџџџџџџџ
Њ " џџџџџџџџџ 
<__inference_movie_categories_embed_layer_layer_call_fn_23868Rb/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ 
%__inference_model_layer_call_fn_23781я!)DE>?8923boЅІ ЏЂЋ
ЃЂ

"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
p 

 
Њ "џџџџџџџџџН
C__inference_movie_id_layer_call_and_return_conditional_losses_23838vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp",Ђ)
"

0/0џџџџџџџџџ
 
4__inference_movie_id_embed_layer_layer_call_fn_23919Ro/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ ­
A__inference_lambda_layer_call_and_return_conditional_losses_23931h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ 

 
p 
Њ ")Ђ&

0џџџџџџџџџ 
 Б
G__inference_uid_fc_layer_layer_call_and_return_conditional_losses_24129f3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ ")Ђ&

0џџџџџџџџџ 
 ­
A__inference_lambda_layer_call_and_return_conditional_losses_23925h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ 

 
p
Њ ")Ђ&

0џџџџџџџџџ 
 В
O__inference_movie_id_embed_layer_layer_call_and_return_conditional_losses_23913_o/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ 
 в
D__inference_inference_layer_call_and_return_conditional_losses_24277dЂa
ZЂW
MЂJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ

 
p
Њ "!Ђ

0џџџџџџџџџ
 
'__inference_reshape_layer_call_fn_23816W3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ Ф
@__inference_model_layer_call_and_return_conditional_losses_22959џ!)DE>?8923boЅІ ВЂЎ
ІЂЂ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Љ
)__inference_inference_layer_call_fn_24291|dЂa
ZЂW
MЂJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ

 
p
Њ "џџџџџџџџџ
-__inference_dropout_layer_layer_call_fn_24094W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ 
p 
Њ "џџџџџџџџџ С
@__inference_model_layer_call_and_return_conditional_losses_23456ќ!)DE>?8923boЅІ ЏЂЋ
ЃЂ

"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 И
>__inference_uid_layer_call_and_return_conditional_losses_23893vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp ",Ђ)
"

0/0џџџџџџџџџ
 
&__inference_lambda_layer_call_fn_23941[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ 

 
p 
Њ "џџџџџџџџџ А
H__inference_dropout_layer_layer_call_and_return_conditional_losses_24084d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ 
p 
Њ ")Ђ&

0џџџџџџџџџ 
 А
(__inference_conv2d_3_layer_call_fn_22069DEIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџВ
J__inference_pool_layer_flat_layer_call_and_return_conditional_losses_23954d7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ ")Ђ&

0џџџџџџџџџ 
 
/__inference_pool_layer_flat_layer_call_fn_23959W7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ 
#__inference_uid_layer_call_fn_23903jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp " 

0џџџџџџџџџА
(__inference_conv2d_2_layer_call_fn_22044>?IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЎ
J__inference_uid_embed_layer_layer_call_and_return_conditional_losses_23969`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ 
 и
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22058DEIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
,__inference_movie_genres_layer_call_fn_23829jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp" 

0џџџџџџџџџЊ
B__inference_reshape_layer_call_and_return_conditional_losses_23811d3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 
F__inference_concatenate_layer_call_and_return_conditional_losses_24144КЂ
Ђ}
{x
&#
inputs/0џџџџџџџџџ 
&#
inputs/1џџџџџџџџџ 
&#
inputs/2џџџџџџџџџ 
Њ ")Ђ&

0џџџџџџџџџ`
 О
T__inference_movie_categories_fc_layer_layer_call_and_return_conditional_losses_24052f3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ ")Ђ&

0џџџџџџџџџ 
 й
#__inference_signature_wrapper_23174Б!)DE>?8923boЅІ жЂв
Ђ 
ЪЊЦ
6
movie_genres&#
movie_genresџџџџџџџџџ
.
movie_id"
movie_idџџџџџџџџџ
6
movie_titles&#
movie_titlesџџџџџџџџџ
$
uid
uidџџџџџџџџџ"3Њ0
.
lambda_1"
lambda_1џџџџџџџџџ
/__inference_uid_embed_layer_layer_call_fn_23975S/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ Љ
)__inference_inference_layer_call_fn_24297|dЂa
ZЂW
MЂJ
# 
inputs/0џџџџџџџџџШ
# 
inputs/1џџџџџџџџџШ

 
p 
Њ "џџџџџџџџџ
%__inference_model_layer_call_fn_23142ђ!)DE>?8923boЅІ ВЂЎ
ІЂЂ


uidџџџџџџџџџ
"
movie_idџџџџџџџџџ
&#
movie_titlesџџџџџџџџџ
&#
movie_genresџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
(__inference_movie_id_layer_call_fn_23847jFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp" 

0џџџџџџџџџН
C__inference_movie_id_layer_call_and_return_conditional_losses_23842vFЂC
,Ђ)
'$
"
inputs/0џџџџџџџџџ
Њ

trainingp ",Ђ)
"

0/0џџџџџџџџџ
 и
C__inference_conv2d_1_layer_call_and_return_conditional_losses_2200889IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 А
(__inference_conv2d_1_layer_call_fn_2201989IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџХ
/__inference_max_pooling2d_3_layer_call_fn_22137RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЋ
@__inference_dense_layer_call_and_return_conditional_losses_24186g 3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "*Ђ'
 
0џџџџџџџџџШ
 
9__inference_movie_categories_fc_layer_layer_call_fn_24059Y3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ 