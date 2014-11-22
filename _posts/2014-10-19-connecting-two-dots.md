---
layout: post
title: Connecting two dots
category: posts
permalink: connecting-two-dots
summary: The connection between math olympiad and embedded software
---

From as far as I remember, I have been in love with discrete mathematics. Some of my most intellectually satisfying experiences have been in attempting to solve problems of the math olympiad genre. The underlying principles to solve a typical olympiad problem are terribly (perhaps embarrassingly) simple, but the solution requires a strange insight. As a tenth grader, the first problem which introduced me to olympiad was this one:

> Given 8 numbers, say a1, a2, .. a8, we get a total of C(8,2) = 28 possible differences. Such as |a1 - a3|, |a8 - a2| etc. Prove that at least one of these 28 numbers is divisible by 7.

The solution to this problem is a one-liner and most of you should be able to solve it rather quickly; however, this is a non-conventional problem. The solution to this problem rests in the [Pigeon Hole Principle](http://en.wikipedia.org/wiki/Pigeonhole_principle) ... a principle so obvious, one wonders why it has even got a name! Here is another problem

> Prove that there are infinitely many primes

This is the poster boy olympiad problem which exemplifies the beauty which olympiad enthusiasts crave for! If [this](http://en.wikipedia.org/wiki/Euclid's_theorem) solution by Euclid does not blow your mind, nothing can.

Now I didn't have the gifted ability to solve the tougher olympiad questions purely with my intuition. This turned out as a boon, as I then had to focus on building a **problem solving toolkit**. Solving a problem essentially became a pattern matching exercise where I tried to break a given problem into smaller chunks of problems; and tried to relate the smaller chunks of problems with other tools/problems I had come across.

Back to present. Now that I am writing embedded software at work, and my interests are more towards writing safety critical software, I get dejavu moments of my olympiad days. To have faith in the behaviour of the software, I try to mathematically formalise the software development exercise. It agains becomes a pattern matching exercise, where the job at hand is to break the specification into smaller specs which can fit into well known mathematically constructs (such as state machines).

If the philosophy of a given architecture fits into a well known mathematical structure, it is easy for engineers to collaborate on the design. In a distorted/non-orthogonal software implementation, if a new feature is to be added, different engineers would undoubtedly add the feature differently. If the philosophy of the architecture is mathematically consistent, it is likely that all engineers come up with similar suggestions for incorporating the change. 

Juxtaposing [Problem Solving Strategies](http://www.amazon.com/Problem-Solving-Strategies-Problem-Books-Mathematics/dp/0387982191) with [Introduction to Embedded Systems](http://leeseshia.org/) would throw more light on what I am saying.


Steve Jobs in his popular Stanford lecture had famously said that dots can only be connected looking backwards. Today, I drew a line between olympiad and embedded software :)
