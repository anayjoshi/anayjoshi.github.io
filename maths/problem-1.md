---
layout: page
title: "Problem #1"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[RMO-1991] :** *Prove that \\(n^4 + 4^n\\) is composite for all integer values of n greater than 1.*

---

**Solution**:

The two *basic* ways of proving that an expression is composite are:

1. Prove that a prime number always divides the given expression
2. The expression can be factored into multiple factors.

The second approach works in this case. The identity \\((a^2 - b^2) = (a - b)(a + b)\\) is the often useful in such cases. A natural way to proceed is to try to convert the given expression into a format closer to \\((a^2 - b^2)\\)

$$n^4 + 4^n = (n^2)^2 + (2^n)^2$$

$$(n^2)^2 + (2^n)^2 = (n^2 + 2^n)^2 - 2.n^2.2^n$$

$$ = (n^2 + 2^n - n.2^{\frac{n+1}{2}}).(n^2 + 2^n + n.2^{\frac{n+1}{2}})$$

That's pretty much it! Note that we used the fact that \\(n\\) is odd; this made \\(n^2.2^{n+1}\\) a perfect square. When \\(n\\) is even, the given expression is also even and hence composite.
