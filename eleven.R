install.packages("ggiraphExtra")
library(ggiraphExtra)

library(ggplot2)
library(dplyr)
library(wordcloud)
library(RColorBrewer)
library(stringr)
library(KoNLP)


str(USArrests)

head(USArrests)

library(tibble)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)

str(crime)
install.packages("maps")
library(maps)
states_map <- map_data("state")
str(states_map)

install.packages("mapproj")
library(mapproj)

ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map)
ggChoropleth(data = crime, 
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)


install.packages("stringi")
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)
str(changeCode(korpop1))

library(dplyr)

korpop1 <- rename(korpop1, 
                  pop = ���α�_��,
                  name = ����������_���鵿)

str(changeCode(kormap1))
ggChoropleth(data = korpop1,
             aes(fill = pop,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)
str(changeCode(tbc))

ggChoropleth(data = tbc,
             aes(fill = NewPts,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)
