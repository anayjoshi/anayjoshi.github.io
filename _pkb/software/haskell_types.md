## Types

In Python, I frequently try to create pure "objects" which don't have any inherent intelligence or state of their own. For example, a class for defining a book could be

```python
class Book:

    def __init__(self, title="", author="", price=0, ):
        self.author = author
        self.title = title
        self.price = price
        
    def __str__(self):
        return "Title: {}, Author: {}, Price: {}".\
            format(self.title, self.author, self.price)
            
    def __eq__(self, other):
        return = (self.author, self.title, self.price) == \
            (other.author, other.title, other.price)
```

This Book class has no intelligence of its own. It is simply a container of some information. This is probably closer to using a "struct" than a "class". Other functions would take in Book instances as input and process them. In haskell, types are similar to this

```haskell
data Book = Book {author :: String,
                     title :: String,
                     price :: Int
                    } deriving (Show, Eq)
```

The deriving from Show type class is similar to defining the __str__ method, except that Haskell knows the optimal way of printing the Book instance. Similarly, deriving from Eq type class is akin to __eq__ method.

In the Python version, you could access the members of the Book instance by

```
>> book1 = Book(title="foo", author="bar", price=100)
>> book1.title
```

In Haskell, you do

```
>> book1 = Book {title="foo", author="bar", price=100}
>> author book1
```

author is a function which takes in a Book as input, and returns the author of the book. This function gets auto defined once you define a type

In a way, the deserialise method typically used to read from say a JSON file in Python, can be implemented in Haskell by deriving from Read type class

## Not exactly

Python's way of implementing  "equitablility" is by having classes implement __eq__ method, and Python's interpreter automatically understands the syntactic sugar of '=='.
In haskell, the only difference is that this is more entrenched in the way we code

'==' is actually a function which takes in two instances of the same type and compares them. The '==' function is defined in the Eq type class.  Similarly, we can override the behaviour of show function



## Other concepts in Haskell

1. Type constructors
2. Type parameters (similar to templates)
3. Type classes
4. 

I believe when it comes to Haskell, the 'data' keyword can actually very closely mirror "data structures" in general. Lists, Trees are typical candidates. How about graphs ?


## Syntax

In pattern matching, we you want to pattern match for singleton list, use `[x]` instead of `x:[]`

Helper functions

init
head
tail

Axiomatically building a set of tools ! Very similar to mathematical approach :)


## Returning None

In Python, there are two ways primary ways to report errors: using `None` or using Exceptions. A Python function should return None if there is only one *obvious* failure case. Here is an example:

```python
def return_head(a_list):
    if a_list:
        return a_list[0]
    else:
        return None
```

```haskell
returnHead :: [a] -> Maybe a
returnHead [] = Nothing
returnHead (x:xs) = Just x
```

## Polymorphisms

In this regard, I feel Python and Haskell have quite something in common. Pythonistas prefer calling it **duck typing**, which essentially says that is something walks like a duck, talks like a duck, it is a duck. Look at the above code example again. Both, the Python and the Haskell implementations can take in lists of any type. `a_list` can be a list of strings, integers, or any darn object. Same is the case with Haskell.


## Magic Methods

```python
class LatticePoint:

    def __init__(self, x, y):
        if not (isinstance(x, int) and isinstance(y, int)):
            raise TypeError("coordinates should be of integer type")
        self.x = x
        self.y = y

    def __repr__(self):
        return "({}, {})".format(self.x, self.y)

    def __add__(self, other):
        return Point(self.x + other.x, self.y + other.y)

if __name__ == "__main__":
    print(LatticePoint(1, 3) + LatticePoint(5, 2))
```

```haskell
data LatticePoint = LatticePoint {x :: Integer, y :: Integer}

instance Num (LatticePoint) where
    (+) (LatticePoint x1 y1) (LatticePoint x2 y2) = LatticePoint (x1+x2) (y1+y2)

instance Show (LatticePoint) where
    show (LatticePoint x y) = print "(" ++ x ", " ++ y ++ ")"

main = do
    print $ (LatticePoint 1 3) + (LatticePoint 5 2)
```




