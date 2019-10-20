\LoadClass[twoside,a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ug}

\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage{fancyhdr}
%\RequirePackage{fancyvrb}
%\RequirePackage[includehead,includefoot,top=50pt,bottom=50pt,headheight=24pt,margin=1in]{geometry}
\RequirePackage[includehead,includefoot,top=50pt,bottom=50pt,headheight=24pt]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{multirow}
\RequirePackage{verbatim}
\RequirePackage{geometry}
\usepackage[utf8]{inputenc}

\geometry{
 a4paper,
 total={170mm,257mm},
 left=20mm,
 top=20mm,
}

\pagestyle{fancy}
\graphicspath{ {./figures/} {./wavedrom/} }
\setlength{\parskip}{\baselineskip}


\renewcommand{\headrulewidth}{.4pt}
\fancyhead{}
\fancyhead[RO,LE]{
\textbf{\@title}
\\
\textsc{\small{\@category}}
}
\fancyhead[RE,LO]{\includegraphics[scale=.25]{Logo.png}}

\renewcommand{\footruleskip}{10pt}
\renewcommand{\footrulewidth}{.4pt}

\author{94336 - Guilherme Trindade\vspace{5pt} \\ 97142 - Hélio Júnior\vspace{5pt}}
\let\theauthor\@author

\fancyfoot{}
\fancyfoot[LO,RE]{2019 - Instituto Superior Tecnico\hspace{2cm}\url{www.tecnico.ulisboa.pt}\hspace{1cm}}
\fancyfoot[LE,RO]{\thepage}

\newcommand{\category}[1]{\def\@category{#1}}
\renewcommand{\familydefault}{\sfdefault}

\renewcommand{\maketitle}{
\begin{titlepage}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\vspace*{100pt}
\Huge{\textbf{\@title}}

\huge{\@category}

\vspace*{2ex}
\includegraphics[keepaspectratio,scale=.7]{Logo.png}

\vspace{70pt}
\hfill\begin{minipage}{.4\linewidth}\large
Group 2\par\vspace{5pt}
\theauthor\par\vspace{25pt}
%Turno (hora, dia da semana)\par\vspace{5pt}
Professor:\\
José Teixeira de Sousa\par\vspace{5pt}
\end{minipage}\vspace{150pt}

\hspace{200pt}
\small{\today}
\vspace*{\fill}
\end{titlepage}
}
