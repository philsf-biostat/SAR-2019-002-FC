source('scripts/input.R', encoding = 'UTF-8')

library(tableone)

tab1 <- CreateTableOne(data = dados[, .(
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
  `Tempo de evolução`,
  `Escore DLQI - Máx 30`,
  `Escore VitiQoL - Máx 90`)])
