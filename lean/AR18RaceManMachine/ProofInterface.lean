import AR18RaceManMachine.PaperInterface

/-!
# Proof Interface: The Race Between Machine and Man: Implications of Technology for Growth, Factor Shares and Employment

This file contains exact-type proof endpoints for the transparent propositions
in `PaperInterface.lean`. It is not a human semantic-review surface: one source
claim is reviewed once, against its expanded `...Spec : Prop` declaration.
-/

namespace AR18RaceManMachine

/--
Lean proof endpoint for `capital_cheaper_below_equilibrium_thresholdSpec`.

This theorem is intentionally outside `PaperInterface.lean`: Lean Meta checks
that it has exactly the transparent Spec type, while source-to-Lean semantic
review compares the raw source bundle only to that Spec.
-/
theorem capital_cheaper_below_equilibrium_threshold :
  capital_cheaper_below_equilibrium_thresholdSpec := by
  intro γ w r automationThreshold costThreshold i hγ hγpos _ hr hthreshold hi
  constructor
  · exact le_of_lt (lt_of_lt_of_le hi (min_le_left _ _))
  · have hiCost : i < costThreshold :=
      lt_of_lt_of_le hi (min_le_right _ _)
    have hγlt : γ i < w / r := by
      rw [hthreshold]
      exact hγ hiCost
    have hmul : γ i * r < w := (lt_div_iff₀ hr).mp hγlt
    apply (lt_div_iff₀ (hγpos i)).mpr
    simpa [mul_comm] using hmul

end AR18RaceManMachine
