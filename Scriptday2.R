library('tidyverse')
head(cd)
names(cd)
cd$`Code sexe`
summary(cd$`Libellé de fonction`)
glimpse(cd$`Libellé de fonction`)
sort(table(cd$`Prénom de l'élu`), increasing = TRUE)
sort(table(cd$`Code sexe`), increasing = TRUE)
table(cd$`Libellé de fonction`)
sum(table(cd$`Libellé de fonction`))/4026
is.na(cd$`Libellé de fonction`)
table(is.na(cd$`Libellé de fonction`))
