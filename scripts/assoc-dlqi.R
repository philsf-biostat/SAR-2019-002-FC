source('scripts/input.R', encoding = 'UTF-8')

library(ggplot2, quietly = TRUE)
library(tableone)
library(car)

dlqi.asc.levene <- car::leveneTest(ASC ~ DLQI, data = dados)
dlqi.asc.levene.p <- dlqi.asc.levene$`Pr(>F)`[1]
dlqi.asc.kw <- kruskal.test(dados$ASC, dados$DLQI)
dlqi.asc.pw <- pairwise.wilcox.test(dados$ASC, dados$DLQI, p.adjust.method = "bonf")
# mediana/IQR
tab.dlqi.asc <- print(CreateTableOne(vars = "ASC", strata = "DLQI", dados), nonnormal = TRUE, printToggle = FALSE)

dlqi.cor.vtq <- cor.test(dados$`Escore DLQI - Máx 30`, dados$`Escore VitiQoL - Máx 90`, method = "s")

## Tabela DLQI - workspace aumentado

tab.dlqi <- print(
  CreateTableOne(strata = "DLQI", vars = c(
    "Sexo",
    "Idade",
    "Escolaridade",
    "Estado civil",
    "Trabalho",
    "Fototipo",
    "ASC",
    "Tratamento",
    "TempoDoenca"
    ),
    argsExact = list(workspace = 1e7), # comentar esta linha para testes (computacionalmente cara)
    data = dados),
  nonnormal = TRUE, showAllLevels = TRUE, exact = TRUE, printToggle = FALSE)

# protótipos obsoletos ----------------------------------------------------

# ggplot(dados, aes(`Escore DLQI - Máx 30`, `Escore VitiQoL - Máx 90`)) +
#   xlim(c(0, 30)) + xlab("DQLI") +
#   ylim(c(0, 90)) + ylab("VitiQoL") +
#   geom_vline(xintercept = c(1, 5, 11, 20), lty = 2, lwd = .8, col = c("green", "blue", "yellow", "red")) +
#   # geom_hline(yintercept = c(5*mult, 10*mult), lty = 2) +
#   # geom_smooth(method = "lm") +
#   # geom_jitter(alpha = .4, width = .1, height = 0)
#   geom_point(alpha = .4)
# 
# ggplot(dados, aes(DLQI, `Escore VitiQoL - Máx 90`)) +
#   geom_boxplot() +
#   geom_jitter(alpha = .4, width = .05, height = .05)
# 
# par(mfrow = c(1,2))
# plot(dados$DLQI, main = "A", xlab = "DLQI", ylim = c(0, 100))
# plot(dados$VitiQoL, main = "B", xlab = "VitiQoL", ylim = c(0, 100))
# dev.off()

# print(CreateTableOne(strata = "Fototipo", vars = "Escore DLQI - Máx 30", data = dados[, .(
#   Fototipo,
#   `Escore DLQI - Máx 30`
# )]), nonnormal = TRUE)

# dlqi.ft.kw <- kruskal.test(dados$`Escore DLQI - Máx 30`, dados$Fototipo)
# pairwise.wilcox.test(dados$`Escore DLQI - Máx 30`, dados$Fototipo, p.adjust.method = "bonf")

# ggplot(dados, aes(Fototipo, `Escore DLQI - Máx 30`)) +
#   geom_boxplot() +
#   geom_jitter(alpha = .4, width = .05, height = .05)
# 
# ggplot(dados, aes(Sexo, `Escore DLQI - Máx 30`)) +
#   geom_boxplot() +
#   geom_jitter(alpha = .4, width = .05, height = .05)
# 
# summary(lm(`Escore VitiQoL - Máx 90` ~ `Escore DLQI - Máx 30`, dados))
