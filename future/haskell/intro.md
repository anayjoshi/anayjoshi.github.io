

- Functions are first-class, that is, functions are values which can be used in exactly the same ways as any other sort of value.
- The meaning of Haskell programs is centered around evaluating expressions rather than executing instructions.

referentially transparent, that is:

- No mutation! Everything (variables, data structures…) is immutable.
- Expressions never have “side effects” (like updating global variables or printing to the screen).
- Calling the same function with the same arguments results in the same output every time.

Parallelism: Evaluating expressions in parallel is easy when they are guaranteed not to affect one another.

