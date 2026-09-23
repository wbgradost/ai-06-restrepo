# Course-scoped Lean run

## Source

- Acemoglu and Restrepo, NBER Working Paper 22252, revised June 2017.
- Local source SHA-256:
  `441d01202afd56ef8002fc24ffc2beb51191741c0b5accb11d2534620dd616b7`.
- Selected location: Section 2.2, p. 8, equation (6) and the two paragraphs
  immediately following it.
- This source and numbering are not the published AER version.

## Selected claim

The paper defines the cost threshold by
`W / R = gamma(costThreshold)` and the effective automation threshold by the
minimum of the technological and cost thresholds. The course run formalizes the
following implication: a task strictly below that minimum is technologically
eligible for capital and capital is strictly cheaper than effective labor for
that task.

## Lean statement and assumptions

`capital_cheaper_below_equilibrium_thresholdSpec` quantifies over a strictly
increasing productivity schedule `gamma`, positive factor prices, positive
task productivity, the threshold equality, and
`i < min automationThreshold costThreshold`. It concludes

```lean
i ≤ automationThreshold ∧ r < w / gamma i
```

Strict monotonicity corresponds to the paper's Assumption 1. Positivity of
prices and productivity is made explicit for ordered-field division. These
conditions support only the displayed implication; they are not a formalization
of the complete static equilibrium.

## What Lean proves

The exact-type endpoint
`capital_cheaper_below_equilibrium_threshold` proves the selected implication
without `sorry`, `admit`, new axioms, `opaque`, or `native_decide`. The
proof obtains each component from the minimum bound, applies strict
monotonicity to the cost frontier, and uses positivity to preserve inequalities
when multiplying and dividing.

## What Lean does not prove

This run does not prove uniqueness or existence of the cost threshold, the
production technology, equilibrium task assignment as an economic relation,
Propositions 1--9, wage or factor-share comparative statics, dynamics, balanced
growth, or welfare. The paper-wide v11 source inventory and independent
semantic closeout were not performed. Accordingly, the generated audit
scaffold remains visibly pending and must not be read as full-paper
verification.

## Validation

- Focused target: `LEAN_NUM_THREADS=1 lake build +AR18RaceManMachine` — passed.
- Required course check:
  `PYTHONPATH=. LEAN_NUM_THREADS=1 python3 scripts/paper_contribution.py check AR18RaceManMachine --fast` — passed.
- The first direct file check failed because the new imported modules had not
  yet been built. The first focused target attempt then exposed an overly
  narrow import that omitted `Real`; replacing it with
  `Mathlib.Data.Real.Basic` repaired the issue.
