library(ggplot2)
install.packages("ggplot2")


help("plot")

#Gerando um gráfico de dispersão (scatter Plot).
n <- 100
x <- 1:n
y <- 5 + 2 * x + rnorm(n, sd = 30)
plot(x, y)

#Gerando um gráfico (Line Plot)
n <- 100
x <- 1:n
y <- 5 + 2 * x + rnorm(n, sd = 30)
plot(x, y, type = "l")

#Gerando um gráfico de ponto e linha.
n <- 100
x <- 1:n
y <- 5 + 2 * x + rnorm(n, sd = 30)
plot(x, y )
plot(x, y, type = "b")

help("hist")

#Gerando o historiograma
hist(rnorm(100), breaks = 6)
