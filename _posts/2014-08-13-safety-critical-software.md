---
title: Safety Critical Software
category: posts
layout: post
permalink: safety-critical-software
---

Let me start off by insulting myself. I have been programming for about 3 years now, and I can confidently say that I have not yet written a bug free piece of software spanning more than 100 lines. That's quite a bad track record, I can hear you say .. but don't judge me yet! Most application domains would be happy to run my programs, but I would suggest you not to board an airplane running my firmware! The jump between *good software*, and *safety critical software* is much larger than what one would presume.

It surprises me that despite the heights man has reached in most disciplines of science & engineering, we have not yet understood how to write quality software! We can fabricate silicon chips housing billions of transistors, we can build transatlantic bridges, we can dig the seabed for oil. In front of these engineering miracles, writing quality software should appear a cake walk! Apparently, it isn't.

![all-your-bug-are-belong-to-me]({{site.url}}/img/all-your-bug-are-belong-to-me.png)

It is in the very nature of software programs to fail. Grey hair around the world have been trying their best to reduce the number of these failures. Languages such as [Ada](http://en.wikipedia.org/wiki/Ada_(programming_language\)) have been specifically designed for safety critical applications. **C** has been subsetted by [MISRA-C](http://www.embedded.com/electronics-blogs/beginner-s-corner/4023981/Introduction-to-MISRA-C) guidelines to reduce the probability of programs failing. Unit testing and code coverage have become unquestionable. People have tried to build processes to mathematically model and prove that a given software implementation works. It is a great game between the program and the programmer. The program by nature, finds pitfalls to fail, and the programmer tries to fill in all gaps. Its indeed a game, but when the program starts winning, trust me .. it is not fun.

The whole world goes gaga over the rate at which computational power has increased over the last few decades. Your smartphone today is much more powerful than computers 20 years ago they say. Here is a different take: it is very likely that [Curiosity](http://en.wikipedia.org/wiki/Curiosity_(rover\)) has less computational power than the laptop on which you are reading this article. Your laptop can happily crash while you are midway reading this sentence, Curiosity can't afford to crash. Computational power is half the story .. Robustness is the other half.

We have around half a century worth of programming experience, yet we are far from patting our backs. Having said that, avionics and space agencies, have so far managed to [lift the collars](http://www.fastcompany.com/28121/they-write-right-stuff) of the software industry. Slowly but surely, we would make friends with programs and live happily thereafter!

