#uso de "is" e "as" para conversão de tipos de variáveis.
idade <- "5"
class(idade) #usando "class" para identificar o tipo da variável.

#Usando "is" checa se a condição da variável é verdadeira ou falsa de acordo com seu tipo.
is.double(idade)
is.numeric(idade)
is.character(idade)

#Usando "as" converte a variável fazendo a conversão dela para outro tipo.
var <- idade + 5 
as.integer(idade)

#Exemplo de convensão com "as" de uma variável do timpo character para tipo numeric 
var <- as.integer(idade) + 5

