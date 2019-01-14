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
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}



% Color definitions
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{3399ff}
\definecolor{subheadings}{HTML}{6b7584}
\definecolor{please}{HTML}{6b7584}


% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{40pt}{10cm}\selectfont #1 
		\color{headings}\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}

\newcommand{\topline}[2]{
  {\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}} \hfill 
   { \color{subheadings}#2 \fontsize{10pt}{12pt}}
}

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bolta}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}



% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{12pt}}
\newcommand{\smallgap}{\vskip5pt}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\color{primary}\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

