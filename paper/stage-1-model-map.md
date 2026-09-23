# Stage 1 — model architecture and source map

This note is intentionally narrow. It establishes the task architecture and
identifies, without fully deriving, the results needed in Stage 2.

## Version discipline

- **AER** below means the published 2018 article, journal pages 1488–1542. It is
  the authority for the economic analysis and presentation.
- **NBER** means Working Paper 22252, revised June 2017, 87 PDF pages. It is the
  pinned source for the future Lean run in `papers/AR18RaceManMachine/`.
- The central equations and propositions inspected in Stage 1 retain the same
  numbers in these two versions. This note still records their pages separately;
  numerical agreement is not permission to mix citations.

## Minimal architecture (AER version)

### 1. Continuum of tasks and final output

A unit measure of tasks is indexed by $i\in[N-1,N]$, and final output is

$$
Y=\widetilde B\left(\int_{N-1}^{N}
y(i)^{\frac{\sigma-1}{\sigma}}\,di\right)^{\frac{\sigma}{\sigma-1}}.
\tag{1}
$$

Here $y(i)$ is output of task $i$, $\sigma$ is the elasticity of substitution
across tasks, and $\widetilde B>0$ is a normalization. The integration interval
always has length one. Raising $N$ does not add measure mechanically: it replaces
the bottom task $N-1$ with a more complex top task $N$. Diminishing returns at the
task-aggregation margin make the distribution of workers across tasks matter.

**Source:** AER Section I.A, equation (1), p. 1494. NBER Section 2, equation
(1), manuscript p. 6 (PDF p. 8).

### 2. Labor-only and automatable tasks

For tasks beyond the automation frontier, $i>I$, only labor is feasible:

$$
y(i)=\overline B(\zeta)\left[
\eta^{1/\zeta}q(i)^{(\zeta-1)/\zeta}
+(1-\eta)^{1/\zeta}(\gamma(i)l(i))^{(\zeta-1)/\zeta}
\right]^{\zeta/(\zeta-1)}.
\tag{2}
$$

For $i\le I$, capital is feasible and is a perfect substitute for effective
labor inside the task technology:

$$
y(i)=\overline B(\zeta)\left[
\eta^{1/\zeta}q(i)^{(\zeta-1)/\zeta}
+(1-\eta)^{1/\zeta}(k(i)+\gamma(i)l(i))^{(\zeta-1)/\zeta}
\right]^{\zeta/(\zeta-1)}.
\tag{3}
$$

$q(i)$ is a task-specific intermediate, $l(i)$ and $k(i)$ are task-level labor
and capital, $\gamma(i)$ is labor productivity, $\zeta$ is the elasticity between
the intermediate and the factor composite, and $\eta$ is the intermediate-input
share parameter. Thus $I$ is a **feasibility frontier**, not automatically the
equilibrium allocation frontier. An increase in $I$ makes capital feasible in an
additional marginal set of tasks.

**Source:** AER Section I.A, equations (2)–(3), pp. 1494–1495. NBER Section 2,
equations (2)–(3), manuscript pp. 6–7 (PDF pp. 8–9).

### 3. Comparative advantage and task allocation

Assumption 1 requires $\gamma(i)$ to be strictly increasing. Labor therefore has
strict comparative advantage at higher task indices. Under the homothetic cases
in Assumption 2, competitive unit cost is

$$
p(i)=\begin{cases}
\min\{R,W/\gamma(i)\}^{1-\eta}, & i\le I,\\[4pt]
(W/\gamma(i))^{1-\eta}, & i>I,
\end{cases}
\tag{5}
$$

where $R$ is the rental rate of capital and $W/\gamma(i)$ is the effective
labor cost in task $i$. The cost threshold $\widetilde I$ satisfies

$$
\frac{W}{R}=\gamma(\widetilde I),
\tag{6}
$$

so the equilibrium frontier is

$$
I^*=\min\{I,\widetilde I\}.
$$

Capital performs $i\le I^*$ and labor performs $i>I^*$. If
$I^*=I<\widetilde I$, technology constrains allocation and extra automation
moves the actual frontier. If $I^*=\widetilde I<I$, costs already constrain
allocation and a marginal rise in $I$ has no effect. This distinction is essential
for every later comparative static.

**Source:** AER Section I.B, equations (5)–(6), pp. 1496–1497. NBER Section 2,
equations (5)–(6), manuscript pp. 8–9 (PDF pp. 10–11).

### 4. Mechanical meaning of automation and new tasks

- **Automation:** when $I^*=I<\widetilde I$, a rise in $I$ transfers the
  marginal interval of tasks from labor to capital. The labor task range shrinks,
  which is the mechanical basis of displacement. Replacing expensive effective
  labor with cheaper capital also raises productivity; the wage implication must
  therefore compare these two forces rather than infer it from displacement alone.
- **New tasks:** a rise in $N$ shifts the unit task window to the right, replacing
  a bottom task with a top task where labor has higher productivity. Under
  Assumption 3, $R>W/\gamma(N)$, the new task is adopted immediately and
  performed by labor. This expands labor's task range and is the model mechanism
  that the course describes as **reinstatement**.
- The published AER and pinned NBER versions describe this mechanism as the
  *creation/introduction of new tasks*; the exact phrase “reinstatement effect” is
  not used in either inspected text. Stage 2 should keep the course label tied to
  the paper's equations and terminology.

## Source map for Stage 2

| Topic needed later | Exact result and location in the AER source | Conditions to retain | Why Stage 2 needs it | NBER cross-location (do not cite as AER) |
|---|---|---|---|---|
| Static equilibrium and endogenous shares | Proposition 1 and equation (12), Section I.B, pp. 1498–1499 | Assumptions 1–3 | Writes aggregate output as a CES in capital and labor whose share weights depend on $I^*$ and $N$. | Proposition 1/equation (12), Section 2, manuscript p. 10 (PDF p. 12) |
| Displacement; relative factor prices | Proposition 2, pp. 1500–1502: $d\ln(W/R)/dI=-\Lambda_I/(\widehat\sigma+\varepsilon_L)<0$ | Assumptions 1–3 and the technology-constrained case $I^*=I<\widetilde I$; zero marginal effect when $I^*=\widetilde I<I$ | Identifies the loss of labor tasks and the fall in relative labor demand. | Proposition 2, Section 2, manuscript pp. 11–12 (PDF pp. 13–14) |
| Employment | Proposition 2, p. 1501: labor share and employment move with $\omega=W/(RK)$; $dL/dI<0$ when $I^*=I$, while $dL/dN>0$ | Assumptions 1–3 and the paper's balanced-growth-compatible preferences/labor-supply schedule | Supplies the exact short-run signs and their preference dependence. | Proposition 2, manuscript pp. 11–12 (PDF pp. 13–14) |
| Labor share and capital share | Proposition 2 and discussion, pp. 1501–1502 | Same allocation cases as above | Automation lowers the labor share when it changes $I^*$; new tasks raise it. With exhaustive factor income, the capital share moves oppositely. | Proposition 2, manuscript pp. 11–12 (PDF pp. 13–14) |
| Productivity effect of automation | Proposition 3, pp. 1501–1503, especially $d\ln Y\vert_{K,L}$ and its $dI$ term | Assumptions 1–3; $I^*=I<\widetilde I$ and $W/\gamma(I^*)>R$ | Measures the cost saving from replacing effective labor by capital and separates productivity from displacement. | Proposition 3, manuscript pp. 12–14 (PDF pp. 14–16) |
| Wages and the nontrivial automation condition | Proposition 3, p. 1502, and discussion p. 1503: $d\ln W=d\ln Y\vert_{K,L}-(1-s_L)\Lambda_I dI/(\widehat\sigma+\varepsilon_L)$ for an automation-only change | Assumptions 1–3; technology-constrained allocation. There is a finite $\widetilde K$: automation raises the wage for $K>\widetilde K$ and lowers it for $K<\widetilde K$. | This is the short-run result required to answer the course trap rigorously in Stage 2. | Proposition 3, manuscript pp. 12–14 (PDF pp. 14–16) |
| New tasks / reinstatement | Propositions 2–3, pp. 1500–1503 | Assumptions 1–3, especially $R>W/\gamma(N)$ from Assumption 3 so the new task is adopted | A rise in $N$ raises $W/R$, employment, labor share, productivity, and the wage; it is the counterforce to displacement. | Propositions 2–3, manuscript pp. 11–14 (PDF pp. 13–16) |
| Balanced growth with exogenous technology | Assumption 1′, equation (15), and Proposition 4, Section II.A, pp. 1504, 1507–1508 | $\gamma(i)=e^{Ai}$, Assumption 2, transversality/case-specific conditions; an interior BGP with immediate automation requires $\dot N=\dot I$ and constant $n=N-I$ | Shows when automation and new-task creation advance together and why a constant labor task share is compatible with growth. | Assumption 1′/equation (15), Section 3 p. 15 (PDF p. 17); Proposition 4, manuscript pp. 17–18 (PDF pp. 19–20) |
| Long-run wage, employment, and labor share | Proposition 5 and discussion, Section II.B, pp. 1508–1511 | Assumptions 1′ and 2; interior path $n\in(0,1)$, $n>\widetilde n(\rho)$, constant $g$ | With capital adjustment holding $R=\rho+\delta+\theta g$, more automation raises the long-run wage but still lowers employment and labor share; new tasks move all three labor outcomes upward. | Proposition 5, Section 3.2, manuscript pp. 19–21 (PDF pp. 21–23) |
| Endogenous creation of new tasks and self-correction | Proposition 6 and Corollary 2, Section III, pp. 1515–1519 | Assumptions 1′, 2, 4; sufficiently small scientist supply $S$; the relevant $\rho$ and $\kappa_I/\kappa_N$ regions. A unique stable interior BGP requires the stated high relative automation-productivity threshold. | Distinguishes a temporary automation shock, whose effects can reverse, from a permanent shift in the innovation possibilities frontier, which leads to a new BGP. | Proposition 6 and Corollary 2, Section 4, manuscript pp. 25–29 (PDF pp. 27–31) |

Stage 2 should derive and interpret the short-run wage decomposition before using
the long-run capital-adjustment result. It should not collapse the wage result and
the labor-share result into a single sign claim.
