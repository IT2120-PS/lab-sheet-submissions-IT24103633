setwd("C:/Users/user/Desktop/IT24103633")

# 1. Train arrival (Uniform distribution)
# P(10 ≤ X ≤ 25)
punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)


# 2. Software update time (Exponential distribution)
# P(X ≤ 2)
pexp(2, rate=1/3, lower.tail=TRUE)


# 3. IQ scores (Normal distribution)

# (i) P(X > 130)
pnorm(130, mean=100, sd=15, lower.tail=FALSE)

# (ii) 95th percentile IQ score
qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)