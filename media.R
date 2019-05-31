library(KoNLP)
library(dplyr)
useNIADic()
media <- read.csv("�ѱ�����������_2018��_2��_����_�о�_����_���_����.csv")
head(media)
media <- rename(media, freq = �󵵼�)
media <- rename(media, word = Ű����)
library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")

set.seed(1234)
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal)
warnings()
display.brewer.all()
display.brewer.all(type = "qual")

pal2 <- brewer.pal(9,"Pastel1")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal2)
pal3 <- brewer.pal(6, "Spectral")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal3)
pal4 <- brewer.pal(7, "BuPu")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal4)