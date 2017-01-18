\NeedsTeXFormat{LaTeX2e}[1999/12/01]

\ProvidesClass{mfe-article}[2017/01/18 v3.5.0 MfE article class]
\LoadClass[a4paper,twoside,final,11pt]{article}

\RequirePackage[
    hmargin={35mm,20mm},
    vmargin={20mm,20mm}]{geometry}
\raggedright

\usepackage{fontspec}
\newfontfamily\roboto[Mapping=tex-text,
    LetterSpace = 2.0,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Roboto}
\setmainfont[Mapping=tex-text,
    LetterSpace = 2.0,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Roboto}
\newfontfamily\opensans[Mapping=tex-text,
    Numbers=Monospaced,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Open Sans}
\setsansfont[Mapping=tex-text,
    Numbers=Monospaced,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Open Sans}
\setmathrm[Mapping=tex-text,
    Numbers=Monospaced,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Open Sans}
\setmathsf[Mapping=tex-text,
    Numbers=Monospaced,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Open Sans}
\setmathtt[Mapping=tex-text, 
    Numbers=Monospaced,
    ItalicFont     = {* Italic},
    BoldFont       = {* Bold},
    BoldItalicFont = {* Bold Italic}]{Open Sans}
\renewcommand{\normalsize}{\fontsize{10.5pt}{16pt}\selectfont}
\setlength{\parskip}{5mm}
\setlength{\parindent}{0mm}

\RequirePackage[table]{xcolor}
\definecolor{teal-darkest}{RGB}{28,85,108}
\definecolor{teal-dark}{RGB}{15,123,125}
\definecolor{teal}{RGB}{44,153,134}
\definecolor{teal-light}{RGB}{111,199,183}
\definecolor{blueish}{RGB}{50,128,156}
\definecolor{orange-light}{RGB}{218,108,40}
\definecolor{orange}{RGB}{218,90,40}
\definecolor{orange-dark}{RGB}{138,57,29}
\definecolor{orange-darker}{RGB}{114,59,36}
\definecolor{orange-darkest}{RGB}{89,55,49}
\definecolor{grey}{RGB}{127,127,127}

\RequirePackage{titlesec}
\titleformat{\section}{\opensans\color{teal-darkest}\bfseries\fontsize{18pt}{20pt}\selectfont}{}{0em}{}
\titleformat{\subsection}{\opensans\color{teal-dark}\bfseries\fontsize{16pt}{17.5pt}\selectfont}{}{0em}{}
\titleformat{\subsubsection}{\opensans\bfseries}{}{0em}{}
\titlespacing{\section}{0pt}{2\baselineskip}{\baselineskip}
\titlespacing{\subsection}{0pt}{2\baselineskip}{0.5\baselineskip}
\titlespacing{\subsubsection}{0pt}{\baselineskip}{0pt}

\usepackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[LE]{\roboto\scriptsize\thepage\hspace{1cm}\@title}
    \fancyfoot[RO]{\roboto\scriptsize\@title\hspace{1cm}\thepage}
    \renewcommand{\headrulewidth}{0pt}
  }
\pagestyle{plain}

\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{csquotes}
\RequirePackage{polyglossia}
\setdefaultlanguage[variant=newzealand]{english}
\RequirePackage[style=apa,backend=biber]{biblatex}
\DeclareLanguageMapping{english}{english-apa}

\usepackage[font={small,bf},labelsep=colon,singlelinecheck=false]{caption}
\RequirePackage{lastpage}

\RenewDocumentCommand{\maketitle}{}{
{ \renewcommand{\and}{, }
  \hypersetup{
      pdfinfo={
      Title={\@title},
      Author={\@author}
    }
  }
}
{\raggedright \bf \opensans \fontsize{23}{27.5}\selectfont \@title\par }
{\raggedright \opensans \fontsize{13}{15}\selectfont \@date\par }


}

\endinput

