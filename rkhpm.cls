% vim: set filetype=tex 

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{rkhpm}[2012/10/30 RKH PM class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrrprt}}
\ProcessOptions\relax
\LoadClass[a4paper, 12pt, twoside, halfparskip]{scrreprt}

%\usepackage{geometry}           % For changing margins etc
\usepackage{amssymb}            % Symbols
\usepackage{amsmath}            % More symbols
\usepackage[swedish]{babel}     % Swedish hyphenation
\usepackage{txfonts}            % Using the Times font is required 
\usepackage[utf8]{inputenc}     % For åäö
\usepackage{apacite}            % Print references according to APA
\usepackage[absolute]{textpos}  % Used for textblock
\usepackage{setspace}           % For 1.5 line spacing
\usepackage[swedish]{isodate}   % To format date strings
\usepackage{sectsty}            % To change section headings etc

\usepackage[pdftex,
    bookmarks,
    linktocpage,
    colorlinks=false,
    hyperindex=true,
    hyperfigures
]{hyperref}                     % For clickable links and TOC etc


\setlength{\TPHorizModule}{\paperwidth}\setlength{\TPVertModule}{\paperheight}

% Declarations
%%%%%%%%%%%%%%
%
% Subtitle
\def\subtitle#1{\gdef\@subtitle{#1}}

% Course
\def\course#1{\gdef\@course{#1}}

% Version
\def\version#1{\gdef\@version{#1}}

% Tutor
\def\tutor#1{\gdef\@tutor{#1}}

% Examinator
\def\examinator#1{\gdef\@examinator{#1}}

% Make sure list of authors lines up vertically
\def\and{\\}

% Font sizes etc
%%%%%%%%%%%%%%%%
%
% Use ``one and a half'' line spacing document-wide
\onehalfspacing

% Section headers should be uppercase and 14 pt 
\sectionfont{\Large\normalfont\textbf}

% Subsection headers should be 12 pt bold.
\subsectionfont{\large\normalfont\textbf}

% Title page layout
%%%%%%%%%%%%%%%%%%%
%
\let\@rkh@maketitle=\maketitle
\renewcommand{\maketitle}{
   % \newgeometry{margin=1cm}
    \thispagestyle{empty}
    \begin{textblock}{0.8}[0,0](0.1,0.05)
        \begin{flushleft}
            RÖDA KORSETS HÖGSKOLA\\
            Sjuksköterskeprogrammet 180hp\\
            Vetenskaplig metodik III, Självständigt examensarbete\\
            Delkurs 17, 15 hp\\
            HT 12 % Make this use some internal \year thing or something.
        \end{flushleft}

        \vspace{3cm}
        \begin{center}
            % According to http://wiki.lyx.org/FAQ/ChangeFontUsingLatex,
            % \LARGE is really 17.28 pt (not 18), and \Large is 14.40 pt (not
            % 14). So we are not totally conforming to university guidelines,
            % but question is if anyone will notice?
            {\LARGE \@title \par}           % Uni requires 18 pt
            {\Large \@subtitle \par}        % Uni requires 14 pt
        \end{center}\par

        \begin{center}
            {\Large Projektplan } \\        % Uni requires 14 pt
            Version \isodate\today
        \end{center}

        \begin{center}
            \@author
        \end{center}
    \end{textblock}

    \begin{textblock}{0.8}[0,1](0.1,0.7)
        \begin{tabular}{ll}
            \ifdefined\@tutor
                Handledare: & \@tutor\\
            \fi
            \ifdefined\@examinator
                Examinator: & \@examinator\\
            \fi
        \end{tabular}
    \end{textblock}

    %\restoregeometry
  \@thanks
%  \vfil\null
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\@subtitle\@empty
  \global\let\subtitle\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \@rkh@maketitle


}

\setcounter{page}{1}
