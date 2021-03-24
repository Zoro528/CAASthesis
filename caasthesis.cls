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
\LoadClass[zihao=5,a4paper]{ctexbook}[2007/10/19]
\setmainfont{Times New Roman}

\RequirePackage[
    top=30mm, bottom=25mm, left=30mm, right=25mm,
    headheight=23mm, footskip=18mm,]{geometry}

\setlength{\baselineskip}{18pt}

%%%%% 'caasthesis.cls' %%%%% END
