#########################
# Curso de introdução a Data Science com R
# Ester Pereira Martins
# Data: 25/09/2018
#########################

library(descr) # estatísticas descritivas
library(ggplot2) # gráficos
library(dplyr) # manipulação de dados
library(readr) # leitura de banco dados
library(readxl) # leitura de excel


# Banco de dados iris
iris <- read_xlsx("iris.xlsx")
dim(iris)
names(iris)
str(iris)

# Seleção 
iris$Sepal.Length # operador $ - retorna o vetor
iris[1] # operador[] - retorna a classe superior
class(iris$Sepal.Length) # mesma forma de identificar a classe da variável
class(iris[[1]]) # mesma forma de identificar a classe da variável # operador[] - retorna classe do vetor

# Investigando a variável Sepal.Lenght
iris$Sepal.Length[1]
iris$Sepal.Length[2]
iris$Sepal.Length[1] + iris$Sepal.Length[2]

############
# Sepal.Lenght
# Variáveis númericas
min(iris$Sepal.Length) # mínimo
max(iris$Sepal.Length) # máximo
mean(iris$Sepal.Length) # média
median(iris$Sepal.Length) # mediana

var(iris$Sepal.Length) # variância
sd(iris$Sepal.Length) # desvio padrão

summary(iris$Sepal.Length) # comando único que mostra as estatísticas descritivas
# mínimo - 1 quartil- mediana - média - 3 quartil - máximo

# Variáveis categóricas
freq(iris$Species) 

# Identificar a média de Sepal Lenght para a espécie setosa
# iris %>% select(- Species)
iris %>% select(Sepal.Length, Species) %>% 
  filter(Species == "setosa") %>%
  summarise(media = mean(Sepal.Length))

  filter(Species == "virginia") %>% 
  summarise(media = mean(Sepal.Length))
  
#### Com R base
selecao = iris[c("Sepal.Lenght", "Species")]
mean()

########
# Calcular a media de Sepal.Lenght para as tres especies de floe
iris %>% group_by(Species) %>%
  summarise(media = mean(Sepal.Length)) %>% 
  mutate(media2 = media^2) 

help(mutate) # arquivos de ajuda do R = nome da funcao, o que faz, etc

########
# Banco de dados Diamond
diamonds = read_csv("https://github.com/neylsoncrepalde/ICDR/blob/master/diamonds.csv?raw=true")
dim(diamonds)
names(diamonds)
freq(diamonds$cut)
class(diamonds$price)
summary(diamonds$price)

diamonds %>% group_by(cut) %>% 
  summarise(med = mean(price)) %>% 
  arrange(med) # arrange = reordena os dados de acordo coma variavel(mean) = menor p/ menor

diamonds %>% # comeca com o bd
diamonds %>% group_by(cut) %>%# agrupa pela variavel cut
  summarise(med = mean(price), mediana = median(price), desc = sd(price)) %>% # cria estatistica descritiva 
  arrange(desc(med)) # ordena pela media

library(magrittr)
# tentativa 1
# Base
x = 5
exp(sqrt(x^3) + (3 + x/2))

# tentativa 2 
# Base
x %>% raise_to_power(3) %>% sqrt %>% add(3 + x/2) %>% exp
