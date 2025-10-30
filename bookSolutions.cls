\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{booksSolutions}[15/08/2023 Class for book solutions]

% book is our base class
\LoadClass{book}


\usepackage{mathtools} % Improved amsmath
\usepackage{amsfonts}
\usepackage{amsthm} % For the proof environment
\usepackage{amssymb}
\usepackage{thmtools} % Most of what you need for mathematical statements. Check out the excellent guide: https://ctan.math.illinois.edu/macros/latex/contrib/thmtools/doc/thmtools-manual.pdf
\usepackage{thm-restate} % Allows to have proofs separated from the statements
\usepackage{tikz-cd}

\usepackage{algorithm}
\usepackage{algorithmic}

\usepackage{caption}
\usepackage{subcaption}
\usepackage{graphicx} % To add images
\usepackage{booktabs} % Beautiful tables

\usepackage{xcolor}
\usepackage{hyperref} % Hyper-references in the document
\usepackage{url}
\usepackage{cleveref}

\usepackage{enumitem}

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
\newcommand{\cA}{\mathcal{A}}
\newcommand{\cB}{\mathcal{B}}
\newcommand{\cC}{\mathcal{C}}
\newcommand{\cD}{\mathcal{D}}
\newcommand{\cF}{\mathcal{F}}
\newcommand{\cG}{\mathcal{G}}
\newcommand{\cI}{\mathcal{I}}
\newcommand{\cL}{\mathcal{L}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\cN}{\mathcal{N}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\cR}{\mathcal{R}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\cT}{\mathcal{T}}
\newcommand{\cU}{\mathcal{U}}

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
\newcommand*\sqrBrackets[1]{\left[ #1\right]}
\newcommand*\brackets[1]{\langle #1\rangle}
\newcommand*\absoluteValue[1]{\left\lvert #1\right\rvert}
\newcommand*\degree{°}
\DeclareMathOperator{\sgn}{sgn}

% Linear algebra
\DeclareMathOperator*{\nullspace}{null}
\DeclareMathOperator*{\range}{range}
\DeclareMathOperator*{\vecspan}{span}
\DeclareMathOperator*{\trace}{trace}
\DeclareMathOperator*{\matrixdet}{det}
\newcommand*\norm[1]{\left\lVert #1\right\rVert}

% Probability
\newcommand{\E}{\mathbb{E}} % Expected value
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\Corr}{\mathrm{Corr}}

\newcommand{\indep}{\perp \!\!\! \perp} % Conditional independence.
\newcommand{\mathdash}{\relbar\mkern-9mu\relbar}

\newcommand{\prob}{\mathbb{P}}
\newcommand{\cdf}{\mathrm{P}}
\newcommand{\pdf}{\mathrm{p}}
\newcommand{\cdfQ}{\mathrm{Q}}
\newcommand{\pdfQ}{\mathrm{q}}

% Math environments
\newtheorem{thm}{Theorem}
\crefname{thm}{theorem}{theorems}
\Crefname{thm}{Theorem}{Theorems}

% Exercise with box, and no break errors.
\usepackage{tcolorbox}
\tcbuselibrary{magazine}

\newtcolorbox{exercise}[1]
{
  /tcb/leftrule  =0.5mm,
  /tcb/rightrule =0.5mm,
  /tcb/bottomrule=0.5mm, 
  title    = {Exercise #1},
  colframe = black, %black!25,
  colbacktitle = black, %white, %white, %
  coltitle = white, %black!20!black,
  colback  = white, %gray!10,
  fonttitle= \bfseries,
  sharp corners, % Quitar si quiero redondas
  breakable,
}

\setcounter{tocdepth}{2}
% For the table of contents (toc), if you have *sections, use the following command to add to toc:
%\label{secType:secName}
%\addcontentsline{toc}{secType}{\nameref{sec:secName}}

% For example:
%\subsection*{Chapter 5.B. Eigenvectors and Upper-triangular matrices}
%\label{subsec:axler5b}
%\addcontentsline{toc}{subsection}{\nameref{sec:axler5b}}