\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{booksSolutions}[15/08/2023 Class for book solutions]

% article is our base class
\LoadClass{article}

\usepackage{mathtools} % Improved amsmath
\usepackage{amsfonts}
\usepackage{amsthm} % For the proof environment
\usepackage{amssymb}
\usepackage{thmtools} % Most of what you need for mathematical statements. Check out the excellent guide: https://ctan.math.illinois.edu/macros/latex/contrib/thmtools/doc/thmtools-manual.pdf
\usepackage{thm-restate} % Allows to have proofs separated from the statements
\usepackage{tikz-cd}

\usepackage{algorithm}
\usepackage{algorithmic}

\usepackage{graphicx} % To add images
\usepackage{booktabs} % Beautiful tables

\usepackage{xcolor}
\usepackage{hyperref} % Hyper-references in the document
\usepackage{url}
\usepackage{cleveref}

%%% To add svg files created with inkscape, see https://castel.dev/post/lecture-notes-2/
\usepackage{import}
\usepackage{xifthen}
\usepackage{pdfpages}
\usepackage{transparent}

\newcommand{\incfig}[1]{%
    \def\svgwidth{\columnwidth}
    \import{./figures/}{#1.pdf_tex}
}
%%%

% Number sets
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}

\newcommand{\A}{\mathbb{A}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\D}{\mathbb{D}}

% Calligraphic and bold
\newcommand{\AAA}{\mathcal{A}}
\newcommand{\CCC}{\mathcal{C}}
\newcommand{\FFF}{\mathcal{F}}
\newcommand{\III}{\mathcal{I}}
\newcommand{\LLL}{\mathcal{L}}
\newcommand{\MMM}{\mathcal{M}}
\newcommand{\PPP}{\mathcal{P}}
\newcommand{\SSS}{\mathcal{S}}

\newcommand{\bx}{\mathbf{x}}

\newcommand{\bF}{\mathbf{F}}
\newcommand{\bI}{\mathbf{I}}
\newcommand{\bV}{\mathbf{V}}
\newcommand{\bG}{\mathbf{G}}

% General
\newcommand{\set}[1]{\{#1\}} % This is the template for a command with 1 argument.
\newcommand*\quot[2]{{\textstyle #1}\big/{\textstyle #2}}
\DeclareMathOperator*{\lcm}{lcm}
\DeclareMathOperator*{\ord}{ord}
\newcommand*\parens[1]{\left( #1\right)}
\newcommand*\brackets[1]{\langle #1\rangle}
\newcommand*\absoluteValue[1]{\left\lvert #1\right\rvert}
\newcommand*\degree{°}

% Linear algebra
\DeclareMathOperator*{\nullspace}{null}
\DeclareMathOperator*{\range}{range}
\DeclareMathOperator*{\vecspan}{span}
\DeclareMathOperator*{\trace}{trace}
\DeclareMathOperator*{\matrixdet}{det}
\newcommand*\norm[1]{\left\lVert #1\right\rVert}

% Probability
\newcommand{\E}{\mathbb{E}} % Expected value
\newcommand{\indep}{\perp \!\!\! \perp} % Conditional independence.

% Math environments
\newtheorem{thm}{Theorem}
\crefname{thm}{theorem}{theorems}
\Crefname{thm}{Theorem}{Theorems}

% Exercise with box
\usepackage{mdframed}
\mdfdefinestyle{exercise-box}{backgroundcolor=gray!20,
                                topline=false,bottomline=false,rightline=false,
                                linewidth=0.075cm,linecolor=gray!80}
\newenvironment{exercise}[2][Exercise]
    { \begin{mdframed}[style=exercise-box] \sloppy\textbf{#1 #2}  \\}
    {  \end{mdframed}}


\setcounter{tocdepth}{2}
% For the table of contents (toc), if you have *sections, use the following command to add to toc:
%\label{secType:secName}
%\addcontentsline{toc}{secType}{\nameref{sec:secName}}

% For example:
%\subsection*{Chapter 5.B. Eigenvectors and Upper-triangular matrices}
%\label{subsec:axler5b}
%\addcontentsline{toc}{subsection}{\nameref{sec:axler5b}}