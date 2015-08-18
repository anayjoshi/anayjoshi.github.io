---
layout: page
title: "Problem #7"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[Problem Solving Strategies]**: We strike the first digit of \\(7^{1996}\\)
, and then add it to the remaining number. This is repeated until a number with \\(10\\) digits remains. Prove that this number has two equal digits

---

**Solution**:

The default way to approach this problem is to check how the transformation of striking the first digit and adding it to the remainig number looks like mathematically. Say we pick up any \\(n\\) digit number, then it may be represented as \\(a.10^n + b\\), where \\(a\\) is the first digit and \\(b\\) is the remaining number. The transformation, then looks like

$$T(a.10^n + b) = a + b$$

The crux of the solution is that the transformation retains the same remainder when divided by \\(3\\).

$$10 \equiv  1 \text{ mod } 3$$
$$10^n \equiv 1 \text{ mod } 3$$
$$a.10^n \equiv a \text{ mod } 3$$
$$a.10^n + b \equiv a + b \text{ mod } 3$$

Say we go ahead and apply the given transformation several times. When the number reduces to \\(10\\) digits, if all it's digits are unique, then the sum of digits of this \\(10\\) digit number would be \\(45\\); and hence, this \\(10\\) digit number would be divisible by \\(3\\). But since the original number, \\(7^{1996}\\) is not divisible by \\(3\\), no number in the series is going to be divisible by \\(3\\). A contradiction, and hence our proof.

This problem is a classic example of the `Invariance Principle`. We searched for an **invariant** in the transformation, which in this case the remainder when divided by \\(3\\).
