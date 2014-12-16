
# Layout


### Some Terminology

- **Mil**: `1 mil = 1 thou = 0.001 inch`
- **Stencil**: A stencil is a thin sheet of material, such as paper, plastic, or metal, with letters or a design cut from it, used to produce the letters or design on an underlying surface by applying pigment through the cut-out holes in the material
- **PTH** = plated through hole (via and pads)

### Layers in a PCB

- **Mechanical Layer**: The mechanical layer outlines the physical dimensions of the board. The fab house will use this layer to cut out the circuit board to the given dimensions.
- **Top/Bottom Keepout layer**: This is not a layer that is provided to the fabricator, but rather works with your design software to provide feedback to the designer as they develop their design to indicate whether or not they are violating the predetermined boundaries
- **Top/Bottom silkscreen/overlay**: The white written stuff on the PCB .. should not overlap any copper pad. The silkscreen layer should avoid values and names of the components. Only use specifically useful texts such as RX, TX, VCC, GND etc on the silkscreen
- **Top/Bottom solder mask**: Solder masks are specified as negatives. In other words, areas that aren’t to be covered with the green material, will be filled in on your solder mask layer. Solder mask layer basically cover via and pads.
- **Top/Bottom paste mask**: Solder paste is a material used to assist in the soldering of surface mount components on a PCB. This layer would pretty much match the solder mask layer except that this layer won’t have the via (we won’t like to cover the via holes with solder! => this layer typically contains only the SMD pads). This layer is used to make stencil

### Good PCB Layout Practices

- Put bypass component near the component they are meant for
- It is better not to have four wires connect to a point. In other words, a connection dot would typically have three line segments attached to it
- Begin off by laying tracks & components in a course grid and eventually reduce to a `0.5 mm grid` size, `0.25 mm` track width .. If tracks still cant be laid down properly, reduce grid size to `0.1mm`
- Keep power and ground tracks close to each other; this lowers loop inductance and allows effective bypassing
- Avoid placing vias below components
- Try to use through hole component pads as via
- Rule of thumb .. pad size should be at least `1.8 times` hole radius or at least `0.5 mm` larger than hole diameter
- For TH resistors, caps and diodes, keep pads circular (70 thou dia)
- For DIP packages, have oval pads (90 x 60 thou); keep the first pin as rectangular. This even applies to SMD components which have oval pads. "rectangular pin 1 rule"
- Using a via to connect two layers is commonly called “stitching”
- As a rule of thumb, an absolute minimum of `8mm` (`315 thou`) spacing should be allowed between 240V tracks and isolated signal tracks
- Thickness of copper layer should be typically `1oz / sq.ft`, ie `35 micron` thick. 
- `10/8` track space figure == tracks width > `10 mil`; clearance > `8 mil`
- necking is a good practice
- have different track widths for signals and gnd/vcc (example, keep signal tracks half as power tracks)
- Holes in vias are usually a fair bit smaller than component pads, with 0.5-0.7mm being typical.



calculation of thickness is complicated (and inaccurate) based on IPC standard.
Rule of thumb: 10degC rise in track temperature is a good safety limit 

+----------------+----------------+-----------------+
| Current (Amps) | Width for 1 Oz | milli Ohms/Inch |
+================+================+=================+
|              1 |             10 |              52 |
+----------------+----------------+-----------------+
|              2 |             30 |            17.2 |
+----------------+----------------+-----------------+
|              3 |             50 |            10.3 |
+----------------+----------------+-----------------+
|              4 |             80 |             6.4 |
+----------------+----------------+-----------------+
|              5 |            110 |             4.7 |
+----------------+----------------+-----------------+
|              6 |            150 |             3.4 |
+----------------+----------------+-----------------+
|              7 |            180 |             2.9 |
+----------------+----------------+-----------------+
|              8 |            220 |             2.3 |
+----------------+----------------+-----------------+
|              9 |            260 |             2.0 |
+----------------+----------------+-----------------+
|             10 |            300 |             1.7 |
+----------------+----------------+-----------------+


+-----------------+----------+-------------------+-------------------+
|     Voltage     | Internal | External (<3050m) | External (>3050m) |
| (DC or peak AC) |          |                   |                   |
+=================+==========+===================+===================+
| 0-15V           | 0.05mm   | 0.1mm             | 0.1mm             |
+-----------------+----------+-------------------+-------------------+
| 16-30           | 0.05mm   | 0.1mm             | 0.1mm             |
+-----------------+----------+-------------------+-------------------+
| 31-50V          | 0.1mm    | 0.6mm             | 0.6mm             |
+-----------------+----------+-------------------+-------------------+
| 51-100V         | 0.1mm    | 0.6mm             | 1.5mm             |
+-----------------+----------+-------------------+-------------------+
| 101-150V        | 0.2mm    | 0.6mm             | 3.2mm             |
+-----------------+----------+-------------------+-------------------+
| 151-170V        | 0.2mm    | 1.25mm            | 3.2mm             |
+-----------------+----------+-------------------+-------------------+
| 171-250V        | 0.2mm    | 1.25mm            | 6.4mm             |
+-----------------+----------+-------------------+-------------------+
| 251-300V        | 0.2mm    | 1.25mm            | 12.5mm            |
+-----------------+----------+-------------------+-------------------+
| 301-500         | 0.25mm   | 2.5mm             | 12.5mm            |
+-----------------+----------+-------------------+-------------------+


