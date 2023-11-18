library(readxl)
Pagamentos <- read_excel("Excel/Pagamentos.xlsx")
View(Pagamentos)

Pagamentos
edit(Pagamentos) 


#Chamando a biblioteca "dplyr".
library(dplyr)
#instalando o pacote da biblioteca.
install.packages("dplyr")

#Aplicando um filtro selecionando valor e região.
resul <- Pagamentos %>% select(Valor, Regiao)
(resul)

resul <- Pagamentos %>% select(Valor, Prestador)
(resul)

#Atenção quando a coluna tiver espaço entre os nomes é necessário usar para executar o bloco (``).
resul <- Pagamentos %>% select(`Nr Nota`, Valor, Prestador)
(resul)
#Fazendo o select com uso de "filter" para filtrar os valores
resul <- Pagamentos %>% select(Valor, Regiao) %>% filter(Valor>1000)
(resul)

resul <- Pagamentos %>% select(Valor, Regiao) %>% filter(Valor<2000)
(resul)

resul <- Pagamentos %>% select(Valor, Regiao) %>% filter(Valor>1000 & Regiao =='Rio de Janeiro')
(resul)

resul <- Pagamentos %>% select(Valor, Regiao) %>% mutate(pix = (Valor * 0.135))
class(Pagamentos) #Para ter informações da tabela Pagamentos.
class(Pagamentos$Valor)#Para verificar o tipo de dado da coluna Valor

#Agora apliquei o select com o uso de "mutate" para criar uma nova coluna pix na tabela e as.numeric para dizer que o tipo de dado da coluna Valor é numeric
resul <- Pagamentos %>% select(Valor, Regiao) %>% mutate(pix = as.numeric(Valor) * 0.135)
(resul)

#Corrigindo um erro da tabela sobre a coluna valor que estava definido como do tipo Character e fiz a conversão com "as.numeric" defindo ele do tipo numérico.
Pagamentos$Valor <- as.numeric(Pagamentos$Valor)
class(Pagamentos$Valor) #Usando class para verificar a conversão de tipo.
resul <- Pagamentos %>% select(`Nr Nota`, Valor, Prestador, Regiao) %>% group_by(Regiao) %>% summarise((Total = mean(Valor)))
(resul) 
#Utilizando o select das colunas e usando o "group by por região", depois utilizei o "summarise e mean" para somar e tirar a média dos valores.

resul <- Pagamentos %>% select(`Nr Nota`, Valor, Prestador, Regiao) %>% count(Regiao)
(resul) #Utilizando "count" para mostrar a quantidade de prestador por região.

#Uso de "arrange" para mudar a ordem e "desc" para deixar em decrescente.
(Pagamentos)
Pagamentos %>% arrange(Valor)
Pagamentos %>% arrange(Regiao)
Pagamentos %>% arrange(Prestador)
Pagamentos %>% arrange(desc(Valor))


