---
layout: page
title: "Problem #5"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[INMO-1996]**: Define a sequence \\(a_n\\) by \\(a_1 = 1, a_2 = 2\\), and \\(a_{n+2} = 2a_{n+1} - a_n + 2\\) for \\(n >= 1\\). Prove that for any \\(m\\), \\(a_m a_{m+1}\\) is also a term in the sequence.

---

**Solution**:

Polynomial equations are very closely linked with sequences. Let's try to find a general expression for \\(a_n\\). Since the recurrence relation has a depth of \\(2\\), a good guess is to assume \\(a_n = pn^2 + qn + r\\). Matching the initial conditions forces:

$$p + q + r = 1$$

$$4p + 2q + r = 2$$


We need one more equation to solve for \\(p, q, r\\). Plugging the form of \\(a_n\\) into the given recurrence relation, we get 

\\(p(n+2)^2 + q(n+2) + r = 2p(n+1)^2 + 2q(n+1) + 2r - pn^2 - qn - r + 2\\)

The coeffient of \\(n^2\\) and \\(n\\) in both LHS and RHS turn out to be \\(p\\) and \\(4p + q\\) respectively. But equating the constant term tells that \\(p = 1\\). Now, solving for \\(q\\) and \\(r\\) using the two equations mentioned before, we get \\(q = -2, r = 2\\)

$$a_n = n^2 - 2n + 2$$

Now that we know the general form of \\(a_n\\), we can try to evaluate \\(a_m a_{m+1}\\), which would turn out to be a fourth degree polynomial. Let's now make a reasonable assumption: \\(a_m a_{m+1} = a_{s}\\) where \\(s = xm^2 + ym + z\\) for some constants \\(x, y, z\\). The motivation for this guess is that we are trying to represent a fourth degree polynomial of \\(m\\) in terms of \\(a_s\\). Throw in some number manipulation, and we get \\(a_m a_{m+1} = a_{m^2 - m + 2}\\), which completes our proof.

**Commentary**:

On the surface, the assumptions taken in this solution might seem to be coming out of the blue. But I like to think of this problem as a nice example of `System Identification`. Engineers might especially be able to relate with this solution. In real world problems, engineers are often required to make intelligent guesses/models about the physical system which they are working on. An example is to guess the transfer function of an electronic circuitry based on some emperical data. Relating to this problem, if you try to play around with the given recurrence relation (which is akin to experimentation and gathering emperical data), you would quickly tend to make the assumption that \\(a_n\\) could be a quadratic expression of \\(n\\).

