<img src="./_imgs/plane.png" align="right" />

# Holiday Airport

![](https://img.shields.io/badge/Practice-Makers%20Academy-red)
[![Build Status](https://travis-ci.com/jonesandy/airport-christmas.svg?branch=master)](https://travis-ci.com/jonesandy/airport-christmas)
[![Maintainability](https://api.codeclimate.com/v1/badges/c8319d3ee6035cba9579/maintainability)](https://codeclimate.com/github/jonesandy/airport-christmas/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c8319d3ee6035cba9579/test_coverage)](https://codeclimate.com/github/jonesandy/airport-christmas/test_coverage)


---
This program mimics the simple behaviour of an airport and a plane class. They interact and the plane can land and take off. This is a weekend test from the Makers Academy course. 

We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

## Getting started

This project requires Ruby version 2.6.5. To check which Ruby version is running on your computer:

```bash
ruby -v
```

If running RVM for Ruby management please install 2.6.5:

```bash
rvm install 2.6.5

# .ruby-version file should switch to correct Ruby version. If not run this command
rvm 2.6.5
```

To install and run program first clone or download.

```bash 
git clone
```

Change into the root directory and install dependencies.

```bash
cd airport-christmas

# Once in root folder
bundle install
```

## User Stories

```
As an air traffic controller 
So I can get passengers to a destination 
I want to instruct a plane to land at an airport

As an air traffic controller 
So I can get passengers on the way to their destination 
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller 
To ensure safety 
I want to prevent landing when the airport is full 

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate

As an air traffic controller 
To ensure safety 
I want to prevent takeoff when weather is stormy 

As an air traffic controller 
To ensure safety 
I want to prevent landing when weather is stormy 
```

## Usage

Program runs in IRB. To load IRB open a terminal window.

```bash
# Type irb into terminal
irb

# At the prompt require_relative the main file
2.6.5 :001 > require_relative './lib/airport.rb'

```

Airports and planes can then be created.

```bash
airport = Airport.new
plane = Plane.new

airport.land(plane) # To land a plane.
airport.take_off(plane) # To take off a plane.

```

## Tests

To run tests, make sure you are in the root folder, then run RSpec.

```bash
# Inside root folder
rspec
```
