% Intro Options
\ProvidesClass{formatting}[2018/09/16 resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1.2cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}



% Color definitions
\definecolor{primary}{HTML}{000000} 
\definecolor{emph}{HTML}{3399ff}
\definecolor{quiet}{HTML}{6b7584}
\definecolor{bold}{HTML}{000000}


% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{40pt}{10cm}\selectfont #1 
		\color{emph}\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{primary}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
}

\newcommand{\topline}[2]{
  {\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}} \hfill 
   { \color{quiet}#2 \fontsize{10pt}{12pt}}
}

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{emph}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright}{} {0em}{}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{12pt}}
\newcommand{\smallgap}{\vskip5pt}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\color{primary}\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

