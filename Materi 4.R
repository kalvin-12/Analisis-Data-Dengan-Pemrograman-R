#paket yang digunakan untuk visualisasi
#ggplot2, PLotly, Lattice, RGL, Dygraps, Leaflet, Highcharter, Patchwork, gganimate, dan ggridges
#

#materi estetika
ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species))

#materi geom_point
#geom_point(tititk), geom_bar(batang), geom_line(garis)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut,fill=cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut,fill=clarity))

ggplot(data = penguins) + 
  geom_line(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species))


#materi facet
#facet_wrap dan facet_grid 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species)) +
  facet_wrap(~species)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut,fill=clarity))+
  facet_wrap(~cut)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut,fill=clarity))+
  facet_grid(~cut)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species)) +
  facet_grid(sex~species)


#materi label dan anotasi
#anotasi adalah menambahkan catata atau dokumen atau diagram untuk menjelaskan atau mengomentari

ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species)) +
  labs(title = "Palmer Penguins : Body Mass vs Flipper Length", subtitle = "Sample of Three Penguins Species", 
       caption = "Data collected by Dr. Kristen Gorman") + 
  annotate("text", x=220,y=3500,label="The Gentoos are the  largest",color="blue",
           fontface="bold",size=4.5,angle=4)

v <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g,color=species,shape=species)) +
  labs(title = "Palmer Penguins : Body Mass vs Flipper Length", subtitle = "Sample of Three Penguins Species", 
       caption = "Data collected by Dr. Kristen Gorman")

v+annotate("text", x=220,y=3500,label="The Gentoos are the  largest",color="blue")


#menyimpan visualisasi plot
#bisa menggunakan export atau fungsi ggsave()

ggsave("Three Penguins Species.png") 



best_trimmed_flavors_df <- trimmed_flavors_df 


ggplot(data = best_trimmed_flavors_df)+
  geom_bar(mapping = aes(x=Rating))






ggplot(data = penguins) + 
  geom_point(mapping = aes(x=year, y = year,color=species,shape=species)) +
  labs(title = "Palmer Penguins : Body Mass vs Flipper Length")



ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut,fill=cut))+
  facet_wrap(~cut)

ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = Company.Location))


