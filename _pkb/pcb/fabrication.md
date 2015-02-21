Manufacturing Process
=====================

### Files to be sent to the Fab House

gerber is a photoplotter format
excellon is a NC drill format
It is suggested that the NC drill format be kept as 2:4 leading

Here, leading refers to a type of zee compression (others being trailing and none)
The format of the NC drill file specifies the precision of the coordinate data 


Format Resolution
2:3        1 mil
2:4        0.1 mil
2:5        0.01 mil


PCB thickness possibilities: 1.6mm, 0.8mm, 2.4mm etc; 1.6mm is standard

Material of board possibilities (all are fibre glass types i suppose)
- FR4 (glass epoxy) .. dielectric constant varying from 3 to 6
- Teflon .. exotic material; only used for higher grade designs
- Phenolic base; hobby materials, cheap, not suitable for plated through hole
- CEM-1; hobby materials, cheap, not suitable for plated through hole
FR4 is standard

Surface finish possibilities: 
- Tin coated: low cost, used in PCBs without solder mask
- {Solder Mask Over Bare Copper (SMOBC) for tracks} + {Hot Air Level (HAL) = tin finish on the pads and via}
- Gold Flash: for large and critical surface mount components
 SMOBC and HAL are standard
Copper weight: 1oz, 2oz etc; 1oz is standard

Concept: Panelization, tooling cost
