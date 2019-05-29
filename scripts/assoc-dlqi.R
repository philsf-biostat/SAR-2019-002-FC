source('scripts/input.R', encoding = 'UTF-8')

library(ggplot2)
library(tableone)

print(CreateTableOne(strata = "Fototipo", vars = "Escore DLQI - Máx 30", data = dados[, .(
  Fototipo,
  `Escore DLQI - Máx 30`
)]), nonnormal = TRUE)

dlqi.ft.kw <- kruskal.test(dados$`Escore DLQI - Máx 30`, dados$Fototipo)
# pairwise.wilcox.test(dados$`Escore DLQI - Máx 30`, dados$Fototipo, p.adjust.method = "bonf")

ggplot(dados, aes(Fototipo, `Escore DLQI - Máx 30`)) +
  geom_boxplot() +
  geom_jitter(alpha = .4, width = .05, height = .05)

