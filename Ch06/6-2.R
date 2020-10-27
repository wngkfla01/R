#날짜 : 2020/08/05
#이름 : 주하림
#내용 : R MongoDB 연동

install.packages('mongolite')
library(mongolite)
library(dplyr)

conn <- mongolite::mongo(url='mongodb://chhak:1234@192.168.50.82:27017/chhak',
                         db='chhak',
                         collection='movies',
                         verbose=TRUE,
                         options=ssl_options())
df_movies <- conn$find()
View(df_movies)
