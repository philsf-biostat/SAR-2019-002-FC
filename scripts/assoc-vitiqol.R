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



vitiqol.ft.kw <- kruskal.test(dados$`Escore VitiQoL - Máx 90`, dados$Fototipo)
# pairwise.wilcox.test(dados$`Escore VitiQoL - Máx 90`, dados$Fototipo, p.adjust.method = "bonf")

ggplot(dados, aes(Fototipo, `Escore VitiQoL - Máx 90`)) +
  ylab("Escore VitiQoL") +
  geom_boxplot() +
  geom_jitter(alpha = .4, width = .05, height = .05)
