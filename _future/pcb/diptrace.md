Diptrace
========

## General Information

## Schematic Editor


table
delete wire, delete line, delete are different 
we can copy paste from one diptrace instance to another. Example, open two schematic editors and open different circuits in them. You can copy circuit parts from one instance and paste them in the other instance

## Layout Editor

red circle = clearance error
magenta circle = size error 
in layout … arrange component feature, smart soon
import board outline from DXF file
placement by list feature (after hiding rat nest) to select components from a list
lock components before runningg auto placement for non-critical components
before routing, specify new layers, net classes, via styles
route -> via styles (through hole or blind berried)
route->netclass
route->route setup
route->save above rules

while manual routing, to shift layer, press l and select layer (or 0-9 or tb)
h hotkey = highlight present net which is being routed
m = change routemode
s or space to change segment
n = edit layout net (split it)
w key to change width of track 

Hotkeys:
R, space : for rotating components
auto arrange components. placement by list.
before running auto placement, lock critical components
what is net class ?
while routing, change layers by t or b, or 0 -9

mounting holes ?
view -> optimise ratlines
what is panelisation
fiducials 


use key 1 or 2 to switch between top and bottom layer without mirroring
3D .. vrml, 3ds 



## Schematic.Layout

diptrace global net
busses on different sheets are connected by bus connectors
nets on different sheets are connected by name
hierarchical block, hierarchical connector
? net classes, via styles, layers … while shifting from schematic to layout, what are importing rules ?

Annotation: Modify your existing schematic and save it. Then open existing board project in PCB Layout and renew design from the Schematic (select «File / Renew Design from Schematic/... » from main menu). If you have made changes in PCB, use Back Annotate feature in Schematic (select «File / Back Annotate /... » from main menu) to bring changes from the board to principal circuit. 



## Component Editor

view ->units = mm
view -> customise grids = add 0.1, 0.5, 1.0, 3.0, 5.0
select grid granularity to 3.0 mm and add pins
TODO: using pin line, if you draw a pin line, then the pis don’t quite snap to the grid. For now, use individual pins. Ans: Objects-> Pin Placement Setup. If number of pins is even, then it the IC might still not snap properly. It would be annoying in schematic if they dont snap to grid => change grid width to 1.5 and then shift the IC upwards by 1.5mm and then revert back to 3.0mm
don’t use ‘flip horizontally’. Instead, use rotate twice
change pin length to 3 mm or 6mm
TODO: how to show names of pins by default ? Ans: In pin manager, drag mouse in the last column and select show name
TODO: sort pins by pin number in pin manager ?
TODO: what to do with NC pins ?
TODO: understand difference between pin “type” and “electric” 

borrow patterns n components from other library
Components:

Menu Component/Get from Library... -> Find the component and click "OK" button
or Menu Component/Search in Libraries... -> Find the component and click "Place" button

component editor group pins into bus groups


## Pattern Editor

Menu Pattern/Get from Library... -> Find the component and click "OK" button
or Menu Pattern/Get from Component... -> Find the component and click "OK" button
or Menu Pattern/Search in Libraries... -> Find the patterns click "Place" button 
view -> Pattern Type Dimensions to see or hide line spacing, pad spacing etc 
HOWTO: hide a layer in pattern editor ? example . hide silkscreen layer to only select all pads




To know:
hotkey for delete
** easier way to select folder to open? 
