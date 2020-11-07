# Get data from Mercatelli and Giorgio 2020 (supp tab 2 and 5)
# source: https://www.frontiersin.org/articles/10.3389/fmicb.2020.01800/full

url_tab2 <- "https://ndownloader.figstatic.com/files/24022169"
fname_tab2 <- "./data/mercatelli_giorgi_2020_supptab2.xlsx"
download.file(url_tab2, fname_tab2, mode = "wb")

url_tab5 <- "https://ndownloader.figstatic.com/files/24022178"
fname_tab5 <- "./data/mercatelli_giorgi_2020_supptab5.xlsx"
download.file(url_tab5, fname_tab5, mode = "wb")

# Preprocess data
library(readxl)
df <- readxl::read_excel(fname_tab2)
fname_tab2_csv <- "./data/mercatelli_giorgi_2020_supptab2.csv"
write.csv(df, fname_tab2_csv, quote = FALSE, row.names = FALSE)

df <- readxl::read_excel(fname_tab5)
fname_tab5_csv <- "./data/mercatelli_giorgi_2020_supptab5.csv"
write.csv(df, fname_tab5_csv, quote = FALSE, row.names = FALSE)

# Get full dataset from Our World in Data
# https://github.com/owid/covid-19-data/tree/master/public/data

url_owid <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"
fname_owid <- "./data/OWID_COVID-19_data.csv"
download.file(url_owid, fname_owid)
