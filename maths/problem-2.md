---
layout: page
title: "Problem #2"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[RMO-1992]:** *Determine the set of integers n for which \\(n^2 + 19n + 92\\) is a perfect square*

---

**Solution**

Say \\(n^2 + 19n + 92 = m^2\\)

Substitute \\(k = n-9\\)

$$n^2 + 19n + 92 = k^2 + k + 2 = m^2$$

$$=> \left(k + \frac{1}{2}\right)^2 + \frac{7}{4} = m^2$$

$$=> m^2 - \left(k + \frac{1}{2}\right)^2 = \frac{7}{4}$$

$$=> \left(m - k - \frac{1}{2}\right)\left(m + k + \frac{1}{2}\right) = \frac{7}{4}$$

$$=> (2m - 2k -1)(2m + 2k + 1) = 7$$

Since the 7 is a prime number, there are only two possibilities for the above case

**Case 1:** \\(2m - 2k - 1 = 1 \text{ and } 2m + 2k + 1 = 7\\)

**Case 2:** \\(2m - 2k - 1 = 7 \text{ and } 2m + 2k + 1 = 1\\)

The first case gives the solution \\((m = 2, k = 1)\\). The second case gives the solution \\((m = 2, k = -2)\\). Thus, the only values for \\(n\\) for which \\(n^2 + 19n + 92\\) is a perfect square are \\(-8\\) and \\(-11\\)
