library("tidyverse")
cd <- read_delim("./data/3-rne-cd.txt", delim = "\t", skip = 1, 
                 locale = locale(encoding = "Latin1"))
names(cd)
