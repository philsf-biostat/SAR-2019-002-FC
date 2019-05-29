library(readxl)
library(data.table)
dados <- read_excel("dataset/Assoc fototipos e QV vit 04-11-19 sem info pessoais pacientes.xlsx")
dados <- data.table(dados)

# gerenciamento dos dados -------------------------------------------------

dados$Sexo <- factor(dados$Sexo, labels = c("M", "F"))
dados$`Estado civil` <- factor(dados$`Estado civil`, labels = c("Solteiro", "Casado", "Divorciado", "Viúvo"))
dados$Escolaridade <- factor(dados$Escolaridade, levels = 1:7, labels = c("Analfabeto", "1g incompleto", "1g completo", "2g incompleto", "2g completo", "3g incompleto", "3g completo"))
dados$Fototipo <- factor(dados$Fototipo, levels = 1:6)
dados$Trabalho <- factor(dados$Trabalho, labels = c("Inativo", "Ativo"))
dados$Evolução <- factor(dados$Evolução, labels = c("<6 meses", ">6 meses"))
summary(dados$`Tempo de evolução`)
dados$Classificação <- factor(dados$Classificação, labels = c("Não segmentar", "Segmentar", "Universal", "Focal", "Acrofacial"))

dados[`Casos na família` != 1]$`Casos na família` <- "2"
dados$`Casos na família` <- factor(dados$`Casos na família`, labels = c("N", "S"))

dados[Tratamento == "1,2"]$Tratamento <- "3"
dados$Tratamento <- factor(dados$Tratamento, labels = c("UVB-NB", "Tópico", "UVB-NB + Tópico", "Nenhum"))
dados$Tratamento <- relevel(dados$Tratamento, "Nenhum")

dados$DLQI <- cut(dados$`Escore DLQI - Máx 30`, breaks = c(-1, 5, 10, 31), right = FALSE, labels = c("Leve", "Moderado", "Grave"), ordered_result = TRUE)
