source('scripts/input.R', encoding = 'UTF-8')

library(tableone)

tab1.base <- CreateTableOne(data = dados[, .(
  Sexo,
  Idade,
  Escolaridade,
  `Estado civil`,
  Trabalho,
  Evolução,
  Tratamento,
  ASC,
  Fototipo,
  `Casos na família`,
  Classificação,
  `Tempo de evolução`
  )])

tab1.escores <- CreateTableOne(data = dados[, .(
  `Escore DLQI - Máx 30`,
  DLQI,
  `Escore VitiQoL - Máx 90`)])

tab1.base.df <- print(tab1.base, showAllLevels = TRUE, printToggle = FALSE)
tab1.escores.df <- print(tab1.escores, showAllLevels = TRUE, nonnormal = TRUE, printToggle = FALSE)

tab1 <- rbind(tab1.base.df, tab1.escores.df)
tab1 <- tab1[-39, ] # remover segunda ocorrência de "n = 131"
