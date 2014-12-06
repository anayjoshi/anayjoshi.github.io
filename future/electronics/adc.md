ADC
===

Concepts

- Signal conditional circuit
- Differential ADC vs Single ended ADC
- Sigma Delta ADC vs Normal ADC
- Anti aliasing filter
- Dynamic Range of input signal
- DC common mode rejection
- Dynamic common mode rejection
- maximum voltage that arc pins can bear ?
- CMRR
- SAR: Successive approximation 

## Analog Fronend

The ADC is optimised for analog signals with an output impedance of approximately (example) 10 kΩ or less. If such a source is used, the sampling time will be negligible. If a source with higher impedance is used, the sampling time will depend on how long time the source needs to charge the `Csample` capacitor, with can vary widely. The user is recommended to only use low impedance sources with slowly varying signals, since this minimises the required charge transfer to the `Csample` capacitor.

### Input Types

Three types of input configurations
- single ended
- pseudo differential
- fully differential

#### Single Ended

Single-ended inputs are ideal if the signal source and ADC are close to each other (i.e., on the same board so that signal traces can be kept as short as possible)

![Single Ended Input](images/all-about-adc/single-ended-input.png)


#### Pseudo Differential

Pseudo-differential inputs are similar to fully-differential inputs in that they separate signal ground from the ADC ground, allowing DC common-mode voltages to be canceled (unlike single-ended inputs). However, unlike fully-differential inputs, they have little effect on dynamic common-mode noise. To ensure `AIN(-)` is stable to within ±0.1LSB, bypass `AIN(-)` to analog ground with a capacitor.

An alternate method of implementing pseudo-differential inputs samples AIN(+) and AIN(-) sequentially, and the difference of the two voltages is provided as the conversion result. 

![Pseudo Differential Input](images/all-about-adc/pseudo-differential-input.png)

#### Fully Differential

If `AIN(+)` is less than `VDD/2`, won’t is force current into the source ?

The true differential A/D converter outputs a digital representation of a differential input signal, typically a two’s complement binary formatted output

![Fully Differential Inpur](images/all-about-adc/fully-differential-input.png)
