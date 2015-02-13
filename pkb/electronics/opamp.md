Operational Amplifier
=====================

gain bandwidth product (-3db bandwidth at unit gain)
bandwidth improvement by cascading opamps .

bwn = bw*sqrt((2**1/n) - 1)

opamp offset voltage measurement:

Resources:

http://www.ti.com/lit/an/slod006b/slod006b.pdf (downloaded as opamp design on computer)

1934: Harry Black conceived the idea of negative feedback
Eventually it was realised that high gain amplifiers suffer from stability problems
1945: Bode came up with a graphical method of analysing stability of feedback systems
mid 1960s, Fairchild released uA709, the first successful opamp IC; major drawback of this IC was stability and it required external compensation
uA741 was a successor to uA709; it was internally compensated.

* Amplifier
* Comparator
* Oscillator (Wien bridge)
* regulator (along with i believe a BJT pass transistor)
* buffering power supplies, buffering sensor output
* biasing signals
* mathematical blocks (adder, subtractor, integrator etc)
* precision rectifier
* instrumentation amplifier
* active filters
* simulating inductor with just RC (inductance gyrator)
* simulating negative resistor


Theory

* What happens if positive and negative feedback are present simultaneously ? Which one wins ?
* Effect of ripple on power supply
* how to control input/output impedance with opamps ?
* Dual supply vs single supply opamps
* limitation on the current drawn by an opamp
* analysing opamp using control system building block (example, visualise the feedback resistor divider as a control system block)
* poles and zeros

Opamp Specification
