
%%              %%
% IDENTIFICATION %
% ============== %



% Version of LaTeX required
% -------------------------
\NeedsTeXFormat{LaTeX2e}

% Class declaration
% -----------------
\ProvidesClass{umons-Thesis}[2019/09/30 A class to write PhD thesis according to the UMONS format]



%%                        %%
% PRELIMINARY DECLARATIONS %
% ======================== %



% Loading 'kvoptions' package to manage key=value options
% -------------------------------------------------------
\RequirePackage{kvoptions}

% Loading 'etoolbox' for programming facilities
% ---------------------------------------------
\RequirePackage{etoolbox}


% Packages needed in the declared options
% ---------------------------------------
%\RequirePackage[options]{package-name}


% Commands declaration needed in the declared options
% ---------------------------------------------------
%\newcommand*{cmd}{def}
%\renewcommand*{cmd}{def}
%\DeclareRobustCommand*{cmd}{def}
%
%\newcommand{cmd}{def}
%\renewcommand{cmd}{def}
%\DeclareRobustCommand{cmd}{def}



%%       %%
% OPTIONS %
% ======= %



% Setup key=value options
% -----------------------
\SetupKeyvalOptions{
	family=umonsThesis,
	prefix=umonsThesis@
}


% New options
% -----------

\DeclareStringOption[a4]{papersize}
\DeclareStringOption[default]{pagelayout}

\DeclareStringOption{fontname}[latinmodern]
\DeclareStringOption[11pt]{fontsize}

\DeclareBoolOption[true]{twoside}
\DeclareComplementaryOption{oneside}{twoside}

\DeclareBoolOption[true]{final}
\DeclareComplementaryOption{draft}{final}

%\DeclareVoidOption{optionName}{code}


% Management of not explicitly declared options (default: error)
% ---------------------------------------------
%\DeclareDefaultOption{code}


% Processing the options
% ----------------------
\ProcessKeyvalOptions{umonsThesis}\relax




%%                 %%
% CORE DECLARATIONS %
% ================= %


% Page layout
% -----------

% Option: papersize
\ifdefstring{\umonsThesis@papersize}{a4}{% if true
	\PassOptionsToClass{a4paper}{memoir}
}{}

\ifdefstring{\umonsThesis@papersize}{a5}{% if true
	\PassOptionsToClass{a5paper}{memoir}
}{}


% Fonts and encoding
% ------------------

% Option: fontname (compiler-dependent)
\RequirePackage{ifpdf}
\RequirePackage{ifxetex}
\RequirePackage{ifluatex}

\ifboolexpr{ bool{xetex} or bool{luatex} }{%true
	\ClassError{umons-Thesis}{Cannot compile with the current compiler}{This class can only be compiled with: pdflatex.}
}{%false
	\ifbool{pdf}{%true
		\ifdefstring{\umonsThesis@fontname}{latinmodern}{% if true
			\ClassInfo{umons-Thesis}{Font: Latin Modern}
			\newcommand*{\memfontfamily}{lmr}
			\newcommand*{\memfontenc}{T1}
			\newcommand*{\memfontpack}{lmodern}
		}{}
		\ifdefstring{\umonsThesis@fontname}{newcentury}{% if true
			\ClassInfo{umons-Thesis}{Font: New Century Schoolbook}
			\newcommand*{\memfontfamily}{pnc}
			\newcommand*{\memfontenc}{T1}
			\newcommand*{\memfontpack}{newcent}
		}{}
		\ifdefstring{\umonsThesis@fontname}{bookman}{% if true
			\ClassInfo{umons-Thesis}{Font: Bookman}
			\newcommand*{\memfontfamily}{pbk}
			\newcommand*{\memfontenc}{T1}
			\newcommand*{\memfontpack}{bookman}
		}{}
%		\ifdefstring{\umonsThesis@fontname}{helvetica}{% if true
%			\ClassInfo{umons-Thesis}{Font: Helvetica}
%			\newcommand*{\memfontfamily}{phv}
%			\newcommand*{\memfontenc}{T1}
%			\newcommand*{\memfontpack}{helvet}
%		}{}
	}{%false
		\ClassError{umons-Thesis}{Unexpected error.}{}
	}
}

% Option: fontsize
\PassOptionsToClass{\umonsThesis@fontsize}{memoir}


% Printing
% --------

% Option: twoside, oneside
\ifbool{umonsThesis@twoside}{% if true
	\PassOptionsToClass{twoside}{memoir}
}{% else
	\PassOptionsToClass{oneside}{memoir}
}

% Option: final, draft
\ifbool{umonsThesis@final}{% if true
	\PassOptionsToClass{final}{memoir}
}{% else
	\PassOptionsToClass{draft}{memoir}
}



% Load 'memoir' class
% -------------------
\LoadClass[onecolumn,% only one column of text on a page
		   openright,% each chapter will start on a recto page
		   extrafontsizes,% using scalable fonts that can exceed 25pt
]{memoir}



% Page layout
% -----------

% Option: papersize (umons)
\ifdefstring{\umonsThesis@papersize}{umons}{% if true
	\DisemulatePackage{geometry}
	\RequirePackage{geometry}
	\geometry{reset,%
		inner=25mm,%
		top=15mm,%
		total={130mm,215mm},%
		includeheadfoot%
	}%
}{}

% Option: pagelayout
\ifdefstring{\umonsThesis@pagelayout}{default}{% if true
	\relax
}{}
\ifdefstring{\umonsThesis@pagelayout}{iso}{% if true
	\isopage
	\checkandfixthelayout
}{}
\ifdefstring{\umonsThesis@pagelayout}{semiiso}{% if true
	\semiisopage
	\checkandfixthelayout
}{}
\ifdefstring{\umonsThesis@pagelayout}{medieval}{% if true
	\medievalpage
	\checkandfixthelayout
}{}


% Font and encoding
% -----------------

% Load inputenc if necessary
\ifboolexpr{ not bool{luatex} and bool{pdf} }{%true
	\RequirePackage[utf8]{inputenc}
}{%false
}




% Call to specific packages
% -------------------------
%\RequirePackage[options]{package-name}
%\RequirePackageWithOptions{package-name}


% Commands definition
% -------------------
%\newcommand*{cmd}{def}
%\renewcommand*{cmd}{def}
%\DeclareRobustCommand*{cmd}{def}
%
%\newcommand{cmd}{def}
%\renewcommand{cmd}{def}
%\DeclareRobustCommand{cmd}{def}



% Use of declared BoolOption
% --------------------------

