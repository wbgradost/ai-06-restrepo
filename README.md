# Repository 6 — Acemoglu & Restrepo (2018)

*The Race between Man and Machine: Implications of Technology for Growth, Factor
Shares, and Employment*, American Economic Review 108(6), 1488–1542.

## Current status

Stage 1 fixes the source boundary and records the model architecture needed for
the economic analysis. It does not yet present the final answer to the course
question, a hand derivation, slides, or a Lean formalization.

The economic analysis and presentation use the published AER article. The future
Lean run will instead use NBER Working Paper 22252, revised June 2017. Locations
from the two versions are recorded separately in
[`paper/stage-1-model-map.md`](paper/stage-1-model-map.md).

## Model architecture in one paragraph

Final output is a CES aggregate of a unit measure of tasks
$i\in[N-1,N]$. All tasks can use labor, while the technological automation
frontier $I$ makes capital feasible only for tasks $i\le I$. Labor productivity
$\gamma(i)$ is strictly increasing, so labor has comparative advantage in
higher-index tasks. Relative factor costs define a cost threshold $\widetilde I$
by $W/R=\gamma(\widetilde I)$, and the task actually separating capital from
labor is $I^*=\min\{I,\widetilde I\}$. Therefore capital performs
$[N-1,I^*]$ and labor performs $(I^*,N]$. Automation can move $I^*$ to the
right and compress labor into fewer tasks; creating new tasks moves $N$ to the
right and replaces a low-index task with a high-index task in which labor has
comparative advantage.

## Repository roadmap

- `paper/README.md`: pinned source identities and retrieval routes.
- `paper/stage-1-model-map.md`: equation-level architecture and the source map
  for Stage 2.
- `prompts.md`: the real prompt record, beginning with the Stage 1 request.
- `hand/`, `presentation.tex`, `presentation.pdf`, and `lean/`: intentionally
  absent until the stages that produce genuine versions of those artifacts.
