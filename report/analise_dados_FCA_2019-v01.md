---
title: "Análise Estatística de ..."
author: '**De:** Felipe Figueiredo **Para:** Felipe Cupertino'
date: '**Data: ** dd/mm/aaaa'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'RELATÓRIO: analise_dados_FCA_2019'
toc-title: "Sumário"
---



---

**Histórico do documento**


| Versão |   Alterações   |
|:------:|:--------------:|
|   01   | Versão inicial |

---

# Assinaturas


|      Papel      |       Nome        |   Função   |         Assinatura         |     Data      |
|:---------------:|:-----------------:|:----------:|:--------------------------:|:-------------:|
|   Elaborador    | Felipe Figueiredo | Consultor  | __________________________ | _____________ |
| Aprovação final | Felipe Cupertino  | Requerente | __________________________ | _____________ |

# Lista de abreviaturas

# Introdução

## Objetivos

## Recepção e tratamento dos dados

# Metodologia

O perfil típico dos participantes da pesquisa foi descrito de acordo com as categorias e valores mais prevalentes na amostra de estudo.
As variáveis qualitativas foram descritas usando frequência e proporção (%).
Tanto as variáveis quantitativas como os escores brutos dos instrumentos do tipo Likert ou quasi-Likert foram descritos usando mediana e intervalo interquartil (em inglês, IQR).

Para avaliar a possível associação estatística entre as variáveis com potencial relevância clínica e os escores dos instrumentos foram usados vários testes, dependendo do tipo de cada variável, isto é, se o desfecho de interesse era o escore bruto, ou as categorias dos escores do instrumento DLQI.
Variáveis qualitativas, quando comparadas com os níveis do instrumento DLQI foram avaliadas com o teste Exato de Fisher.
Para estes grupos, ainda, os cofatores quantitativos foram avaliados com o teste não-paramétrico de Kruskal-Wallis (é de se observar que no caso de haver apenas dois grupos, este teste é matematicamente equivalente ao teste de Wilcoxon).
Por fim, quando variáveis quantitativas foram comparadas diretamente com os escores brutos dos instrumentos, foi avaliada a correlação *rho* de Spearman.
Foram considerados significativos valores de $p<0.05$.

Os dados foram organizados em uma tabela Excel.
Todas as análises estatísticas foram realizadas utilizando-se o software `R` versão 3.6.1 (http://r-project.org/).

<!-- The exact confidence intervals (CIs) of binomial proportions were calculated using package `exactci` (version 1.3.3). -->

# Resultados



## Perfil dos participantes do estudo e instrumentos de coleta


|              &nbsp;               |      level      |    Overall    |
|:---------------------------------:|:---------------:|:-------------:|
|               **n**               |                 |      131      |
|           **Sexo (%)**            |        M        |   33 (25.2)   |
|                                   |        F        |   98 (74.8)   |
|       **Idade (mean (SD))**       |                 | 48.23 (16.55) |
|       **Escolaridade (%)**        |   Analfabeto    |   0 ( 0.0)    |
|                                   |  1g incompleto  |   29 (22.1)   |
|                                   |   1g completo   |   18 (13.7)   |
|                                   |  2g incompleto  |   14 (10.7)   |
|                                   |   2g completo   |   33 (25.2)   |
|                                   |  3g incompleto  |   18 (13.7)   |
|                                   |   3g completo   |   19 (14.5)   |
|       **Estado civil (%)**        |    Solteiro     |   52 (39.7)   |
|                                   |     Casado      |   55 (42.0)   |
|                                   |   Divorciado    |   13 ( 9.9)   |
|                                   |      Viúvo      |   11 ( 8.4)   |
|         **Trabalho (%)**          |     Inativo     |   64 (48.9)   |
|                                   |      Ativo      |   67 (51.1)   |
|         **Evolução (%)**          |    <6 meses     |   2 ( 1.5)    |
|                                   |    >6 meses     |  129 (98.5)   |
|        **Tratamento (%)**         |     Nenhum      |   16 (12.2)   |
|                                   |     UVB-NB      |   27 (20.6)   |
|                                   |     Tópico      |   81 (61.8)   |
|                                   | UVB-NB + Tópico |   7 ( 5.3)    |
|        **ASC (mean (SD))**        |                 |  0.13 (0.20)  |
|         **Fototipo (%)**          |        1        |   0 ( 0.0)    |
|                                   |        2        |   9 ( 6.9)    |
|                                   |        3        |   40 (30.5)   |
|                                   |        4        |   56 (42.7)   |
|                                   |        5        |   23 (17.6)   |
|                                   |        6        |   3 ( 2.3)    |
|     **Casos na família (%)**      |        N        |   92 (70.2)   |
|                                   |        S        |   39 (29.8)   |
|       **Classificação (%)**       |  Não segmentar  |  111 (84.7)   |
|                                   |    Segmentar    |   3 ( 2.3)    |
|                                   |    Universal    |   4 ( 3.1)    |
|                                   |      Focal      |   11 ( 8.4)   |
|                                   |   Acrofacial    |   2 ( 1.5)    |
| **Tempo de evolução (mean (SD))** |                 | 21.41 (15.04) |

Table: **Tabela 1** - Características dos participantes do estudo.

As características mais comuns nos 131 participantes do estudo podem ser observadas na Tabela 1.
A maior parte dos participantes da amostra eram mulheres (75%) e a idade média da amostra foi 48 anos.
Foram observados dois níveis de escolaridade mais frequentes nesta amostra, onde 25% dos participantes tinham segundo grau completo e 22% possuíam o primeiro grau completo.
A maior parte das pessoas são casadas (42%), embora tenha sido observada uma proporção semelhante de solteiros (40%).
Não parece haver diferença nesta amostra entre pessoas laboralmente ativas ou inativas.
Quase todos os participantes tiveram evolução da enfermidade superior a seis meses (99%) e boa parte já veio para o ambulatório seguindo algum tipo de tratamento, sendo o mais prevalente o tópico (62%).
Os fototipos mais prevalentes nesta amostra foram o 4 (43%) e o 3 (31%).
Por fim, 85% dos participantes apresentaram não segmentar, acumulando a maior proporção neste sistema de classificação.

Os pacientes passaram por mensuração por dois instrumentos com objetivos complementares, o DLQI e o VitiQoL (tabela 2).
O DLQI possui uma classificação em cinco níveis de severidade, e os escores observados variaram tipicamente de 1 a 8 (intervalo interquartil), com mediana 3.
De acordo com este sistema, o nível de severidade típico mais prevalente na amostra deste estudo foi o Leve (45%).
Na ausência de um sistema estabelecido de níveis de severidade para o VitiQoL, seus escores variaram tipicamente de 15 a 56 (intervalo interquartil), com valor mediano 27.


|                   &nbsp;                   |     level     |       Overall        |
|:------------------------------------------:|:-------------:|:--------------------:|
|                   **n**                    |               |         131          |
|  **Escore DLQI - Máx 30 (median [IQR])**   |               |  3.00 [1.00, 8.00]   |
|                **DLQI (%)**                |  Sem Efeito   |      29 (22.1)       |
|                                            |     Leve      |      59 (45.0)       |
|                                            |   Moderado    |      22 (16.8)       |
|                                            |     Grave     |      18 (13.7)       |
|                                            | Extrem. Grave |       3 ( 2.3)       |
| **Escore VitiQoL - Máx 90 (median [IQR])** |               | 27.00 [15.00, 56.00] |

Table: **Tabela 2** - Instrumentos utilizados no estudo.

Os escores destes dois instrumentos foram utilizados para avaliar as associações entre o grau observado de Vitiligo e os cofatores de interesse, como veremos nas seções a seguir.

## DLQI


|          &nbsp;          |      level      |      Sem Efeito      |         Leve         |       Moderado       |        Grave         |    Extrem. Grave     |   p   |  test   |
|:------------------------:|:---------------:|:--------------------:|:--------------------:|:--------------------:|:--------------------:|:--------------------:|:-----:|:-------:|
|          **n**           |                 |          29          |          59          |          22          |          18          |          3           |       |         |
|       **Sexo (%)**       |        M        |      13 (44.8)       |      14 (23.7)       |       2 ( 9.1)       |       3 (16.7)       |      1 ( 33.3)       | 0.040 |  exact  |
|                          |        F        |      16 (55.2)       |      45 (76.3)       |      20 (90.9)       |      15 (83.3)       |      2 ( 66.7)       |       |         |
| **Idade (median [IQR])** |                 | 49.00 [32.00, 60.00] | 47.00 [36.50, 61.00] | 51.50 [37.50, 66.25] | 51.00 [36.25, 56.75] | 56.00 [55.00, 58.50] | 0.633 | nonnorm |
|     **Fototipo (%)**     |        1        |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |      0 (  0.0)       | 0.946 |  exact  |
|                          |        2        |       2 ( 6.9)       |       4 ( 6.8)       |       3 (13.6)       |       0 ( 0.0)       |      0 (  0.0)       |       |         |
|                          |        3        |      11 (37.9)       |      17 (28.8)       |       6 (27.3)       |       6 (33.3)       |      0 (  0.0)       |       |         |
|                          |        4        |      11 (37.9)       |      24 (40.7)       |      10 (45.5)       |       8 (44.4)       |      3 (100.0)       |       |         |
|                          |        5        |       4 (13.8)       |      12 (20.3)       |       3 (13.6)       |       4 (22.2)       |      0 (  0.0)       |       |         |
|                          |        6        |       1 ( 3.4)       |       2 ( 3.4)       |       0 ( 0.0)       |       0 ( 0.0)       |      0 (  0.0)       |       |         |
|  **ASC (median [IQR])**  |                 |  0.04 [0.01, 0.08]   |  0.06 [0.02, 0.12]   |  0.10 [0.04, 0.19]   |  0.17 [0.08, 0.28]   |  0.04 [0.03, 0.50]   | 0.008 | nonnorm |
|    **Tratamento (%)**    |     Nenhum      |       1 ( 3.4)       |       8 (13.6)       |       3 (13.6)       |       3 (16.7)       |      1 ( 33.3)       | 0.631 |  exact  |
|                          |     UVB-NB      |       4 (13.8)       |      14 (23.7)       |       4 (18.2)       |       5 (27.8)       |      0 (  0.0)       |       |         |
|                          |     Tópico      |      22 (75.9)       |      33 (55.9)       |      15 (68.2)       |       9 (50.0)       |      2 ( 66.7)       |       |         |
|                          | UVB-NB + Tópico |       2 ( 6.9)       |       4 ( 6.8)       |       0 ( 0.0)       |       1 ( 5.6)       |      0 (  0.0)       |       |         |
|   **TempoDoenca (%)**    |    < 10 anos    |      10 (40.0)       |      14 (28.6)       |       4 (22.2)       |       1 ( 6.2)       |      0 (  0.0)       | 0.260 |  exact  |
|                          |  10 a 20 anos   |       6 (24.0)       |      12 (24.5)       |       3 (16.7)       |       6 (37.5)       |      0 (  0.0)       |       |         |
|                          |   >= 20 anos    |       9 (36.0)       |      23 (46.9)       |      11 (61.1)       |       9 (56.2)       |      3 (100.0)       |       |         |

Table: **Tabela 3** Associação entre as mensurações do instrumento DLQI e os cofatores estudados

## VitiQoL

- Sexo: K-W p=0.0031921
- Idade: Spearman rho=0.0514906, p=0.5591693
- Fototipo: K-W p=0.636378
- ASC: Spearman rho=0.2212906, p=0.0110825
- Tratamento: K-W p=0.6858056
- TempoDoenca: K-W p=0.1663654

<!-- # Exceções e Desvios do teste -->

# Conclusões


# Referências

# Apêndice

