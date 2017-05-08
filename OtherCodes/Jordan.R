## The dataset `data_jordan` is already loaded

# View Michael Jordan's first season data 
data_jordan

# Make a scatterplot of his points per game
plot(data_jordan$points, main = "Michael Jordan's first season")

# Calculate mean_jordan
mean_jordan = mean(data_jordan$points)
print(mean_jordan)
# Add horizontal line with abline()
abline( h = mean_jordan)