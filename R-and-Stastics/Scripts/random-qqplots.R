# Stack the two plots on top of one another
par(mfrow=c(2, 1))

# Send output to random-plots.png
png("random-qqplots.png")

# Generate random values from T and Normal distributions
t.values <- rt(n=1000, df=3)
normal.values <- rnorm(n=1000)

# Generate a plot
par(mfrow=c(2, 1))
qqplot(t.values, normal.values)
qqline(t.values)



# Generate new T-samples
t.values <- rt(n=1000, df=30)

# Try the plot again
qqplot(t.values, normal.values)
qqline(t.values)
