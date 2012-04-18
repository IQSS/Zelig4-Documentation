# R-Build: A Talk

Over the past few years Rbuild has been slowly outdated, and an ever-increasing
set of improved tools for managing code and R repositories has become available.
This document intends to:

* Summarize the goals of Rbuild
* Specify available tools for R
* Specify available tools for git/cvs
* Showcase some basic implementations

## Goals of Rbuild

Rbuild's intention is satisfy several specific goals:

* Check packages for major warnings and errors. Note that CRAN is no longer
  accepting packages with ERRORS/WARNINGS/NOTES in any category
* Build documentation for the specified R package
 * PDF
 * HTML
* Build package tarball
* Add tarball to r.iq.harvard.edu repository
* Update repository package listing (for installs via an interactive R session)
* Update software pages on various sites:
 1. gking.harvard.edu/????
 2. projects.iq.harvard.edu/???
* Notify builder

## Implementation Details
