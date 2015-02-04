---
title: My story with Haskell. Thus far
category: posts
layout: post
permalink: blog/my-story-with-haskell
summary: On how this language changed the way I program
tags: haskell software
---
![Haskell Logo](/img/haskell-logo.png)

> Functional Paradigm is the Queen of Programming Paradigms, and Haskell is the Queen of Functional Languages
- *Hypothetical Gauss in the 21st Century*

## Chapter 1. Haskell knocks the door

In my final year at college, I was starting to pump out code and I was in search for a tool to help me manage all those terminal instances. A friend suggested [xmonad](http://xmonad.org/), a tiling window manager. I played around with it for a week or so, but I eventually let it go. While tinkering with xmonad, I discovered it was one of the more popular Haskell program out there. I had not heard of Haskell before. Now, I had.

## Chapter 2. Infatuation

Haskell introduced me to functional programming, and I got hooked on to it. I had casually seen Lisp before, but code written in Lisp has that unfortunate overload of (((round) brackets)), and I had immediately taken my eyes off it. **Haskell has a beautiful syntax**. If you have never seen Haskell before, look at the code below. The program shown computes the factors of a given number. This might not be the most efficient implementation, but heck, just look at it.

```haskell
factors :: Integer -> [Integer]
factors n = temp n [2..(n-1)]
    where
        temp 1 xs = []
        temp _ [] = []
        temp k (x:xs) = if (mod k x == 0)
                        then x : temp (k `div` x) (x:xs)
                        else temp k xs


main = do
    print $ factors 252
```

This would print `[2,2,3,3,7]` on the screen. For reference, the Python equivalent (in the functional paradigm) for this code looks like this

```python
def factors(n):

    def temp(k, x_xs):
        if (k == 1):
            return []
        elif not x_xs:
            return []
        else:
            x = x_xs[0]
            if (k % x == 0):
                return ([x] + temp(k/x, x_xs))
            else:
                return (temp(k, x_xs[1:]))

    return temp(n, [i for i in range(2, n-1)])

if __name__ == "__main__":
    print factors(252)
```

You might like Python just as I do, but I know you agree with me: functional code in Python looks rather ugly. 

I am fond of mathematics & Haskell is *Oh, so Mathematical!*. Say we want to find solutions to the Linear Diophantine Equation `5*x + 7*y = 100` where `x` and `y` are positive integers. For Haskell, this is a trivial coin toss.

```haskell
main = print [(x,y) | x <- [1..100], y <- [1..100], 5*x + 7*y == 100]
```

Everything in Haskell was so different, I felt I was learning programming for the first time ever! For example, here is a glimpse of Haskell's type system.

```python
class Complex:

    def __init__(x, y):
        assert isinstance(x, float)
        assert isinstance(y, float)
        self.x = x
        self.y = y

    def __add__(self, other):
        c = Complex(0, 0)
        c.x = self.x + other.x
        c.y = self.y + other.y
        return c
```

is equivalent to 

```haskell
data Complex = Complex {x :: Double, y :: Double} deriving(Num)

instance Num (Complex) where
    (+) (Complex x1 y1) (Complex x2 y2) = Complex (x1+x2) (y1+y2)
```

This is similar to saying that `Complex` is a subclass of `Num` & that `+` is a virtual function of the `Num` class.

## Chapter 3. Interlude

Before Haskell entered my life, I had just begun to gain some confidence over my programming skills. Haskell told me how ignorant I was. Haskell lives in a parallel universe & its not just about *functional programming*. Other languages such as Lisp and ML are functional but are much more sobre than Haskell. Haskell, in its untiring aim to be a *pure functional language* is much more difficult to comprehend.

After a few chapters of [Learn you a Haskell](http://learnyouahaskell.com/chapters) (which btw, is a fantastic resource to learn Haskell), I met `functors`, `applicative functors` & `monads`. I was bowled. More so because the [infinite web tutorials](https://www.haskell.org/haskellwiki/Monad_tutorials_timeline) on monads indicated that monads must be somewhat difficult. I had to take a break from Haskell. I was probably not prepared yet to see monads in its eyes.

## Chapter 4. Reunion

Fast forward an year. At work, my primary language was Python. By now, `iterators`, `decorators`, `generators` were in my Python toolbox. I had seen elements of functional & lazy programming in Python by now. Occasionally, I started to come across blog posts which talked about `itertools` & how Haskell had influenced Python. Nostalgia. I was back on Haskell in my after office hours.

## Chapter 5. Love

That's today. Here I am, madly in love with this language. Having attempted (and partially failed) to build complex software systems in C++ and Python, I can now appreciate Haskell's *purity*. I had previously [written](http://anayjoshi.com/blog/connecting-two-dots) on the importance of mathematics in programming; for complicated programs, *function composition* seems to be **the** way to write programs!

I am a still a fledgeling in Haskell but I positively hope Haskell to supplant Python as my primary language. I like Python, but Haskell is in a different league, a better league. Reading about Haskell is a very humbling experience. Many a times, when Haskell becomes too heavy for me, I almost tend to leave it and go back to the more manageble languages. But it hurts my ego, and I keep coming back to Haskell to save my honor. Many a times, the only reason I read about monads is for the sake of my self respect! [This](http://www.xent.com/pipermail/fork/Week-of-Mon-20070219/044101.html) article is a perfect reflection of my emotions with Haskell. It seems my story with Haskell is going to be pretty darn long!

