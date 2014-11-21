
Gate driver: If the MOSFET is either on or off, it won’t consume any current; but during transition , the gate presents itself as a capacitor, 
which needs to get charged or discharged. This needs a s significant amount of current for power MOSFETs. 
This becomes especially important when we are required to switch the MOSFET off ( as in a SMPS or PWM for a motor)

I read on the net that if we reduce switching time, we reduce power loss. Gate drivers essentially do two things:
1. increase voltage for driving the gate
2. can source/sink large current to reduce switching time.

btw, main sources of loads in a power transistor is Rds(on) & switching. Gate drives try to reduce power loss during switching.


MOSFET Switches
===============

.. figure:: /_static/mosfet-switch/single-nmos-bad-switch.png
   :height: 230
   :width: 230
   :figclass: align-center
   :align: center

   *Circuit 1*

.. figure:: /_static/mosfet-switch/single-nmos-good-switch.png
   :height: 230
   :width: 230
   :figclass: align-center
   :align: center

   *Circuit 2*


``circuit 2`` is a better circuit for switching current through :math:`R_L`,
``circuit 2`` basically acts just as a small signal voltage follower. In ``circuit 1``, :math:`V_g` > :math:`Vs`. 
Thus, if :math:`V_g` goes from :math:`0 V` to :math:`5 V` for switching MOSFET, the maximum voltage across :math:`R_L` becomes :math:`5 V` 
(even if :math:`V_{dd}` = :math:`12 V`)
In ``circuit 2``, when :math:`V_g` = :math:`5 V`, voltage drop across :math:`R_L` becomes :math:`V_{dd}` => ``circuit 2`` wins

.. image:: /_static/mosfet-switch/single-nmos-good-switch-op.png
   :height: 400
   :width: 500
   :align: center

In what mode does NMOS in ckt 2 operate in ?

In linear region, Ids = 2*k*[(Vgs - Vt)Vds - Vds^2/2]
In saturation region, Ids = k*(Vgs - Vt)^2

For discrete MOSFETs, the data sheet would generally not give an accurate value for Vt. Instead, data sheet would give min and max values for Vt. Just take their average. Also, the constant ‘k’ is not usually mentioned in data sheets; there are typical curves(Ids vs Vds) in the data sheet. One can infer approx value of k from these curves

In ckt 2, if RL is too low, NMOS would operate in saturation mode => Vds won’t be close to 0 (use the operating point diagram on the previous page for visualisation). If RL is too high, the leakage current of NMOS in off state (Vgs =~ 0) would play a part 


.. image:: /_static/mosfet-switch/resistor-divider.png
   :height: 300
   :width: 200
   :align: center

In what mode does NMOS in cot 2 operate in ? My guess is that it operates in saturation mode but for low values of Vgs

.. image:: /_static/mosfet-switch/single-nmos-bad-switch-op.png
   :height: 300
   :width: 350
   :align: center

Note that load eqn for cket 1&2 are same (derive independently for both of them)

This ckt is a small signal voltage follower. Lets have this discussion some other day

How to use a PMOS for switching ?

.. image:: /_static/mosfet-switch/pmos-iv.png
   :height: 400
   :width: 500
   :align: center

Note that tu turn the PMOS off, drive Vg to Vdd. This is unlike in NMOS switch, where we could drive Vg from 0V to 5V & the NMOS would switch. We can use a different transistor to drive this transistor.


.. image:: /_static/mosfet-switch/two-mos-switch-1.png
   :height: 300
   :width: 250
   :align: left

.. image:: /_static/mosfet-switch/two-mos-switch-2.png
   :height: 300
   :width: 350
   :align: right

NMOS switch vs PMOS switch NMOS switch works by cutting the ground supply. PMOS switch works by cutting the Vdd supply. Cutting Vdd is better than cutting ground supply, at least for driving loads which can find alternate routers to ground (example: plugging a USB in a load would give an alternate path to ground)

Gate driver: If the MOSFET is either on or off, it won’t consume any current; but during transition , the gate presents itself as a capacitor, which needs to get charged or discharged. This needs a s significant amount of current for power MOSFETs. This becomes especially important when we are required to switch the MOSFET off ( as in a SMPS or PWM for a motor)

I read on the net that if we reduce switching time, we reduce power loss. Gate drivers essentially do two things:
1. increase voltage for driving the gate
2. can source/sink large current to reduce switching time.

btw, main sources of loads in a power transistor is Rds(on) & switching. Gate drives try to reduce power loss during switching.