#Estrutura condicional
#!= é o mesmo que "diferente de"
#%% é o mesmo que MOD resto da divisão.

numero <- 10
if(class(numero) != "numeric"){
  print("não é númerico")
  }else{
  if(numero %% 6 == 0){}
  }

numero <-5
if(class(numero) != "numeric"){
  print("O número é par")
}else{
    print("O número é impar")
    } 

numero <- 15
if(class(numero) != "numeric"){
  print("O numero é impar")
}else{
  print("O número é par")
}

numero <- 7
if(class(numero) != "numeric"){
  print("Não é númerico")
}else{
  print("O número é impar")
}

numero <- "8"
if(class(numero) != "numeric"){
  print("Não é do tipo númerico")
}else{
  print("O númerico é impar")
}

