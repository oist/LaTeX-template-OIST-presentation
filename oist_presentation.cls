
% A LaTeX2e class for OIST Presentations
% Okinawa Institute of Science and Technology (OIST):
%
% Jeremie Gillet (jeremie.gillet@oist.jp)
%
% last revision: June 2021

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oist_presentation}[2021/06/17 OIST presentation class]

\newif\if@light\@lighttrue
\DeclareOption{light}{\@lighttrue}
\DeclareOption{dark}{\@lightfalse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass{beamer}

%-------------------------------------------------------------------------------
%	HANDLING THE STYLE 
%-------------------------------------------------------------------------------

\if@light

	\newcommand{\templatecolor}{black}
	\newcommand{\includetitlebackground}{\includegraphics[width=\paperwidth]{title_light.png}}
	\newcommand{\includebackground}{\includegraphics[width=\paperwidth, trim=0 0 0 -700 ]{footer_light.png}}

\else

	\newcommand{\templatecolor}{white}
	\newcommand{\includetitlebackground}{\includegraphics[width=\paperwidth, trim = 0 0 0 -17]{title_dark.png}}
	\newcommand{\includebackground}{\includegraphics[width=\paperwidth]{background_dark.png}}

	\setbeamercolor{normal text}{fg=white} % White text
	\setbeamercolor{background canvas}{bg=black} % Black background

\fi

