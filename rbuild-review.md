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
* Notify builder/relevent recipients

## New Features

1. Dry-run option, that allows users to see the results of rbuild operation
   *without* sending notifications/
2. None of this "touch /nfs/projects/r/rbuild/lock/...." stuff anymore. That's
   bad design.
3. Terser log file, so that we can read what's going on rather than being
   bombarded with useless info

## Issues with Previous R-Build

Here are some of the issues with the current version of R-build.

1. Build notifications spam. There should be a limit to how many error emails
   you can get in one day. That is, it's good to notify everyone when something
   fails/succeeds, but there's a threshold before it just all becomes white
   noise.
2. Notifications are completely uninformative. They require the builder to ssh
   into the rce and tail a log file. This is probably not good design.
3. Does not use the "vignettes/" folder for storing Rnw/Sweave documents

## Implementation Details

The script should do the following in this order:

1. Download freshest release from GitHub/cvs using JSON API
2. Build the source into a package via "R CMD build pkg-name"
3. Check the resulting tarball via "R CMD check pkg-name_version.tar.gz"
 * If there's an error, print to the log and notify relevant people
 * Otherwise, send a success notification
4. Move tarball to repository
5. Update "PACKAGES" and "PACKAGES.gz" files via R's "tools:::write_PACKAGES()"
6. Fin.

Here's a script I wrote that basically does all this already:
  http://github.com/zeligdev/build_zelig/blob/master/pkg-build
