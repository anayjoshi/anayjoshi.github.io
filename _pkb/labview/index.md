# Labview

I recently completed my tenure as a *Project Research Assistant* in the Power Systems Lab at **IIT Bombay**. My project here was on measuring torsional vibrations of a long shaft using high resolution optical encoders. This was pretty much purely a data acquisition project and so I got an oppurtunity to tinker around with some **National Instruments** Data Acquistion cards cards using [LabView](http://www.ni.com/labview/). In this post, I am jotting down my learnings in a bloody long post; as a reference for anyone (including future myself) who wants to get work on data acquisition using LabView.

Fortunately, NI has a nice repository of articles/tutorials/videos to help anyone get started. I don't want this post to be just a replication of the good documentation which NI has already done. Whenever appropriate, I would simply redirect the reader to good resources.

Topics covered:

# Part 1: Data Flow Programming
- while loops, for loops
- timing functions, ticks, delay
- if/else, switch statements
- shift registers
- auto indexing
- graphs, charts
- data types, dynamic data types, type conversion
- numerical blocks
- sub VIs
- project management

# Part 2: Data acquisition
- basics of instrumentation
- analog/digital/counters
- behind the scenes of DAQ assistant (state machines)
- types of data acquisition: continuous, N samples, on demand
- NI MAX

# Part 3: Design Patterns
- producer/consumer
- state machine
- master slave
