%%%
%%%  This is file `KNTU_thesis.cls',
%%%  Version 1.68  modified
%%%  The original file was `Tabriz_thesis.cls' by Vahid Damanafshan  <     http://www.damanafshan.ir
%%%   __________________________________
%%%
%%%  Last Modified Tir 28th, 1396.
%%%  ----  \selectfont is replaced where it was necessary.
%%%  ----  Necessary changes was done to incorporate Yas font in everywhere a number exists.
%%%  Last Modified Tir 28th, 1396.
%%%  ----  The definition of IRLotus font changed in order to be consistent with different platforms.
%%%  Last Modified Mehr 25th, 1395.
%%%  ----  Adding zref-perpage package
%%%  ----  Changing text font to IRLotus
%%%  ----  Changing digit  font to Yas
%%%  ----  \setcounter{secnumdepth}{2}
%%%  ----  \setcounter{tocdepth}{1}
%%%  Last Modified Mehr 2th, 1394.
%%%  ----  Adding pgfplots package
%%%  ----  : is removed after ``Negaresh'' inf persian title page
%%%  ----  Latin title page is modified
%%%  ----  ./FrontMat/Settings.tex is modified
%%%  ----  ./FrontMat/Symbols.tex is modified
%%%  Last Modified Mehr 19th, 1394.
%%%  ----  Package ``cite'' is added to the class file.
%%%  Last Modified Khordad 17th, 1394.
%%%  ----  Option ``[Version=3]''  is added to ``mchchem'' package
%%%  ----  The command ``subfigure'' is equated to ``subfloat''
%%%  Last Modified Mehr 29th, 1393.
%%%  ----  If the there are two advisors, their names are printed in two sucucessive lines
%%%  Last Modified Mehr 27th, 1393.
%%%  ----  Adding Keywords are modified in both english and persian abstract
%%%  ----  setting Paragraph footnotes.
%%%  Last Modified Shahrivar 18th, 1393.
%%%  ----  Adding ``Times New Roman'' as default latin text font
%%%  ----  Adding tikz 
%%%  Last Modified Shahrivar 16th, 1393.
%%%  ----  Adding ``Listings'' package
%%%  Last Modified Mordad 19th, 1393.
%%%  ----  Making quickindex an option for xepersian
%%%  Last Modified Day 22nd, 1392.
%%%  ----  graphic path is changed to \graphicspath{ {Images/} }
%%%  Last Modified Azar 21st, 1392.
%%%  ----  \Thesis command is defined
%%%  ----  Some Modifications was made in  اصالت اثر section
%%%  ----  The command "Namad" in the file "Symbols.tex" was modified.
%%%  Last Modified Shahrivar 18th, 1392.
%%%  ----  Setting quickindex option for xepersian package.
%%%  ----  Modifying `نمایه' entry in TOC
%%%  Last Modified Shahrivar 16th, 1392.
%%%  ----  Some Clean-up
%%%  ----  Removing settextfont from Settings.tex file.
%%%  ----  Correcting copyright information.
%%%  Last Modified Shahrivar 16th, 1392.
%%%  ----  Removing 'Command.tex' file and inserting everything into a single sty file.
%%%  ----  Correcting the List of Symbol file.
%%%  ----  Some bugs fixed
%%%  Last Modified Shahrivar 10th, 1392.
%%%  ----  Abstract Page modified
%%%  Last Modified Shahrivar 5th, 1392.
%%%  Last Modified Shahrivar 4th, 1392.
%%%  Last Modified Mordad 31st, 1392.
%%%  Last Modified Mordad 27th, 1392.
%%%  Last Modified Mordad 17th, 1392.
%%%  The original file was Tabriz_thesis.cls by Vahid Damanafshan
%%%   __________________________________
%%%   Copyright © 2013 Farschad Torabi
%%%  
%%%   http://sahand.kntu.ac.ir/~ftorabi
%%%   http://www.damanafshan.ir
%%%   http://www.parsilatex.com  
%%%   http://forum.parsilatex.com
%%%   __________________________________
%%%   
%%%   Modifications History
%%%   1- Adding \id for requesting Student ID
%%%   2- Adding \secondname, \secondsurname, \secondid, 
%%%      \latinid, \latinsecondname, \latinsecondsurname and \latinsecondidfor coworker students.
%%%   3- Adding Besmellah Page 
%%%   4- Modifying Signature command  
%%%   5- Adding CopyRight sheet
%%%   6- Adding Oath sheet
%%%   7- Adding Graduation Office Member Name for graduate studies.
%%%   
%%%   

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{KNTU_thesis}
              [08/04/2012 v0.4
 Persian thesis document class in XeLaTeX for Khaje Nasireddin Toosi University of Technology projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%%%%%%%%%  Packages  %%%%%%%%%%%%%%%%%
%-------------------------------------------------------------------------------------------------------------------

% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsthm,amssymb,amsmath}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
\RequirePackage[top=30mm, bottom=30mm, left=25mm, right=35mm]{geometry}
% بسته‌‌ای برای ظاهر شدن شکل‌ها و تصاویر متن
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{rotating}
%\RequirePackage{subfigure}
\RequirePackage{subfig}
% بسته‌ای برای رسم کادر
\RequirePackage{framed} 
% بسته‌ای برای نوشن برنامه‌های کامپیوتری
\RequirePackage{listings} 
% بسته‌‌ای برای چاپ شدن خودکار تعداد صفحات در صفحه «معرفی پایان‌نامه»
\RequirePackage{lastpage}
\RequirePackage{cite}
\RequirePackage[font=small]{caption}
% بسته‌ و دستوراتی برای ایجاد لینک‌های رنگی با امکان جهش
\RequirePackage[pagebackref=false,colorlinks,linkcolor=black,citecolor=black]{hyperref}
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، خط بالا را غیرفعال و  از دستور زیر استفاده کنید چون در صورت استفاده از دستور زیر‌‌، 
% لینک‌ها به رنگ سیاه ظاهر خواهند شد که برای پرینت گرفتن، مناسب‌تر است
%\usepackage[pagebackref=false]{hyperref}
% بسته‌ لازم برای تنظیم سربرگ‌ها
\RequirePackage{fancyhdr}
% بسته‌ای برای ظاهر شدن «مراجع»  در فهرست مطالب
\RequirePackage[nottoc]{tocbibind}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{1}
% بسته‌ای برای نگارش معادلات شیمیایی
\RequirePackage[version=3]{mhchem}

% بسته‌ای برای ترسیم نمودار
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\usepgfplotslibrary{fillbetween}
\usetikzlibrary{datavisualization.formats.functions} 
\usetikzlibrary{decorations.text}
%  ریست کردن شمارنده‌ی فوت‌نوت در هر صفحه!
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}




% دستورات مربوط به ایجاد نمایه
\RequirePackage{makeidx}
\makeindex
%%%%%%%%%%%%%%%%%%%%%%%%%%
% فراخوانی بسته زی‌پرشین و تعریف قلم فارسی و انگلیسی
%\RequirePackage{xepersian}
\RequirePackage{biditools}
\bidi@AtEndPreamble{%
\RequirePackage[extrafootnotefeatures,localise=on]{xepersian}
% See http://qa.parsilatex.com/7884 for details
\if@bidi@csundef{@bidi@removefromreset}{}{%
\@bidi@removefromreset{footnote}{chapter}%
}
\settextfont[Scale=1.5,BoldFont={IRlotus}]{IRLotus}
%\setlatintextfont[Scale=1.0]{Times New Roman}
\paragraphfootnotes
\setlength{\footmarkwidth}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% چنانچه می‌خواهید اعداد در فرمول‌ها، انگلیسی باشد، خط زیر را غیرفعال کنید
\setdigitfont[Scale=1.1]{Yas}
%%%%%%%%%%%%%%%%%%%%%%%%%%
% تعریف قلم‌های فارسی و انگلیسی اضافی برای استفاده در بعضی از قسمت‌های متن
\defpersianfont\nastaliq[Scale=2.5]{IranNastaliq}
\defpersianfont\chapternumber[Scale=1.5,BoldFont={IRlotus}]{IRLotus}
}
\graphicspath{ {Images/} }


\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstInternal}[1]{\def\@firstInternal{#1}}
\newcommand{\secondInternal}[1]{\def\@secondInternal{#1}}
\newcommand{\firstExternal}[1]{\def\@firstExternal{#1}}
\newcommand{\secondExternal}[1]{\def\@secondExternal{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
%--------- F. Begin
\def\grade#1{\gdef\Gr@de{#1}}
\def\gradeHarfi#1{\gdef\Gr@deHoroof{#1}}
\def\rank#1{\gdef\R@nk{#1}}
\def\id#1{\gdef\@id{#1}}
\def\secondname#1{\gdef\@secondname{#1}}
\def\secondsurname#1{\gdef\@secondsurname{#1}}
\def\secondid#1{\gdef\@secondid{#1}}
\def\gradmemb#1{\gdef\@gradmemb{#1}}
%--------- F. End
\def\keywords#1{\gdef\Keywords{#1}}
\long\def\faabstract#1{\long\gdef\faAbstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
%--------- F. Begin
\def\latinid#1{\gdef\@latinid{#1}}
\def\latinsecondname#1{\gdef\@latinsecondname{#1}}
\def\latinsecondsurname#1{\gdef\@latinsecondsurname{#1}}
\def\latinsecondid#1{\gdef\@latinsecondid{#1}}
\def\latingradmemb#1{\gdef\@latingradmemb{#1}}
%--------- F. End
\long\def\enabstract#1{\long\gdef\@enabstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@phdthesis
\@mscthesisfalse
\DeclareOption{phd}{\@phdthesistrue}
\ProcessOptions
\def\Thesis{ \if@phdthesis
رساله
 \else
  \if@mscthesis
پایان‌نامه
    \else
پروژه
  \fi
 \fi
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                Title page                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\vtitle}{
\begin{titlepage}
\vspace{-2cm}\centerline{{\includegraphics[height=4.3cm]{./FrontMat/KNTU-Arm.pdf}}}
\vspace{-.2cm}
{\large\@faculty\par

\vspace{-.4cm}\@department}
\vskip .5cm
 \if@mscthesis
{\large\bfseries پایان‌نامه}
\else
 \if@bscthesis
 {\large\bfseries پروژه }
 \else
{\large\bfseries رساله}
\fi\fi
{\large\bfseries\writtenfor
\if@mscthesis
کارشناسی ارشد
\else
\if@bscthesis
کارشناسی
\else
دکتری
\fi\fi
}
{\large\bfseries{در رشته}}
\vskip .2cm
\centerline{\large \bfseries\@subject\ 
 گرایش   \@field}
\vskip 1cm
\centerline{\Large \bfseries\onvan}

\vskip -.2cm
 {\huge\bfseries {\baselineskip=1cm \@title}}\baselineskip=1.5cm\par
\vskip .8cm
%--------------------    Writen By
{\large%
  \by}\par
{\Large\bfseries{\nastaliq\large\bfseries  
        \ifx\@secondname\undefined%
          \CheckName{\@name}\ \ \CheckName{\@surname}
        \else
          \CheckName{\@name}\ \ \CheckName{\@surname}\ \  و \ \ \CheckName{\@secondname}\ \ \CheckName{\@secondsurname}
        \fi
 }}\par
\vskip .8cm
 \baselineskip=.5cm
%--------------------    Supervisors
\large
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{}\\ و\\ \@secondsupervisor}
\fi\fi}
\par\large
\vskip .8cm
%--------------------    Advisors
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
اساتید مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\vskip 6mm
{\large \@thesisdate}
\end{titlepage}%
\newpage

\begin{center}
~\\[2cm]
\includegraphics[width=0.5\textwidth]{FrontMat/Besmellah.pdf}
\end{center}
\thispagestyle{empty}
\newpage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                Title page                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 \renewcommand{\baselinestretch}{1.3}\selectfont %\settextfont[Scale=1.5,BoldFont={IRlotus}]{IRLotus}
 }
\def\frame{%
\thispagestyle{empty}
\begin{framed}\thispagestyle{empty}}
\def\endframe{\thispagestyle{empty}\end{framed}
\thispagestyle{empty}
\newpage
}
\def\abstractpage{\newpage
\thispagestyle{empty}
\vskip 15mm
\par
\begin{abstract}}
\def\endabstractpage{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}{\Large\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{
               \vspace{1cm}
               \begin{flushleft}
                       \ifx\@secondname\undefined%
                          \sbox0{\nastaliq \scriptsize\CheckName{\@name}\ \ \@surname}
                          \parbox{\wd0}{\centering \nastaliq \scriptsize\@name\ \ \@surname\\ \@thesisdate}
                       \else
                          \sbox0{\nastaliq \scriptsize\@name\ \ \@surname\ \  و \ \ \@secondname\ \ \@secondsurname}
                          \parbox{\wd0}{\centering\nastaliq \scriptsize\@name\ \ \@surname\ \  و \ \ \@secondname\ \ \@secondsurname\\ \@thesisdate}
                       \fi
               \end{flushleft}
              }

\def\abstract{\subsection*{\abstractname}\small
\@normalsize}
\def\endabstract{\par}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%           Latin Title page                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10

\newcommand{\latinvtitle}{%
\renewcommand{\baselinestretch}{1}\selectfont %\settextfont[Scale=1.25,BoldFont={IRlotus}]{IRLotus}
\chapter*{Abstract}
\@enabstract \par\noindent\textbf{Keywords:\ }\@latinkeywords

\begin{titlepage}
\vspace{-0.5cm}{\includegraphics[height=4.3cm]{FrontMat/KNTU-Arm-Noname.pdf}}
\centerline{\bf \@latinuniversity} 
\large\bfseries
\@latinfaculty\space 
\vskip 5mm
 \if@phdthesis
Doctoral Thesis Submitted in Partial 
\\[.2cm]
Fulfillment of The  Requirements For The
\\[.2cm]
Degree of Doctor of Science in \par
\else
Dissertation Submitted in Partial 
\\[.2cm]
 Fulfillment of The Requirements For The
\\[.2cm]
\if@mscthesis
Degree of Master of Science in\par
\else
Degree of Bachelor of Science in\par
\fi
\fi
{\large\bfseries \@latinsubject}
\vskip 1cm
\baselineskip=.750cm
{\titlefont \@latintitle}
\vfill
{\bfseries\latinby}\par\vskip -3mm
{\Large %
\ifx\@latinsecondname\undefined%
{\rm\@latinname \; \@latinsurname}
\else
\textrm{\@latinname \; \@latinsurname } \par and  \par
\textrm{\@latinsecondname \; \@latinsecondsurname }
\fi
}\par
\vskip 5mm

\baselineskip=.750cm \par
\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm
\vfill
{\@latinthesisdate}
\par
\vskip 1cm


\end{titlepage}
}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{
        \ifx\@secondname\undefined%
        نگارش
        \else
        نگارش:
        \fi
       }
\def\latinby{by}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                          Copy Right                     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\CopyRight{
~\\[-3.0cm]
\begin{center}
\includegraphics[width=3cm]{./FrontMat/KNTU-Arm.pdf}\\
\textbf{\@faculty}\\
\textbf{{ \Large  }\\[0.2cm]}
\textbf{{ \Large  حق طبع، نشر و مالکيت نتايج}\\[1cm]}
\end{center}

حق چاپ و تکثیر این \Thesis متعلق به نویسندگان آن می‌باشد. بهره‌برداری از این \Thesis در چهارچوب مقررات کتابخانه 
و با توجه به محدودیتی که توسط استاد راهنما به شرح زیر تعیین می‌گردد، بلامانع است:
\begin{itemize}
\item[$\square$] بهره‌برداری از این \Thesis برای همگان و با ذکر منبع، بلامانع است.
\item[$\square$] بهره‌برداری از این \Thesis با اخذ مجوز از استاد راهنما و با ذکر منبع، بلامانع است.
\item[$\square$] بهره‌برداری از این \Thesis تا تاریخ \rule{2cm}{0.02cm} ممنوع است. 
\end{itemize}

\vspace{1cm}
\hfill 
\begin{enumerate} 
\ifx\@secondsupervisor\undefined%
\item[] استاد راهنما: \textbf{\@firstsupervisor} \dotfill امضا \hspace{4cm~}\\
\else
\item استاد راهنمای اول: \textbf{\@firstsupervisor} \dotfill امضا\hspace{2.5cm~}\\
\item استاد راهنمای دوم: \textbf{\@secondsupervisor} \dotfill امضا\hspace{2.5cm~}\\
\fi
\end{enumerate}
}

\usepackage{ifthen}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                                        Grade Sheet                                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\CheckName#1{\ifdefined #1 
\ifthenelse{\equal{#1}{}}{لطفا این نام را در فایل fa\_title.tex وارد کنید.}
{#1}
\else لطفا این نام را در فایل fa\_title.tex وارد کنید!\fi}

\def\Referee{
~\\[-3.0cm]
\begin{center}
\includegraphics[width=3cm]{./FrontMat/KNTU-Arm.pdf}\\
\textbf{\@faculty}\\
\textbf{{ \Large  }\\[-0.2cm]}
\textbf{{ \Large تأییدیه‌ی هیأت داوران جلسه‌ی دفاع از \Thesis }\\[0.5cm]}
\end{center}

هیأت داوران پس از مطالعه‌ی \Thesis و شرکت در جلسه‌ی دفاع از \Thesis تهیه شده تحت عنوان 
{\bfseries\@title}
 توسط 
{\bfseries
        \ifx\@secondname\undefined%
          \@name\ \ \@surname
        \else
          \@name\ \ \@surname\ \  و \ \ \@secondname\ \ \@secondsurname
        \fi
}
صحت و کفایت تحقیق انجام شده را برای اخذ درجه‌ی 
\if@mscthesis
کارشناسی ارشد
\else
\if@phdthesis
دکتری تخصصی
\else
کارشناسی
\fi
\fi
 در رشته‌ی 
{\bfseries\@subject\ }
گرایش 
{\bfseries\@field\ } 
در تاریخ 
{\bfseries\@thesisdate\ } 
مورد تأیید قرار 
\if@phdthesis
داده و با نمره‌ی 
$\mathbf{\Gr@de}$
{\سیاه  (\Gr@deHoroof)} 

و درجه  {\سیاه \R@nk }
ارزیابی نمودند.
\else
دادند.
\fi


\ifx\@firstadvisor\undefined%
\def\NextItemSettings{ \dotfill امضا \hspace{2.5cm~}\\[+3mm]}
\ifx\@secondsupervisor\undefined%
\else
\def\NextItemSettings{ \dotfill امضا \hspace{2.5cm~}\\[1mm]}
\fi
\else
\ifx\@secondadvisor\undefined%
\def\NextItemSettings{ \dotfill امضا \hspace{2.5cm~}\\[+1.8mm]}
\else
\def\NextItemSettings{ \dotfill امضا \hspace{2.5cm~}\\[-0.5mm]}
\fi
\fi
\hfill 

~\\[-1.5cm]
\begin{enumerate} 
\ifx\@secondsupervisor\undefined%
\item استاد راهنما: \textbf{\CheckName{\@firstsupervisor}}\NextItemSettings
\else
\item استاد راهنمای اول: \textbf{\CheckName{\@firstsupervisor}} \NextItemSettings
\item استاد راهنمای دوم: \textbf{\CheckName{\@secondsupervisor}} \NextItemSettings
\fi
\ifx\@secondadvisor\undefined%
\ifx\@firstadvisor\undefined%
\relax
\else
\item استاد مشاور: \textbf{\CheckName{\@firstadvisor}} \NextItemSettings
\fi
\else
\item استاد مشاور اول: \textbf{\CheckName{\@firstadvisor}} \NextItemSettings
\item استاد مشاور دوم: \textbf{\CheckName{\@secondadvisor}}\NextItemSettings
\fi
\if@phdthesis
\item استاد ممتحن خارجی اول: \textbf{\CheckName{\@firstExternal}}\NextItemSettings
\item استاد ممتحن خارجی دوم: \textbf{\CheckName{\@secondExternal}} \NextItemSettings
\item استاد ممتحن داخلی اول: \textbf{\CheckName{\@firstInternal}} \NextItemSettings
\item استاد ممتحن داخلی دوم: \textbf{\CheckName{\@secondInternal}} \NextItemSettings
\else
\if@mscthesis
\item استاد ممتحن اول: \textbf{\CheckName{\@firstInternal}} \NextItemSettings
\item استاد ممتحن دوم: \textbf{\CheckName{\@secondInternal}} \NextItemSettings
\else
\ifx\@secondInternal\undefined
\item استاد ممتحن: \textbf{\CheckName{\@firstInternal}} \NextItemSettings
\else
\item استاد ممتحن اول: \textbf{\CheckName{\@firstInternal}} \NextItemSettings
\item استاد ممتحن دوم: \textbf{\CheckName{\@secondInternal}} \NextItemSettings
\fi
\fi
\fi
\if@bscthesis
\relax
\else
\item نماینده تحصیلات تکمیلی: \textbf{\CheckName{\@gradmemb}} \NextItemSettings
\fi
\end{enumerate}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%              Oath                   %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\Oath{
~\\[-3.0cm]
\begin{center}
\includegraphics[width=3cm]{./FrontMat/KNTU-Arm.pdf}\\
\textbf{\@faculty}\\
\textbf{{ \Large  }\\[0.2cm]}
\textbf{{ \Large اظهارنامه دانشجو}\\[1cm]}
\end{center}
\ifx\@secondname\undefined%
  \def\M@e{اینجانب~}
  \def\@Spec{\@name\ \@surname \ به شماره دانشجویی\ \@id\ دانشجوی~}
  \def\@kardan{کرده‌ام}
  \def\@nemoodan{می‌نمایم\ }
\else
  \def\M@e{اینجانبان~}
  \def\@Spec{\@name\ \@surname \ به شماره دانشجویی\ \@id\ 
و         \@secondname\ \@secondsurname \ به شماره دانشجویی\ \@secondid\  دانشجویان~}
  \def\@kardan{کرده‌ایم}
  \def\@nemoodan{می‌نماییم\ }
\fi

\M@e \@Spec
 \if@phdthesis
دکتری
 \else
  \if@mscthesis
کارشناسی ارشد
    \else
  کارشناسی
  \fi
 \fi
رشته‌ی 
\@subject
گرایش 
\@field \  \@faculty \ 
دانشگاه صنعتی خواجه نصیرالدین طوسی گواهی
 \@nemoodan
 که تحقیقات ارائه شده در این 
\Thesis
 با عنوان:

\begin{center}
{\bfseries \@title}
\end{center}


\noindent توسط
\M@e
انجام
 و بدون هرگونه دخل و تصرف است و موارد نسخه‌برداری شده از آثار دیگران را با ذکر کامل مشخصات منبع ذکر \@kardan. در صورت اثبات خلاف مندرجات فوق، به تشخیص دانشگاه مطابق با ضوابط و مقررات حاکم (قانون حمایت از حقوق مؤلفان و مصنفان و قانون ترجمه و تکثیر کتب و نشریات و آثار صوتی، ضوابط و مقررات آموزشی، پژوهشی و انضباطی و غیره) با \M@e رفتار خواهد شد. در ضمن، مسئولیت هرگونه پاسخگویی به اشخاص اعم از حقیقی و حقوقی و مراجع ذی‌صلاح (اعم از اداری و قضایی) به عهده‌ی \M@e خواهد بود و دانشگاه هیچ‌گونه مسئولیتی در این خصوص نخواهد داشت.






\noindent 
\ifx\@secondname\undefined%
~\\\vspace{1cm}
 نام و نام خانوادگی: \textbf{\@name\ \@surname} \dotfill امضا \hspace{2.5cm} ~
\else
\begin{enumerate}
\item  نام و نام خانوادگی: \textbf{\@name\ \@surname} \dotfill امضا \hspace{2.5cm} 
\\
\item  نام و نام خانوادگی: \textbf{\@secondname\ \@secondsurname} \dotfill امضا \hspace{2.5cm} ~
\end{enumerate}
\fi
}

\newcommand{\شف}{\begin{enumerate}} 
\newcommand{\خف}{\end{enumerate}}  
\newcommand{\مورد}{\item} 
\newcommand{\زیربخش}{\subsection} 
\newcommand{\زیرزیربخش}{\subsubsection} 

\bidi@AfterPackage{xepersian}{%
\SepMark{-}
\renewcommand{\بخش}{\section} 
\eqcommand{subfigure}{subfloat} 
\eqcommand{ذم}{cite} 
\eqcommand{ر}{ref} 
% دستوری برای حذف کلمه «چکیده»
\renewcommand{\abstractname}{}
% دستوری برای حذف کلمه «abstract»
\renewcommand{\latinabstract}{}
% دستوری برای تغییر نام کلمه «اثبات» به «برهان»
\renewcommand\proofname{\textbf{برهان}}
% دستوری برای تغییر نام کلمه «کتاب‌نامه» به «مراجع»
\renewcommand{\bibname}{مراجع}
% دستوری برای تعریف واژه‌نامه انگلیسی به فارسی
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
% دستوری برای تعریف واژه‌نامه فارسی به انگلیسی 
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
% تعریف و نحوه ظاهر شدن عنوان قضیه‌ها، تعریف‌ها، مثال‌ها و ...
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{theorem}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\def\@part[#1]#2{%
\ifnum \c@secnumdepth >-2\relax
\refstepcounter{part}%
\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
\else
\addcontentsline{toc}{part}{#1}%
\fi
\markboth{}{}%
{\centering
\interlinepenalty \@M
\ifnum \c@secnumdepth >-2\relax
 \huge\bfseries \partname\nobreakspace\thepart
\par
\vskip 20\p@
\fi
\Huge\bfseries #2\par}%
\@endpart}
\def\@makechapterhead#1{%
\vspace*{-30\p@}%
{\parindent \z@ \mycustomraggedright %\@mycustomfont
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter

\huge\bfseries \@chapapp\space {\chapternumber\thechapter}
\par\nobreak
\vskip 20\p@
\fi
\fi
\interlinepenalty\@M 
\Huge \bfseries #1\par\nobreak
\vskip 120\p@
}}
\defpersianfont\yasfont{Yas}
\if@bidi@csundef{bidi@digits}{%
\newcount\bidi@digits
\XeTeXinterchartokenstate=\@ne
\newXeTeXintercharclass\bidi@digits@charclass
\bidi@digits=`\0 \loop \XeTeXcharclass \bidi@digits \bidi@digits@charclass \ifnum\bidi@digits<`\9 \advance\bidi@digits \@ne \repeat
\bidi@digits=`\۰ \loop \XeTeXcharclass \bidi@digits \bidi@digits@charclass \ifnum\bidi@digits<`\۹ \advance\bidi@digits \@ne \repeat
}{}
\newXeTeXintercharclass\KNTU@leftparen@charclass
\newXeTeXintercharclass\KNTU@rightparen@charclass
\XeTeXcharclass `\( \KNTU@leftparen@charclass
\XeTeXcharclass `\) \KNTU@rightparen@charclass
\XeTeXcharclass `\[ \KNTU@leftparen@charclass
\XeTeXcharclass `\] \KNTU@rightparen@charclass
\ifdim\the\XeTeXversion\XeTeXrevision\p@>0.99993\p@
  \chardef\KNTU@alloc@intercharclass@top=4095
\else
  \chardef\KNTU@alloc@intercharclass@top=255
\fi
\XeTeXinterchartoks \KNTU@alloc@intercharclass@top \bidi@digits@charclass = {\BeginSwitchDigitFont}
\XeTeXinterchartoks \bidi@digits@charclass \KNTU@alloc@intercharclass@top = {\EndSwitchDigitFont}
\XeTeXinterchartoks \KNTU@leftparen@charclass \bidi@digits@charclass = {\BeginSwitchDigitFont}
\XeTeXinterchartoks \bidi@digits@charclass \KNTU@rightparen@charclass = {\EndSwitchDigitFont}
\if@bidi@csundef{if@nonlatin}{%
\newcommand*{\BeginSwitchDigitFont}{\if@Latin\else\yasfont \fi}
\newcommand*{\EndSwitchDigitFont}{\if@Latin\else\setpersianfont \fi}
}{%
\newcommand*{\BeginSwitchDigitFont}{\if@nonlatin\yasfont \fi}
\newcommand*{\EndSwitchDigitFont}{\if@nonlatin\setpersianfont \fi}
}
}





\newcommand{\dd}[1]{\:\;\mathrm{ #1}}
\newcommand{\pow}[2]{\ #1\mbox{$^{#2}$} }
%%%%%%%%%%%%%%%%%%%%%%%%%%
% تعریف دستور جدید «\پ» برای خلاصه‌نویسی جهت نوشتن عبارت «پروژه/پایان‌نامه/رساله»
\newcommand{\پ}{پروژه/پایان‌نامه/رساله }
%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستورهایی برای سفارشی کردن صفحات اول فصل‌ها
\newcommand\mycustomraggedright{%
 \if@RTL\raggedleft%
 \else\raggedright%
 \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستورهایی برای سفارشی کردن سربرگ صفحات
%\csname@twosidetrue\endcsname
\pagestyle{fancy}
\fancyhf{} 
\fancyhead[OL,EL]{\thepage}
\fancyhead[OR]{\small\rightmark}
\fancyhead[ER]{\small\leftmark}
\renewcommand{\chaptermark}[1]{%
\markboth{\thechapter.\ #1}{}}
\newcommand{\فا}[1]{#1\index{#1}} 
\newcommand{\ف}{\index} 
\newcommand{\فف}[1]{\index{\lr{#1}}} 
\newcommand{\LineStretch}[1]{\renewcommand{\baselinestretch}{#1}	
\settextfont[Scale=1.4,BoldFont={IRlotus}]{IRLotus}
} 
	

	
	

%% 
%% Copyright © 2012-2016      by Dr. Farschad Torabi
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Dr. Farschad Torabi.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his invaluable hints.
%%
%% End of file `KNTU_thesis.cls'.
