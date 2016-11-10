MPI LaTeX Templates
=========================

This package generates LaTeX class and style files to create Ministry for the Environment (MFE) and Statistics NZ
Environmental Reporting Series
reports. The style files can be built and installed manually, or can be installed using debian packages on
Linux systems.

## Installing the package

### Checking LaTeX
Before you can install the package you must check to make sure you
have the right version of LaTeX installed. To do this run the command:

        xelatex --version

Which should give the output

        XeTeX 3.1415926-2.4-0.9998 (TeX Live 2012/Debian)
        ...

or indicate a newer version.

If you have an older version of LaTeX you will need to install the backport for
LaTeX. 

### Checking biber
Before you can build the package you must check to make sure you
have the right version of biber installed. To do this run the command:

        biber --version

Note that you must use version 1.8 (or later). 

### Checking for the fonts

In order to use the package you will need to have the following fonts installed:

 - Times New Roman
 - Arial

To check if the font is present run `fc-list` and see if the font name is present
in the output.

All of the font files must be placed in an appropriate location 
where the fonts can be seen by the system. Two possible locations for Linux 
systems are `~/.fonts` and `/usr/local/share/fonts`.


### Installing the Package on Debian based systems

To install the package run the following commands

          git clone git@github.com:MfE-NZ/mfe-latex-templates.git
          cd mfe-latex-templates
          make pkg
          sudo dpkg -i ../mfe-latex-templates_1.3ubuntu1_all.deb


#### Manual Installation

In the case of manual installation, the following steps are required. 

**Build the package** 

Run the following commands

          git clone git@github.com:MfE-NZ/mfe-latex-templates.git
          cd mfe-latex-templates
          make all

**Identify where you can install latex files**

On Linux and OS X run the command: `kpsepath tex | tr ':' '\n'` which will give a list
of directories which latex will look for files in. On windows use 
`C:\users\<xyz>\texmf\tex\latex`, where `<xyz>` is your username.

**Install the mfe templates**

Create a directory called `mfe` in the latex tree and place all the `.sty`,
`.cls` and `.JPG` files into it. Copy the biblatex-mfe into the same directory as the 
`mfe` directory. You should now have two new directories. A common 
location for these would be 

 * /usr/share/texlive/texmf-dist/tex/latex/mfe
 * /usr/share/texlive/texmf-dist/tex/latex/biblatex-mfe

**Tell LaTeX about the new package**

To ensure that LaTeX is aware of the new package you will need to run: `texhash`.


## Using the package

At this point the following latex classes will be available for you to use:

 - mfe-aebr
 - mfe-far

You will also have access to the `mfe` package.


## Documentation

There is an example tex file `mfe-far.tex` showing how it can be used. 


## Incompatible Packages

The mfe templates package will not work correctly with the following packages:

 - subfig (use subcaption instead)


## Use on MS windows

 - install TeX Live from https://www.tug.org/texlive/.
 - install MinGW from http://www.mingw.org/, and use MSYS for building the package.
