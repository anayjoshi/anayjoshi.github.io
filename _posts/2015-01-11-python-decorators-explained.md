---
title: Python Decorators Explained
category: posts
layout: post
permalink: blog/python-decorators-explained
summary: On decorators, one of the better concepts in Python
---

There is something sanctimonious about functional programming. The functional approach to solve a problem just seems the holier way to write code. Python has been my default scripting language for quite sometime now, and fortunately, it is loaded well enough with functional tools to keep me happy. One of which, **decorators**, is the subject of today's discussion. I like to think of decorators as a tool for abstracting out common code. If you want to extract out common functionality from a family of functions to keep your code [DRY](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself), decorators might just be the right fit. Lets look at a simple example, shall we?

Say we have a family of functions, all of which return an integer. We can denote members of this family with names such as `f1`, `f2`, `f3` etc. These functions might not take in the same number of arguments though. You may visualize the **domain** as the super set of integers, and the **codomain** as the set of integers; but ofcourse, with Python's duck typing system, you should not take the domains, codomains too seriously.

```python
def f1():
    return 10

def f2(a):
    a**2

def f3(a, b):
    return a*b
```

Say `S` represents the set holding this family of functions. Now, we can create a new function, with the name say `add_3`, whose domain & codomain is `S`; ie, `add_3(f)` belongs to `S` provided `f` belongs to `S`. We want `add_3` to behave as its name suggests. 

If

```python
g1 = add_3(f1)
g2 = add_3(f2)
g3 = add_3(f3)
```

then,

```python
g1() == f1() + 3
g2(x) == f2(x) + 3 # for all integers x
g3(x, y) == f3(x, y) + 3 # for all integers x & y
```

The Python implementation of the `add_3` function looks something like this:

```python
def add_3(f):
    def wrapper(*args, **kwargs):
        return 3 + f(*args, **kwargs)
    return wrapper
```

`add_3` takes in a function `f`, and returns a new function `wrapper` which behaves pretty similar to `f`, except that it adds 3 to the return value. (If you have not seen `*args` and `**kwargs` before, you may want to skip to the section towards the end of this post, where `*args` and `**kwargs` are explained; and then come back here). To sum things up, here is the consolidated program:

```python
def add_3(f):
    def wrapper(*args, **kwargs):
        return 3 + f(*args, **kwargs)
    return wrapper

def f1():
    return 10

def f2(a):
    a**2

def f3(a, b):
    return a*b

if __name__ == "__main__":
    g1 = add_3(f1)
    g2 = add_3(f2)
    g3 = add_3(f3)
    print(f1(), g1())
    print(f2(4), g2(4))
    print(f3(4, 5), g3(4, 5))
```

To simply garnish this code with some terminology, we can say that `add_3` function is a *decorator* which decorates functions `f1`, `f2`, `f3` and produces functions `g1`, `g2`, `g3` which are *decorated functions*. How about we simply don't talk about functions `g1`, `g2`, `g3`. How about we replace the code within the `if __name__ == "__main__` with:

```python
f1 = add_3(f1)
f2 = add_3(f2)
f3 = add_3(f3)
print(f1())
print(f2(4))
print(f3(4, 5))
```

When we do this, the definition of functions `f1`, `f2`, `f3` seem to get morphed with the some modified definitions! Python has some dedicated syntax to help this morphing: Say hello to `@`.

```python
def add_3(f):
    def wrapper(*args, **kwargs):
        return 3 + f(*args, **kwargs)
    return wrapper

@add_3    
def f1():
    return 10

@add_3
def f2(a):
    return a**2

@add_3
def f3(a, b):
    return a*b

if __name__ == "__main__":
    print(f1(), f2(4), f3(5, 7))
```

Aahh. This should print out `13, 19, 38` instead of `10, 16, 35`. Cool! Can we go one step ahead, and implement a generic decorator `add_n`,  where `n` is a parameter or something. If you sense another level of nested functions, you are absolutely right.

```python
def add(n):
    def add_n(f):
        def wrapper(*args, **kwargs):
            return n + f(*args, **kwargs)
        return wrapper
    return add_n

@add(5)  
def f1():
    return 10

@add(10)
def f2(a):
    return a**2

@add(20)
def f3(a, b):
    return a*b

if __name__ == "__main__":
    print(f1(), f2(4), f3(5, 7))
```

This should print out `15, 26, 55`. Hope you got a feel about decorators in this post. This code example didn't really talk about the real benefits of using decorators, we can save that discussion for some other day. If you are impatient, have a look at [Flash](http://flask.pocoo.org) for a very practical (and perhaps the most popular) example on using decorators in real life. Decorators is also used in the [mock](http://mock.readthedocs.org/en/latest/patch.html) library. Hmm, I might as well talk about unit testing and mocking in a subsequent post.

Anyways, that is all that I have to say about decorators today. But here is a bonus section. Sit back for just a while. We talked about `*args`, `**kwargs` in the code snippets above. If you are not familiar with them yet, read on.

## Argument Passing

```python
def show_book(title, author, website):
    describe = "Title: {}\nAuthor: {}\nWebsite: {}"
    print(describe.format(title, author, website))

if __name__ == "__main__":
    show_book("Zero to One", "Peter Thiel", 
              "http://zerotoonebook.com")
```

You might know that in Python, function arguments can be passed either by *position*, or by *name*. You may as well have called `show_book` in any of the ways shown below:

```python
show_book(title="Zero to One", 
          author="Peter Thiel",
          website="http://zerotoonebook.com")

show_book("Zero to One", author="Peter Thiel", 
          website="http://zerotoonebook.com")

show_book("Zero to One", "Peter Thiel", 
          website="http://zerotoonebook.com")
```

However, the *positional* arguments must *always* precede *named* arguments. For example, argument passing shown below is invalid:

```python
show_book(book="Zero to One", "Peter Thiel", 
          "http://zerotoonebook.com")
```

To summarize, a function call should have a format similar to `function_name(positional arguments, named arguments)`. Python provides a way to pass positional arguments using *lists* & a way to pass named arguments using *dictionaries*. Here is how!

```python
zero_to_one = ["Zero to One", "Peter Thiel", 2]

show_book(*zero_to_one)
# is the same as calling
# show_book("Zero to One", "Peter Thiel", 2)
```

```python
zero_to_one = {"title": "Zero to One", 
               "author": "Peter Thiel", 
               "website": "http://zerotoonebook.com"}

show_book(**zero_to_one)
# is the same as calling
# show_book(title="Art of Electonics", author="Peter Thiel", website=2)
```

```python
title_and_author = ["Zero to One", "Peter Thiel"]
website = {"website": "http://zerotoonebook.com"}

show_book(*title_and_author, **website)
# is the same as calling
# show_book("Zero to One", "Peter Thiel", website=2)
```

Now, we can probably connect the dots with the `wrapper` function which was discussed above.

```python
def add_3(f):
    def wrapper(*args, **kwargs):
        return 3 + f(*args, **kwargs)
    return wrapper
```

`wrapper`, when called with *arbitrary* arguments, simply passes the arguments to the function `f`. Oh, and `*args` & `**kwargs` are simply conventional names for this purpose; there is no magic in the name of `args` and `kwargs` specifically.

Phew. That was a long post. Talked more than what I had planned actually. Hope you found it useful!








