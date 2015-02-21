-- what is short circuit evaluation ? & vs &&
# Ada

- High Integrity Systems
- Verification is easire in Ada (especially contract based programming)
- dimensionality checking ?
- 

-- is for comments
case insensitive

.ads: specification
.adb: implementation

```ada
with Ada.Text_IO; 
use Ada.Text_IO;

procedure Main is 
begin
    Put_Line ("Hello World"); 
end Main;
```

with is same as import
use is same as import *

## Procedure

procedure Proc_Name is
    -- declarations
begin
    -- statements
end Proc_Name;



.ads
```ada
package Package_Name is 
    -- public declarations
private
   -- private declarations
end Package_Name;
```

.adb
```ada
package body Package_Name is 
    -- implementation
end Package_Name;
```

begin = {
end = }
all variable declarations should come between declare and begin






