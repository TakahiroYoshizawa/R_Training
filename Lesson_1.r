Lesson1
#データのインポートと確認・変更
PassengerTS <- read.csv("airpass.csv") #読み込み
PassengerTS #データの中身を全て表示　[ファイル名]
head(Passenger) #上５行
tail(Passenger) #下５行
PassengerTS$Jan #毎年1月のデータを確認　[ファイル名$列名]
PassengerTS[2,] 
PassengerTS[,2] 

colnames(PassengerTS)
rownames(PassengerTS)
rownames(PassengerTS) <- PassengerTS$X 

PassengerTS[,-1]

#転置しましょう
TPassengerTS <- t(PassengerTS)

#平均を計算しましょう
mean(TPassengerTS[1,])
mean(TPassengerTS[,1])

#中央値を調べましょう
median(TPassengerTS[1,])
median(TPassengerTS[,1])

#分散を計算しましょう
var(TPassengerTS[,1])

#標準偏差を計算しましょう
sd(TPassengerTS[1,])

#プロットしましょう
plot(TPassengerTS[1,])
plot(TPassengerTS[,1])
plot(AirPassengers)
