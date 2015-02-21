SCADA: Supervisory Control and Data Acquisition
DA: Distribution Automation
TA: Transmission Automation
RTU: Remote Terminal Unit
PLC: Programmable Logic Controllers
A SCADA system usually includes a combination of the following components:
Remote Terminal Units (RTU)
Human Machine Interface (HMI)
Programmable Logic Controllers (PLC)
SCADA (supervisory control and data acquisition) is a type of industrial control system (ICS). Industrial control systems are computer-controlled systems that monitor and control industrial processes that exist in the physical world. SCADA systems historically distinguish themselves from other ICS systems by being large-scale processes that can include multiple sites, and large distances
Remote terminal units (RTUs) connect to sensors in the process and converting sensor signals to digital data. They have telemetry hardware capable of sending digital data to the supervisory system, as well as receiving digital commands from the supervisory system. RTUs often have embedded control capabilities such as ladder logic in order to accomplish boolean logic operations.
PLC
IEC 61131
IEC 61131-3 deals with programming languages for PLCs

    Ladder Diagram (LD)
    Functional Block Diagram (FBD)
    Structured Text (ST)
    Instruction List
    Sequential Function Chart (SFC)

Four Steps In The PLC Operations
1.) Input Scan
Detects the state of all input devices that are connected to the PLC
2.) Program Scan
Executes the user created program logic
3.) Output Scan
Energizes or de-energize all output devices that are connected to the PLC.
4.) Housekeeping
This step includes communications with programming terminals,
internal diagnostics, etc... 