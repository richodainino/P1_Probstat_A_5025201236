# P1_Probstat_A_5025201236
Praktikum Probstat 2022 Modul 1 - Distribusi Probabilitas
Made Rianja Richo Dainino
5025201236
Probstat A

</br>

### 1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
#### 1a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```R
p = 0.2
n = 3
dgeom(n, p)
```
</br>
![](/img/1a.jpg)

#### 1b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```R
p = 0.2
n = 10000
mean(rgeom(n, p) == 3)
```
</br>
![](/img/1b.jpg)

#### 1c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
</br>
Poin A akan menghasilkan nilai yang tetap dikarenakan menggunakan distribusi geometrik, sementara poin B menghasilkan nilai yang tidak tetap dikarenakan menggunakan distribusi geometrik acak

#### 1d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama. 
</br>
```R
install.packages("ggplot2")
install.packages("dplyr")

library(dplyr)
library(ggplot2)

p = 0.2
n = 3
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probabilitas X = 3 gagal sebelum sukses pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses pertama (x)",
       y = "Probabilitas")
```
</br>
![](/img/1d.jpg)

#### 1e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```R
p = 0.2
n = 3
rataan = n / p
rataan
varian = (n - p) / ("^" (p, 2))
varian
```
</br>
![](/img/1e.jpg)

</br>

### 2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
#### 2a. Peluang terdapat 4 pasien yang sembuh.
```R
n = 20
p = 0.2
x = 4
dbinom(x, n, p)
```
</br>
![](/img/2a.jpg)

#### 2b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```R
hist(rbinom(x, n, p), xlab = "X", ylab = "Frekuensi", main = "Histogram bilangan binomial")
```
</br>
![](/img/2b.jpg)

#### 2c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
```R
rataan = n * (p)
rataan
varian = n * (p) * (1 - (p))
varian
```
</br>
![](/img/2c.jpg)

### 3. Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
#### 3a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```R
average = 4.5
x = 6
dpois(x, average)
```
</br>
![](/img/3a.jpg)

#### 3b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```R
set.seed(2)
bayi <- data.frame('data' = rpois(365, 4.5))

bayi %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n=365) di rumah sakit') +
  theme_bw()
```
</br>
![](/img/3b.jpg)

#### 3c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
Poin A berada dalam rentang proporsi yang ada di poin B. Pengaruh perhitungan dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan harinya.

#### 3d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```R
l = average
rataan = l
rataan
varian = l
varian
```
</br>
![](/img/3d.jpg)

### 4. Diketahui nilai x = 2 dan v = 10. Tentukan:
#### 4a. Fungsi Probabilitas dari Distribusi Chi-Square.
```R
x = 2
v = 10
dchisq(x, v)
```
</br>
![](/img/4a.jpg)

#### 4b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```R
hist(rchisq(100, v))
```
</br>
![](/img/4b.jpg)

#### 4c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.
```R
df = 10
rataan = df
rataan
varian = 2 * df
varian
```
</br>
![](/img/4c.jpg)

### 5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
#### 5a. Fungsi Probabilitas dari Distribusi Exponensial
```R
set.seed(1)
rexp(3)
```
</br>
![](/img/5a.jpg)

#### 5b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```R
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))
```
</br>
![](/img/5b-1.jpg)
</br>
![](/img/5b-2.jpg)
</br>
![](/img/5b-3.jpg)
</br>
![](/img/5b-4.jpg)

#### 5c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```R
lamda <- 3
rataan <- 1 / lamda
rataan
varian <- 1 / (lamda * lamda)
varian
```
</br>
![](/img/5c.jpg)

### 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
#### 6a. data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata
Contoh data :
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
```R
mean = 50
sd = 8
n = 100
z = rnorm(n, mean, sd)
plot(z)
```
</br>
![](/img/6a.jpg)

#### 6b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
```R
hist(z, breaks = 50, main="5025201236_Made Rianja Richo Dainino_Probstat_A_DNhistogram")
```
</br>
![](/img/6b.jpg)

#### 6c. Nilai Varian ( ) dari hasil generate random nilai σ² Distribusi Normal.
```R
sd = 8
varian = sd * sd
varian
```
</br>
![](/img/6c.jpg)
