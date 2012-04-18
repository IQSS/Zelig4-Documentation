# Zelig Alpha to Beta

The following document outlines details concerning the transition from Zelig 4
alpha to Zelig 4 beta. It contains important information concerning:

* Feature improvements within Alpha
* Bug fixes in Alpha
* Interface improvements in Alpha
* Projects Site for Beta
* Goals to transition Beta to Stable

## Feature Improvements within Alpha

Feature improvements have been primarily focused on usability, rather than
core-changes.

* Improved robust error estimates for core models
* relogit added to core models and patched
* Bootstrapping implementation + API
* Error suppression added for design matrix contingencies
* Support for Formula objects has been added
* R 2.15 compatibility
* Smart parameter passing

## Bug fixes in Alpha

The number of caught bugs in alpha has been low, but a few issues cropped up
over time:

* Added error-suppression to creating the design matrix
* Fixes part 2

## Interface Improvements in Alpha

Several minor interface improvements have been made to smooth the transition to
Zelig 4 from 3.5:

* Install script gives users options to choose which packages to download from
  the repository
* Smart parameter interpretation
 * When invalid models are selected, help finding the appropriate packages pops up
 * Warnings for bad models

## Projects Site for Beta

The project site for Zelig is great, and can serve as an amazing promotional
tool. In addition to stowing documentation, api-stuff, downloads, what's-new,
and introductory material; we can throw in a more modern style software page.
These kind-of look like glorified markdown and are common for mobile apps, etc.

* Make projects page have a software page more similar to:
 * http://www.meteor.com/main
 * http://jquery.com/
* Show feature improvements with screenshots/code samples. Namely smart parameter passing

## Goals to transition from Beta to Stable

This is a work-in-progress list of goals/needs/etc. to transition to a stable
release of Zelig 4.

* Finalize the projects page
* More robust unit tests
* Interaction term specification
* Polish, polish, polish
* Plans for DVN use
* Close version number at 4.0.x and move unstable to 4.1.0
