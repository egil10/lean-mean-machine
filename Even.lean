/-
  The classic: "2 * n is even" 🎯

  Open this in VS Code and watch the Lean Infoview. No red squiggles
  means every proof below is accepted by Lean.
-/


/- ------------------------------------------------------------
   Step 1: Define what "even" means.

   A number `n` is even when there EXISTS some `k` with `n = 2 * k`.
   `∃ k, ...` is read "there exists k such that ...".
   (Type ∃ in VS Code with \exists , then a space.)
   ------------------------------------------------------------ -/

def Even (n : Nat) : Prop := ∃ k, n = 2 * k


/- ------------------------------------------------------------
   Step 2: Prove 2 * n is even.

   To prove an "exists", you give two things bundled in ⟨ ⟩:
     1. the witness k        -- here it's `n`
     2. a proof that n = 2*k -- here `2 * n = 2 * n`, true by `rfl`
   (Type ⟨ ⟩ with \< and \> , or \langle \rangle .)
   ------------------------------------------------------------ -/

theorem two_mul_even (n : Nat) : Even (2 * n) :=
  ⟨n, rfl⟩


/- ------------------------------------------------------------
   Step 3: The SAME proof, written in tactic mode.

   Some people find this style easier to read. `exists n` says
   "use n as the witness", and Lean closes the leftover
   `2 * n = 2 * n` automatically.
   ------------------------------------------------------------ -/

theorem two_mul_even' (n : Nat) : Even (2 * n) := by
  exists n


/- ------------------------------------------------------------
   Step 4: Even works on concrete numbers too.

   `Even 4` because 4 = 2 * 2, so the witness is 2.
   Lean checks `4 = 2 * 2` by computation (`rfl`).
   ------------------------------------------------------------ -/

example : Even 4 := ⟨2, rfl⟩
example : Even 10 := ⟨5, rfl⟩
example : Even 0 := ⟨0, rfl⟩


/- ------------------------------------------------------------
   Step 5: Try it yourself!

   Uncomment and fill in the witness (the `?`):
   ------------------------------------------------------------ -/

-- example : Even 6 := ⟨?, rfl⟩          -- what k makes 6 = 2 * k?
-- example : Even 100 := ⟨?, rfl⟩        -- and 100?
