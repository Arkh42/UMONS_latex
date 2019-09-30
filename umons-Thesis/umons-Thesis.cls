
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
\DeclareStringOption{papersize}
\DeclareStringOption{fontsize}

\DeclareBoolOption[true]{twoside}
\DeclareComplementaryOption{oneside}{twoside}


%
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


% Option: papersize
% -----------------

\ifdefstring{\umonsThesis@papersize}{a4}{% if true
	\PassOptionsToClass{a4paper}{memoir}
}{}

\ifdefstring{\umonsThesis@papersize}{a5}{% if true
	\PassOptionsToClass{a5paper}{memoir}
}{}


% Option: fontsize
% -----------------
\PassOptionsToClass{\umonsThesis@fontsize}{memoir}


% Option: twoside, oneside
% ------------------------
\ifbool{umonsThesis@twoside}{% if true
	\PassOptionsToClass{twoside}{memoir}
}{% else
	\PassOptionsToClass{oneside}{memoir}
}



% Load 'memoir' class
% -------------------
\LoadClass{memoir}



% Option: papersize (umons)
% -------------------------

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

