#データのインポートと確認・変更
dfPassenger <- read.csv("airpass.csv") #読み込み
dfPassenger #データの中身を全て表示　[ファイル名]
head(dfPassenger) #上５行
tail(dfPassenger) #下５行

#扱いづらいので、１行目を消してからデータフレームから行列に変換
dfPassenger <- dfPassenger[,-1]
Passenger <- as.matrix(PassengerTS)

#転置しましょう
tPassenger <- t(Passenger)

#平均を計算しましょう
mean(Passenger[1,])

#中央値を調べましょう
median(Passenger[1,])

#分散を計算しましょう
var(Passenger[1,])

#標準偏差を計算しましょう
sd(Passenger[1,])

#すべての年について算出してみよう(for文の練習)
for(i in 1:length(Passenger)){
  n1 <- mean(Passenger[i,])
  n2 <- median(Passenger[i,])
  n3 <- var(Passenger[i,])
  n4 <- sd(Passenger[i,])
  print(c(n1,n2,n3,n4))
}


#プロットしましょう
plot(Passenger[1,])
plot(Passenger[1,],type='l')
plot(AirPassengers)



plot(Nile)
Ahist <- hist(DataA, breaks=seq(450,1500,75))

plotA <- layout(matrix(c(1,2),1,2,byrow=TRUE), c(3,1), TRUE)
par(mar=c(4,4,3,1)) 
plot(DataA)
abline(h=mean(DataA),col="red")
abline(h=median(DataA),col="blue")
par(mar=c(4,0,3,1)) 
barplot(Ahist$counts,horiz = T)


par(new="T")
Ahist
?hist

