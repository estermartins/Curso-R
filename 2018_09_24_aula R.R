5+ 5
6-3
5*4 # multiplicação
25/5
2^2 # função para potencia
sqrt(49)# função para tirar a raiz quadrada

exp (10) # exponencial
log (22026.27) # log natural
log10(43567)  # log base 10

x <- 5 # significa que x recebe 5
x
y = 7 # significa que y recebe 7, algumas pessoas 
y
x + y # operação soma
x * y # operação de multiplicação

x <- 49 
x
sqrt(x) + exp(x+y*1)

##############
# Para criar um vetor

x <- c (5,9,3.4,9.7,2) # utiliza-se a letra c para concatenar, criar vetor
x
y = c (6,4,9.8,15.45,4)

# é possível fazer operações com vetores

x+y
x*y

# criar uma sequencia de número, coloca-se se o número :,onde eu coloco no primeiro numero o que eu quero 
# que comece e o ultimo que termine
1:8
10:1

# sequencia de números de acordo com a sequencia desejada

seq (from =2, to=20 , by=2) # sequencia
rep(1:4, times = 4) # 4x
rep(1:4, each = 4)# cada número 4 vezes
rep(5, each = 5)

#Classe de vetores
class(x)# classe numeric aceita casas decimais, em outras linguagens é chamado de float

idades = c (25,26,29,30)
idades
class(idades)
idades = as.integer(idades)
class(idades)

x
as.integer(x)# transforma o número para inteiro. Quando ele faz essa transformação ele arrendonda

# character

nome= "Neylson" # pode usar aspas simples ou dupla, para declarar texto é preciso colocar entre aspas
nome
class(nome)

sobrenome = "Crepalde"
sobrenome

paste(nome, sobrenome , sep = "Pê")# função para juntar texto, e o separador eu defino
paste0(nome,sobrenome) # junto caracterer mas sem espaço

#___________________________________________________________________________-
#Matrizes

A = matrix (1:16, nrow =4 , ncol = 4)# Criando uma matriz, onde eu falo a ordem do número
A
B = matrix (rnorm(16),ncol = 4,nrow =4) # Crio a matrix com número aleatorios (rnorm)
B

A + B
A %% B # multiplicação de matriz

#_________________________________________________________________________
 # data.frames

# para montar um banco de dados eu declaro as variaveis como o exemplo 
nomes = c (" Neylson", "Vanessa","Amanda","Fernando")
idades = c(31,26,24,47)
altura = c(1.74,1.70,1.72,1.87)

dados = data.frame(nomes,idades,altura,
                   stringsAsFactors = FALSE) # para juntar todos os dados declaros do bd, eu uso essa formula
dados # para ver o bd

# para declarar mais uma coluna
curso = c("Sociologia","Mat", "direito","Mat")
str(dados) # informa o tipos de dados do bd
dados = cbind(dados,curso) #cbind para incluir uma coluna, se eu quiser incluir uma linha é o rbind
dados

#para saber o nome das variáveis 
names (dados) # names(o nome do banco)

dados$nomes # para saber o nome que estão no banco, eu coloco nome do banco $ a coluna que estou buscando
dados$idades

View(dados) #para visualizar o banco de dados

# diferença entre matrix e tabelas - matrix só suporta um tipo de dado, o banco de dados posso ter dados diferentes no mesmo banco

#__________________________________________________________________________________

# listas 
# Dentro de uma lista posso ter qualquer coisa

lista = list(x,5,A,dados) 
lista # na visualização ele coloca cada um, na ordem que foi citado

#_________________________________________________________________________________

# Exercicio
# Criar um bd, que tenha 5 linhas, com nome, idade, cor favorita, junta e fazer um banco de dados
nome = c("Carolina", "Giovanne","Ricardo","Lucas","Tadeu") 
cor_favorita = c("amarelo","azul","lilas","violeta","branco")
idade = c(17,18,50,60,60)

dados = data.frame(nome,idade,cor_favorita,
                   stringsAsFactors = FALSE)
dados
# o nome da variavel não pode ter espaço, para um nome duplo, como cor favorida, é preciso separar com _ ou . ou colocar todo junto

