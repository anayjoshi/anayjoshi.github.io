Schematic
=========

IPC: Institute for Interconnecting and Packaging Electronic Circuits.
The major document that covers PCB design is **IPC-2221:** *"Generic Standard on Printed Board Design"*

ADVICE by Dave: Use thous for tracks, pads, spacings and grids, which are most of your basic “design and layout” requirements. Only use mm for “mechanical and manufacturing” type requirements like hole sizes and board dimensions. All the major PCB drafting packages have a single “hot key” to convert between imperial and metric units instantly (“Q” on Protel for instance)

## Schematic

### Good Practices

- Have signals flowing from inputs at the left to outputs on the right
- Always group together related components and have some little notes on the schematic to describe parts
- Have notes describing some layout specific information which might be useful while laying out the circuit. Also useful for people reviewing the design
- Sheet connection symbols should be on extreme right or extreme left
- Information table could be placed on the last sheet
- If a net has 5A cont current, and if PCB CAD tool allows giving nets such attributes, go for it
- Symbols and reference designators : IEEE STD 315 , IPC-2612
- Pin numbers should be placed outside symbol graphic; net name should be placed inside (???)
- Schematic capture .. just a term

### Reference Designator List

- `C` : capacitor
- `D` : diode (including LEDs!)
- `J` : header pins or 'jack' connector
- `JP` : jumper
- `L` : inductor
- `M` : motor
- `Q` : transistor/FETs
- `R` : resistor
- `S` : switch (TACT switch, etc.)
- `TP` : test point
- `U` : integrated circuit (sensors, MCUs, etc.)
- `X` : Wikipedia lists this last transducer, but it is often used to indicate connectors (USB, etc.)
- `Y` : Crystals or oscillators


