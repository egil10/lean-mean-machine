/-
  Welcome to Lean 4! 👋

  This is a super simple intro file. Open it in VS Code (with the
  "Lean 4" extension installed) and the results will show up in the
  "Lean Infoview" panel on the right.

  Tips while reading:
    • Put your cursor on a `#check`, `#eval`, or `example` line.
    • Look at the Infoview panel to see Lean's response.
    • A green checkmark / no red squiggles = everything is correct.

  Comments come in two flavors:
    -- a single line comment
    /- a block comment, like this one -/
-/


/- ============================================================
   1. Computing things with #eval
   ============================================================ -/

-- `#eval` runs an expression and prints the result.
#eval 1 + 1                 -- 2
#eval 2 * 3 + 4             -- 10
#eval "Hello, " ++ "Lean!"  -- "Hello, Lean!"
#eval List.range 5          -- [0, 1, 2, 3, 4]


/- ============================================================
   2. Asking Lean for the *type* of something with #check
   ============================================================ -/

#check 42          -- 42 : Nat        (a natural number 0, 1, 2, ...)
#check "hi"        -- "hi" : String
#check true        -- true : Bool
#check (1, "two")  -- (1, "two") : Nat × String


/- ============================================================
   3. Defining your own values and functions
   ============================================================ -/

-- A plain value:
def myFavoriteNumber : Nat := 7

-- A function that doubles its input:
def double (n : Nat) : Nat := n * 2

-- A function with two arguments:
def add (a : Nat) (b : Nat) : Nat := a + b

#eval myFavoriteNumber   -- 7
#eval double 21          -- 42
#eval add 3 4            -- 7

-- A function that returns a String:
def greet (name : String) : String := "Hello, " ++ name ++ "!"

#eval greet "world"      -- "Hello, world!"


/- ============================================================
   4. Your first proofs! 🎉

   In Lean you can *prove* that things are true. `example` states
   a fact, and `by ...` is the proof. `rfl` means "this is true
   by simple computation" (reflexivity).
   ============================================================ -/

example : 2 + 2 = 4 := by rfl

example : double 5 = 10 := by rfl

example : greet "Lean" = "Hello, Lean!" := by rfl

-- A tiny theorem with a name you could reuse later:
theorem add_zero_example (n : Nat) : n + 0 = n := by rfl


/- ============================================================
   5. Now try it yourself!

   Uncomment a line below (delete the leading `--`) and watch
   the Infoview. Then try changing the numbers or text.
   ============================================================ -/

-- #eval double 100
-- #eval greet "your name here"
-- #eval add 10 32

-- example : 3 * 3 = 9 := by rfl
