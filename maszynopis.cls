%% To jest plik maszynopis.cls
%% This is file maszynopis.cls
%%
%%% MASZYNOPIS z maszyny
%% Standardowy maszynopis był określany jako kartka A4 
%% zadrukowana jednostronnie. Margines lewy 3 cm.
%% Zawiera 30 wierszy po 60 znaków w wierszu.
%% Znaki miały stałą szerokość i w zależności od typu maszyny 
%% miały mieścić od 10 (Pica) do 12 (Elite) znaków na cal. 
%% Wielkości Pica odpowiada 12 pt kroju Courier, a Elite odpowiada 10 pt kroju Courier.
%% (stylizacja na fachowy maszynopis pisarski).
%%
%% Autor: Krzysztof Smirnow (Krzysztof Stenografow, flamenco108@gmail.com)
%% https://krzysztof.smirnow.eu
%%
%%
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{maszynopis}[2022/05/25 Klasa formatująca tekst, aby wyglądał jak z maszyny do pisania]

%\LoadClass[a4paper,12pt,wide]{mwbk}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{mwbk}}
%\ProcessOptions\relax
%\LoadClass[a4paper,12pt,wide]{mwbk}
%\LoadClass[polish,ms,12pt]{memoir}


%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{sffms}}
%\ProcessOptions\relax
%\LoadClass{sffms}


\DeclareOption{polish}{\PassOptionsToClass{polish}{memoir}}
%\DeclareOption{ms}{\PassOptionsToClass{ms}{memoir}}
%\DeclareOption{12pt}{\PassOptionsToClass{12pt}{memoir}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\ExecuteOptions{12pt,polish,ms}
%\LoadClass[polish,ms,12pt]{memoir}
\LoadClass[ms,12pt]{memoir}


% marginesy
\RequirePackage[lmargin=3cm,rmargin=2.5cm,tmargin=2.5cm,bmargin=2cm]{geometry}

\RequirePackage{polski}
\RequirePackage[utf8]{inputenc}
\RequirePackage{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[autostyle=true]{csquotes}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PRZYPISY %%%%%%%%%%%%%%%%%%
%% ZAWSZE NA DOLE czyli endnotes nigdy footnotes!!!
\RequirePackage{endnotes}
\let\footnote=\endnote
%\fi

\def\footnotetext{\endnotetext[\number\numexpr\value{endnote}+1]}
\let\footnotemark\endnotemark
% tytuł strefy przypisów
\renewcommand{\notesname}{%
\newpage 
\begin{center}
\normalsize \# \# \# PRZYPISY  \# \# \#
\end{center}
}
% znacznik przypisu \makeenmark
\renewcommand{\makeenmark}{\normalsize /{\theenmark}/\enspace }

\renewcommand\enoteformat{\normalsize \parindent=0em
  \leavevmode\makeenmark\raggedright}

\providecommand\theendnotes\relax
%% KONIEC PRZYPISY %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
%% ROZDZIAŁY I PODROZDZIAŁY
\RequirePackage{titlesec}

%%% ROZDZIAŁ
\titleformat
{\chapter} % command
[display] % shape
%[hang]
%[block]
%[runin]
%[leftmargin] 
%[rightmargin] 
%[drop]
%[wrap]
%[frame]
%{\bfseries\Large\itshape} % format
{\normalsize} % format
{\# Rozdział \thechapter} % label
{1pt } % vertical sep from text
{\# } % before-code (zanim tytuł rozdziału)
[] % after-code

%% SEKCJA (PODROZDZIAŁ)
\titleformat
{\section}%command
[hang] %shape
{\normalsize} %format
{\#\# \thesection} %label
{1pt } % vertical sep from text
{ } % before-code (zanim tytuł rozdziału)
[] % after-code
%\titlespacing{\section}{12pc}{1.5ex plus .1ex minus .2ex}{1pc}

%% PODSEKCJA (PODPODROZDZIAŁ)
\titleformat
{\subsection}%command
[hang] %shape
{\normalsize} %format
{\#\#\# \thesubsection} %label
{1pt } % vertical sep from text
{\#\#\#  } % before-code (zanim tytuł rozdziału)
[] % after-code

%% PODPODSEKCJA (PODPODPODROZDZIAŁ)
\titleformat
{\subsubsection}%command
[hang] %shape
{\normalsize} %format
{\#\#\#\# \thesubsubsection} %label
{1pt } % vertical sep from text
{\#\#\#\#  } % before-code (zanim tytuł rozdziału)
[] % after-code


%% Wyróżniony AKAPIT
\titleformat
{\paragraph}%command
[runin] %shape
{\normalsize} %format
{\MakeUppercase{\theparagraph}} %label
{1pt} % vertical sep from text
{\# \MakeUppercase} % before-code (zanim tytuł rozdziału)
[ \# ] % after-code

%% Wyróżniony AKAPIT
\titleformat
{\subparagraph}%command
[runin] %shape
{\normalsize} %format
{ \MakeUppercase{\thesubparagraph}} %label
{1pt} % vertical sep from text
{ \MakeUppercase } % before-code (zanim tytuł rozdziału)
[] % after-code




%% ROZDZIAŁY I PODROZDZIAŁY
%%%%%%%%%%%%%%%%%%%%%%%%



%% wdowy i bękarty
\sloppy
\widowpenalty=100000 %nie pozostawia wdow i sierot pojedynczych




% redefinicja \normalsize
%\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont} % domyślna wielkość 12pt

%rozmiar kartki
\setlength\paperheight {297mm}
\setlength\paperwidth  {210mm}

% wysokość wiersza i interlinii
%\renewcommand{\baselineskip}{12pt}


%% tytuł, autor itp
\makeatletter
\def\@maketitle{%


\begin{center}
%% tytuł
{ \normalsize  \MakeTextUppercase{\@title} \par}
\vskip 1.5em
% autor
{ \normalsize  \@author \par}
\vskip 1.5em
% data
{ \normalsize  \@date \par}
\vskip 1em
-------
\vskip 1.5em
\end{center}

}
\makeatother
%%%%%%

