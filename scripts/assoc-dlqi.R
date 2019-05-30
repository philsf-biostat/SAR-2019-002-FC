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

ggplot(dados, aes(Sexo, `Escore DLQI - Máx 30`)) +
  geom_boxplot() +
  geom_jitter(alpha = .4, width = .05, height = .05)

summary(lm(`Escore VitiQoL - Máx 90` ~ `Escore DLQI - Máx 30`, dados))

ggplot(dados, aes(`Escore DLQI - Máx 30`, `Escore VitiQoL - Máx 90`)) +
  geom_point() +
  xlim(c(0, 30)) + xlab("DQLI") +
  ylim(c(0, 90)) + ylab("VitiQoL") +
  geom_vline(xintercept = c(05, 10), lty = 3) +
  geom_hline(yintercept = c(5*mult, 10*mult), lty = 2) +
  geom_smooth(method = "lm")

ggplot(dados, aes(DLQI, `Escore VitiQoL - Máx 90`)) +
  geom_boxplot() +
  geom_jitter(alpha = .4, width = .05, height = .05)

print(CreateTableOne(strata = "DLQI", vars = c(
  "Sexo",
  "Idade",
  "Fototipo",
  "ASC",
  "Tratamento",
  "TempoDoenca"
), data = dados), nonnormal = TRUE, showAllLevels = TRUE, exact = TRUE)
