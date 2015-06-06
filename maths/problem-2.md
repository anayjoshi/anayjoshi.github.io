---
layout: page
title: "Problem #2"
cover: "/img/exclamation.png"
tags: numbers
---

---

**[RMO-2005]**: *If \\(x\\), \\(y\\) are integers and 17 divides both the expressions \\(x^2 - 2xy + y^2 - 5x + 7y\\) & \\(x^2 - 3xy + 2y^2 + x - y\\), then prove that 17 divides \\(xy - 12x + 15y\\)*

---

**Solution**


$$x^2 - 3xy + 2y^2 + x - y \equiv 0\;mod\;17$$

$$=> (x-y)(x - 2y + 1) \equiv 0\;mod\;17$$

**Case 1:** \\(x \equiv y\;mod\;17\\)

Since 

$$x^2 - 2xy + y^2 - 5x + 7y \equiv 0\;mod\;17$$

$$=> y^2 - 2y^2 + y^2 - 5y + 7y \equiv 0\;mod\;17$$

$$=> y \equiv 0\;mod\;17 \text{ and } x \equiv 0\;mod\;17$$

In this case, \\(xy - 12x + 15y\\) is divisible by 17 since \\(x\\) and \\(y\\) are individualy divisible by 17.

**Case 2:** \\(x \equiv 2y - 1\;mod\;17\\)

Since 

$$x^2 - 2xy + y^2 - 5x + 7y \equiv 0\;mod\;17$$

$$=> (2y-1)^2 - 2y^2 + y^2 - 5(2y-1) + 7y \equiv 0\;mod\;17$$

$$=> (y-2)(y-3) \equiv 0\;mod\;17$$

**Case 2a**: \\(y \equiv 2\;mod\;17 \text{ and } x \equiv 3\;mod\;17\\)

**Case 2b**: \\(y \equiv 3\;mod\;17 \text{ and } x \equiv 5\;mod\;17\\)

Both cases can be individually substituted in \\((xy - 12x + 5y)\\) and verified that the expression in \\((0\;mod\;17)\\)
