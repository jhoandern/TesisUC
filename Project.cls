%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plantilla Latex para Trabajos Especiales de Grado. Ing UC Telecom
%
% Esta plantilla ha sido descargada desde:
% http://www.latextemplates.com
%
% Este archivo define la estructura y diseño de la plantilla.
%
% Hay una parte de este archivo que necesita ser completato - Estas variables
% realizan modificaciones particulaes tales como: el nombre del autor,
% el nombre de la universidad, etc. Estas variables ud. las encontrará comentadas 
% como "VARIABLES DEL DOCUMENTO" en la sección inferior.
%
%
% Encabezado original:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%
% Traducción, Modificación y Adaptación:
% Carlos Mejías
% Ahmad Osman
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Project}[2007/22/02 v1.0 LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{letterpaper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage[scaled]{beramono, berasans}
\usepackage{eulervm, palatino}
\usepackage{slashbox} % Linea diagonal para las tablas

\usepackage{float}% Manipulacion de flotantes
\def\rmdefault{ppl}
\def\sfdefault{fvs}
\def\ttdefault{fvm}

\usepackage{pgfgantt}% diagrama de gantt

\PassOptionsToPackage{hyphens}{url}\usepackage[bookmarks=true,
			bookmarksopen=true,
   			bookmarksopenlevel=0,
   			bookmarksnumbered=true,
  			hypertexnames=false,
		 	colorlinks=true,
		 	linkcolor={blue},
		 	citecolor={blue},
		 	urlcolor={red},
   			pdfstartview={FitV},
   			unicode, breaklinks=true]{hyperref}

\usepackage[spanish, es-notilde]{babel} % Paquete de Idioma
\usepackage[backend=bibtex, style=numeric-comp, sorting=none, natbib=true,
            hyperref=auto, bibencoding=ascii, maxcitenames=3, useprefix=true,
            maxbibnames=100,language=auto, autolang=hyphen,
            uniquename=init]{biblatex}
\bibliography{Bibliografia} % Incluye las referencias bibliográficas almacenadas en archivo "Bibliografia.bib"
\usepackage{csquotes}

\AtBeginDocument{%
\renewcommand\tablename{Tabla}
\renewcommand{\listtablename}{Índice de tablas}
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

\def\fecha{B\'{a}rbula, \number\day \space de \ifcase\month\or
enero\or febrero\or marzo\or abril\or mayo\or junio\or
julio\or agosto\or septiembre\or octubre\or noviembre\or
diciembre\fi \space del \number\year}

\def\fechaII{\number\day \space de \ifcase\month\or
enero\or febrero\or marzo\or abril\or mayo\or junio\or
julio\or agosto\or septiembre\or octubre\or noviembre\or
diciembre\fi \space del \number\year}

\usepackage{setspace}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
%Configuración espaciado entre texto y figuras
\setlength{\textfloatsep}{24pt plus 1.0pt minus 2.0pt} % Distancia superior e inferior entre flotantes y el texto;
\setlength{\floatsep}{12pt plus 1.0pt minus 2.0pt}  % Distancia entre dos flotantes;
\setlength{\intextsep}{12pt plus 1.0pt minus 2.0pt} % Distancia entre flotantes insertados dentro del texto (usando h) y el texto en sí.

\usepackage{vmargin}
%----------------------------------------------------------------------------------------
%	MARGENES
%----------------------------------------------------------------------------------------
\setmarginsrb           { 4cm}  % margen izquierdo
                        { 3cm}  % margen superior
                        { 3cm}  % margen derecho
                        { 3cm}  % margen inferior
                        { 20pt} % altura de encabezado
                        {0.7cm}  % separación de ecabezado
                        { 9pt}  % altura de pie de nota
                        {0.8cm}  % separación de pie de nota%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=1000        % Sin líneas de guion consecutivas
\brokenpenalty=1000               % Sin paradas entrecortadas a traves de columnas o      
                                  % páginas
\widowpenalty=999                 % Casi sin viudas en la parte inferior de la página.
\clubpenalty=999                  % Casi sin huérfanos en la parte superior de la   
								  %página
\interfootnotelinepenalty=9999    % Casi nunca rupturas del pie de notas.

%Configuración de la plantilla para los encabezados y los pie de nota.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\rightmark}}
\rhead[\fancyplain{}{\leftmark}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\sf\thechapter\space #1}\markboth{\@chapapp\ \thechapter.\ \sl #1}{\@chapapp\ \sf\thechapter.\ \sl #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\usepackage{amsmath,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[font=small,labelfont=bf]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

\usepackage{listings}
\lccode`~=0
\renewcommand\lstlistingname{Código}
\renewcommand{\lstlistlistingname}{Índice de códigos}

\usepackage[hyphens]{url}
\def\url@ttsstyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\small\ttfamily}}}
\urlstyle{tts}

\usepackage{textcase}
\usepackage{graphicx}
\usepackage{rotating}
\usepackage{subfig}
\usepackage{xcolor}

\lstset{captionpos=b,
        frame=tb,
        basicstyle=\footnotesize\ttfamily,
        showstringspaces=false,
        keepspaces=true}

\newcommand*{\tutor}[1]{\def\supname{#1}}
\newcommand*{\titulo}[1]{\def\ttitle{#1}}
\newcommand*{\autorI}[1]{\def\autnamei{#1}}
\newcommand*{\autorII}[1]{\def\autnameii{#1}}
\newcommand*{\cedulaI}[1]{\def\cedi{#1}}
\newcommand*{\cedulaII}[1]{\def\cedii{#1}}
\newcommand*{\juradoI}[1]{\def\jnamei{#1}}
\newcommand*{\juradoII}[1]{\def\jnameii{#1}}
\newcommand*{\departmento}[1]{\def\deptname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\grupo}[1]{\def\groupname{#1}}
\newcommand*{\tlfI}[1]{\def\tlfi{#1}}
\newcommand*{\tlfII}[1]{\def\tlfii{#1}}
 			
%--------------------------------------------------------

% Inicialización
\def\@empty{}
\autorII{}
\cedulaII{}
\tlfII{}
\grupo{}
%--------------------------------------------------------               

% La portada principal, la portada con título y el certificado de aprobación, no son
% usadas en la versión de www.latextemplates.com. 
% Se crearon y adaptaron al formato de la Univerisidad de Carabobo.            
%----------------------------------------------------------------------------------------    
% SOLICITUD DE APROBACIÓN DE PROYECTO 
%-----------------------------------------------------------------------------------------

\newcommand{\solicitud}{
\begin{titlepage}
    \begin{center}
    \makebox[1\textwidth][c]{
    \parbox[c]{0.19\textwidth}{\centering
    \includegraphics[width=0.105\textwidth]{UC}}
    \parbox[c]{0.59\textwidth}{
    \centering UNIVERSIDAD DE CARABOBO \\
    FACULTAD DE INGENIERÍA \\
    ESCUELA DE INGENIERÍA DE TELECOMUNICACIONES \\ 
    CONSEJO DE ESCUELA}
	\parbox[c]{0.19\textwidth}{\centering
	\includegraphics[width=0.19\textwidth]{ing}}
    }
    \end{center}
    \scriptsize{

    \begin{flushleft}
    \begin{tabular}{lcl}
	Nº:\rule{25mm}{0.5pt} & \hspace{0.32\textwidth} & Bárbula, \rule{6mm}{0.5pt}de \rule{20mm}{0.5pt}del 201\rule{3mm}{0.5pt}.\tabularnewline
	\end{tabular}
    \end{flushleft}    


    
    \noindent Ciudadano Profesor:\\
    JEFE DEL DEPARTAMENTO DE \MakeUppercase{\deptname}.\\
    Presente.

    \ifthenelse{\equal{\autnameii}{}}{%
	De acuerdo a lo establecido en el Artículo 10 del <<Reglamento de Trabajo Especial de Grado>>,
	me dirijo a usted, con el fin de solicitar la aprobación del Departamento, para la realización
	del Trabajo Especial de Grado titulado:}{%
	De acuerdo a lo establecido en el Artículo 10 del <<Reglamento de Trabajo Especial de Grado>>,
	nos dirigimos a Usted, con el fin de solicitar la aprobación del Departamento, para la 
	realización del Trabajo Especial de Grado titulado:} \MakeUppercase{{\bf <<\@title>>}} y el
	nombramiento del Profesor-Guía correspondiente: \MakeUppercase{\supname}.
	
    \ifthenelse{\equal{\autnameii}{}}{%
    Para su información y fines consiguientes, me permito incluir en hojas apartes y por
    quintuplicado la exposición de motivos, objetivos a desarrollar y plan de trabajo a 
    cumplir, debidamente firmada. Atentamente,
    }{%
    Para su información y fines consiguientes, nos permitimos incluir en hojas apartes y por
    triplicado la exposición de motivos, objetivos a desarrollar y plan de trabajo a 
    cumplir, debidamente firmada. Atentamente,
    }

    \vspace{1cm}
    
    \ifthenelse{\equal{\autnameii}{}}{%
    \begin{tabular}{lcc}
    \cline{2-2}
	{\hspace{4cm}} & \scriptsize Br: \textsc{\autnamei} & \hspace{4cm} \tabularnewline
	{\hspace{4cm}} & {\scriptsize C.I: \cedi} & \tabularnewline
	{\hspace{4cm}} & {\scriptsize Tlf: \tlfi}& \tabularnewline
	\end{tabular}
    }{%
    \begin{tabular}{lcl}
    \cline{1-1} \cline{3-3} 
	{\scriptsize Br: \textsc{\autnamei}} & \hspace{4cm} & {\scriptsize Br: %
	\textsc{\autnameii}} \tabularnewline
	{\scriptsize C.I: \cedi} &  & {\scriptsize C.I: \cedii} \tabularnewline
	{\scriptsize Tlf: \tlfi}&  & {\scriptsize Tlf: \tlfii}\tabularnewline
	\end{tabular}
	}
	
    \noindent\framebox{\begin{minipage}[t]{0.975\columnwidth}
	La solicitud que antecede fue sometida a consideración de este Departamento	y aprobada con
	fecha \rule{15mm}{0.5pt} designándose como Profesor-Guía al ciudadano Profesor 
	\rule{50mm}{0.5pt} de la línea de investigación \rule{40mm}{0.5pt}. Conforme: 

	\vspace{1cm}

	\begin{tabular}{ccc}
	\cline{1-1} \cline{3-3} 
	Jefe del Departamento & \hspace{4cm} & Profesor -Guía\tabularnewline
	\end{tabular}%
	\end{minipage}}

	\noindent\framebox{\begin{minipage}[t]{0.975\columnwidth}%
	Recibido en Consejo de Escuela el día \rule{30mm}{0.5pt}. 

	De acuerdo a lo establecido en el Artículo 12 del reglamento respectivo, procediendo con
	autorización otorgada por el Consejo de Escuela el 	\rule{40mm}{0.5pt} y en atención a la 
	recomendación del Departamento, se aprueba el Trabajo Especial de Grado y Profesor Guía arriba 
	señalado.

	\begin{flushright}
	Bárbula, \rule{6mm}{0.5pt}de \rule{20mm}{0.5pt}del 201\rule{3mm}{0.5pt}.
	\par\end{flushright}

	\begin{tabular}{c}
	\hline 
	Director-Presidente del Consejo de\tabularnewline
	Escuela de Ingeniería de  \tabularnewline
	Telecomunicaciones\tabularnewline
	\end{tabular}%
	\end{minipage}}
    }
\end{titlepage}

  \global\let\@date\@empty
   \global\let\date\relax
  \cleardoublepage
}

%----------------------------------------------------------------------------------------    
% PORTADA PRINCIPAL
%-----------------------------------------------------------------------------------------

\newcommand{\portada}{
\begin{titlepage}
    \centering
    \makebox[1\textwidth][c]{
    \parbox[c]{0.19\textwidth}{\centering
    \includegraphics[width=0.105\textwidth]{UC}
	 }
    \parbox[c]{0.59\textwidth}{
    \centering UNIVERSIDAD DE CARABOBO
    \\ FACULTAD DE INGENIERÍA 
    \\ ESCUELA DE INGENIERÍA DE TELECOMUNICACIONES 
    \\ DEPARTAMENTO DE \MakeUppercase{\deptname} }
	\parbox[c]{0.19\textwidth}{\centering
	\includegraphics[width=0.19\textwidth]{ing}}
    }
    \vfill
    \centering \MakeUppercase{{\large\bf \@title}}
    \vfill
    \begin{flushright}
    \ifthenelse{\equal{\autnameii}{}}{%
    \MakeUppercase{\autnamei}\\
    }{%
    \MakeUppercase{\autnamei}\\
	\MakeUppercase{\autnameii}\\
    }
    \end{flushright}
    \vspace{2cm}
    {\large \fecha \par}
\end{titlepage}

  \global\let\@date\@empty
   \global\let\date\relax
  \cleardoublepage
}

%----------------------------------------------------------------------------------------
%	RESUMEN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}[2]
{
  \btypeout{Resumen}
  \addtotoc{Resumen}
  \thispagestyle{empty}
  \chapter*{\@mkboth{
          Resumen}{Resumen}}
  \begin{center}
    %\setlength{\parskip}{0pt}
	{\large \bf \MakeUppercase{\@title} \par}    
	\bigskip
    {\normalsize por \par}
    \bigskip
        \ifthenelse{\equal{\autnameii}{}}{%
    {\normalsize \MakeUppercase{\autnamei} \par}
    }{%
    {\normalsize \MakeUppercase{\autnamei} y \MakeUppercase{\autnameii} \par}
    }
    
    \bigskip 
    {\normalsize \textsf{Presentado en el Departamento de \deptname \\
                 de la Escuela de Ingeniería de Telecomunicaciones \\
                 el \fechaII \hspace{0.5mm}, en calidad de solicitud \\
                 para su respectiva consideración.}}   
  \end{center}
  \bigskip\bigskip\bigskip
  {\large{\textsf{RESUMEN}} \par}
  \bigskip
  {\normalsize #1 \par}
  \bigskip\bigskip
  {\sf Palabras Claves: \keywordnames \par}  
  \bigskip
  {\sf\normalsize\noindent Tutor: \MakeUppercase{\supname} \\
   \hspace{2cm} Profesor del Departamento de \deptname \\
   Escuela de Telecomunicaciones. Facultad de Ingeniería 
   \ifthenelse{\equal{\groupname}{}}{%
   \null \par
   }{%
   adscrito al \groupname \par
   }}
   
  \vfil\vfil\vfil\null
  \cleardoublepage 
}

%----------------------------------------------------------------------------------------

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Índice General}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \contentsname}{\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{Índice de Figuras}
\addtotoc{Índice de Figuras}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\listfigurename}
              {\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{Índice de Tablas}
\addtotoc{Índice de Tablas}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \listtablename}{\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\renewcommand\lstlistoflistings{
\btypeout{Índice de Códigos}
\addtotoc{Índice de Códigos}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\lstlistlistingname
      \@mkboth{
          \lstlistlistingname}{\lstlistlistingname}}
    \@starttoc{lol}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\newcommand\listsymbolname{Acrónimos}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \listsymbolname}{\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\listconstants{Constantes Físicas}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \listconstants}{\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Símbolos}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \listnomenclature}{\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\defbibheading{bibliography}[\bibname]{%
  \renewcommand{\bibname}{Referencias Bibliográficas} % Renombra la Bibliografía 
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \chapter*{#1}%
  \markboth{#1}{#1}
}
\endinput