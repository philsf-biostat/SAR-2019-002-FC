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

Esta análise foi realizada utilizando-se o software `R` versão 3.6.0.

<!-- The exact confidence intervals (CIs) of binomial proportions were calculated using package `exactci` (version 1.3.3). -->

# Resultados




|                   &nbsp;                   |      level      |       Overall        |
|:------------------------------------------:|:---------------:|:--------------------:|
|                   **n**                    |                 |         131          |
|                **Sexo (%)**                |        M        |      33 (25.2)       |
|                                            |        F        |      98 (74.8)       |
|           **Idade (mean (SD))**            |                 |    48.23 (16.55)     |
|            **Escolaridade (%)**            |   Analfabeto    |       0 ( 0.0)       |
|                                            |  1g incompleto  |      29 (22.1)       |
|                                            |   1g completo   |      18 (13.7)       |
|                                            |  2g incompleto  |      14 (10.7)       |
|                                            |   2g completo   |      33 (25.2)       |
|                                            |  3g incompleto  |      18 (13.7)       |
|                                            |   3g completo   |      19 (14.5)       |
|            **Estado civil (%)**            |    Solteiro     |      52 (39.7)       |
|                                            |     Casado      |      55 (42.0)       |
|                                            |   Divorciado    |      13 ( 9.9)       |
|                                            |      Viúvo      |      11 ( 8.4)       |
|              **Trabalho (%)**              |     Inativo     |      64 (48.9)       |
|                                            |      Ativo      |      67 (51.1)       |
|              **Evolução (%)**              |    <6 meses     |       2 ( 1.5)       |
|                                            |    >6 meses     |      129 (98.5)      |
|             **Tratamento (%)**             |     Nenhum      |      16 (12.2)       |
|                                            |     UVB-NB      |      27 (20.6)       |
|                                            |     Tópico      |      81 (61.8)       |
|                                            | UVB-NB + Tópico |       7 ( 5.3)       |
|            **ASC (mean (SD))**             |                 |     0.13 (0.20)      |
|              **Fototipo (%)**              |        1        |       0 ( 0.0)       |
|                                            |        2        |       9 ( 6.9)       |
|                                            |        3        |      40 (30.5)       |
|                                            |        4        |      56 (42.7)       |
|                                            |        5        |      23 (17.6)       |
|                                            |        6        |       3 ( 2.3)       |
|          **Casos na família (%)**          |        N        |      92 (70.2)       |
|                                            |        S        |      39 (29.8)       |
|           **Classificação (%)**            |  Não segmentar  |      111 (84.7)      |
|                                            |    Segmentar    |       3 ( 2.3)       |
|                                            |    Universal    |       4 ( 3.1)       |
|                                            |      Focal      |      11 ( 8.4)       |
|                                            |   Acrofacial    |       2 ( 1.5)       |
|     **Tempo de evolução (mean (SD))**      |                 |    21.41 (15.04)     |
|  **Escore DLQI - Máx 30 (median [IQR])**   |                 |  3.00 [1.00, 8.00]   |
|                **DLQI (%)**                |      Leve       |      81 (61.8)       |
|                                            |    Moderado     |      23 (17.6)       |
|                                            |      Grave      |      27 (20.6)       |
| **Escore VitiQoL - Máx 90 (median [IQR])** |                 | 27.00 [15.00, 56.00] |

Table: **Tabela 1** - Características dos participantes do estudo.


## DLQI


|          &nbsp;          |      level      |         Leve         |       Moderado       |        Grave         |   p   |  test   |
|:------------------------:|:---------------:|:--------------------:|:--------------------:|:--------------------:|:-----:|:-------:|
|          **n**           |                 |          81          |          23          |          27          |       |         |
|       **Sexo (%)**       |        M        |      26 (32.1)       |       3 (13.0)       |       4 (14.8)       | 0.082 |  exact  |
|                          |        F        |      55 (67.9)       |      20 (87.0)       |      23 (85.2)       |       |         |
| **Idade (median [IQR])** |                 | 48.00 [36.00, 61.00] | 46.00 [36.50, 55.50] | 54.00 [42.00, 64.50] | 0.248 | nonnorm |
|     **Fototipo (%)**     |        1        |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       | 0.943 |  exact  |
|                          |        2        |       6 ( 7.4)       |       2 ( 8.7)       |       1 ( 3.7)       |       |         |
|                          |        3        |      27 (33.3)       |       6 (26.1)       |       7 (25.9)       |       |         |
|                          |        4        |      32 (39.5)       |      10 (43.5)       |      14 (51.9)       |       |         |
|                          |        5        |      13 (16.0)       |       5 (21.7)       |       5 (18.5)       |       |         |
|                          |        6        |       3 ( 3.7)       |       0 ( 0.0)       |       0 ( 0.0)       |       |         |
|  **ASC (median [IQR])**  |                 |  0.05 [0.02, 0.10]   |  0.11 [0.05, 0.19]   |  0.15 [0.04, 0.28]   | 0.002 | nonnorm |
|    **Tratamento (%)**    |     Nenhum      |       9 (11.1)       |       3 (13.0)       |       4 (14.8)       | 0.479 |  exact  |
|                          |     UVB-NB      |      13 (16.0)       |       8 (34.8)       |       6 (22.2)       |       |         |
|                          |     Tópico      |      53 (65.4)       |      12 (52.2)       |      16 (59.3)       |       |         |
|                          | UVB-NB + Tópico |       6 ( 7.4)       |       0 ( 0.0)       |       1 ( 3.7)       |       |         |
|   **TempoDoenca (%)**    |    < 10 anos    |      22 (32.4)       |       4 (21.1)       |       3 (12.5)       | 0.255 |  exact  |
|                          |  10 a 20 anos   |      17 (25.0)       |       3 (15.8)       |       7 (29.2)       |       |         |
|                          |   >= 20 anos    |      29 (42.6)       |      12 (63.2)       |      14 (58.3)       |       |         |

Table: **Tabela xx** Associação entre as mensurações do instrumento DLQI e os cofatores estudados

<!-- # Exceções e Desvios do teste -->

# Conclusões


# Referências

# Apêndice

