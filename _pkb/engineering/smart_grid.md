OpenADR: Open Automated Demand Response
## Wireless Network Topologies
 
- star
- tree
- mesh

Star topology based architecture requires special REPEATERs, mesh network does not require that

## Wireless Personal Area Network

All operate in industrial, scientific and medical (ISM) radio bands

- Wifi:
* star
* 802.11
* Wifi Alliance
- Zigbee:
* mesh
* Zigbee Alliance
* IEEE 802.15.4
- Bluetooth:
* star
* IEEE 802.15.1
* Bluetooth Special Interest Group
- IrDA
* point to point
* Infrared Data Association
* probably not defined in IEEE

PAN, LAN, MAN (Metropolitan), WAN

## IEEE 802.15.4

A standard which specifies the physical layer and media access control for low-rate wireless personal area networks (LR-WPANs). Alternative to wifi (based on top of IEEE 802.11) (with focus on low speed, ubiquitious network)

- ZigBee
- ISA100.11a
- WirelessHART
- MiWi specification

Each of which further extends the standard by developing the upper layers which are not defined in IEEE 802.15.4

Alternatively, it can be used with 6LoWPAN and standard Internet protocols to build a wireless embedded Internet.

Traditional ZigBee

Application Profiles: Smart Energy, Home Automation etc

## 6loWPAN

Low-power devices with limited processing capabilities should be able to participate in the Internet of Things. The 6LoWPAN group has defined encapsulation and header compression mechanisms that allow IPv6 packets to be sent to and received from over IEEE 802.15.4 based networks. IPv6 over low power WPAN

- NanoStack: nanostack 1.x is open source, nanostack 2.x is closed, nanostack is built on top of freertos; executed as a single task in the FreeRTOS environment
- uIPv6
- arch rock phynet;  built on top of tinyos
- jennic comply to 6lowpan

6lowpan is just above MAC/PHY and just below IPv6 (adaptation layer)
6lowpan is initiative by IETF
The IEEE 802.15.4 compliant radio modules from Radiocrafts combined with the 6LoWPAN compliant NanoStack from Sensinode

IETF: Internet Engineering Task Force (developed the IPv6 protocol)

## SEP 2.0

http://www.csep.org/
SEP is just an application layer interface which ASSUMES IP compliance in devices

SEP 2.0 provides the guidelines in which the devices should communicate with one another. It defines various device properties that can be manipulated. These properties (also known as “resources”) work together in logical groups to implement SEP 2.0 functionalities (called the “function sets”). A metering system, or pricing system, is an example of an application-specific function set. Devices like smart meters implement one or more function sets to provide value-added services such as usage statistics and trends. These pricing statistics and trends can then be used by either the energy provider or the consumer to further manage services or usage, respectively.

The SEP 2.0 protocol is built around the notion of function-sets and each function-set represents a minimum set of device behaviors required to deliver a particular functionality. Some of the core function sets defined in the specification include metering, pricing and demand-response load control (DRLC)

 an SEP 2.0 compliant application running on a smartphone, tablet or a dedicated display device, could present to users real-time energy consumption information for the whole home. This information would be delivered directly from the smart-meter / indirectly from a cloud-based server, or from any smart-appliance or smart-energy device supporting metering function.


Function sets and their resources on a device are accessed through HTTP URLs
SEP 2.0

- Metering
- Pricing
- Billing
- Demand Response and Load Control
- Prepayment
- Distributed energy resources

- HomePlug Alliance
- Wi-Fi Alliance
- HomeGrid Forum
- ZigBee Alliance
- Bluetooth﻿

ZigBee IP was designed specifically to meet SEP2 requirements for the Smart Grid

Zigbee IP now does not need intermediate gateways

## Two Approaches: USA vs UK

USA: SEP 2.0 proponens (which includes 6lowpan)
UK: SEP 1.1 (gateway based)
Supporting an IP address on these devices may increase the packet length by an order of magnitude. (47 bytes for bluetooth)
Recognition of the bloat is why we have 6LoWPAN, which is an attempt to shave the problem down from supersized to merely clinically obese.  But it’s still too big.  Yet this is what the ZigBee SEP 2.0 proponents are clamouring for.
Zigbee added remote upgradation of SEP 1.1 to SEP 2.0 (but firmware size increases)

## Other Unorganized Information

Transactive Control Protocol: communication between Producer and Utility (incentive programs are sent by generators to the uitilities, forcasted price are exchanged)

Demand response event is pushed to OpenADR. Open ADR works between Utility and Energy Management System

SEP talk happens between Energy Management System & Demand Response Load control server (this server is inside the house, HAN)

thermostat and DRLC server then talk and setpoint of temperature is changed
Transactive Control Protocol
Broadband Over Powerline: HAM radio interference
BACnet: Building Automation and Control Networks
Nucleus RTOS

http://open.enernoc.com/
http://www.mindteck.com/
http://www.openadr.org/
http://www.sensinode.com/
http://www.openadr.org/


Device Language Message Specification
## Standards

- IEC 62056 is a family of protocols; and DLMS/COSEM is a subset of IEC
- IS 15959 is the Indian Companion Standard (ICS) for IEC 62056. 
- DLMS is managed by **DLMS UA** (Device Language Message Specification User Association), Geneva. This body certifies vendors. their changes get back integrated to the IEC standard.
- **CPRI** is a member of DLMS UA



### Competing protocols:
- FLAG
- MBUS
- ANSI C.12
- SEP

DLMS is a direct substitute to SEP. DLMS UA established a partnership with the Zigbee Alliance and the experts of the two bodies are working now to specify how DLMS / COSEM can be tunnelled over Zigbee radio networks

## Technical Overview

As of now DLMS can be used on top of *TCP/IP* or *UDP/IP* or *HLDC*. DLMS is  more of an application level protocol. Most material available online is related to HLDC. The following discussion assumes HLDC as the underlying model

- Each Physical device has multiple Logical Device (LD). This is useful in *multi-energy meters*
- Each physical device hosts a Management LD with address 1
- Other logical device examples: LD Elec, LD Gas etc
- A logical device is a container of COSEM objects.
- A COSEM object is simply a structured piece of information with attributes and methods 
- COSEM = COmpanion Specification for Energy Metering
- There are about 50 types of COSEM classes
- First attribute of each object is object name (object name is specified by **OBIS: Object Identification System**)
- Each LD contains one object of **class Association** (default address known). It contains list of all objects in the LD
- Management LD contains object of **class SAP Assignment** (default address known) containing a list of name and address of all LD

As an example, to get active energy reading the CMRI or some other node in the network woule be the client, and meter would be the server. Typical Interface: client reads the object corresponding to active energy data (say 1.0.1.8.0.255) and reply from server would be 1800 kWh

### Addressing

Client Addressing: 16 is the public client. (different address = different permissions)
Server Addressing: contains physical address and logical address

### Known Implementations

- Gurux (open source)
- jDLMS (open source)
- iCube
- Kalkitech

## TODO

Also read about OSI model (Open Systems Interconnection)
OPEN meter consortium
http://www.gurux.fi
http://openmuc.org
http://www.cyamon.com/

## Primer on HLDC

High Level Data Link Control
ISO 13239
connection oriented as well as connectionless service
can be used for point to multipoint connection but almost exclusively used for point to point
can be used on top of RS232
Basically defines the exact bit level frame structure.
Flag, Address, Control, Information, FCS, Flag
It is a data link layer protocol (layer 2 of OSI)
Examples of data link layer: Ethernet, PPP, HDLC, ADCCP

## Other Unorganized Information

CMRI
needs to be capable of being a server as well as a client

DLMS has security features
DLMS provides feature of adapting the protocol to country specific requirements
PUSH feature (meters can push directly to utitlity; apparently, this feature has not been implemented as of now)
Carrier feature
liaison agreement



