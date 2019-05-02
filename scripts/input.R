library(readxl)
library(data.table)
dados <- read_excel("dataset/Assoc fototipos e QV vit 04-11-19 sem info pessoais pacientes.xlsx")
dados <- data.table(dados)
