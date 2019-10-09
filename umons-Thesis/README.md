
The umons-Thesis class
======================



This class defines a layout for PhD theses writtent at the University of Mons
It aims to help the authors to use LaTeX without facing troubles due to layout considerations.

The class is based on the `memoir` class.



Class options
-------------


Values written in **bold** are default values.


|	Options		|	Value				|	Description														|
|	:-----:		|	:---:				|	:----------														|
|	papersize	|	**a4**, a5, umons	|	Formats the paper size (umons is for the final printed format).	|			|
|	pagelayout	|	**default**, iso, semiiso, medieval	|	Formats the layout of the page (text width, margins).	|
|	fontname	|	**latinmodern**, newcentury, bookman	|	Selects the font family.					|
|	fontsize	|	9pt, 10pt, **11pt**, 12pt, 14pt, 17pt, 20pt, 25pt, 30pt, 36pt, 48pt, 60pt	|	Selects the normal font size (same options as `memoir`).	|
|	twoside		|	**true**, false		|	Prints the text recto-verso.									|
|	oneside		|	true, **false**		|	Prints the text recto only (complementary to twoside).			|						|
|	final		|	**true**, false		|	Prints the text for final version.								|	
|	draft		|	true, **false**		|	Prints black boxes to show overfull \hbox and others.			|
|	faculty		|	fau, fmp, fpms, fpse, fs, fti, fweg, shs, law	|	Defines faculty-related options and colors.	|



Unit tests
----------


### List of tested features
* compilers [1 effective test]
	- [ ] LaTeX (+ DVI to PDF),
	- [X] PDFLaTeX;
	- [ ] LuaLaTeX, and
	- [ ] XeLaTeX.
* commands and environments [0 effective test]
* options [17 effective tests]
	- [X] papersize = {a4, a5, umons}
	- [X] pagelayout = {default, iso, semiiso, medieval}
	- [X] fontname = {latinmodern, newcentury, bookman}
	- [X] fontsize = {10pt, 11pt, 12pt}
	- [X] twoside, oneside
	- [X] final, draft

Total: 17 tests.


### Remarks
All unit tests have been compiled:
* with compilers (engines) included in the TeXLive (2017) distribution,
* under the TeXstudio editor,
* on a Windows 10 OS.
