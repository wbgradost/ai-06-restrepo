<!-- BEGIN GENERATED PAPER FOLDER README -->
# The Race Between Machine and Man: Implications of Technology for Growth, Factor Shares and Employment

| Field | Value |
|---|---|
| Final status | Partially formalized |
| Paper reference | Daron Acemoglu and Pascual Restrepo, NBER Working Paper 22252, revised June 2017. |
| Lean lines in this paper folder | 173 |

## Key Links

- Course-scoped run report: [COURSE_RUN_REPORT.md](docs/COURSE_RUN_REPORT.md)
- Final validation report: not generated; paper-wide semantic closeout remains pending.
- Dependency DAG: not tracked in this folder.
- Compact Lean interface: [PaperInterface.lean](PaperInterface.lean)
- Source/status JSON: [status.json](status.json); [paper statement map](audit/paper_statement_map.json).
- Additional documentation: [FORMALIZATION_NOTES.md](docs/FORMALIZATION_NOTES.md)

## Formalized scope

The course run formalizes one implication following NBER equation (6): if a
task lies strictly below the minimum of the technological automation frontier
and the cost frontier, then it is technologically eligible for capital and
capital is strictly cheaper than effective labor for that task. The exact-type
proof endpoint is `capital_cheaper_below_equilibrium_threshold`.

The focused paper build and
`paper_contribution.py check AR18RaceManMachine --fast` passed. The proof is
closed without `sorry` or `admit`.

## Verification boundary

Lean does not verify the complete static equilibrium, threshold existence or
uniqueness, Propositions 1--9, wage or factor-share comparative statics,
dynamics, balanced growth, or welfare. The raw-source-to-expanded-Spec review,
paper-wide source inventory, final validation report, and dependency DAG remain
pending. The audit JSON files are preserved as pending scaffolding, not as
completed validation.
<!-- END GENERATED PAPER FOLDER README -->
