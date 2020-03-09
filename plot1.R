  dat_em<-readRDS("summarySCC_PM25.rds")
  scc<-readRDS("Source_Classification_Code.rds")
  agg<-aggregate(dat_em$Emissions,by=list(year=dat_em$year),FUN=sum)
  png(filename="plot1.png")
  plot(agg$year,agg$x,type="l",main="Total Emissions of PM2.5",ylab="Total emissions (tons)",xlab="Year")
  dev.off()
  