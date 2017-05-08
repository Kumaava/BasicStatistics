New_data =  flattened_path1
new_data <- New_data[,-1]
new_data <- new_data[1:1000,1:13]
attach(new_data)

#descriptive statistics
summary(new_data)
cor(new_data)

#Principal component Anaysis 
PC = princomp(new_data, scores = TRUE)
summary(PC)
PC$loadings

#Loading of principal analysis
loadings(PC)
# or 
PC$loadings
#----------------------

#Scree PLot of eigen Values 
plot(PC)
screeplot(PC, type = "line", main = "Scree Plot")

#biplot of score variables 
biplot(PC)

varimax(PC$loadings)

#FA

F1 <- factanal(new_data, factors = 3)
F1
F2 <- factanal(new_data, factors = 3, rotation = "varimax")
F2


load <- with(PC, unclass(loadings))
aload <- abs(load) 
sweep(aload, 2, colSums(aload), "/")