% SMPS
% Anay Joshi

## Buck, Boost and Buck-Boost

![buck-boost-buckboost](images/all-about-smps/buck-boost-buckboost.png)


`M(D) = Vout/Vin`  .. where `D` is the duty cycle

Buck converter functioning can be explained using simple LC filtering. Not obvious to explain the same for boost and buck-boost

- **Inductor Volt-Sec Balance** : Integral of voltage across an inductor over a cycle is zero. This is because, in steady state, the inductor current at the starting of a cycle is same as the inductor current at the end of the cycle


- **Capacitor Charge Balance** : Dual of the inductor volt-sec balance. Integral of current though a capacitor over a cycle is zero 


- **Small Ripple Approximation** : Output voltage would practically have ripples (at the switching frequency harmonics). We can simply approximate the output voltage to be DC. We can generally apply the small ripple approximation to inductor currents and capacitor voltage.

The solutions to the second order differential circuits (in the two cases when the switch is open or closed), would have a ringing response (oscillatory, with some DC components). Small ripple approximation approximates the response by a straight line.

---


### Analysing Buck Converter


  1. Find inductor current in the two intervals (basically find slope of inductor current)
  2. Get an equation of ripple current (using the rising part of the ripple current). peak-peak change = 2*delta. This allows us to determine inductor value from the given specification for ripple current
  3. apply volt-sec balance to the inductor and find the relationship between output voltage and input  voltage
  4. Calculating the voltage ripple: All the DC component of the inductor goes through the load. It can’t go through the capacitor because of capacitor charge balance. All the ripple from the inductor current passes through the capacitor. Integrate the current through the capacitor to figure out the ripple in the capacitor voltage. Note that this ripple is actually smooth

`
deltaV = (deltaIL*Ts)/(8*C)
`
### Analysing Boost Converter

![boost-detailed](images/all-about-smps/boost-detailed.png)

? why is D1 called free wheeling diode


  1. Find inductor voltage and capacitor current in the two positions
  2. Apply volt-sec balance to get relationship between input and output voltages
  3. Apply capacitor charge balance to get the DC component of the inductor current
  4. Choose L based on the inductor ripple specification
  5. Choose C based on the output voltage ripple specification

---


Other Concepts to be covered


   * continuous conduction mode vs discontinuous conduction mode
   * compensation techniques (slope compensation?)
   * component selection
   * LTSpice simulation ?
   * Buck-Boost converter analysis
   * current mode converter vs voltage mode converter
   * how does control systems fit into all this ? Poles, Zeroes … where are they relevant ?


### DC Transformer Model

![dc-transformer-model](images/all-about-smps/dc-transformer-model.png)

`
Vg*Ig = V*I
V = M(D)*Vg
Ig = M(D)*I
`

Typically, programs like spice use a two port network to represent DC-DC transformer using dependent current and voltage sources. The transformer model allows us to transfer resistors from primary to secondary and reverse. As an exercise, calculate the output voltage of a DC-DC transformer serving a load of R, and where in the input voltage has a thevenin resistance of R1

### Modelling losses in the converter


Modelling loses in the converter

  1. replace ideal inductor with an inductor with a series resistance

Shown above is the conversion ratio for a boost converter with a non ideal inductor

`V/Vg = (1/D')*(1/(1 + RL/D'^2*R))`

![boost-converter-losses](images/all-about-smps/boost-converter-losses.png)


By adding non idealities to inductors, capacitors etc, the best way to solve them is to make a model which has an ideal transformers and other resistors representing the non idealities. To get this model, we might need to write down voltage and current equations from the real circuit, figure out certain node and loop equations.


One interesting thing to do could be to make a python notebook plotting all possible plots, just as a reference

