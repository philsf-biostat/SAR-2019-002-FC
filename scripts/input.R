library(readxl)
library(data.table, quietly = TRUE)
dados <- read_excel("dataset/Assoc fototipos e QV vit 04-11-19 sem info pessoais pacientes.xlsx")
dados <- data.table(dados)


# restrição da tabela -----------------------------------------------------

dados <- dados[, .(
  Idade,
  Sexo,
  `Estado civil`,
  Escolaridade,
  Trabalho,
  Evolução,
  `Tempo de evolução`,
  Tratamento,
  Fototipo,
  `Casos na família`,
  ASC,
  Classificação,
  `Escore DLQI - Máx 30`,
  `Escore VitiQoL - Máx 90`
  )]

# gerenciamento dos dados -------------------------------------------------

dados$Sexo <- factor(dados$Sexo, labels = c("M", "F"))
dados$`Estado civil` <- factor(dados$`Estado civil`, labels = c("Solteiro", "Casado", "Divorciado", "Viúvo"))
dados$Escolaridade <- factor(dados$Escolaridade, levels = 1:7, labels = c("Analfabeto", "1g incompleto", "1g completo", "2g incompleto", "2g completo", "3g incompleto", "3g completo"))
dados$Fototipo <- factor(dados$Fototipo, levels = 1:6)
dados$Trabalho <- factor(dados$Trabalho, labels = c("Inativo", "Ativo"))
dados$Evolução <- factor(dados$Evolução, labels = c("<6 meses", ">6 meses"))
dados$Classificação <- factor(dados$Classificação, labels = c("Não segmentar", "Segmentar", "Universal", "Focal", "Acrofacial"))

dados[`Casos na família` != 1]$`Casos na família` <- "2"
dados$`Casos na família` <- factor(dados$`Casos na família`, labels = c("N", "S"))

dados[Tratamento == "1,2"]$Tratamento <- "3"
dados$Tratamento <- factor(dados$Tratamento, labels = c("UVB-NB", "Tópico", "UVB-NB + Tópico", "Nenhum"))
dados$Tratamento <- relevel(dados$Tratamento, "Nenhum")

dados$TempoDoenca <- cut(dados$`Tempo de evolução`, breaks = c(0, 10, 20, Inf), right = FALSE, labels = c("< 10 anos", "10 a 20 anos", ">= 20 anos"), ordered_result = TRUE)

dados$DLQI <- cut(
  dados$`Escore DLQI - Máx 30`, right = TRUE,
  breaks = c(-1, 1, 5, 11, 20, 30),
  labels = c("Sem Efeito", "Leve", "Moderado", "Grave", "Extrem. Grave"),
  ordered_result = TRUE
  )

# protótipos obsoletos ----------------------------------------------------

# mult <- 4
# dados$VitiQoL <- cut(dados$`Escore VitiQoL - Máx 90`, breaks = c(-1, 5, 10, 31)*mult, right = FALSE, labels = c("Leve", "Moderado", "Grave"), ordered_result = TRUE)
