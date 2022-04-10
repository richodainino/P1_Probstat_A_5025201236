# 1a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara
#     vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi
#     menghadiri acara vaksinasi?
p = 0.2
n = 3
dgeom(n, p)

# 1b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana
#     distribusi geometrik acak tersebut X = 3
p = 0.2
n = 10000
mean(rgeom(n, p) == 3)

# 1c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
# Poin A akan menghasilkan nilai yang tetap dikarenakan menggunakan distribusi
# geometrik, sementara poin B menghasilkan nilai yang tidak tetap dikarenakan
# menggunakan distribusi geometrik acak

# 1d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum
#     Sukses Pertama
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

# 1e. Nilai Rataan dan Varian dari Distribusi Geometrik.
p = 0.2
n = 3
rataan = n / p
rataan
varian = (n - p) / ("^" (p, 2))
varian