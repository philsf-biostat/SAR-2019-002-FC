source('scripts/input.R', encoding = 'UTF-8')

library(ggplot2, quietly = TRUE)

# print(CreateTableOne(strata = "Fototipo", vars = "Escore VitiQoL - Máx 90", data = dados[, .(
#   Fototipo,
#   `Escore VitiQoL - Máx 90`
# )]), nonnormal = TRUE)

## Fatores
# c("Sexo",
# "Idade",
# "Fototipo",
# "ASC",
# "Tratamento",
# "TempoDoenca")

vitiqol.kw.sexo <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Sexo)
vitiqol.kw.fototipo <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Fototipo)
vitiqol.kw.tratamento <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Tratamento)
vitiqol.kw.tempodoenca <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$TempoDoenca)
vitiqol.kw.escolaridade <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Escolaridade)
vitiqol.kw.marital <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$`Estado civil`)
vitiqol.kw.laboral <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Trabalho)

vitiqol.cor.idade <- cor.test(dados$`Escore VitiQoL - Máx 90`, dados$Idade, method = "sp")
vitiqol.cor.asc <- cor.test(dados$`Escore VitiQoL - Máx 90`, dados$ASC, method = "sp")

# associação com Sexo e Trabalho
tab.vtq.sexo <- print(CreateTableOne(vars = "Escore VitiQoL - Máx 90", strata = "Sexo", dados), nonnormal = TRUE, printToggle = FALSE)
tab.vtq.trab <- print(CreateTableOne(vars = "Escore VitiQoL - Máx 90", strata = "Trabalho", dados), nonnormal = TRUE, printToggle = FALSE)

ggplot(dados, aes(Fototipo, `Escore VitiQoL - Máx 90`)) +
  ylab("Escore VitiQoL") +
  geom_boxplot() +
  geom_jitter(alpha = .4, width = .05, height = .05)
