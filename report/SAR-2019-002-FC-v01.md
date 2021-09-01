---
title: "Análise epidemiológica de pacientes com vitiligo com os instrumentos de Qualidade de Vida DLQI e VitiQoL"
author: '**De:** Felipe Figueiredo **Para:** Felipe Cupertino'
date: '**Data: ** 25/10/2019'
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

- ASC: Área de superfície corporal
- DLQI: *Dermatology Life Quality Index*
- IQR: *Interquartile Range* (Intervalo interquartil)
- VitiQoL: *Vitiligo Specific Health Related Quality of Life Instrument*

# Introdução

Na área de Dermatologia há diversos instrumentos que buscam avaliar o impacto que pacientes observam em sua Qualidade de Vida, um dos quais é o DLQI.
Para o vitiligo existe ainda um instrumento específico, o VitiQoL.
Na literatura especializada foram identificados vários fatores clínicos e epidemiológicos associados aos resultados obtidos com o instrumento DLQI, como nível escolaridade, sexo e fototipo, entre outros.

O DLQI possui ainda um estudo que valida interpretações para uma categorização em cinco níveis para os escores obtidos do instrumento, desde Sem Efeito (na qualidade de vida), até efeito Extremamente Grave.
O VitiQoL parece ainda não ter um estudo semelhante.

## Objetivos

Avaliar a associação entre dois instrumentos de qualidade de vida específicos da área de dermatologia e diversos parâmetros clínicos e epidemiológicos relevantes ao vitiligo.

## Recepção e tratamento dos dados

Foi recebida uma tabela contendo dados coletados de 131 participantes do estudo realizado no ambulatório de dermatologia do Hospital Universitário Clementino Fraga Filho da Universidade Federal do Rio de Janeiro (HUCFF/UFRJ).

Nenhuma transformação foi feita nos dados recebidos antes das análises, mas alguns dados foram reordenados ou categorizados conforme a seguir:

**DLQI**

Os escores brutos do DLQI podem variar de 0 a 30.
Uma nova variável categórica foi criada com base nos escores brutos de acordo com a categorização validada para este instrumento:

- 0-1: sem efeito;
- 1-5: efeito leve;
- 6-11: efeito moderado;
- 12-20: efeito grave;
- 21-30: extremamente grave.

Tanto o escore bruto como a categorização do instrumento DLQI foram usados nesta análise.

**Tempo de Evolução da Doença**

O tempo da evolução da doença dos participantes, medido em anos, foi discretizado de acordo com as faixas que parecem mais relevantes aos estudos de vitiligo:

- menor que 10 anos;
- de 10 a 20 anos;
- igual ou a superior a 20 anos.

# Metodologia

O perfil típico dos participantes da pesquisa foi descrito de acordo com as categorias e valores mais prevalentes na amostra de estudo.
As variáveis qualitativas foram descritas usando frequência e proporção (%).
Tanto as variáveis quantitativas como os escores brutos dos instrumentos do tipo Likert ou quasi-Likert foram descritos usando mediana e intervalo interquartil (em inglês, IQR).

Para avaliar a possível associação estatística entre as variáveis com potencial relevância clínica e os escores dos instrumentos foram usados vários testes, dependendo do tipo de cada variável, isto é, se o desfecho de interesse era o escore bruto, ou as categorias dos escores do instrumento DLQI.
Variáveis qualitativas, quando comparadas com os níveis do instrumento DLQI foram avaliadas com o teste Exato de Fisher.
Variáveis quantitativas foram avaliadas com os testes não-paramétricos de Wilcoxon ou de Kruskal-Wallis, respectivamente quando havia dois ou mais grupos.
Nos casos em que o teste de Kruskal-Wallis foi significativo foram aplicados pós-testes de Wilcoxon com correção de Bonferroni.
A homogeneidade da variância entre os grupos foi avaliada com o teste de Levene.
Por fim, quando variáveis quantitativas foram comparadas diretamente com os escores brutos dos instrumentos, foi avaliada a correlação *rho* de Spearman.
Foram considerados significativos valores de $p<0.05$.

Os dados foram organizados em uma tabela Excel.
Todas as análises estatísticas foram realizadas utilizando-se o software `R` versão 3.6.1 (http://r-project.org/).

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

## Instrumentos de qualidade de vida em dermatologia

Os participantes do estudo passaram por mensuração por dois instrumentos com objetivos complementares, o DLQI e o VitiQoL (tabela 2).
O DLQI possui uma classificação em cinco níveis de severidade, e os escores observados variaram tipicamente de 1 a 8 (intervalo interquartil), com mediana 3.
De acordo com este sistema, o nível de severidade típico mais prevalente na amostra deste estudo foi o Leve (45%).
Na ausência de um sistema estabelecido de níveis de severidade para o VitiQoL, seus escores variaram tipicamente de 15 a 56 (intervalo interquartil), com valor mediano 27.


|                   &nbsp;                   |     level     |       Overall        |
|:------------------------------------------:|:-------------:|:--------------------:|
|                   **n**                    |               |         131          |
|  **Escore DLQI - Máx 30 (median [IQR])**   |               |  3.00 [1.00, 8.00]   |
|                **DLQI (%)**                |  Sem Efeito   |      43 (32.8)       |
|                                            |     Leve      |      45 (34.4)       |
|                                            |   Moderado    |      22 (16.8)       |
|                                            |     Grave     |      18 (13.7)       |
|                                            | Extrem. Grave |       3 ( 2.3)       |
| **Escore VitiQoL - Máx 90 (median [IQR])** |               | 27.00 [15.00, 56.00] |

Table: **Tabela 2** - Instrumentos utilizados no estudo.

Considerando os escores totais coletados em ambos os instrumentos, há
forte correlação positiva entre o DLQI e o VitiQoL
(*rho*=0.8225165, p=<0.001).
Os escores destes dois instrumentos foram utilizados para avaliar as associações entre o grau observado de Vitiligo e os cofatores de interesse, como veremos nas seções a seguir.

## DLQI

O DLQI foi avaliado contra todos os cofatores clinicamente relevantes coletados na amostra de estudo, em sua interpretação discretizada em categorias de escores (tabela 3).
Este estudo mostra evidências de associação entre o DLQI e
o sexo,
a situação laboral
e
a ASC.
Não foi possível detectar associação entre as categorias de escores e
a idade,
estado civil,
tratamento
ou
tempo de doença.

Não foi possível avaliar a significância com a escolaridade nem com o fototipo devido à baixa amostragem ao longo dos níveis de escolaridade e fototipos avaliados.
É possível observar diversas células vazias na tabela, onde esses níveis destas variáveis não estiveram representados na amostra de estudo.


|          &nbsp;          |      level      |      Sem Efeito      |         Leve         |       Moderado       |        Grave         |    Extrem. Grave     |   p   |  test   |
|:------------------------:|:---------------:|:--------------------:|:--------------------:|:--------------------:|:--------------------:|:--------------------:|:-----:|:-------:|
|          **n**           |                 |          43          |          45          |          22          |          18          |          3           |       |         |
|       **Sexo (%)**       |        M        |      19 (44.2)       |       8 (17.8)       |       2 ( 9.1)       |       3 (16.7)       |      1 ( 33.3)       | 0.009 |  exact  |
|                          |        F        |      24 (55.8)       |      37 (82.2)       |      20 (90.9)       |      15 (83.3)       |      2 ( 66.7)       |       |         |
| **Idade (median [IQR])** |                 | 48.00 [32.50, 61.00] | 48.00 [37.00, 58.00] | 51.50 [37.50, 66.25] | 51.00 [36.25, 56.75] | 56.00 [55.00, 58.50] | 0.631 | nonnorm |
|   **Escolaridade (%)**   |   Analfabeto    |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |      0 (  0.0)       |  NA   |  exact  |
|                          |  1g incompleto  |       7 (16.3)       |      11 (24.4)       |       6 (27.3)       |       5 (27.8)       |      0 (  0.0)       |       |         |
|                          |   1g completo   |       3 ( 7.0)       |       8 (17.8)       |       3 (13.6)       |       3 (16.7)       |      1 ( 33.3)       |       |         |
|                          |  2g incompleto  |       7 (16.3)       |       3 ( 6.7)       |       2 ( 9.1)       |       2 (11.1)       |      0 (  0.0)       |       |         |
|                          |   2g completo   |       9 (20.9)       |      10 (22.2)       |       6 (27.3)       |       6 (33.3)       |      2 ( 66.7)       |       |         |
|                          |  3g incompleto  |       7 (16.3)       |       6 (13.3)       |       3 (13.6)       |       2 (11.1)       |      0 (  0.0)       |       |         |
|                          |   3g completo   |      10 (23.3)       |       7 (15.6)       |       2 ( 9.1)       |       0 ( 0.0)       |      0 (  0.0)       |       |         |
|   **Estado civil (%)**   |    Solteiro     |      14 (32.6)       |      19 (42.2)       |       7 (31.8)       |       9 (50.0)       |      3 (100.0)       | 0.218 |  exact  |
|                          |     Casado      |      21 (48.8)       |      22 (48.9)       |       7 (31.8)       |       5 (27.8)       |      0 (  0.0)       |       |         |
|                          |   Divorciado    |       4 ( 9.3)       |       2 ( 4.4)       |       4 (18.2)       |       3 (16.7)       |      0 (  0.0)       |       |         |
|                          |      Viúvo      |       4 ( 9.3)       |       2 ( 4.4)       |       4 (18.2)       |       1 ( 5.6)       |      0 (  0.0)       |       |         |
|     **Trabalho (%)**     |     Inativo     |      15 (34.9)       |      21 (46.7)       |      16 (72.7)       |      11 (61.1)       |      1 ( 33.3)       | 0.034 |  exact  |
|                          |      Ativo      |      28 (65.1)       |      24 (53.3)       |       6 (27.3)       |       7 (38.9)       |      2 ( 66.7)       |       |         |
|     **Fototipo (%)**     |        1        |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |       0 ( 0.0)       |      0 (  0.0)       |  NA   |  exact  |
|                          |        2        |       3 ( 7.0)       |       3 ( 6.7)       |       3 (13.6)       |       0 ( 0.0)       |      0 (  0.0)       |       |         |
|                          |        3        |      18 (41.9)       |      10 (22.2)       |       6 (27.3)       |       6 (33.3)       |      0 (  0.0)       |       |         |
|                          |        4        |      16 (37.2)       |      19 (42.2)       |      10 (45.5)       |       8 (44.4)       |      3 (100.0)       |       |         |
|                          |        5        |       5 (11.6)       |      11 (24.4)       |       3 (13.6)       |       4 (22.2)       |      0 (  0.0)       |       |         |
|                          |        6        |       1 ( 2.3)       |       2 ( 4.4)       |       0 ( 0.0)       |       0 ( 0.0)       |      0 (  0.0)       |       |         |
|  **ASC (median [IQR])**  |                 |  0.04 [0.01, 0.08]   |  0.06 [0.04, 0.17]   |  0.10 [0.04, 0.19]   |  0.17 [0.08, 0.28]   |  0.04 [0.03, 0.50]   | 0.002 | nonnorm |
|    **Tratamento (%)**    |     Nenhum      |       5 (11.6)       |       4 ( 8.9)       |       3 (13.6)       |       3 (16.7)       |      1 ( 33.3)       | 0.708 |  exact  |
|                          |     UVB-NB      |       6 (14.0)       |      12 (26.7)       |       4 (18.2)       |       5 (27.8)       |      0 (  0.0)       |       |         |
|                          |     Tópico      |      30 (69.8)       |      25 (55.6)       |      15 (68.2)       |       9 (50.0)       |      2 ( 66.7)       |       |         |
|                          | UVB-NB + Tópico |       2 ( 4.7)       |       4 ( 8.9)       |       0 ( 0.0)       |       1 ( 5.6)       |      0 (  0.0)       |       |         |
|   **TempoDoenca (%)**    |    < 10 anos    |      14 (41.2)       |      10 (25.0)       |       4 (22.2)       |       1 ( 6.2)       |      0 (  0.0)       | 0.176 |  exact  |
|                          |  10 a 20 anos   |       8 (23.5)       |      10 (25.0)       |       3 (16.7)       |       6 (37.5)       |      0 (  0.0)       |       |         |
|                          |   >= 20 anos    |      12 (35.3)       |      20 (50.0)       |      11 (61.1)       |       9 (56.2)       |      3 (100.0)       |       |         |

Table: **Tabela 3** Associação entre as mensurações do instrumento DLQI e os cofatores estudados

As mulheres parecem ter a qualidade de vida mais afetada que os homens, em todas as categorias do DLQI coletadas neste estudo.

Os participantes do estudo que estão laboralmente ativos parecem ser mais frequentes nas categorias Sem Efeito e Efeito Leve, indicando que parecem sofrer menos perda de qualidade vida que os inativos.
Devemos ser cautelosos ao interpretar as proporções observadas nos participantes que declararam maior impacto em sua qualidade de vida - embora estes sejam clinicamente relevantes, houve baixa amostragem destes casos para uma avaliação precisa.
Isto é particularmente evidente considerando que apenas 3 participantes declararam escores na categoria Extremamente Grave.

Embora a ASC não estivesse homogeneamente distribuída entre as categorias do instrumento (Levene p=0.010398), foi possível detectar um aumento significativo (pós-teste Wilcoxon p=0.0039439, corrigido p/ Bonferroni) entre os escores declarados pelos participantes que
possuíram efeito Grave na qualidade de vida
(mediana [IQR] = 0.17 [0.08, 0.28])
em relação aos que
não sofreram efeito
(mediana [IQR] = 0.04 [0.01, 0.08]).

## VitiQoL

O escore bruto VitiQoL foi significativamente associado às duas únicas variáveis binárias,
o sexo (M/F) (Wilcoxon p=0.0031921)
e o estado laboral (ativo/inativo) (Wilcoxon p=0.0297177),
provavelmente devido ao tamanho do estudo prover poder estatístico insuficiente para detectar associações em variáveis com mais categorias.
Não foi possível detectar nesta amostra de estudo evidências de associação com
fototipo (Kruskal-Wallis p=0.636378),
tratamento (Kruskal-Wallis p=0.6858056),
escolaridade (Kruskal-Wallis p=0.1849204),
estado civil (Kruskal-Wallis p=0.6339946),
ou o tempo de doença (Kruskal-Wallis p=0.1663654).

Os homens apresentaram escore mediano (IQR)
19.00 [8.00, 35.00]
e as mulheres apresentaram escore mediano (IQR)
33.00 [19.25, 57.00].

Quanto à atividade laboral, os laboralmente ativos declarando escore mediano (IQR)
22.00 [10.50, 54.50]
enquanto os inativos apresentaram escore mediano
34.00 [20.75, 56.75].

A ASC foi positivamente correlacionada com os escores do instrumento VitiQoL
(*rho*=0.2212906, p=0.0110825),
porém o mesmo não ocorreu com a
idade (*rho*=0.0514906, p=0.5591693).

# Exceções da análise e Observações

Testes estatísticos para variáveis qualitativas tipicamente requerem grandes volumes de dados para obter a precisão estatística adequada para detectar efeitos moderados ou sutis em estudos de associação ou intervenção.
Devido ao pequeno tamanho amostral do estudo (N=131), o poder deste estudo provavelmente não foi suficiente para detectar uma possível associação entre os fatores avaliados, particularmente nos casos de variáveis categóricas com mais que dois níveis, como por exemplo o Fototipo, a Escolaridade, etc.
Deve-se ser cauteloso, no entanto, ao afirmar que não há efeito.
A não detecção não elimina automaticamente a existência de um efeito pequeno, relativo ao tamanho do estudo.
Observe que na redação deste relatório foram utilizadas expressões como "não foi possível detectar associação" em contraste a expressões mais assertivas como "não há associação".

Recomenda-se declarar que este estudo é um piloto, e que há tanto interesse clínico como evidências da relevância de se planejar um estudo epidemiológico maior, com um desfecho primário definido especificamente para permitir um cálculo amostral para atingir poder estatístico adequado.

Deve-se observar ainda que o efeito da ASC na qualidade de vida pôde ser significativamente detectado com ambos os instrumentos
Isto pode indicar que um futuro estudo com desfecho primário quantitativo talvez resulte em um tamanho amostral mais viável que um desfecho qualitativo.
Por outro lado, as duas variáveis qualitativa que possuem apenas duas categorias (sexo e trabalho) puderam ser avaliadas adequadamente neste estudo, atingindo precisão adequada (i.e., sem levantar mensagens de aviso do programa de análise).

# Conclusões

Os dois instrumentos de qualidade de vida em dermatologia avaliados neste estudo são fortemente correlacionados, o que pode indicar a transposição da interpretação de resultados entre eles.
As mulheres parecem ter a qualidade de vida mais afetada que os homens, tanto de acordo com o instrumento DLQI quanto o VitiQoL.
Os participantes do estudo que são laboralmente ativos parecem ser menos afetados inativos.
ASCs maiores induziram um aumento nos escores de impacto grave na qualidade de vida em relação aos escores imperceptíveis no DLQI, sendo também positivamente correlacionadas aos escores do VitiQoL

# Referências

# Apêndice - Dados utilizados

Os dados utilizados neste relatório não podem ser publicados online por questões de sigilo.



