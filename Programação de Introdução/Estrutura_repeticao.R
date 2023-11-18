#Estrutura de repetição.
#"c" concatena.
#"[]" exibe a posição.
#"paste" é um concatenador.
#"for" é o para
professores <- c("Cobbato", "Naito", "Alcides")
length(professores)

professores[1]
professores[2]
professores[3]

print(paste("O nome do professor é: " , professores[1]))

for(pos in 1:length(professores)){
  print(paste("O nome do professor é: " , professores[pos]))
}

for(professores in professores){
    print(paste("O nome do professor é: ", professores)) 
}


posicao <- 1
while(posicao <= length(professores)){
    print(paste("O nome do professor é: ", professores[posicao]))
    posicao <- posicao + 1 #utilizando como increment;.
}