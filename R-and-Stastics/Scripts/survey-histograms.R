library(MASS)
data(survey)

# This line specifies that all output should be saved as "
png("survey-histograms.png")

# Specifies that we would like to place the two images side-by-side, like this:
#   +---------+
#   |    1    |
#   +---------+
#   |    2    |
#   +---------+
par(mfrow=c(2, 1))

# Label the axes
main.label <- "Student Heights"
y.label <- "Density of Student Heights"

# Save student height as a seperate variable
student.heights <- survey$Height

# Draw the plots
truehist(student.heights, main = main.label, ylab = y.label)
hist(student.heights,     main = main.label, ylab = y.label)
