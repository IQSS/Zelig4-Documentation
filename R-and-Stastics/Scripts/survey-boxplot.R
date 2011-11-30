library(MASS)
data(survey)

# This line specifies that all output should be saved as "
png("survey-boxplot.png")

# Label the axes
main.label <- "Box-Plot of Student Heights"
y.label <- "Density of Student Heights"

# Save student height as a seperate variable
student.heights <- survey$Height

# Draw the box plot
boxplot(student.heights, main = main.label, xlab="Student Heights", ylab = y.label, horizontal=TRUE)
