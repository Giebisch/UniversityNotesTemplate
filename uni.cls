\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uni}[2021 LaTeX Template for University Notes | Giebisch]

\LoadClass[egregdoesnotlikesansseriftitles]{scrartcl}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumerate}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{float}
\RequirePackage[headsepline]{scrlayer-scrpage}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[autostyle=true,german=quotes]{csquotes}
\RequirePackage{bibgerm}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{textcomp}
\RequirePackage[protrusion=true, expansion=true, final]{microtype}

\usepackage[backend=biber,bibencoding=utf-8,style=alphabetic-verb]{biblatex}
\bibliography{literatur}

\geometry{
  left = 30mm,
  right = 30mm
}

\overfullrule=1mm

\makeatletter

\automark{section}

\lohead{\@title}
\chead{}
\rohead{\headmark}
\pagestyle{scrheadings}

\def\Title{%
  \newpage
  \null
  \thispagestyle{empty}
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\huge \scshape \@title \par}%
    \vskip 1.5em%
    {\Large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author\\ 
        \\
        Stand: \today
      \end{tabular}\par}%
    \vskip 1em%
    %{\large \@date}%
  \end{center}%
  \par
  \vskip 3.5em}
\makeatother

\makeatother