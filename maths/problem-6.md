---
layout: page
title: "Problem #6"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[Tournament of the Towns]**: The sequence \\(a_n\\) is defined as follows: \\(a_0 = 9\\), \\(a_{n+1} = 3a^4 + 4a^3\\) for \\(n > 0\\). Show that \\(a_{10}\\) contains more than \\(1000\\) nines in decimal notation.

---

**Solution**:

Since the end result in terms of decimal notation, it makes sense to go modulo \\(10\\). Also, for such problems, it is always advisable to experiment around a bit. \\(a_0 = 9\\), \\(a_1 = 22599\\). This gives us a hint. Maybe, the nines are always trailing. Since 

$$a_0 \equiv -1 \text{ mod } 10$$

$$a_1 \equiv -1 \text{ mod } 100$$

$$\text{Maybe } a_n \equiv -1 \text{ mod } 10^{2^n}$$

If this assumption turns out to be true, then indeed \\(a_10\\) would end with atleast 1023 nines which would complete our proof. Once the general idea is in place, it is easy to prove that the assumption mentioned above is true. Assume \\(a_n = p10^q - 1\\) which is true for \\(n = 0\\), where \\(p = 1, q = 1\\), It's also true for \\(n = 1\\), where \\(p = 226, q = 2\\)  

$$a_{n+1} = 3{a^n}^4 + 4{a_n}^3$$

$$=> a_{n+1} = 3p^4 10^{4q} - 8p^3 10^{3q} + 6p^2 10^{2q} - 1$$

$$=> a_{n+1} = (3p^4 10^{2q} - 8p^3 10^{q} + 6p^2 10^{2q})10^{2q} - 1$$

Thus, if \\(a_n \equiv -1 \text{ mod } 10^q\\) then \\(a_{n+1} \equiv 1 \text{ mod } 10^{2q}\\), which by induction implies \\(a_{10} \equiv -1 \text{ mod } 10^{1024}\\), hence completing out proof.
