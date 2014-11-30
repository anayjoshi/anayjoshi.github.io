---
title: Generators and Iterators
category: posts
permalink: blog/generators-and-iterators
layout: post
summary: Python
---

# Iterators

Say you have a bag of coins and you want to iterate through the balls in the bag and perform some operation on the coins. One of the ways to do this is as follows

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

Wouldn't it be great if we could just do something like

```
for coin in bag:
    print(coin)
```

Enter **iterators**! In Python, a class which implements `__iter__` is called an **iterable**. The `__iter__` method is supposed to return a **iterator**. An **iterator** also implements `__iter__` but in case of an **iterator**, the `__iter__` method returns `self`. Also, an **iterator** should implement `next` (python2) or `__next__` (python3) which should return the next element. Whenever we use a `for` loop, we use **iterators**. The `for` loop calls the `__iter__` method of whatever we are looping over. When the `__iter__` method returns the **iterator**, the `for` loop keeps calling the `next` or `__next__` method of the **iterator** till this method raises a `StopIteration` exception. Once this exception has been raised by the **iterator**, the loop breaks.

Here is a reimplement of `Bag` class using the new `BagIter` class.

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

Also, it is possible for the **iterator** be the same as its **iterator**.

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

Once we implement the Bag using **iterators**, we can use some pretty builtins shipped with Python

```
>>> list(bag)
>>> iter(bag)
```

# Generators

Generators is Pythons way of implementing *lazy evaluation*. Let us dive in and get a feel of what generators are capable of!

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

What just happened ? We were able to implement a constant source of fibonacci numbers. Generators are functions in Python which implement `yield` instead of `return`. The classic use case of generators is to keep producing the next element of a sequence. Other example where generators are typically used is for generating a sequence of random numbers. Generators can maintain a state across two consequitive calls to the function.

TODO:
* relation with iterators
