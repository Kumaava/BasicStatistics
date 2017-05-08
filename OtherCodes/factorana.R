# Pricipal Components Analysis
# entering raw data and extracting PCs 
# from the correlation matrix 
New_data =  flattened_path1
new_data <- New_data[,-1]
new_data <- new_data[1:1000,1:13]
fit <- princomp(new_data, cor = FALSE, scores = TRUE)
head(fit$scores)
summary(fit) # print variance accounted for 
loadings(fit) # pc loadings 
plot(fit,type="lines") # scree plot 
fit$scores # the principal components
biplot(fit)
myData <- read.clipboard.tab()
pairs.panels(new_data)
#T,SE,CI,P,R
corrMat = corr.test(new_data)
u = corrMat$ci
?corrMat()
plot(u)
corPlot(r)
#Test for the number of factors in your data using parallel analysis
fa.parallel(new_data)#error not recognised 
vss(new_data)
￼fa(myData)
iclust(new_data)
omega(new_data)


q = describe(new_data)
write.csv(q, file = "desc.csv")
r = lowerCor(new_data)
corPlot(r)

# Varimax Rotated Principal Components
# retaining 5 components 

library(psych)
fit <- principal(New_data, nfactors=5, rotate="varimax")
fit # print results

#Exploratory Factor Analysis
