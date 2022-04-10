# 6a. Fungsi Probabilitas dari Distribusi Normal P(X1 <= x <= X2),
#     hitung Z-Score Nya dan plot data generate randomnya dalam bentuk
#     grafik. Petunjuk(gunakan fungsi plot()).
mean = 50
sd = 8
n = 100
z = rnorm(n, mean, sd)
plot(z)

# 6b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan
#     format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
hist(z, breaks = 50, main="5025201236_Made Rianja Richo Dainino_Probstat_A_DNhistogram")

# 6c. Nilai Varian dari hasil generate random nilai Distribusi Normal.
sd = 8
varian = sd * sd
varian