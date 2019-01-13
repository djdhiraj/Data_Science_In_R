#install.packages("neuralnet")
library(neuralnet)
dim(infert)
View(infert)
nn<-neuralnet(case~age+parity+induced+spontaneous,data=infert,hidden=2,err.fct = "ce",
              linear.output = FALSE)

nn
plot(nn)
nn$net.result
nn$weights
nn$results
nn$result.matrix
nn$covariate
infert$case
nn$net.result[[1]]
nn1<-ifelse(nn$net.result[[1]]>0.5,1,0)
nn1
misClassificationError=mean(infert$case !=nn1)
print(misClassificationError)
OutPutVsPred<-cbind(infert$case,nn1)
OutPutVsPred

nn.bp<-neuralnet(formula=case~age+parity+induced+spontaneous,data=infert,hidden=2,
                 learningrate = 0.01,algorithm = "backprop",err.fct = "ce",
                 linear.output = FALSE)
                 
nn.bp
new_output<-compute(nn,covariate = matrix(c(22,1,0,0,
                                            22,1,1,0,
                                            22,1,1,1),
                                          byrow = TRUE,
                                          ncol = 4))
new_output$net.result
ci<-confidence.interval(nn,alpha=0.5)
ci
par(mfrow=c(2,2))
gwplot(nn,selected.covariate = "age",min=2.5,max=5)
gwplot(nn,selected.covariate = "parity",min = 2.5,max=5)
gwplot(nn,selected.covariate = "induced",min=2.5,max=5)
gwplot(nn,selected.covariate = "spontaneous",min = 2.5,max=5)
