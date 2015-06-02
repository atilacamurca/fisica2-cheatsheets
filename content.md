% Física II - Cheat Sheets
% Átila Camurça

# Vetores

São representados por segmentos orientados e são caracterizados por

1. Módulo
1. Direção
1. Sentido

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

Sejam $\vec{v} = (v_1, v_2, v_3)$ e $\vec{w} = (w_1, w_2, w_3) $. Então

$$
\vec{v} \times \vec{w}
= \det
\begin{vmatrix}
i & j & k \\
v_1 & v_2 & v_3 \\
w_1 & w_2 & w_3
\end{vmatrix}
$$
