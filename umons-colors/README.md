
The umons-colors package
=========================



This package defines the colors of the University of Mons, 
as defined by the corporate identity and style guide.
It can be called to define colors for layout of documents related to the University.



Package options
---------------


Values written in *italic* are default values.


|	Options		|	Value			|	Description										|
|	:-----:		|	:---:			|	:----------										|
|	verbose		|	*true*, false	|	Writes detailed information in the *.log file.	|



Unit tests
----------


### List of tested features
* compilers [2 effective tests]
	- [X] LaTeX (+ DVI to PDF),
	- [X] PDFLaTeX;
	- [X] LuaLaTeX, and
	- [X] XeLaTeX.
* commands and environments [2 effective tests]
	- [X] `textcolor` command, and
	- [X] `testcolors` environment.

Total: 8 tests.


### Remarks
For the [LuaLaTeX + `testcolors`] unit test, I could not use the `standalone` class
because errors were genereted.
I think that it might have a clash.
Hence, the use of `minimal` instead.

All unit tests have been compiled:
* with compilers (engines) included in the TeXLive (2017) distribution,
* under the TeXstudio editor,
* on a Windows 10 OS.
