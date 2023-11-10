bcdata<-read.csv("C:\\Users\\claud\\OneDrive\\Documentos\\Dataset_Ciências_Dados\\bcdata.sgs.1373.csv",sep=";",header=TRUE)

bcdata

edit(bcdata)

summary(bcdata)

plot(bcdata$valor)

plot(bcdata$valor,xlab="indice",ylab="VALOR")

lines(bcdata$valor)


summary(bcdata$valor)

