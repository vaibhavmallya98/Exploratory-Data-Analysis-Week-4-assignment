dat_em<-readRDS("summarySCC_PM25.rds")
scc<-readRDS("Source_Classification_Code.rds")
ccc<-scc[grepl("Coal",scc$Short.Name),]
dce<-dat_em[dat_em$SCC%in%ccc$SCC,]
yce<-aggregate(dce$Emissions,by=list(dce$year),FUN=sum)
colnames(yce)<-c("year","emissions")
png(filename="plot4.png")
plot(yce$year,yce$emissions,type="o",xlab="year",ylab="Total Emissions (tons)",main="Emissions of PM2.5(1999-2008) realted to Coal")
dev.off()