data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg)
arrange(filtered_tg,len)


#menggunakan nasted function() atau fungsi tersarang
#fungsi yang sepenuhnya terkandung dalam fungsi lain
arrange(filter(ToothGrowth,dose==0.5),len)

#dengan menggunakan fungsi tersaarang, bisa membaca dari dalam keluar. kode memfilter data terlebih dahulu. baru dia mengatur atau mengurutkannya

#menggunakan pipe %>%
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>% 
  arrange(len)

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>% 
  group_by(supp) %>%
  summarize(mean_len = mean(len,na.rm = T),.group="drop")


# untuk menggunakan fungsi pipe harus ditutup dengan operator dari pipe untuk melanjutkan jalur nya kecuali bagian akhir
