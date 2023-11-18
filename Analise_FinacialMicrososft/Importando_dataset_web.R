#Importando dataset direto da web Nesse exemplo informações financeiras da microsoft utilizando fontes de dados do Yahoo.
#Instalando o pacote "quantmod" para inciar a importação.http://127.0.0.1:8719/graphics/plot_zoom_png?width=1330&height=861

install.packages("quantmod")
#chamando a biblioteca.
library(quantmod)

#Carregando os dados financeiros da Microsoft do Yahoo Finança.
getSymbols("MSFT", src="yahoo", from = Sys.Date() - 15, to = Sys.Date()-1)
#tikter da Microsoft
(MSFT)

#gerando gráficos.
plot(MSFT) #Simples de linha.
barplot(MSFT)#Gráfico de barras.

(MSFT)
candleChart(MSFT)#Por último um gráfico de velas que exibe os preços de aberturas, fechamentos, máximo e mínimo das ações em um determinado período.
