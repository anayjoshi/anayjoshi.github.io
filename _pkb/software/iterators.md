---
title: A Long Python Tutorial
category: posts
layout: post
permalink: blog/A Long Python Tutorial
summary: Iterables, Iterators, Generators, Getters & Setters
---

> Few months back, I was primarily occupied by **Python**. Back then, I had written up some tutorials and somehow managed to forget to post them here. I was browsing through my notes and stumbled across them - thought they might be worth sharing. Here's a rather long post combining two of my intended posts; for old time's sake!

## Iterables & Iterators

Say you have a bag of coins and you want to iterate through the balls in the bag and perform some operation on the coins. One ways is this rather boring piece of code

```python
class Coin:

    def __init__(self, number):
        self.number = number

    def __str__(self):
        return str(self.number)

class Bag:

    def __init__(self):
        self.coin_list = []

    def add_coin(self, coin):
        self.coin_list.append(coin)

if __name__ == "__main__":
    bag = Bag()
    c = Coin(7)
    bag.add_coin(Coin(4))
    bag.add_coin(Coin(9))
    bag.add_coin(Coin(1))
    for coin in bag.coin_list:
        print(coin)

```

Wouldn't it be great if we could just do something like this ?

```python
for coin in bag:
    print(coin)
```

Enter **iterators**! In Python, a class which implements `__iter__` is called an **iterable**. The `__iter__` method is supposed to return a **iterator**. An **iterator** also implements `__iter__` but in case of an **iterator**, the `__iter__` method returns `self`. I know this might be getting confusing, but stick with me for some time!

An **iterator** should implement `next` (python2) or `__next__` (python3) which should return the next element. Whenever we use a `for` loop, we use **iterators**. The `for` loop calls the `__iter__` method of whatever we are looping over. When the `__iter__` method returns the **iterator**, the `for` loop keeps calling the `next` or `__next__` method of the **iterator** till this method raises a `StopIteration` exception. Once this exception has been raised by the **iterator**, the loop breaks. Phew, I am exhausted.

Here is a reimplementation of `Bag` class using the new `BagIter` class.

```python
class Coin:

    def __init__(self, number):
        self.number = number

    def __str__(self):
        return str(self.number)

class BagIter:

    def __init__(self, coin_list):
        self.coin_list = coin_list

    def __iter__(self):
        return self

    def next(self):
        try:
            return self.coin_list.pop()
        except:
            raise StopIteration()

class Bag:

    def __init__(self):
        self.coin_list = []

    def add_coin(self, coin):
        self.coin_list.append(coin)
        

    def __iter__(self):
        return BagIter(self.coin_list)

if __name__ == "__main__":
    bag = Bag()
    c = Coin(7)
    bag.add_coin(Coin(4))
    bag.add_coin(Coin(9))
    bag.add_coin(Coin(1))
    for coin in bag:
        print(coin)
```

Here's the fun part. It is possible for the **iterator** be the same as its **iterator**.

```python 
class Coin:

    def __init__(self, number):
        self.number = number

    def __str__(self):
        return str(self.number)


class Bag:

    def __init__(self):
        self.coin_list = []

    def add_coin(self, coin):
        self.coin_list.append(coin)
        

    def __iter__(self):
        return self

    def next(self):
        try:
            return self.coin_list.pop()
        except:
            raise StopIteration()

if __name__ == "__main__":
    bag = Bag()
    c = Coin(7)
    bag.add_coin(Coin(4))
    bag.add_coin(Coin(9))
    bag.add_coin(Coin(1))
    for coin in bag:
        print(coin)
```

Nice, isn't it? Once we implement the Bag using **iterators**, we can use some pretty builtins shipped with Python

```
>>> list(bag)
>>> iter(bag)
```

Awesome. Let's head to **generators** now.

## Generators

Generators is Python's way of implementing [lazy evaluation](). What does that mean? Let's dive in

```python
import time

def fibonacci():
    a = 1
    b = 1
    while True:
        a, b = a + b, a
        yield a


if __name__ == "__main__":
    for x in fibonacci():
        time.sleep(1)
        print(x)
```

**Generators** are *simply* functions which implement `yield` instead of `return`. Now `yield` is not a often used keyword. But it's beautiful once you get to know it. In the code above, we were able to implement a constant source of fibonacci numbers.  The classic use case of generators is to keep producing the next element of a sequence. Other example where generators are typically used is for generating a sequence of random numbers. Generators can maintain a state across two consequitive calls to the function.


## Getters and Setters


```cpp
class Complex
{
private:
    
public:
    
    set
};
```

```python
class Complex:

    def __init__(self):
        self.
```

