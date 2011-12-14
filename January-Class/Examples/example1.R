
predictor <- runif(250, min=1, max=20)
response  <- 2.75 * predictor + 5 + rnorm(length(predictor), sd=2.5)

fit <- lm(response ~ predictor)

par(mfrow=c(2, 1))

png("Linear_Data.png")
plot(response ~ predictor,
     xlab = "Predictor Variable",
     ylab = "Reponse Variable"
     )

png("Linear_Regression.png")
plot(response ~ predictor,
     xlab = "Predictor Variable",
     ylab = "Reponse Variable"
     )
abline(coef(fit), col = "red", lwd = "4")

SimpleData <- data.frame(Response = response, Predictor = predictor)

save(SimpleData, file = "SimpleData.Rdata")
