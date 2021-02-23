\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eNeuroArticle}[2020/04/08 Template for eNeuro journal article]

% Pass options to article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{xcolor} % Package for defining colours
\RequirePackage[margin=0.6in,columnsep=0.2in]{geometry}
\RequirePackage{graphicx} 
\RequirePackage{multicol}

\setcounter{secnumdepth}{0}

% Font
\RequirePackage{helvet}
\renewcommand*\familydefault{\sfdefault} 
\RequirePackage[T1]{fontenc}

% Title
\definecolor{titleblue}{RGB}{0, 90, 156} %color-pickered from a publication

% \renewcommand{\maketitle}{
%     \fontsize{20}{24}\fontseries{b}\raggedright
%     \fontseries{Medium}\selectfont\color{titleblue}
%     \@title
% }

\renewcommand\maketitle{%\begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    %\null\vfil
    %\vskip 60\p@
    %\begin{center}%
    %{\LARGE \@title \par}%
    {\fontsize{20}{24}
    \fontseries{b}
    \raggedright
    \fontseries{Medium}
    \selectfont\color{titleblue}
    \@title
    \par}
    %\vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
    %\end{center}\par
    %\@thanks
    %\vfil\null
    %\end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    \global\let\and\relax
}


% \renewenvironment{abstract}{%
%  %   \titlepage
%  %   \onecolumn
%     \@beginparpenalty\@lowpenalty
%     \noindent
%     \textbf{\abstractname}
%     \@endparpenalty\@M
%     %\setlength{\parindent}{0pt}
%     }%
%     {\par
%     \vfil
% %    \null
% %    \endtitlepage
% %    \clearpage
%     \twocolumn
% }

% \renewenvironment{abstract}{%
%   %\titlepage
%   %\null\vfil
%   %\@beginparpenalty\@lowpenalty
%   %\begin{center}%
%   \noindent
%   \textbf{\abstractname}
%     %\@endparpenalty\@M
%     \par 
%   %\end{center}
%   }%
%  {\par
%  \vfil
%  %\null
%  %\endtitlepage
%  \twocolumn}

\renewenvironment{abstract}{
\section*{\abstractname}
}{\twocolumn}

% \AtEndDocument{\end{multicols}}

%https://tex.stackexchange.com/questions/332120/what-is-the-difference-between-twocolumn-and-documentclasstwocolumnbook

% \renewenvironment{titlepage}
%     {%
%       \if@twocolumn
%         \@restonecoltrue\onecolumn
%       \else
%         \@restonecolfalse\newpage
%       \fi
%       \thispagestyle{empty}%
%     }%
%     {\if@restonecol\twocolumn \fi 
%     }


% Good ideas for full width abstract:
% Astronomy and Astrophysics Template
% I&I Journal Template





