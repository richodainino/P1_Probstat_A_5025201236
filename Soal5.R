# 5a. Fungsi Probabilitas dari Distribusi Exponensial
set.seed(1)
rexp(3)

# 5b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000
#     bilangan random
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

# 5c. Nilai Rataan dan Varian dari Distribusi Exponensial untuk
#     n = 100 dan lamda = 3
lamda <- 3
rataan <- 1 / lamda
rataan
varian <- 1 / (lamda * lamda)
varian