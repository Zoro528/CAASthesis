% !Mode:: "TeX:UTF-8"
%%%%% 'caasthesis.cls' BEGIN

%%%%%%%%%% class clarification %%%%%%%%%%
% 模板声明

\ProvidesClass{caasthesis}
[2021/03/23 v0.1
  The LaTeX template for thesis of CAAS]
\typeout{Document Class `caasthesis' v0.1 by neo (2021/03)}

% 其余选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[zihao=5, a4paper]{ctexbook}[2007/10/19]
\setmainfont{Times New Roman}

\RequirePackage[
  top=30mm, bottom=25mm, left=30mm, right=25mm,
  headheight=23mm, footskip=18mm,]{geometry}

\setlength{\baselineskip}{18pt}

\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{zhnumber}
\usepackage{lipsum}

\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

% \usepackage{xcolor}
% \renewcommand\headrule{\vskip-0.7\baselineskip\makebox[\textwidth]{\shadowfill}}
% \newcommand\shadowfill{%
%   \leavevmode\leaders\hbox{\ooalign{%
%                   \vrule height 2pt depth 0pt width 1pt\cr%
%   \textcolor{black}{\vrule height 3pt depth 1pt width 1pt}}%
%   }\hskip\fill\kern0pt%
% }

% \renewcommand\footrule{\begin{minipage}{1\textwidth}
%   \hrule width \hsize height 2pt \kern 1mm \hrule width \hsize   
%   \end{minipage}\par}%
  
\renewcommand\headrule{
  \begin{minipage}{1\textwidth}
  \hrule width \hsize height 2pt \kern 0.2mm \hrule width \hsize
  \end{minipage}\par}%

\fancypagestyle{mainmatter}{
  \fancyhf{}
  \fancyhead[L]{中国农业科学院硕士论文}
  \fancyhead[R]{\selectfont\leftmark}
  \fancyfoot[C]{\selectfont\thepage}
}

\titleformat{\chapter}[block]
{\centering\fontsize{15pt}{15pt}\selectfont\heiti
  \thispagestyle{mainmatter}}{\thechapter}{7.5pt}{}

\titleformat{\section}[block]
{\fontsize{14pt}{14pt}\selectfont\heiti}
{\thesection}{7pt}{}

\titleformat{\subsection}[block]
{\fontsize{14pt}{14pt}\selectfont\heiti}
{\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
{\fontsize{12pt}{12pt}\selectfont\heiti}
{\thesubsubsection}{6pt}{}


%%%%% 'caasthesis.cls' %%%%% END
