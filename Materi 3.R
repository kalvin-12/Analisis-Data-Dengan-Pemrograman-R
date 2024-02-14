#Materi tentang dataframe
#fungsi untuk melihat isi dataframe : head, str, colnames

head(diamonds)

str(diamonds)

colnames(diamonds)

glimpse(diamonds)


#fungsi mutete untuk membuat perubahan pada data frame
#mutete termasuk library bagian dari dpylr yang ada tidyverse

mutate(diamonds, carat_2=carat*100)


#Sesi 2
#install paket Here, Skimr, Janitor
#paket ini membuat referensi file jadi lebih mudah
#skimr dan janitor menyederhanakan tugas pembersihan data
#paket skimr menjadikan proses meringkas data sangat mudah dan membuat anda lebih cepat membacanya sekilas.
#paket jenitor memiliki fungsi untuk membersihkan data  
install.packages("here")
install.packages("skimr")
install.packages("janitor")



#berlatih menggunakan dataframe skim_without_charts(), glimps(), head(),select()
#fungsi skim_without_charts memberi ringkasan yang cukup komprehensif tentang suatu dataset

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)


penguins %>%
  select(species) 


penguins %>%
  rename(island_new=island)

rename_with(penguins, toupper)

clean_names(penguins)

#Fungsi skim_without_charts() dan glimpse() 
#menampilkan ringkasan dataframe, termasuk jumlah kolom dan baris.



#megorganisir data
#arrange, group_by, filter

penguins %>% arrange(bill_length_mm)
penguins %>% arrange(-bill_length_mm)
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

group_by()
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))
penguins %>% group_by(species) %>% drop_na() %>% summarize(mean_bm = mean(body_mass_g), max_fl = max(flipper_length_mm))


filter()
penguins %>% filter(species == "Adelie")
penguins %>% filter(species == "Adelie") %>% drop_na()


#mebuat dataframe secara manual
#Jika Anda ingin mengikuti video tersebut di konsol RStudio Anda sendiri, Anda dapat menyalin dan menempelkan kode berikut untuk memasukkan data dan membuat sebuah dataframe:
  

#mengubah data di R menggunakan fungsi separate, unite, mutate
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)
View(employee)

separate(employee,name,into = c("first_name","last_name"), sep = ' ')
#unite(employee,'name',first_name,last_name, sep = ' ')
#separaye memisahkan kolom klo unite menggabungkan kolom

#mutate bisa menambahkan kolom ke dalam data
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000)


#Kuartar Ascombe(Anscombe') note(belum dicoba)
#Memiliki empat datasetyang emiliki statistik ringkasan hampir identik
install.packages('Tnisc')
library(Tnisc)
data(quartet)
View(quartet)

ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method = lm,se = FALSE) + facet_wrap(-set)


#Paket datasauRus memetakan data Ancombe dalam bentuk yang berbeda-beda 
install.packages('datasauRus') #note (belum dicoba)
library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(-dataset,ncol =3)


#paket SimpDesign
install.packages("SimDesign")
library(SimDesign)

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

bias(actual_temp, predicted_temp)








Ujian
penguins %>% arrange(-bill_length_mm) %>% skim_without_charts(-bill_length_mm)
skim_without_charts(ToothGrowth)


