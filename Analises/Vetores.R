#Vetores e Função

seg <- 5
ter <- 4
qua <- 1
qui <- 6
sex <- 2
diasemana <- c(5,4,1,6,2)
diasemana[2] #trazendo a posição.

is.vector(diasemana)
is.vector(diasemana)

nomesemana <- c("Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado")
diasemana <- c(1,2,3,4,5,6,7)
nomesemana
diasemana
#Utilizando a função "names"
names(diasemana) <- nomesemana
diasemana

nomes <- c("Alexandre", "Manuela")
nomes
#Acrescentando "Giovana" no vetor nomes.
nomes[length(nomes)+1] <- "Giovanna"
nomes

#Acrescentando "fulano"
nomes[length(nomes)+1] <- "Fulano"
nomes

#Removendo a posição 4 do vetor.
nomes <- nomes[-4]
nomes

#Para pecorrer as posições do vetor 
for(nome in nomes){
  print(paste("O nome é: ", nome))
}

nome
nomes





