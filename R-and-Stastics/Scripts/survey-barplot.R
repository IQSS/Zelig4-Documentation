library(MASS)
data(survey)

# This line specifies that all output should be saved as "
png("survey-barplot.png")

# Label the axes
main.label <- "Bar-Plot of Student Smoking Habits"

# Save student height as a seperate variable
student.smokes <- survey$Smoke

# Draw the box plot
plot(student.smokes, main = main.label)
