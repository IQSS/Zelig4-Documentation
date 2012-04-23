# R-Build Review

This document intends to:

* Summarize the goals of R-build
* Explain current issues in R-build
* Specify available tools for R
* Specify available tools for git/cvs
* Showcase some basic implementations

## Goals of Rbuild

Rbuild's intention is satisfy several specific goals:

* Check packages for major warnings and errors. Note that CRAN is no longer
  accepting packages with errors, warnings or notes
* Build documentation for the specified R package
 * PDF
 * HTML
* Build the R package's tarball (for installation and archiving)
* Add tarball to r.iq.harvard.edu repository
* Update repository package listing (for installs via an interactive R session)
* Update software pages on related sites:
 1. http://gking.harvard.edu/
 2. http://projects.iq.harvard.edu/
* Notify builder/relevent recipients of success of failure

## Issues with Current R-Build

This is a short list of issues with R-build 

1. Does not use the "vignettes/" folder for storing Rnw/Sweave documents
2. Requires technical of linux to force rebuilds/read log files

## R-build Implementation Details

Here is an outline for the R-build script:

1. Download source code from repository
 * CVS: Use the same method currently employed. This is good for private
   repositories
 * GIT: Has a JSON API, making it really easy to clone repositories from
   GitHub.com. This is good for public repositories
2. Build the source into a package via "R CMD build pkg-name". This should be
   done in a temporary directory
3. Check the resulting tarball via "R CMD check pkg-name_version.tar.gz"
 * If there's an error, print to the log and notify relevant people
 * Otherwise, send a success notification
4. Move tarball to repository
5. Update "PACKAGES" and "PACKAGES.gz" files via R's "tools:::write_PACKAGES()"
 * In the current implementation, this is done a bit circuitously
6. Fin.

Here's a script I wrote that partially implements these ideas.
  http://github.com/zeligdev/build_zelig/blob/master/pkg-build

## R-build Future Features

This is a wish-list of features in R-build.

1. Dry-run option, that allows users to see the results of R-build operation
   *without* sending notifications or making changes to the server. This is
   essentially an rbuild preview
2. Run R-build as a script rather than the current method of:
   "touch /nfs/projects/r/rbuild/lock/force-<package-name>"
3. Terser log file? Right now it's a bit verbose, and hard to get relevant
   information from
4. Build notifications spam. There should be a limit to how many error emails
   you can get in one day. That is, it's good to notify everyone when something
   fails/succeeds, but there's a threshold before it just all becomes white
   noise.
5. Notification emails for failures should be a bit more informative. Simply
   stating at what stage the R-build script failed would be very useful.

