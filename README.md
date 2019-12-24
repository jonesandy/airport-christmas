<img src="./_imgs/plane.png" align="right" />
# Holidays Airport

![](https://img.shields.io/badge/Practice-Makers%20Academy-red) 


---
This program mimicks the simple behaviour of an airport and a plane class. They interact and the plane can land and take off. This is a weekend test from the Makers Academy course. 

We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

## Getting started

This project requires Ruby version 2.6.5. To check which Ruby version is running on your computer:

```bash
ruby -v
```

If running RVM for Ruby management please install 2.6.5:

```bash
rvm install 2.1.1

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
