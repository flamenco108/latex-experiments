\NeedsTeXFormat{LaTeX2e} % dla pełnej jasności
\ProvidesClass{skolimbk} % jedyny niezbędny element klasy :-)
\DeclareOption*{% wszystkie opcje
\PassOptionsToClass{\CurrentOption}{mwbk}} % mają być przekazywane
% do klasy mwbk czyli book MW polska książka
\ProcessOptions
\LoadClass{mwbk} % ładujemy klasę bazową, do opcji
% podanych w dokumencie dodajemy 11pt
% i sfheadings
\RequirePackage[OT4]{polski} % odpowiednik \usepackage
\RequirePackage[utf8]{inputenc}
\RequirePackage{array,graphicx}
\RequirePackage[bookmarks=true,colorlinks=true,linkcolor=blue,unicode=true]{hyperref} %hyperlinks

%%% 
% Zarówno dla part jak i chapter usunąłem łamanie po, 
% dla chapter usunąłem też łamanie przed, 
% aby wprowadzić oszczędność papieru.
% Poza tym formatowanie jak w MWCLS
%%%
\SetSectionFormatting[breakbefore,wholewidth]{part}
        {0\p@ plus1fil}
        {\FormatChapterHeading{20\p@}%
                {\centering\large\partname\space}%
                {\centering\LARGE}}
        {1.6\baselineskip}

\SetSectionFormatting[wholewidth]{chapter}
        {0\p@}
        {\FormatRigidChapterHeading{6.4\baselineskip}{12\p@}%
           {\large\@chapapp\space}{\LARGE}}
        {1.6\baselineskip}

\SetSectionFormatting{section}
%        {24\p@\@plus5\p@\@minus2\p@}
        {24\p@ \@minus2\p@}
        {\FormatHangHeading{\large}}
        {16\p@\@plus3\p@}

\SetSectionFormatting{subsection}
%        {16\p@\@plus3\p@\@minus1\p@}
        {16\p@ \@minus1\p@}
        {\FormatHangHeading{}}
%        {10\p@\@plus2\p@}
        {2\baselineskip}

\SetSectionFormatting{subsubsection}
%        {10\p@\@plus2\p@\@minus1\p@}
        {10\p@ \@minus1\p@}
        {\FormatHangHeading{}}
%        {6\p@\@plus1\p@}
        {6\p@}



\endinput % dla porządku