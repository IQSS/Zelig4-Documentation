
x <- -1000:1000 / 150
y <- pnorm(x)

png("Distributions-cumulativenormalplot.png")

plot(x, y, main = "Cumulative Normal (Mean = 0, Variance = 1)", xlab = "X", ylab = "Pr(a <= X)", type="l")
