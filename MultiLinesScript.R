stockdata = read.csv("AAPL.csv", header=TRUE)
stockdata = stockdata[complete.cases(stockdata),]
v=stockdata$Close
d=-diff(v)/v[-1]
mu=mean(d)
sigma=sd(d)
x = 1:1000
y = c()
y[1] = 199.83
maxy = 0
miny = 0
for (i in 2:1000){
  y[i] = y[i-1]*(1+rnorm(1,mu,sigma))
}
plot(x,y,type="l", main=paste("Simulation for ANUS", "with mean =", round(mu,6), "and stand dev =", round(sigma,4) ),xlab="Days", ylab="Price")
for(i in 1:100){
  for(i in 2:1000){
    y[i] = y[i-1]*(1+rnorm(1,mu,sigma))
  }
  lines(x,y,type='l')
  if(max(y) > maxy){
    maxy = max(y)
  }
  if(min(y) < miny){
    miny = min(y)
  }
}

