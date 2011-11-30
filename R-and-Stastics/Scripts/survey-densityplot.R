library(MASS)
data(survey)

# This line specifies that all output should be saved as "
png("survey-densityplot.png")

# Label the axes
main.label <- "Student Heights"
y.label <- "Density of Student Heights"

# Save student height as a seperate variable
student.heights <- survey$Height

# Display density information
density(student.heights, na.rm=TRUE)

# Draw the plot
plot(density(student.heights, na.rm=TRUE), main = main.label, ylab = y.label)
