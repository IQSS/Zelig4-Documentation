family <- quasipoisson()

linkfun <- family$linkfun
linkinv <- family$linkinv

x <- seq(1, 10, length.out = 100)
y <- linkinv( .3 * x - 4 + rnorm(length(x), sd=.5))

fit <- lm(linkfun(y) ~ x)
gfit <- glm(y ~ x, quasipoisson())


coef(fit)
coef(gfit)


plot(y ~ x)
lines(x, linkinv(predict(fit)), col="blue", lwd=4)
lines(x, linkinv(predict(gfit)), col="red", lwd=4)

legend(
       "topleft", 
       c("Fitted by lm", "Fitted by glm"),
       fill = c("blue", "red"),
       bg = "gray"
       )


