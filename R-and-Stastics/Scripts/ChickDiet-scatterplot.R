# Load the data
data(ChickWeight)

# When we create the image file, create it as a 2-by-2 grid
# This allows us to show all the results simultaneously.
par(mfrow=c(2, 2))

# Divide the data set according to 
plot(weight ~ Time, subset(ChickWeight, Diet == 1))
plot(weight ~ Time, subset(ChickWeight, Diet == 2))
plot(weight ~ Time, subset(ChickWeight, Diet == 3))
plot(weight ~ Time, subset(ChickWeight, Diet == 4))
