library(readxl) #importando arquivo.
Pagamentos <- read_excel("Excel/Pagamentos.xlsx")
View(Pagamentos)

#primeiro chamar a biblioteca e depois fiz a conversão da coluna região de "character para factor".
library(ggplot2)
Pagamentos$Regiao <- as.factor(Pagamentos$Regiao)

#Gerando um Gráfico vázio.
p1 <- ggplot() + geom_line(aes(y=Valor, x=Regiao),data=Pagamentos)
p1
#Depois gerei dois gráficos de barras com rótulos diferentes. 
p1 + labs(title = "Tabela", x="Valores R$", y="Localidade", caption = "Pagamentos")
p1 + labs(title = "Tabela2", x="Localidade", Y="Valores r$",caption = "Pagamentos")

#Usei "labs" para adicionar rótulos ao gráfico e agrupei valores por região.
ggplot (Pagamentos, aes(x=Regiao, y=Valor)) + geom_bar(stat="identity")

#Utilizei "tapply" para calcular a média dos valores agrupados por região.
tapply(Pagamentos$Valor, Pagamentos$Regiao, mean)
barplot((tapply(Pagamentos$Valor, Pagamentos$Regiao, mean)))

#utilizei o "dplyr e mutate" para subistituir valores NA na coluna Valor para média de valore não NA para corrigir erros no dataframe.
library(dplyr)
Pagamentos <- Pagamentos %>%
  mutate(Valor = ifelse(is.na(Valor), mean(Valor, na.rm = TRUE), Valor))

#Utlizei "filter" para filtrar valores infinitos de não NA, e não infinitos.
valores_por_regiao <- tapply(Pagamentos$Valor, Pagamentos$Regiao, mean)
barplot(valores_por_regiao, main = "Valores médios por Região", xlab = "Região", ylab = "Valor Médio")

#Utlizei a conversão de tipos da coluna Valores para numerico.
Pagamentos_filtrados <- Pagamentos %>%
  filter(is.finite(Valor))
Pagamentos$Valor <- as.numeric(Pagamentos$Valor)

#Calculei a média de valor por região novamente.
valores_por_regiao <- Pagamentos_filtrados %>%
  filter(!is.na(Valor)) %>%
  group_by(Regiao) %>%
  summarize(Media_Valor = mean(Valor))
#Por último novamente usei o "tapply" para finalizar e calcular. 
valores_por_regiao <- tapply(Pagamentos$Valor, Pagamentos$Regiao, mean)
barplot(valores_por_regiao, main = "Valores médios por Região", xlab = "Região", ylab = "Valor Médio")


