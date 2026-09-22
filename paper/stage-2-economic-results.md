# Stage 2 — economic results

This note uses only the published AER version. It distinguishes technological
automation, represented by $I$, from equilibrium automation, represented by
$I^*=\min\{I,\widetilde I\}$.

## Static effects: Propositions 2 and 3

The relevant experiment holds the capital stock fixed and changes exogenous
technology. Assumptions 1–3 apply. When $I^*=I<\widetilde I$, the allocation is
technology-constrained and a marginal increase in $I$ also increases $I^*$.

| Exogenous change | Mechanism | Output/productivity | Wage | Employment | Labor share | Capital share |
|---|---|---|---|---|---|---|
| Higher $I$ with $I^*=I<\widetilde I$ | Tasks at the margin move from labor to capital. This contracts labor's task range (displacement) but replaces expensive effective labor by cheaper capital (productivity). | Increases. | Ambiguous: productivity raises labor demand in remaining labor tasks, while displacement lowers it. | Falls under the labor-supply preferences in equation (4). | Falls; $W/R$ falls. | Rises as the complementary net-output factor share. |
| Higher $I$ with $I^*=\widetilde I<I$ | More tasks become technologically automatable, but no task is reassigned because relative costs already determine the frontier. | No marginal effect from $I$. | No marginal effect. | No marginal effect. | No marginal effect. | No marginal effect. |
| Higher $N$ | The lowest task is replaced by a more complex task in which labor has comparative advantage (reinstatement/new-task effect). | Increases. | Increases. | Increases under equation (4). | Increases; $W/R$ rises. | Falls as the complementary net-output factor share. |

The employment signs use more than production technology. Proposition 2 uses the
balanced-growth-compatible preferences in equation (4). Automation raises output
per worker more than the wage, so the negative income effect on labor supply
dominates; new tasks raise the wage more than output and increase labor supply.

### Displacement versus productivity in the wage

For a technology-constrained allocation, Proposition 3 gives

$$
d\ln W=d\ln Y\vert_{K,L}+(1-s_L)
\left(
\frac{\Lambda_N}{\widehat\sigma+\varepsilon_L}\,dN
-\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}\,dI
\right).
$$

For an automation-only change ($dN=0$, $dI>0$),

$$
\frac{d\ln W}{dI}
=\underbrace{\frac{\partial\ln Y}{\partial I}\bigg\vert_{K,L}}_{
\text{productivity effect}>0}
-\underbrace{(1-s_L)
\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}}_{
\text{displacement effect}>0}.
$$

Automation therefore raises productivity but need not raise the wage. The paper
states the exact capital-threshold result: there exists
$\widetilde K<\infty$ such that a rise in $I$ raises the equilibrium wage when
$K>\widetilde K$ and reduces it when $K<\widetilde K$. At low $K$, the effective
labor cost $W/\gamma(I^*)$ is close to the rental rate $R$, so automation saves
little and displacement dominates. At high $K$, capital is relatively abundant,
$W/R$ is higher, the cost-saving gap $W/\gamma(I^*)-R$ is larger, and the
productivity effect can dominate.

This wage ambiguity does not carry over to the labor share. Proposition 2 gives

$$
\frac{d\ln(W/R)}{dI}
=-\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}<0
$$

when $I^*=I<\widetilde I$. Thus the wage can rise in absolute terms while the
wage-rental ratio and labor share fall.

**AER locations:** Proposition 2, pp. 1500–1502; Proposition 3 and its
interpretation, pp. 1501–1503.

## Capital adjustment: Proposition 5

Let $n=N-I$. A permanent increase in automation relative to new-task creation
reduces $n$. Proposition 5 considers an interior balanced-growth path under
Assumptions 1′ and 2, with $n\in(0,1)$, $n>\widetilde n(\rho)$, constant $g$,
and therefore $I^*=I$ in the relevant region.

Capital now adjusts until

$$
R=\rho+\delta+\theta g.
$$

Consequently, the productivity gains accrue to labor, the relatively inelastic
factor. In the long run, additional automation raises the wage but reduces
employment and the labor share. Capital accumulation mitigates the labor-share
decline when $\widehat\sigma<1$ but does not eliminate it; when
$\widehat\sigma>1$, it depresses the labor share further. New tasks raise output,
the wage, employment, and the labor share in both the short and long run, although
their short-run effect on $R$ and hence on capital accumulation is ambiguous.

**AER location:** Proposition 5 and discussion, pp. 1508–1511. Proposition 4,
pp. 1507–1508, supplies the balanced-growth cases in which automation and new
tasks advance together.

## Endogenous technology and reinstatement

Proposition 6 provides the conditions for a unique stable interior BGP. Under
Assumptions 1′, 2, and 4, sufficiently small scientist supply, and the relevant
conditions on $\rho$ and $\kappa_I/\kappa_N$, a temporary sequence of automation
technologies that lowers $n$ activates self-correcting incentives: labor becomes
cheaper in the remaining labor tasks, further automation becomes less attractive,
and new-task creation becomes more attractive. Employment and the labor share
return to their initial BGP values.

Corollary 2 distinguishes a permanent increase in the relative ability to invent
automation technologies. If $\rho>\overline\rho$ and
$\kappa_I/\kappa_N>\overline\kappa$, a permanent rise in
$\kappa_I/\kappa_N$ leads to a new BGP with lower $n$, employment, and labor
share. Self-correction therefore does not mean that every automation shock leaves
labor's long-run position unchanged.

**AER location:** Proposition 6 and Corollary 2, pp. 1515–1519.

## Answer to the course question

Automation does not necessarily reduce both wages and the labor share.

1. A rise in technological capability $I$ has no effect if it does not move $I^*$.
2. When $I^*=I<\widetilde I$ and effective automation occurs, the labor share
   falls unambiguously under Propositions 2–3.
3. The short-run wage is conditional: it falls for $K<\widetilde K$ and rises for
   $K>\widetilde K$ because productivity then dominates displacement.
4. Under Proposition 5's long-run BGP conditions, capital adjustment raises the
   wage while employment and the labor share remain lower.
5. New tasks work in the opposite direction by expanding labor's task range; in a
   stable interior BGP they can undo a temporary automation imbalance, but a
   permanent shift in innovation possibilities can lead to a new labor-scarce BGP.

## Where I did not believe the AI

**AI said.** In an initial Stage 1 draft, equation (5) represented the unit cost as
$\min\{R,W/\gamma(i)\}/(1-\eta)$ for automatable tasks and
$(W/\gamma(i))/(1-\eta)$ otherwise.

**Why I doubted it.** The surrounding text calls $R$ and $W/\gamma(i)$ the
effective factor costs, but the task technology includes a Cobb-Douglas/CES share
parameter. Dividing by $1-\eta$ did not match the displayed source equation.

**What the paper says.** Under Assumption 2,

$$
p(i)=\begin{cases}
\min\{R,W/\gamma(i)\}^{1-\eta},&i\le I,\\
(W/\gamma(i))^{1-\eta},&i>I.
\end{cases}
$$

This is AER equation (5), p. 1496.

**Correct interpretation.** The exponent is positive and monotone, so the
allocation comparison remains $R\lesseqgtr W/\gamma(i)$ and the threshold
$W/R=\gamma(\widetilde I)$ is unchanged. The incorrect division would nonetheless
misstate task prices and any calculation using their levels. This was a real source
transcription error and was corrected before the Stage 1 commit.
