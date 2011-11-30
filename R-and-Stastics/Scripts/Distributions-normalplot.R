
x <- -1000:1000 / 150
y <- dnorm(x)

png("Distributions-normalplot.png")

plot(x, y, main = "Normal (Mean = 0, Variance = 1)", xlab = "X", ylab = "Density", type="l")
