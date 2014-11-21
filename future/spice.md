
# Introduction to SPICE #1


SPICE is an indispensable tool for simulating integrated circuits. Here, however, we would look at the SPICE as a tool for developing embedded electronics. 
Simulation always brings in some sanity and confidence in the mind of the designer. This is precisely the goal of this tutorial series. Sanity.

SPICE provides 4 basic analysis

1. **OP**: (Operating Point analysis) Determine the steady state operating point of the circuit under simulation. Example, this analysis helps determine the quiescent voltage and current of say, a transistor amplifier.
2. **DC**: In this analysis, the source input voltage of a circuit is varied over a range and the behaviour of the circuit is observed over this range. Example, this can help determine the range over which a transistor remains in linear mode.
3. **AC**: The frequency of a voltage source is varied over a range of frequencies and behaviour of the circuit is observed over this frequency range. Example, this can help plot the frequency response of a RC filter
4. **Transient**: This analysis helps observe the behaviour of a circuit over time. Example, plotting the response of a circuit to a pulse input

We would go over each of the above mentioned analysis with simple examples.

## Introducing OP and DC


Let's start with the simplest form of analysis: Operating Point Analysis. SPICE performs this analysis before performing any other analysis.

.. image:: /_static/spice/ckt1.png
   :height: 300
   :width: 400
   :align: center


```
    Resistor and Diode 

    R1 n1 n2 1K
    D1 n2 0
    V0 n1 0 DC 3V
    .end
```

Save this file as **ckt1.cir**. SPICE files are conventionally stored with the **.cir** extension. 
Names of nodes in the circuit start with **n**.
First line of the file is the Title Line, and the  last line of the file should be **.end**.
The syntax for describing  of commonly used components is as shown

```
    Resistor: R<name> <node 1> <node 2> value
    Diode: D<name> <anode> <cathode> <model name>
    Voltage source: V<name> <pos> <neg> DC <value> AC <value>
    Inductor: L<name> <node 1> <node 2> value
    Capacitor: C<name> <node 1> <node 2> value
```

SPICE understands that `1K` is one thousand. Shown below is a description of the units SPICE understands.

|--------------|------------------------------|
| SPICE Symbol | Value in Scientific Notation |
|==============|==============================|
| T            |                         1E12 |
|--------------|------------------------------|
| G            |                          1E9 |
|--------------|------------------------------|


T                     1E12
G                     1E9
MEG                   1E6
K                     1E3
M                     1E-3
U                     1E-6
N                     1E-9
P                     1E-12
F                     1E-15
============ ============================


Now, fire up `ngspice` in a terminal and execute the following

```
    ngspice -> source ckt1.cir
    ngspice -> op
    ngspice -> show d1
```
**op** does the operating point analysis of the circuit; **show d1** displays the operating point of :math:`D_1`.

.. code-block:: console

    ngspice -> show D1

    Diode: Junction Diode model
    device                    d1
    model                     D
    vd              0.676901
    id            0.00232313
    gd             0.0898203
    cd                     0

Similarily, you can try out 

.. code-block:: console

    ngspice -> show r1
    ngspice -> show vcc
    ngspice -> show

The last **show** command displays operating point of all circuit elements in the circuit.

To perform a DC sweep analysis, run the following

.. code-block:: console

    ngspice -> dc vcc 0V 5V 0.01V
    ngspice -> plot v(n2)

The syntax for describing DC analysis is

.. code-block:: console

    ngspice -> dc v<name> <vstart> <vstop> <vstep>

This sweeps the voltage source from :math:`0V` to :math:`5V` in steps of :math:`0.01V` & plots the voltage at **n2** for this sweep.
This results in the plot shown below

.. image:: /_static/spice/dc-plot-ckt1.png
   :height: 400
   :width: 600
   :align: center

Similarily, try running the following

.. code-block:: console

    ngspice -> plot i(vcc)
    ngspice -> plot i(r1)
    ngspice -> plot (v(n1) - v(n2))/10K

You might observe that **i(vcc)** works, but **i(r1)** doesn't (ngpice says "*no such function as i*"). 
Apparently, ngspice only allows plotting current though independent voltage sources. 
The command **plot (v(n1)-v(n2))/10k** effectively plots current through :math:`R_1`


Introducing TRAN and AC
***********************

AC analysis and TRAN analysis only make sense for circuits containing reactive elements (capacitors and inductors).
For circuits containing purely resistors, diodes, transistors and current/voltage source (ignoring parasitic capacitive and inductive effects)
, you should only perform OP and DC analysis as the voltage and current for such curcuits would be time independent.

Let us now simulate a simple RC filter.

.. image:: /_static/spice/ckt2.png
   :height: 300
   :width: 400
   :align: center


Let's start off with *transient analysis*.

.. code-block:: console

    RC low pass filter

    R1 n1 n2 1K
    C1 n2 0 10nF
    V0 n1 0 PULSE(-1 1 20US 0US 0US 100US 200US)
    .end

Save the above circuit as **ckt2-tran.cir**. The voltage source is a periodic pulse train.
The syntax for specifying a pulse train is as follows:

.. code-block:: console

    Vname N1 N2 PULSE(V1 V2 TD TR TF PW Period)

    where,

    V1 = initial voltage value
    V2 = pulse voltage value
    TD = delay before first change fron V1 to V2
    TR = rise time
    TF = fall time
    PW = pulse width
    Period = time period of the pulse train

Now, run the following analysis

.. code-block:: console

    ngspice -> source ckt2-tran.cir
    ngspice -> tran 1us 1ms
    ngspice -> plot v(n2)


.. image:: /_static/spice/tran-plot-ckt2.png
   :height: 400
   :width: 600
   :align: center


The syntax for running transient analysis is

.. code-block:: console

    tran <tstep> <tstop> <tstart>

Finally, let us carry out *AC analysis*. The circuit for this analysis is the same as the one for transient analysis, except that the voltage source would be sinusoidal.

.. code-block:: console

    RC low pass filter

    R1 n1 n2 1K
    C1 n2 0 10nF
    V0 n1 0 AC
    .end


Save the above circuit as **ckt2-ac.cir**.
Recall that *AC analysis* is all about varying the input voltage frequency over a range. Since we are dealing with linear circuits, the frequency of voltage and current
at all nodes and loops in the circuit would have the same frequency (at steady state). SPICE provides a variety of ways of sweeping through a frequency range

* linear sweep
* decade sweep
* octate sweep

We will just look at linear sweep. The syntax for specifying linear sweep is:

.. code-block:: console

    ac lin NumberOfPoints StartFreq EndFreq

As an example,

.. code-block:: console

    ngspice -> source ckt2-ac.cir
    ngspice -> ac lin 1000 1 1k
    ngspice -> plot abs(v(n2))


.. image:: /_static/spice/ac-plot-ckt2.png
   :height: 400
   :width: 600
   :align: center


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

