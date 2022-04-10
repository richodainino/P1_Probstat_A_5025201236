# 2a. Peluang terdapat 4 pasien yang sembuh.
n = 20
p = 0.2
x = 4
dbinom(x, n, p)

# 2b. Gambarkan grafik histogram berdasarkan kasus tersebut.
hist(rbinom(x, n, p), xlab = "X", ylab = "Frekuensi", main = "Histogram bilangan binomial")

# 2c. Nilai Rataan dan Varian dari DistribusiBinomial.
rataan = n * (p)
rataan
varian = n * (p) * (1 - (p))
varian