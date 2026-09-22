# Hand derivation guide — when can automation raise the wage?

## Result to show

In the static, technology-constrained equilibrium, automation has a positive
productivity effect and a negative displacement effect. The wage rises only when
the former is larger, even though the labor share falls.

## Source and assumptions

- Published AER version, Proposition 2, pp. 1500–1502, and Proposition 3,
  pp. 1501–1503.
- Assumptions 1–3.
- $I^*=I<\widetilde I$: technology constrains equilibrium automation.
- Automation-only change: $dI>0$ and $dN=0$.
- The static experiment holds $K$ fixed.

## Definitions

- $W$: wage; $R$: capital rental rate.
- $s_L$: labor share in net output.
- $\widehat\sigma$: technology-constrained capital–labor elasticity.
- $\varepsilon_L>0$: elasticity of the labor-supply schedule.
- $\Lambda_I>0$: strength of the task-reallocation margin at $I^*$.
- $P_I:=\left.\partial\ln Y/\partial I\right|_{K,L}>0$: productivity gain per
  unit of automation, holding aggregate capital and labor fixed.

## Algebra

Start from Proposition 3:

$$
d\ln W=d\ln Y\vert_{K,L}+(1-s_L)
\left[
\frac{\Lambda_N}{\widehat\sigma+\varepsilon_L}\,dN
-\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}\,dI
\right].
$$

**Step 1.** Set $dN=0$ because only automation changes:

$$
d\ln W=d\ln Y\vert_{K,L}
-(1-s_L)\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}\,dI.
$$

**Step 2.** Write the productivity change as
$d\ln Y\vert_{K,L}=P_I\,dI$:

$$
d\ln W=\left[
P_I-(1-s_L)\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}
\right]dI.
$$

**Step 3.** Since $dI>0$, divide by $dI$ without reversing the inequality:

$$
\frac{d\ln W}{dI}\gtrless 0
\quad\Longleftrightarrow\quad
P_I\gtrless
(1-s_L)\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}.
$$

Therefore,

$$
\boxed{\text{wage rises}\iff
\text{productivity effect}>\text{displacement effect}.}
$$

Proposition 3 translates this comparison into a capital-stock threshold:

$$
\boxed{
K>\widetilde K\Rightarrow \frac{d\ln W}{dI}>0,
\qquad
K<\widetilde K\Rightarrow \frac{d\ln W}{dI}<0.}
$$

**Step 4.** Compare this with Proposition 2:

$$
\frac{d\ln(W/R)}{dI}
=-\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}<0.
$$

Thus the wage can rise when $K>\widetilde K$ while $W/R$ and the labor share
still fall.

## Economic interpretation

Automation reallocates tasks away from labor, lowering its task share. It also
saves costs and raises output, which raises labor demand in the tasks that remain.
When capital is low, $W/\gamma(I^*)$ is close to $R$, so the cost saving is small
and displacement dominates. When capital is sufficiently high, the cost-saving
gap is larger and productivity dominates the wage effect. None of this reverses
the fall in labor's relative factor share caused by effective task displacement.

This guide should be copied by hand as one derivation; no synthetic handwriting
or generated image is part of the repository.
