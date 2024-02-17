#enam fundamental dalam pemrograman R
# functions, comments, variables, data types, vectors, pipes

#jenis tipe data
#logical(logis), date(tanggal), date time(waktu tanggal)


#vektor c atau disebut dengan fungsi combine
#sekelompok elemen data yang memiliki janis data yang sama yang disimpan dalam suatu urutan di R 

#Sebagai contoh, Anda dapat menggunakan fungsi c() untuk menyimpan data numerik dalam sebuah vektor. 

c(2.5, 48.5, 101.5)

#Untuk membuat vektor bilangan bulat menggunakan fungsi c(), Anda harus menempatkan huruf "L" langsung setelah setiap angka.

c(1L, 5L, 15L)

#Anda juga dapat membuat vektor yang berisi data jenis karakter atau logika.

c("Sara", "Lisa", "Anna")

c(TRUE, FALSE, TRUE)

typeof(c("a" , "b"))
#> [1] "character"

typeof(c(1L , 3L))
#> [1] "integer"


#pipe %>%
#alat dalam R untuk mengekspresikan urutan beberapa operasi 
#pipe diwakili oleh tanda %, diikuti oleh tanda > ,dan tanda % lagi
#ini digunakan untuk menerapkan output dari satu fungsi ke fungsi lainnya
#pipe bisa memfilter dan mengurutkan data





#tanggal dan waktu di R menggunakan paket lubridate. 




#operator Penugasan
#operator aritmatika

mobil <- 200
sepeda <- 155
bulan <- 4
#Jumlah <- mobil + sepeda

#Total <- mobil * bulan

buku = 10
pensil = 13
penghapus = 7

Jumlah = buku + pensil + penghapus

#simbol ini bisa dikatakan <- menetapkan suatu objek atau variabel

#8 paket yang terdapat di tidyverse
#ggplot2, tibble, tidyr, readr, purr, dplyr, stringr, forcats

#ggplot2 membuat bebagai visualisasi data yaitu dengan 
#menerapkan properti visual yang berbeda untuk variabel -variabel data

#tidyr adalah paket yang digunakan untuk pembersihan data agar menjadi rapi 
#tidyr bekerja dengan wide data dan long data untuk memastikannya terjadi

#readr yang digunakan untuk mengimpor data 
read_csv()
read.csv("flavors_of_cacao.csv")

chocolate_df <-read_csv("flavors_of_cacao.csv")
flavors_df <-read_csv("flavors_of_cacao.csv")

col(flavors_df)
colnames(flavors_df)
arrange(flavors_df)


#dplyr menawarkan serangkaian fungsi konsisten yang membantu untuk meyelesaian beberapa tugas manipulasi data umum


#pipe adalah alat di R yang membantu membuat kode lebih efisien serta lebih mudah dibaca dan dipahami  
#pipe mengammbil output dari satu pernyataan dan menjadikannya sebagai input untuk pernyataan berikutnya

#nasted menggambarkan kode yang menjalankan suatu fungsi tertentu dan itu terkandung dalam kode yang menjalankan tugas yang lebih luas


