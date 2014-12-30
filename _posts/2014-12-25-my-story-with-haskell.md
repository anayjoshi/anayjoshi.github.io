---
title: My story with Haskell. Thus far
category: posts
layout: post
permalink: blog/my-story-with-haskell
summary: On how this language changed the way I program
---

> Functional Languages is the Queen of Programming Languages, and Haskell is the Queen of Functional Languages
- *Hypothetical Gauss in the 21st Century*

## Chapter 1. Haskell knocks the door

In my final year at college, I was starting to pump out code and I was in search for a tool to help manage all those terminal instances. A friend suggested [xmonad](http://xmonad.org/), a tiling window manager. I played around with it for a week or so, but I eventually let it go. While tinkering with xmonad, I discovered it was one of the more popular Haskell program out there. I had not heard of Haskell before. Now, I had.

## Chapter 2. Infatuation

Haskell introduced me to functional programming, and I got hooked on to it. I had casually seen Lisp before, but code written in Lisp has that unfortunate overload of (((round) brackets)), and I had immediately taken my eyes off it. **Haskell has a beautiful syntax**. To be more accurate, *Haskell has a beautiful syntax for recursive problems*. When it comes to graphs and state machines et all, Haskell isn't exactly that pretty but lets ignore the marginal ugliness for now. If you have never seen Haskell before, look at the code below. The program shown computes the factors of a given number. This might not be the most efficient implementation, but heck, just look at it.

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

If you run this program, it would print `[2,2,3,3,7]` on the screen. For reference, the Python equivalent (in the functional paradigm) for this code looks like this

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

You might love Python just as I do, but I know you agree with me: functional code in Python looks rather ugly. Of course, there are much better looking implementations in Python, but you get my point I assume.

## Chapter 3. Brutality & Interlude

I had just begun to gain some confidence over my programming skills when Haskell told me how ignorant I was. Haskell lives in a parallel universe & its not just about *functional programming*. Other languages such as Lisp and ML are functional but are much more sobre than Haskell. Haskell, in its untiring aim to be a *pure functional language* is much more difficult to comprehend.

After 10 chapters of [Learn you a Haskell](http://learnyouahaskell.com/chapters) (which btw, is a fantastic resource to learn Haskell), I met functors, applicative functors & monads. I was bowled. More so because the [infinite web tutorials](https://www.haskell.org/haskellwiki/Monad_tutorials_timeline) on monads indicated that monads must be somewhat difficult. I had to take a break from Haskell. I was probably not prepared yet to see monads in its eyes.

## Chapter 4. Reunion

After spending countless hours with Python, I had started to enter the intermediate level of being a Pythonista. By now, *iterators*, *decorators*, *generators* were in my Python toolbox. I had also suddenly started to come across blog posts which talked about *itertools* & how Haskell has influenced Python. Nostalgia. I was back on Haskell in my post office hours.

## Chapter 5. Love

Along my journey with Python, I had started to dislike its type system. When I came back to Haskell with a lot more vigor compared to my first stint, I realized how amazing Haskell's type system was! I don't really have the credibility to compare Haskell's type system with many other languages, but the programming community in general agrees that Haskell has probably the best type system among all languages. 

```python
class Complex:

    def __init__(x, y):
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

Haskells `type variables`, `type classes`, `type constructors`, `type inference` were very new to my eye. In short, Haskell's type system had blown my mind. I had fallen in love.

## Chapter 6. Meditation

*Monads*: Probably the most feared programming concept out there. I have still not quite wrapped my head around Haskell, but I feel much more confident now with the realization that Monads are probably not really all that difficult. In fact, I had rather comfortably used list comprehension during my infatuation days without realising the monadic nature of list comprehension.

Say we want to find solutions to the Linear Diophantine Equation `5*x + 7*y = 100` where `x` and `y` are positive integers. For Haskell, this is a trivial coin toss.

```haskell
main = print [(x,y) | x <- [1..100], y <- [1..100], 5*x + 7*y == 100]
```

A one line program. The program above uses *list comprehension* which is just syntactic sugar on top of list Monads. The same program could be written as

```haskell
solutions = [1..100] >>= (\x -> [1..100] >>= (\y -> if (5*x + 7*y == 100) then [(x,y)] else []))

main = print solutions
```

or as 

```haskell
solutions = do
    x <- [1..100]
    y <- [1..100]
    if (5*x + 7*y == 100) then [(x,y)] else []

main = print solutions
```

All these code snippets would print out `[(6,10),(13,5)]` on the screen. Monads are probably not difficult at all. They are simply *different* than anything we see around.

## Summary

I am a still a fledgeling in Haskell but I positively hope Haskell to supplant Python as my primary language. I like Python, but Haskell is in a different league. Reading about Haskell is a very humbling experience. Many a times, when Haskell becomes too heavy for me, I almost tend to leave it and go back to the more manageble languages. But it hurts my ego, and I keep coming back to Haskell to save my honor. Many a times, the only reason I read about monads is for the sake of my self respect! [This](http://www.xent.com/pipermail/fork/Week-of-Mon-20070219/044101.html) article is a perfect reflection of my emotions with Haskell. It seems my story with Haskell is going to be pretty darn long.

