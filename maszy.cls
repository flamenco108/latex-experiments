%% To jest plik maszy.cls
%% This is file maszy.cls
%%
%% Plik LaTeX'owej klasy opartej o mwcls do celów 
%% składania dokumentu w formie maszynopisu 
%% (stylizacja na fachowy maszynopis pisarski).
%%
%% Autor: Krzysztof Smirnow (Krzysztof Stenografow, flamenco108@gmail.com)
%% https://krzysztof.smirnow.eu
%%
%%
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{maszy}[2022/05/25 Klasa maszynopisu wg mwcls]

%\LoadClass[a4paper,12pt,wide]{mwbk}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{mwbk}}
%\ProcessOptions\relax
%\LoadClass[a4paper,12pt,wide]{mwbk}
%\LoadClass[polish,ms,12pt]{memoir}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{sffms}}
\ProcessOptions\relax
\LoadClass{sffms}


% marginesy
\RequirePackage[margin=2.5cm]{geometry}

\RequirePackage{polski}
\RequirePackage[utf8]{inputenc}

% redefinicja \normalsize
%\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont} % domyślna wielkość 12pt

%rozmiar kartki
\setlength\paperheight {297mm}
\setlength\paperwidth  {210mm}

% wysokość wiersza i interlinii
%\renewcommand{\baselineskip}{12pt}





% krój czcionki

\RequirePackage{tgcursor}

\DeclareOption{tgcursor}{%
   \sffms@tgcursortrue%
   \AtBeginDocument{
        \fontfamily{qcr}\selectfont
      \renewcommand{\ttdefault}{qcr}
    \renewcommand{\bfdefault}{qcr}
    \renewcommand{\itdefault}{qcr}
    \renewcommand{\sldefault}{qcr}
    \renewcommand{\scdefault}{qcr}
    \renewcommand{\updefault}{qcr}
   }
}