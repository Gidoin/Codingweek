path <- file.choose()
subs <- read.csv(path)
head(subs)
summary(subs)
str(subs) # provides you with useful information on the type of data
table(subs$annee)
table(subs$id) #but you can't see the whole 4050 entries and check whether there are double
sort(table(subs$id), descending = TRUE)
sorted <- sort(table(subs$id), descending = TRUE)
names(subs)
names(subs)[5] <- "amount" 
header <- c("year","status","type", "beneficiary", "amount", "nature", "id")
names(subs) <- header
head(subs)
install.packages("tidyverse")
library("tidyverse")
subs[subs$amount <0,]
subs[(subs$amount <0), c(4,5)]
subs <- read.csv("./data/Subventions_Besancon_2008-2012.csv")
glimpse(subs)
subs[(subs$annee == 2009),]
subs <- read_csv("./data/Subventions_Besancon_2008-2012.csv")
filter(subs, annee == 2009)
filter(subs, annee == 2011, montant > 10000)
subs$montant
subs[,c(3,5)]
select(subs, montant, annee)
select(subs,-id)
mutate(subs, credit = (montant >= 0))
subs2009 <- filter(subs, annee == 2009)
select(subs2009, montant)
montant2009 <- subs %>% filter(annee == 2009) %>%
  select(montant)
table(subs$type)
subs %>% group_by(annee, type) %>%
  summarise(sub = n(), Total = sum(montant))
