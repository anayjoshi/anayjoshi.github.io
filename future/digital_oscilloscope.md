Digital Oscilloscope
====================

Digital oscilloscopes wipe the tears off an embedded system engineer! I cant imagine debugging an embedded platform without this god-sent equipment. 

Unlike the article on analog oscilloscope, this article does not talk about the inner working of the digital oscilloscope. Instead, here we focus instances when a digital oscilloscope could be useful while debugging. But before jumping into that, lets review the key parameters of a dso


## Example uses of digital oscilloscopes:

1. Debugging UART lines: verifying that the baud rate is correct, checking values of bytes, looking at waveform of IrDA pulse shaping to verify that uart is configured correctly. Some dso have an option to directly trigger if a certain byte is received. Never used it but i can see that can be useful!
2. Timing analysis of software: have a pin toggle in the main while loop to verify, have a pin toggle in a timer tick interrupt
3. Detecting pulses, glitches: say a module on the system keeps resetting unintentionally; probe the reset pin to observe glitch location wrt other known events in the system (example, radio crafts module entered config mode unintentionaaly, because of default behavious of iopin in output mode.)
4. Debugging SPI bus. Never done that yet

## Key skills

Set up trigger in edge mode (rising, falling, both)
Trigger in pulse duration mode (ie, trigger if duration of pulse exceeds or falls below a certain duration)
Single vs normal vs auto mode
Know how to measure distance between to points in x or y axis using cursors
Know how to auto calculate phase differeence between sinusoidal inputs at the two probes.



Agilent
Techtronix
Agilent
Lukroy
1. bandwidth
2. sampling rate (single shot) 
     real time sampling
     equivalent time sampling (crap) (requires input waveform to be steady and repetitive)
3. memory depth (sample memory) (very helpful in serial communication debugging)
10x analog bandwidth == sampling rate
pc based have better analog bandwidth than rigol
what is a single shot mode ??
* single shot bandwidth (related to real time sampling) is different from analog bandwidth


Reference:
Dave's fantastic video tutorials

