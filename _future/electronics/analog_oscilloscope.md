# Analog Oscilloscope


Though not as useful as their digital counterparts, it is interesting to understand how analog oscilloscopes work. A few concepts (such as *triggering*) are common between analog and digital oscilloscopes and an understanding of these concepts from the analog world should complement the understanding of concepts in the difital world. Personally, my single biggest motivation for understanding analog oscilloscopes was to acquire the skill of plotting arbitrary shapes on the screen!

Key concepts: 

## Brightness control: 

Changing the number and speed of electrons in the cathode ray. There is usually a button to control the intensity of beam. During flyback time, the intensity of the beam is reduced so as not to trace the cathode ray on the screen. This is called “blanking”

* Focus adjust: this block comes just after the cathode ray tube to sharpen the electron beam using focussing anodes. There is usually a button (focus control) for this purpose
* Deflection system
* tau = nT where T is the time period of the signal which is being plotted

The sawtooth wave applied to the horizontal plates are generated by the sweep generator. Each sawtooth part is initiated when the sweep generator receives a pulse from the pulse generator (these pulses from the pulse generator are called triggers). Sweep generator ignores triggers during sweep period + hold off time
(note: hold off time is usually zero. It is kept finite only in special cases while dealing with tricky signals). This ignorance of extra triggers during sweep period allows us to see multiple cycles of the signal on the screen.

* AT/Norm button: In AT (automatic) mode, the trigger voltage level is set to zero. In NORM (normal) mode, trigger level is set by the user. If trigger level is very high, nothing would be visible on the screen

* trace time is decided by the time/dev/ button. Trace time = N*(time/dev button value), where N is number of divisions on the screen.

* volt/div is controls gain of vertical amplifier (Vy)

* Positional knob simply biases the cathode ray beam horizontally or vertically

* EXT button sets CRO in external trigger mode

* other features:
DUAL mode
AC/DC coupling
ADD
INVERT ALT, CHOP
SLOPE (+/-)
XY mode