plot(x,y,type='l', main=paste("simulation for AAPL","with mean = ", round(mu,6), "and stand dev=", round(sigma,4)),xlab="days",ylab="price")
for(i in 1:100){
  lines(x,y)
}
