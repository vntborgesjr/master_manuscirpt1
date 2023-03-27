require(tseries)
# Riacho permanente -----------------------------------

abundR1 <- densidades2[densidades2$lines == "R1", c("abundance")]
abundR1_ts <- ts(data = abundR1, start = c(1, 1), end = c(3, 12), frequency = 12)
class(abundR1_ts)
start(abundR1_ts)
end(abundR1_ts)
frequency(abundR1_ts)
summary(abundR1_ts)
plot(abundR1_ts, xlab = "Years", ylab = "Count of tadpoles")
abline(lm(abundR1_ts ~ time(abundR1_ts)))
summary(lm(abundR1_ts ~ time(abundR1_ts)))
cycle(abundR1_ts)
plot(aggregate(abundR1_ts, FUN = mean))
boxplot(abundR1_ts ~ cycle(abundR1_ts))

adf.test(diff(log(abundR1_ts)), alternative="stationary", k=0)
acf(diff(log(abundR1_ts)))
pacf(diff(log(abundR1_ts)))


(fit <- arima(log(abundR1_ts), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12)))

pred <- predict(fit, n.ahead = 10*12)

ts.plot(abundR1_ts,2.718^pred$pred, log = "y", lty = c(1,3))

# Riacho temporário -----------------------------------

abundR2 <- densidades2[densidades2$lines == "R2", c("abundance")]
abundR2_ts <- ts(data = abundR2, start = c(1, 1), end = c(3, 12), frequency = 12)
class(abundR2_ts)
start(abundR2_ts)
end(abundR2_ts)
frequency(abundR2_ts)
summary(abundR2_ts)
plot(abundR2_ts, xlab = "Years", ylab = "Count of tadpoles")
abline(lm(abundR2_ts ~ time(abundR2_ts)))
cycle(abundR2_ts)
plot(aggregate(abundR2_ts, FUN = mean))
boxplot(abundR2_ts ~ cycle(abundR2_ts))

adf.test(diff(log(abundR2_ts + 0.1)), alternative="stationary", k=0)
acf(diff(log(abundR2_ts + 0.1)))
pacf(diff(log(abundR2_ts + 0.1)))


(fit2 <- arima(log(abundR2_ts + 0.1), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12)))

pred2 <- predict(fit, n.ahead = 10*12)

ts.plot(abundR2_ts,2.718^pred2$pred, log = "y", lty = c(1,3))
# seleção de modelos --------------------------------

require(MuMIn)
