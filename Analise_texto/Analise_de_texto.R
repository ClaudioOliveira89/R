#Análise de Texto.

#Importando arquivo PDF de texto.
file_location <- ("C:\\Users\\claud\\OneDrive\\Documentos\\Dataset_Ciências_Dados\\Roque-Moraes_Analise de conteudo-1999.pdf")

#Instalando pacotes ausentes.
install.packages("tm")
install.packages("wordcloud")
install.packages("pdftools")

#Acionando as bibliotecas.
library(stringr)
library(dplyr)
library(NLP)
library(wordcloud)
library(ggplot2)
library(pdftools)
library(tm)

#Utilizando o "file_location" para amazernar o caminho e depois estraindo o texto com pacote "pdftools"
txt <- pdf_text(file_location)
#Criando um "corpus" apatir do texto e usando o combined para extraír em uma única sequência.
txt <- pdf_text(file_location)
text_combined <- paste(txt, collapse = "C:\\Users\\claud\\OneDrive\\Documentos\\Dataset_Ciências_Dados\\Roque-Moraes_Analise de conteudo-1999.pdf")
txt_corpus <- Corpus(VectorSource(text_combined))
(txt_corpus)
#Fazendo o pré-processamento do texto usando "tm_map" para aplicar tranformação, "Tolower" para converter em minúsculas,"stripWhitespace remove o espaço em branco e "removeWords" para remover palavras paradas no Stopwords("pt_br")  
txt_corpus <- tm_map(txt_corpus, tolower)
txt_corpus <- tm_map(txt_corpus, stripWhitespace)
head(stopwords("pt"))
txt_corpus <- tm_map(txt_corpus, removeWords, stopwords("pt-br"))
#Utilizando matrizes da documentação do (DTM)
dtm <- DocumentTermMatrix(txt_corpus)
dtm <- as.matrix(dtm)
dtm <- t(dtm)
(dtm)

#Utilizando um contador de frêquencia de palavras.
number_occurances = rowSums(dtm)
number_occurances <- sort(number_occurances, decreasing = TRUE)

#Criando gerando nuvens com X frequências de palavras.
help("wordcloud")
library(wordcloud)
wordcloud(head(names(number_occurances),30), head(number_occurances, 30))
wordcloud(head(names(number_occurances),30), head(number_occurances, 30), scale = c(2,1))
