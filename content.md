% Física II - Cheat Sheets
% Átila Camurça

# Vetores

São representados por segmentos orientados e são caracterizados por

1. Módulo
1. Direção
1. Sentido

O módulo de um vetor $\vec{u} = (u_1, u_2)$ é dado por:

$$
|\vec{u}| = \sqrt{u_1^2 + u_2^2}
$$

## Soma de Vetores

O resultado é um outro vetor com origem na origem do primeiro e extremidade
na extremidade do último.

### Propriedades da Soma

#### Comutatividade

$$
\vec{v} + \vec{w} = \vec{w} + \vec{v}
$$

#### Associatividade

$$
\vec{u} + (\vec{v} + \vec{w}) = (\vec{u} + \vec{v}) + \vec{w}
$$

#### Existência do elemento Neutro

$$
\vec{v} + 0 = 0 + \vec{v} = \vec{v}
$$

#### Existência do elemento inverso da soma

$$
\vec{v} + (-\vec{v}) = 0
$$

## Multiplicação de um vetor por um escalar

Seja $\alpha$ um número real não-nulo e $\vec{v}$ um vetor. Dizemos que $\alpha \vec{v}$:

1. Módulo: $|\alpha|$
2. Direção: mesma de $\vec{v}$
3. Sentido:
	* mesmo sentido de $\vec{v}$ se $\alpha > 0$
	* sentido oposto caso contrário

### Propriedades da multiplicação por escalar

#### Associatividade

$$
\alpha (\beta \vec{v}) = (\alpha \beta) \vec{v}
$$

#### Distributividade

$$
\alpha (\vec{v} + \vec{w}) = \alpha \vec{v} + \alpha \vec{w}
$$

$$
(\alpha + \beta) \vec{v} = \alpha \vec{v} + \beta \vec{v}
$$

## Produto Escalar

Também conhecido como Produto Interno, é denotado por $\vec{v} \cdot \vec{w}$, e
definido por

$$
\vec{v} \cdot \vec{w} = v_1 w_1 + v_2 w_2
$$

Quando $\vec{v}$ e $\vec{w}$ são vetores no plano, e

$$
\vec{v} \cdot \vec{w} = v_1 w_1 + v_2 w_2 + v_3 w_3
$$

Quando $\vec{v}$ e $\vec{w}$ são vetores no espaço.

### Teorema

$$
\vec{v} \cdot \vec{w} = |\vec{v}| |\vec{w}| \cos \theta
$$

Onde $\theta$ é o ângulo entre estes vetores.

Daí temos também que

$$
\cos \theta = \frac{\vec{v} \cdot \vec{w}}{|\vec{v}| |\vec{w}|}
$$

### Direção de um Vetor Cartesiano 3D

Seja um vetor $\vec{u} = (u_1, u_2, u_3)$. Para determinar o ângulo $\alpha$ que
o vetor $\vec{u}$ faz com o $x$ basta fazer:

$$
\cos \alpha = \frac{u_1}{|\vec{u}|} = \frac{u_1}{\sqrt{u_1^2 + u_2^2 + u_3^2}}
$$

O mesmo vale para os outros eixos:

$$
\cos \beta = \frac{u_2}{|\vec{u}|}
$$

$$
\cos \gamma = \frac{u_3}{|\vec{u}|}
$$

**OBS.:** para chegar a este resultado basta fazer o produto escalar de $\vec{u}$
por um vetor unitário.

### Propriedades do Produto Escalar

#### Comutatividade

$$
\vec{v} \cdot \vec{w} = \vec{w} \cdot \vec{v}
$$

#### Distributividade

$$
\vec{u} \cdot (\vec{v} + \vec{w}) = \vec{u} \cdot \vec{v} + \vec{u} \cdot \vec{w}
$$

#### Multiplicação por escalar

$$
\alpha (\vec{v} \cdot \vec{w}) = (\alpha \vec{v}) \cdot \vec{w} = \vec{v} \cdot (\alpha \vec{w})
$$

## Produto Vetorial

É denotado por $\vec{v} \times \vec{w}$, e definido por

$$
|\vec{v} \times \vec{w}| = |\vec{v}| |\vec{w}| \sin \theta
$$

Direção: perpendicular ao plano determinado por $\vec{v}$ e $\vec{w}$

### Propriedades do Produto Vetorial

#### Anticomutatividade

$$
\vec{v} \times \vec{w} = - \vec{w} \times \vec{v}
$$

#### Distributividade

$$
\vec{u} \times (\vec{v} + \vec{w}) = \vec{u} \times \vec{v} + \vec{u} \times \vec{w}
$$

#### Multiplicação por escalar

$$
\alpha (\vec{v} \times \vec{w}) = (\alpha \vec{v}) \times \vec{w} = \vec{v} \times (\alpha \vec{w})
$$

### Teorema 1

Sejam $\vec{v} = (v_1, v_2, v_3)$ e $\vec{w} = (w_1, w_2, w_3)$. Então

$$
\vec{v} \times \vec{w}
= \det
\begin{vmatrix}
i & j & k \\
v_1 & v_2 & v_3 \\
w_1 & w_2 & w_3
\end{vmatrix}
$$

# Cargas Elétricas

## Definições Gerais

#### Condutores

São materiais nos quais as cargas elétricas se movem com facilidade.

#### Isolantes

São materiais nos quais as cargas elétricas não podem se mover.

#### Semicondutores

São materiais com propriedades elétricas intermediárias entre as dos condutores e as dos isolantes.

#### Supercondutores

São condutores perfeitos, ou seja, em que as cargas se movem sem encontrar nenhuma resistência.

#### Força eletroestática

Força de repulsão ou atração associada à carga elétrica.

Se as cargas das partículas tem o mesmo sinal, elas se repelem. Caso tenham sinais opostos, elas se atraem.

## Lei de Coulomb

Permite calcular a força exercida por partículas carregadas.

$$
\vec{F} = k \frac{q_1 \cdot q_2}{r^2} \hat{r}
$$

onde $\hat{r}$ é um vetor unitário na direção da reta que liga as duas partículas, $r$ é a distância entre as partículas e $k$ é uma constante, com valor $1/4 \pi \varepsilon_0$.

Rescrevendo temos:

$$
F = \frac{1}{4 \pi \varepsilon_0} \frac{|q_1| \cdot |q_2|}{r^2}
$$

Podemos também substituir:

$$
k = \frac{1}{4 \pi \varepsilon_0} = 8,99 \times 10^9 N \cdot m^2/C^2
$$

A constante $\varepsilon_0$, conhecida como **permissividade do vácuo**, tem o valor:

$$
\varepsilon_0 = 8,85 \times 10^{-12} C^2/N \cdot m^2
$$

## Cascas Esféricas

#### Teorema 1

Uma casca com uma distribuição uniforme de carga atrai ou repele uma partícula carregada situada do lado de fora da casca como se toda a carga da casca estivesse situada no centro.

#### Teorema 2

Se uma partícula carregada está situada no interior de uma casca com uma distribuição uniforme de carga, a casca não exerce nehuma força eletroestática sobre a partícula.

## Quantidade de carga

$$
q = n \cdot e
$$

onde $e$, a **carga elementar**, tem valor aproximado

$$
e = 1,602 \times 10^{-19} C
$$

# Campo Elétrico

## Carga de Prova

#### Definição

É uma carga imaginária de tamanho infinitesimal que não gera campo e é
sempre positiva.

## Direção do campo

#### Afastamento

Se ao colocar uma carga de prova aparecer uma força de afastamento.

#### Atração

Se ao colocar uma carga de prova aparecer uma força de atração.

## Intensidade (Módulo) do Campo

é definido como o quociente entre as forças de interação das cargas geradora
do campo ($Q$) e de prova ($q$) e a própria carga de prova ($q$), ou seja:

$$
E = \frac{F}{q} \Rightarrow \frac{k \cdot \frac{Q \cdot q}{d^2}}{q}
  \Rightarrow k \cdot \frac{Q}{d^2}
$$

#### Unidade

N/C - Newton por Coulomb

## Dipolo elétrico

é formado por duas partículas com cargas de mesmo valor	absoluto $q$ e sinais
opostos, separadas por uma pequena distância $d$.

O módulo do campo elétrico de um dipolo em um ponto distante sobre o eixo
do dipolo é dado por:

$$
E = \frac{1}{2 \pi \varepsilon_0} \frac{p}{z^3}
$$

onde $p = q \cdot d$, e $z$ é a distância entre o ponto e o centro do dipolo.

## Campo elétrico produzido por uma linha de cargas

#### Módulo de uma anel carregado

$$
E = \frac{q \cdot z}{4 \pi \varepsilon_0 (z^2 + R^2)^\frac{3}{2}}
$$

onde $z$ é a distância entre o centro do anel ao ponto $P$. O raio do anel
é $R$.

#### Módulo de um disco carregado

$$
E = \frac{\sigma}{2 \varepsilon_0}(1 - \frac{z}{\sqrt{z^2 + R^2}})
$$

onde $\sigma$ é a carga por unidade de área, e $z$ é a distância entre o centro
do disco ao ponto $P$. O raio do disco é $R$.

# Apêndice A

## Comprimento, Área e Volume

#### Comprimento do círculo

$$
C = 2 \cdot \pi \cdot r
$$

#### Área do círculo

$$
A = \pi \cdot r^2
$$

#### Área do trapézio

$$
A = \frac{h \cdot (B + b)}{2}
$$

#### Volume da esfera

$$
V = \frac{4 \cdot \pi r^3}{3}
$$

#### Volume do cubo

$$
V = a^3 \text{\, onde $a$ é a aresta}
$$

#### Volume do cone circular reto

$$
V = \frac{\pi \cdot r^2 \cdot h}{3}
$$

#### Volume da pirâmide

$$
V = \frac{A_b \cdot h}{3} \text{\, onde $A_b$ é a área da base}
$$

## Trigonometria

Relações trigonométricas seno, cosseno e tangente.

----------------------------------------------------------------------------------------
&nbsp;              30                         45                       60
----------  ------------------------  ------------------------  ------------------------
seno           $\frac{1}{2}$            $\frac{\sqrt{2}}{2}$     $\frac{\sqrt{3}}{2}$

cosseno       $\frac{\sqrt{3}}{2}$      $\frac{\sqrt{2}}{2}$      $\frac{1}{2}$

tangente      $\frac{\sqrt{3}}{3}$      $1$                       $\sqrt{3}$
----------------------------------------------------------------------------------------

Para um triângulo retângulo como visto na figura:

![Triângulo Retângulo](img/triangulo-retangulo.jpg "Triângulo Retângulo")

Teorema de Pitágoras:

$$
a^2 = b^2 + c^2
$$

As funções seno e cosseno são definidas como:

$$
\sin \theta = \frac{\text{CO}}{\text{H}} = \frac{c}{a} = \cos \alpha
$$

$$
\cos \theta = \frac{\text{CA}}{\text{H}} = \frac{b}{a} = \sin \alpha
$$

$$
\sin^2 \theta + \cos^2 \theta = 1
$$

