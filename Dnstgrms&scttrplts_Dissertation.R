
library(scales)
df=read.csv('20170317KW KW Con.csv', sep=',') #read datafile
df2=read.csv('20170317KW KW Con_Gated.csv', sep=',') #read datafile
dft=log(df+1) #transform data
df2t=log(df2+1) #transform data

#Draw scatterplot CD3/CD19
plot (df2t$Y89Di~df2t$Nd142Di, main='CD3/CD19 dual staining', xlab="CD19",ylab = "CD3", col=rgb(0,0,0.9 ,alpha=0.1))
abline(v=4)
abline(v=6)
abline(h=2.5)
abline(h=5)

#density vectors for the specific defined antigens
#untransformed
cd3=density(df$Y89Di)
cd4=density(df$Bi209Di)
cd8=density(df$Er168Di)
cd14=density(df$Eu151Di)
cd19=density(df$Nd142Di)
DNA1=density(df$Ir191Di)
DNA2=density(df$Ir193Di)
el=density(df$Event_length)

#transformed
cd3d=density(dft$Y89Di)
cd4d=density(dft$Bi209Di)
cd8d=density(dft$Er168Di)
cd14d=density(dft$Eu151Di)
cd19d=density(dft$Nd142Di)
DNA1d=density(dft$Ir191Di)
DNA2d=density(dft$Ir193Di)
eld=density(dft$Event_length)

#choice of page configurations for plotting
par(mfrow=c(1,2))
par(mfrow=c(1,1))
par(mfrow=c(2,4))

#Plot the different antigen densitograms:
plot(cd3,main='CD3 - untransformed')
plot (cd3d,main='CD3 - transformed {log2(CD3 + 1)}')
plot(cd3d,main='CD3')
plot(cd4d,main='CD4')
plot(cd8d,main='CD8')
plot(cd14d,main='CD14')
plot(cd19d,main='CD19')
plot(DNA1d,main='DNA1')
plot(DNA2d,main='DNA2')
plot(eld,main='Event_length')
plot(cd3,main='CD3')
plot(cd4,main='CD4')
plot(cd8,main='CD8')
plot(cd14,main='CD14')
plot(cd19,main='CD19')
plot(DNA1,main='DNA1')
plot(DNA2,main='DNA2')
plot(el,main='Event_length')