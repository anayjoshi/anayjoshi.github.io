Components
==========

Packaging
---------

## Packaging during order

- Bulk Packaging: typically a bag of loose parts
- Tape and Reel: useful in automatic pick and place
- Ammo Pack
- Tube
- Plastic Tray
- Sample Box
- Pallet
- Cut Tape: basically to order exactly the quantity we want. (cut out from Tape & Reel)

## Compliance

- `ESD`: Electrostatic Discharge
- `MSL`: Moisture Sensitivity Level
- Lead Free
- `RoHS` compliant
- `EIA`: Electronics Industry Alliance Standard

Land Patterns
-------------

www.ipc.org
IPC-2221 “Generic Standard on Printed Board Design”

DOUBT: Many manufacturers have the same part number (well, approximately). Who decides the part numbers ?

- `TO` : Transistor Outline (example: `TO-220`)
- `QFP` : Quad Flat Package (`TQFP` = *Thin* `QFP`)
- `QFN` (`MLF`) : Quad Flat No Leads (Micro Lead Frame)
- `SOP` : Small Outline Package (`SSOP` = *Shrink* `SOP`) (`MSOP` = *Mini* `SOP`)
- `SOT` : Small Outline Transistor

Package/Case
- 1206: 0.126 inch x 0.063 inch (also called 3216: 3.2mm x 1.6mm)
- 0804:
- 0603

Package Layouts : http://www.analog.com/en/quality-and-reliability/content/package-information/fca.html

## BSC Basic Spacing between Centers

BSC means "Basic Spacing Between Centers". This is often used if the reference lines don't refer to a physical point or edge, like in the case of the pins: the reference is in the middle of the pin, instead of one of the edges.

BSC SQ = BSC square, i.e. in both X and Y dimensions.

The abbreviation BSC is misused in the case of the package outline, and overall dimensions, as they are specified by physical edges which can be measured.

Usually a mechanical drawing of a package will show minimum and maximum values. BSC SQ must be regarded as nominal, so may deviate, but it doesn't say by how much.  
