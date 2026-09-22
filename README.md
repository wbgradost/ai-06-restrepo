# Repository 6 — Acemoglu & Restrepo (2018)

*The Race between Man and Machine: Implications of Technology for Growth, Factor
Shares, and Employment*, American Economic Review 108(6), 1488–1542.

## Question and answer

Does automation necessarily reduce wages and the labor share? No single sign
applies to both outcomes. A rise in technological automation $I$ first has to move
equilibrium automation $I^*=\min\{I,\widetilde I\}$. If
$I^*=I<\widetilde I$, effective automation transfers tasks from labor to capital.
The labor share and employment fall, but the wage is conditional because two
forces compete:

- **Displacement:** labor is compressed into fewer tasks, lowering $W/R$ and the
  labor share.
- **Productivity:** cheaper capital replaces effective labor, raising output and
  labor demand in the tasks that remain.

Under Assumptions 1–3, Proposition 3 establishes a finite capital threshold
$\widetilde K$: automation raises the wage when $K>\widetilde K$ and lowers it
when $K<\widetilde K$. Output therefore can rise while the wage falls; the wage
can also rise while the labor share falls.

## Reinstatement and capital adjustment

Creating new tasks raises $N$ and introduces higher-index tasks in which labor has
comparative advantage. Under Assumption 3, $R>W/\gamma(N)$, those tasks are
adopted with labor, raising productivity, wages, employment, and the labor share.
This is the reinstatement mechanism.

On the interior balanced-growth paths in Proposition 5, capital adjusts to keep
$R=\rho+\delta+\theta g$. Long-run automation then raises the wage but still
reduces employment and the labor share. Under Proposition 6's stability
conditions, new-task incentives can reverse a temporary automation imbalance;
Corollary 2 shows that a permanent shift favoring automation instead leads to a
new BGP with lower employment and labor share.

## AI audit

The initial AI transcription of AER equation (5) divided effective task cost by
$1-\eta$. The paper raises it to the power $1-\eta$. The correction preserves the
allocation threshold because the power is monotone, but it matters for task-price
levels. The complete audit and economic analysis are in
[`paper/stage-2-economic-results.md`](paper/stage-2-economic-results.md).

## Hand derivation

[`hand/derivation-guide.md`](hand/derivation-guide.md) isolates Proposition 3's
productivity and displacement terms. For an automation-only change, the wage
rises exactly when the productivity term exceeds displacement; the guide then
records the AER capital threshold and contrasts the conditional wage with the
unambiguous fall in $W/R$. It is a guide for a real handwritten copy, not
synthetic handwriting.

## Lean formalization

The original Lean run uses NBER Working Paper 22252, revised June 2017, not the
published AER pagination. It proves one implication following NBER equation
(6): if a task lies strictly below the minimum of the technological automation
frontier and the cost frontier, then it is technologically eligible for capital
and $R<W/\gamma(i)$. The statement assumes a strictly increasing $\gamma$ and
explicitly positive prices and productivity.

Lean does **not** verify a complete proposition, equilibrium existence or
uniqueness, wage effects, factor shares, dynamics, or balanced growth. The
focused target and the required fast contribution check passed; the complete
public run, including pending audit scaffolding and a precise scope report, is
in [`lean/`](lean/AR18RaceManMachine/docs/COURSE_RUN_REPORT.md).

## Repository contents

- `paper/README.md`: pinned AER and NBER source identities.
- `paper/stage-1-model-map.md`: equation and source map.
- `paper/stage-2-economic-results.md`: economic results and AI audit.
- `hand/derivation-guide.md`: short wage-effect derivation to copy by hand.
- `prompts.md`: real conversation record.
- `lean/`: complete public output of the course-scoped Lean run.
- `presentation.tex` and `presentation.pdf`: 20-minute presentation.
- The final handwritten evidence remains to be inserted.
