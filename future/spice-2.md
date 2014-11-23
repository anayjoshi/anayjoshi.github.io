

Semiconductor devices require `.model` line.

.. code-block:: console

    .model <name> <type> (par1=value1 par2=value2 ...)

    .control
    FIRST COMMAND
              ...
    LAST COMMAND
    .endc

Basic 3: Introducing MODELs
***************************

Not all diodes are the same of course, and spice provides a way to parametrize devices. As an example, we can represent a diode, say `1N4004` as follows:

Basic 4: Small signal amplifier using BJT
*****************************************

    Bipolar transistor: Q<name> <collector> <base> <emitter> <model name>
    
Model syntax:

.. code-block:: console

    .MODEL BJT_modName NPN (BF=val IS=val VAF=val)

in which 

    BF = common emitter current gain (beta); default = 100
    IS = saturation current; default = 1E-16A
    VAF = Early voltage; default = inifite

Basic 5: A MOSFET switch
************************

Basic 6: Introducing Subcircuits
********************************

Intermediate 1: 
***************

You can nest the DC sweep command which is often used to plot transistor characteristics, such as the Drain current ids versus the Drain-source voltage Vds for different gate voltages Vgs. This can be done as follows:    

.. code-block:: console

    .DC SRCname1 START STOP STEP SRCname2 START STOP STEP
    
.. code-block:: console

    Example: .DC Vds 0 5 0.5 Vgs 0 5 1

In the example above, the voltage Vds will be swept from 0 to 5V in steps of 1V for every value of Vgs.

- SPICE requires that every node in a circuit have a DC path to ground. Be careful when, for example, connecting two capacitors at a node. 
  Such a node between caps would have no DC path to ground and would cause SPICE to reject the input file. 
  To fix this connect a huge (ie 1 G-ohm or so resistor from the node in question to ground. 

File Format
-----------

2. Element lines: describe the components and how they are connected into a network;
3. Comment lines: start with a '*' and are ignored by SPICE
5. Control lines: tell SPICE what type(s) of analysis; to perform on the circuit and how results are to be displayed;

Example
-------



    LPFILTER.CIR - SIMPLE RC LOW-PASS FILTER
    *
    VS  1   0   AC  1   SIN(0VOFF 1VPEAK   2KHZ)
    *
    R1  1   2   1K
    C1  2   0   0.032UF 
    *
    * ANALYSIS
    .AC     DEC     5 10 10MEG
    .TRAN   5US  500US
    *
    * VIEW RESULTS
    .PRINT  AC  VM(2) VP(2)
    .PRINT  TRAN    V(1) V(2)
    *
    .PROBE
    .END

