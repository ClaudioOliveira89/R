#Criando funçõe.

2+4

#Criando a função soma com v1 e v2
soma <- function(v1, v2){
  resul <- v1 + v2
  return(resul)
}
soma(2,8)

#Usando a Function soma com if em estrutura de controle
soma <- function(v1, v2, op){
  if(op=="+"){
    resul <- v1 +v2
  }
  if(op=="-"){
    resul <- v1 - v2
}
return(resul)
}
soma(4,3,"+")

soma(4,3,"-")



maior <- function(lista){
  maior<-0
  print(paste("valor maior: " , maior))
  for(val in lista){
    print(paste("valor da variavel val: ", val))
    if(maior<val){
      maior <- val
    }
  }
}
numero <- c(1,5,51,3)
maior(numero)

maior <- function(lista){
  maior <- 0
  print(paste("valor maior: " , maior))
  for(val in lista){
    print(paste("valor da variavel val: ", val))
    if(maior<val){
      maior <- val 
    }
  }
  return(maior)
}
maior(numero)
numero <- c(1,5,51,3)
maior(numero)

#utilizando os vetores com a function
maior <- function(lista){
  maior <- 0
  print(paste("valor maior: " , maior))
  for(val in lista){
    print(paste("valor da variavel val: ", val))
    if(maior<val){
      maior <- val 
    }
  }
  return(maior)
}
maior(nomesemana) #nome dos vetores.
maior(nomes)


ordenado <- factor(nomes)
ordenado

#Agrupando os elementos de um vetor e contabilizando a quantidade. 
votacao <- c("candidato1", "candidato2", "candidato1", "candidato2", "candidato2", "candidato1", "candidato1")
resultado <- factor(votacao)
resultado
summary(resultado)
