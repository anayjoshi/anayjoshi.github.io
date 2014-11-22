---
layout: post
title: Connecting two dots
category: posts
permalink: connecting-two-dots
summary: The connection between math olympiad and embedded software
---

From as far as I remember, I have been in love with discrete mathematics. Some of my most intellectually satisfying experiences have been in attempting to solve problems of the math olympiad genre. The underlying principles to solve a typical olympiad problem are embarrassingly simple, but the solution beats conventional wisdom. As a tenth grader, the first problem which introduced me to olympiad was this one:

> Given 8 numbers, say a1, a2, .. a8, we get a total of C(8,2) = 28 possible differences. Such as |a1 - a3|, |a8 - a2| etc. Prove that at least one of these 28 numbers is divisible by 7.

The solution to this problem is a one-liner; however, this is an unconventional problem. The solution to this problem rests in the [Pigeon Hole Principle](http://en.wikipedia.org/wiki/Pigeonhole_principle): a principle so obvious, one wonders why it has even got a name! Here is another problem

> Prove that there are infinitely many primes

This is the poster boy olympiad problem which exemplifies the beauty which olympiad enthusiasts crave for! If [this](http://en.wikipedia.org/wiki/Euclid's_theorem) solution by Euclid does not blow your mind, nothing can. If you found the above two problems easy enough, let me not leave you with an assumption that olympiad problems are simple one liner puzzles. Take a crack at this problem and tell me you could solve it; if you do indeed, I will send you a cookie!

> If a, b, q = (a^2 + b^2)/(ab + 1) are all integers, prove that q is always a perfect square

Now I didn't have the gifted intuition to solve the tougher olympiad questions such as the one mentioned above. This turned out as a boon, as I then had to focus on building a **problem solving toolkit**. A toolkit comprises of a set of mathematical constructs which can be applied across various genres of problems: `Invariance`, `Induction`, `Pigeon Hole Principle`, `Extremal Principle` are all examples of few the finest tools in a classic problem solving toolkit.

Now that I am designing embedded software at work, I can sense the need of a similar **robust design toolkit** for developing quality software. For example, `State Machines` is an indispensible entry in my embedded toolkit. If the philosophy of a given architecture fits into a well known mathematical structure, it is easy for engineers to collaborate on the design. In a distorted/non-orthogonal software implementation, if a new feature is to be added, different engineers would undoubtedly add the feature differently. If the philosophy of the architecture is mathematically consistent, it is likely that all engineers come up with similar suggestions for incorporating the change. 

Juxtaposing [Problem Solving Strategies](http://www.amazon.com/Problem-Solving-Strategies-Problem-Books-Mathematics/dp/0387982191) with [Introduction to Embedded Systems](http://leeseshia.org/) would throw more light on what I am saying.
