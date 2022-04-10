# 3a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
average = 4.5
x = 6
dpois(x, average)

# 3b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah
# sakit ini selama setahun (n = 365)
set.seed(2)
bayi <- data.frame('data' = rpois(365, 4.5))

bayi %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n=365) di rumah sakit') +
  theme_bw()

# 3c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
# Poin A berada dalam rentang proporsi yang ada di poin B. Pengaruh perhitungan
# dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan
# peluang bayi akan dilahirkan keesokan harinya.

# 3d. Nilai Rataan dan Varian dari Distribusi Poisson.
l = average
rataan = l
rataan
varian = l
varian