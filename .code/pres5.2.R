## ----setup, include=FALSE,warning=FALSE, message=FALSE------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE, message=FALSE,
                      fig.path='resources/pres5.2-', dev='png', fig.ext='png')
options(tinytex.engine = 'xelatex')
FIG_PATH <<- knitr::opts_chunk$get('fig.path')


## ----packages-----------------------------------------------------------------
library(ggplot2) #OR better still library(tidyverse)
library(tidyverse)
library(grid)
library(gridExtra)
library(patchwork)
library(scales)


## ----plot1, echo=FALSE--------------------------------------------------------
dat <- data.frame(V1 = seq(1,4, length=6),
                  V2 = c(1,2.1,2.6,2.3,3.1,3.9),
                  V3 = letters[c(1,1,1,2,2,2)]
                )
g <- ggplot() +
    geom_point(data=dat, aes(x=V1,y=V2,color=V3, size=V2)) +
    coord_equal() +
    theme_classic()
ggsave(filename=paste0(FIG_PATH,"plot1.png"), g, width=3.2, height=2.6)

## \usetikzlibrary{shapes,arrows,shadows,positioning,mindmap,backgrounds,decorations, calc,fit, decorations.pathreplacing,decorations.pathmorphing, shadings,shapes.geometric, shapes.multipart,patterns}

## \tikzstyle{Title} = [font={\fontspec[Scale=2]{Complete in Him}}]

## \tikzstyle{code} = [font=\ttfamily]

## \newcommand{\fplus}[1][black!20]{%

##   \tikz\draw[#1,line width=0.5em] (0,0) -- (1,0)(0.5,0.5) -- (0.5,-0.5);

## }

## \newcommand{\fequal}[1][black!20]{%

##   \tikz\draw[#1,line width=0.5em] (0,0.2) -- (1,0.2)(0,-0.2) -- (1,-0.2);

## }

## \tikzset{

##     table/.style={

##         matrix of nodes,

##        nodes in empty cells,

##         row sep=-\pgflinewidth,

##         column sep=-\pgflinewidth,

##         font=\ttfamily,

##         nodes={

##             rectangle,

##             draw=white,

##             align=center,

##             fill=black!20

##         },

##         minimum height=1.5em,

##         text depth=0.5ex,

##         text height=2ex,

##         nodes in empty cells,

## %%

##         %%every even row/.style={

##         %%    nodes={fill=gray!30}

##         %%},

##         column 1/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

##         column 2/.style={

##             nodes={text width=2em}

##         },

##         column 3/.style={

##             nodes={text width=2em}

##         },

##         column 5/.style={

##             nodes={

##                 text width=4em,

##                 fill=blue!40

##             }

##         },

##         row 1/.style={

##             nodes={

##                 fill=black!40,

##                 text=white,

##                 font=\large\tt\bfseries

##             }

##         }

##     }

## }

## \begin{tikzpicture}

## \matrix (first) [table,text width=4em]{

## V1&V2 &V3 \\

##    &  & \\

##   &  &  \\

##  &  & \\

##  &   &  \\

##  &  & \\

##  &   &  \\

## };

## 

## \draw[->,line width = 3pt,color=orange] (first-2-1.center) -- ($(first-2-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-3-1.center) -- ($(first-3-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-4-1.center) -- ($(first-4-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-5-1.center) -- ($(first-5-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-6-1.center) -- ($(first-6-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-7-1.center) -- ($(first-7-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \node [Title,above=0.25cm of first.north,anchor=south] (Data)  {Data};

## \node [Title,above right=0.0cm and 3cm of first.north,anchor=south] (geom)  {geom};

## \node [Title,above right=-1.0cm and 2cm of first.north,anchor=south] (stat)  {stat};

## \draw [

##     ultra thick,

##     decoration={

##         brace,

##         mirror,

##         raise=0.25cm,

##         amplitude = 10pt

##     },

##     decorate

## ] (first.south west) -- ($(geom.east|-first.south)$) node [pos=0.5,anchor=north,yshift=-0.55cm, Title] {layer};

## 

## 

## \matrix (second) [table,text width=4em, right=4.0cm of first.south east, anchor=south west,

## style = {

##   every even column/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

## every odd column/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

## every even row/.style={

##             nodes={

##                 fill=white,

##                 draw=black!20,

##                 text=black!20,

##                 font=\large\tt\bfseries

##             }

##         },

## every odd row/.style={

##             nodes={

##                 fill=white,

##                 draw=black!20,

##                 text=black!20,

##                 font=\large\tt\bfseries

##             }

##         }

## }

## ]{

##    &  &    & \\

##    &  &    &\\

##   &  &    & \\

##   &  &    & \\

##   &  &    & \\

##   &  &    & \\

## };

## \node [Title,above=0.6cm of second.north,anchor=south] (Data)  {\parbox[c][][t]{5cm}{\centering{Coordinate system}}};

## \node [left=0.4cm of second.west, anchor=east] {\fplus};

## 

## \node [right=0.4cm of second.east, anchor=west] {\fplus};

## 

## \node [right=2cm of second.east, anchor=west, Title] (Scales) {\parbox[c][][t]{2cm}{\centering{Scales\\[2em]theme}}};

## 

## 

## \draw[black] (second-6-1.south west) -- (second-6-4.south east);

## \draw[black] (second-6-1.south west) -- (second-1-1.north west);

## 

## % \matrix (third) [table,text width=4em, right=2cm of second.south east, anchor=south west,

## % style = {

## %   every even column/.style={

## %             nodes={text width=2em,font=\bfseries}

## %         },

## % every odd column/.style={

## %             nodes={text width=2em,font=\bfseries}

## %         },

## % every even row/.style={

## %             nodes={

## %                 fill=white,

## %                 draw=black!20,

## %                 text=black!20,

## %                 font=\large\tt\bfseries

## %             }

## %         },

## % every odd row/.style={

## %             nodes={

## %                 fill=white,

## %                 draw=black!20,

## %                 text=black!20,

## %                 font=\large\tt\bfseries

## %             }

## %         }

## % }

## % ]{

## %    &  &    & \\

## %    &  &    &\\

## %   &  &    & \\

## %   &  &    & \\

## %   &  &    & \\

## %   &  &    & \\

## % };

## % \draw[black] (third-6-1.south west) -- (third-6-4.south east);

## % \draw[black] (third-6-1.south west) -- (third-1-1.north west);

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(1,1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(1.6,2.1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(2,2.6)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(2.8,2.3)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(3.3,3.1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(4.0,3.9)$) {};

## 

## \node [right=0.3cm of Scales.east, anchor=west] {\fequal};

## \node [above right=0.5cm and 6cm of second.north east, anchor=north west] (third) {\includegraphics[width=6cm]{resources/pres5.2-plot1.png}};

## \node [Title,above=0.25cm of third.north,anchor=south] (Plot)  {Plot};

## \end{tikzpicture}


## ----template, eval=FALSE-----------------------------------------------------
## ggplot() +                          # required
##     geom_*(                         # required
##         data = <DATA>,              # required - <DATA> is a data frame
##         mapping = aes(<MAPPING>),   # required - map variables to scales
##         stat = <STAT>,              # optional - map variables to geoms
##         position = <POSITION>) +    # optional - adjustments to overlapping geoms
##     coord_*() +                     # optional - specify coordinate system
##     scale_*() +                     # optional - visual appearence of scales
##     facet_*() +                     # optional - subplots
##     theme_*()                       # optional - overal appearence


## \usetikzlibrary{shapes,arrows,shadows,positioning,mindmap,backgrounds,decorations, calc,fit, decorations.pathreplacing,decorations.pathmorphing, shadings,shapes.geometric, shapes.multipart,patterns}

## \tikzstyle{Title} = [font={\fontspec[Scale=2]{Complete in Him}}]

## \tikzstyle{code} = [font=\ttfamily]

## \newcommand{\fplus}[1][black!20]{%

##   \tikz\draw[#1,line width=0.5em] (0,0) -- (1,0)(0.5,0.5) -- (0.5,-0.5);

## }

## \newcommand{\fequal}[1][black!20]{%

##   \tikz\draw[#1,line width=0.5em] (0,0.2) -- (1,0.2)(0,-0.2) -- (1,-0.2);

## }

## \tikzset{

##     table/.style={

##         matrix of nodes,

##        nodes in empty cells,

##         row sep=-\pgflinewidth,

##         column sep=-\pgflinewidth,

##         font=\ttfamily,

##         nodes={

##             rectangle,

##             draw=white,

##             align=center,

##             fill=black!20

##         },

##         minimum height=1.5em,

##         text depth=0.5ex,

##         text height=2ex,

##         nodes in empty cells,

## %%

##         %%every even row/.style={

##         %%    nodes={fill=gray!30}

##         %%},

##         column 1/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

##         column 2/.style={

##             nodes={text width=2em}

##         },

##         column 3/.style={

##             nodes={text width=2em}

##         },

##         column 5/.style={

##             nodes={

##                 text width=4em,

##                 fill=blue!40

##             }

##         },

##         row 1/.style={

##             nodes={

##                 fill=black!40,

##                 text=white,

##                 font=\large\tt\bfseries

##             }

##         }

##     }

## }

## \begin{tikzpicture}

## \matrix (first) [table,text width=4em]{

## V1&V2 &V3 \\

##    &  & \\

##   &  &  \\

##  &  & \\

##  &   &  \\

##  &  & \\

##  &   &  \\

## };

## 

## \draw[->,line width = 3pt,color=orange] (first-2-1.center) -- ($(first-2-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-3-1.center) -- ($(first-3-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-4-1.center) -- ($(first-4-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-5-1.center) -- ($(first-5-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-6-1.center) -- ($(first-6-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \draw[->,line width = 3pt,color=orange] (first-7-1.center) -- ($(first-7-1.center) +(4,0)$) node [circle,fill=black,inner sep=0pt,minimum size=9pt, right=5pt] {};

## \node [Title,above=0.25cm of first.north,anchor=south] (Data)  {Data};

## \node [Title,above right=0.0cm and 3cm of first.north,anchor=south] (geom)  {geom};

## \node [Title,above right=-1.0cm and 2cm of first.north,anchor=south] (stat)  {stat};

## \draw [

##     ultra thick,

##     decoration={

##         brace,

##         mirror,

##         raise=0.25cm,

##         amplitude = 10pt

##     },

##     decorate

## ] (first.south west) -- ($(geom.east|-first.south)$) node [pos=0.5,anchor=north,yshift=-0.55cm, Title] {layer};

## 

## 

## \matrix (second) [table,text width=4em, right=4.0cm of first.south east, anchor=south west,

## style = {

##   every even column/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

## every odd column/.style={

##             nodes={text width=2em,font=\bfseries}

##         },

## every even row/.style={

##             nodes={

##                 fill=white,

##                 draw=black!20,

##                 text=black!20,

##                 font=\large\tt\bfseries

##             }

##         },

## every odd row/.style={

##             nodes={

##                 fill=white,

##                 draw=black!20,

##                 text=black!20,

##                 font=\large\tt\bfseries

##             }

##         }

## }

## ]{

##    &  &    & \\

##    &  &    &\\

##   &  &    & \\

##   &  &    & \\

##   &  &    & \\

##   &  &    & \\

## };

## \node [Title,above=0.6cm of second.north,anchor=south] (Data)  {\parbox[c][][t]{5cm}{\centering{Coordinate system}}};

## \node [left=0.4cm of second.west, anchor=east] {\fplus};

## 

## \node [right=0.4cm of second.east, anchor=west] {\fplus};

## 

## \node [right=2cm of second.east, anchor=west, Title] (Scales) {\parbox[c][][t]{2cm}{\centering{Scales\\[2em]theme}}};

## 

## 

## \draw[black] (second-6-1.south west) -- (second-6-4.south east);

## \draw[black] (second-6-1.south west) -- (second-1-1.north west);

## 

## % \matrix (third) [table,text width=4em, right=2cm of second.south east, anchor=south west,

## % style = {

## %   every even column/.style={

## %             nodes={text width=2em,font=\bfseries}

## %         },

## % every odd column/.style={

## %             nodes={text width=2em,font=\bfseries}

## %         },

## % every even row/.style={

## %             nodes={

## %                 fill=white,

## %                 draw=black!20,

## %                 text=black!20,

## %                 font=\large\tt\bfseries

## %             }

## %         },

## % every odd row/.style={

## %             nodes={

## %                 fill=white,

## %                 draw=black!20,

## %                 text=black!20,

## %                 font=\large\tt\bfseries

## %             }

## %         }

## % }

## % ]{

## %    &  &    & \\

## %    &  &    &\\

## %   &  &    & \\

## %   &  &    & \\

## %   &  &    & \\

## %   &  &    & \\

## % };

## % \draw[black] (third-6-1.south west) -- (third-6-4.south east);

## % \draw[black] (third-6-1.south west) -- (third-1-1.north west);

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(1,1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(1.6,2.1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(2,2.6)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(2.8,2.3)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(3.3,3.1)$) {};

## % \node [circle,fill=black,draw=black,inner sep=0pt,minimum size=9pt] at ($(third.south west) +(4.0,3.9)$) {};

## 

## \node [right=0.3cm of Scales.east, anchor=west] {\fequal};

## \node [above right=0.5cm and 6cm of second.north east, anchor=north west] (third) {\includegraphics[width=6cm]{resources/pres5.2-plot1.png}};

## \node [Title,above=0.25cm of third.north,anchor=south] (Plot)  {Plot};

## \end{tikzpicture}


## ---- results='markup'--------------------------------------------------------
head(BOD)
summary(BOD)


## ----first, eval=FALSE--------------------------------------------------------
##  p <- ggplot() + #single layer - points
##   layer(data = BOD, #data.frame
##     mapping = aes(y = demand, x = Time),
##     stat = "identity", #use original data
##     geom = "point", #plot data as points
##     position = "identity",
##     params = list(na.rm = TRUE),
##     show.legend = FALSE
##   )+ #layer of lines
##   layer(data = BOD, #data.frame
##     mapping = aes(y = demand, x = Time),
##     stat = "identity", #use original data
##     geom = "line", #plot data as a line
##     position = "identity",
##     params = list(na.rm = TRUE),
##     show.legend = FALSE
##   ) +
##   coord_cartesian() + #cartesian coordinates
##   scale_x_continuous() + #continuous x axis
##   scale_y_continuous()  #continuous y axis
## p #print the plot


## ----first, echo=FALSE, fig.cap="", fig.width=5, fig.height=5,out.width='450px'----
 p <- ggplot() + #single layer - points
  layer(data = BOD, #data.frame
    mapping = aes(y = demand, x = Time),
    stat = "identity", #use original data
    geom = "point", #plot data as points
    position = "identity",
    params = list(na.rm = TRUE),
    show.legend = FALSE
  )+ #layer of lines
  layer(data = BOD, #data.frame
    mapping = aes(y = demand, x = Time),
    stat = "identity", #use original data
    geom = "line", #plot data as a line
    position = "identity",
    params = list(na.rm = TRUE),
    show.legend = FALSE
  ) +
  coord_cartesian() + #cartesian coordinates
  scale_x_continuous() + #continuous x axis
  scale_y_continuous()  #continuous y axis
p #print the plot


## ----next, fig.cap="", fig.width=6, fig.height=6,out.width='450px'------------
ggplot(data = BOD,
       map = aes(y = demand, x = Time)) +
    geom_point() +
    geom_line()


## ----decom1, fig.width=6, fig.height=6,out.width='450px'----------------------
p<-ggplot(data = BOD)


## ----decom2, fig.width=4, fig.height=4, fig.cap="",out.width='300px'----------
p<-p + geom_point(aes(y = demand, x = Time))
p


## ----decom1, fig.width=6, fig.height=6----------------------------------------
p<-ggplot(data = BOD)


## ----decom2a, fig.width=4, fig.height=4, fig.cap="", results="hide"-----------
p <- p + geom_point(aes(y = demand, x = Time))


## ----decom3, fig.width=3.5, fig.height=3.5, fig.cap="",out.width='200px'------
p <- p + scale_x_sqrt(name = "Time (days)")
p


## ----geom, fig.width=5, fig.height=5, fig.cap="",out.width='300px', fig.keep='last'----
BOD %>%
    ggplot(aes(y = demand, x = Time)) +
    geom_point()
#OR
ggplot(data = BOD, aes(y = demand, x = Time)) +
    geom_point()
#OR
ggplot(data = BOD) +
    geom_point(aes(y = demand, x = Time))
#OR
ggplot() +
    geom_point(data = BOD, aes(y = demand, x = Time))


## ----basic_1------------------------------------------------------------------
df <- data.frame(x = c(3, 1, 5), y = c(2, 4, 6), z = c('a', 'b', 'c'))
p <- ggplot(data=df, aes(y = y, x = x))


## ----blank_template, echo=FALSE-----------------------------------------------
blank_theme <- theme_minimal() +
    theme(plot.margin = margin(0, unit = 'cm'),
          axis.title = element_blank(),
          axis.text = element_blank())


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_blank()


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_blank() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_point()


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_point() +
    coord_cartesian(clip='off') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_text(aes(label = z))


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_text(aes(label = z), size=4) +
    coord_cartesian(clip='off') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_path()


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_path() +
    coord_cartesian(clip='off') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_polygon()


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_polygon() +
    coord_cartesian(clip='off') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_area()


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_area() +
    coord_cartesian(clip='off') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## p + geom_ribbon(aes(ymin = y-1, ymax= y+1))


## ---- echo=FALSE, fig.width=0.45, fig.height=0.45-----------------------------
p + geom_ribbon(aes(ymin = y-1, ymax= y+1)) +
    coord_cartesian(clip='off') +
    blank_theme


## ---- results='markup'--------------------------------------------------------
head(CO2)
summary(CO2)


## ----geompoint0, fig.cap="", fig.width=5, fig.height=5,out.width='400px'------
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geompoint1, echo=TRUE, fig.cap="", fig.width=3.5, fig.height=3.5,out.width='350px'----
g + geom_point(colour = "red")


## ----geompoint2, echo=TRUE, fig.cap="", fig.width=4, fig.height=3.5,out.width='400px'----
g + geom_point(aes(colour = Type))


## ----geompoint3, fig.cap="", fig.width=5, fig.height=5,out.width='400px', tidy=FALSE----
g + geom_point(stat = "summary",
               fun = mean)


## ----geompoint3b, fig.cap="", fig.width=5, fig.height=5,out.width='400px', tidy=FALSE----
g + stat_summary(geom = "point",
                 fun = mean)


## ----geomData, results='markup'-----------------------------------------------
head(diamonds)
summary(diamonds)


## ----geom0, results='markup'--------------------------------------------------
diamonds %>% data.frame() %>% head(2)
g <- ggplot(diamonds, aes(x=carat))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_histogram()


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_histogram() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_density()


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_density() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_boxplot()


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_boxplot() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_violin(aes(y = carat),
##                 orientation='y')


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_violin(aes(y = carat),
                orientation='y') +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_qq(aes(sample = carat),
##             inherit.aes = FALSE)


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_qq(aes(sample = carat), inherit.aes = FALSE) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_bar(aes(x = cut))


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_bar(aes(x = cut)) +
    blank_theme


## ----geom1, results='markup'--------------------------------------------------
diamonds %>% data.frame() %>% head(2)
g <- ggplot(diamonds, aes(x=carat))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_histogram(aes(fill=cut))


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_histogram(aes(fill=cut)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_density(aes(fill=cut),
##                  alpha=0.3)


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_density(aes(fill=cut),
                 alpha=0.3) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_boxplot(aes(y = cut))


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_boxplot(aes(y=cut)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_violin(aes(y = cut))


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_violin(aes(y = cut)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_qq(aes(sample = carat,
##                 color = cut),
##             inherit.aes = FALSE)


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_qq(aes(sample = carat, color=cut), inherit.aes = FALSE) +
    blank_theme


## ----geom2, results='markup'--------------------------------------------------
diamonds %>% data.frame() %>% head(2)
g <- ggplot(diamonds, aes(x=carat))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_bar(aes(x = cut,
##                  fill = clarity))


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_bar(aes(x = cut, fill=clarity)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_bar(aes(x = cut,
##                  fill = clarity),
##                  position='dodge')


## ---- echo=FALSE, fig.width=5, fig.height=2, out.width='100px'----------------
g + geom_bar(aes(x = cut, fill=clarity), position='dodge') +
    blank_theme


## ----geomBar0, results='markup'-----------------------------------------------
diamonds %>% data.frame() %>% head(2)
g <- ggplot(diamonds)


## ----geomBar1, results='markup',fig.width=4, fig.height=4, out.width='200px'----
g + geom_bar(aes(x = carat))


## ----geomBar0a, results='markup'----------------------------------------------
diamonds %>% data.frame() %>% head(2)


## ----geomBar2, results='markup',fig.width=4, fig.height=4, out.width='250px'----
g + geom_bar(aes(x = cut))


## ----geomBar0a, results='markup'----------------------------------------------
diamonds %>% data.frame() %>% head(2)


## ----geomBar3, results='markup',fig.width=6, fig.height=4, out.width='300px'----
g + geom_bar(aes(x = cut, fill = clarity))


## ----geomBar0a, results='markup'----------------------------------------------
diamonds %>% data.frame() %>% head(2)


## ----geomBar5, results='markup',fig.width=6, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_bar(aes(x = cut, fill = clarity),
  position='dodge')


## ----geomBar0a, results='markup'----------------------------------------------
diamonds %>% data.frame() %>% head(2)


## ----geomBox1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_boxplot(aes(y = carat))


## ----geomBox1a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_boxplot(aes(x=carat))


## ----geomBar0a, results='markup'----------------------------------------------
diamonds %>% data.frame() %>% head(2)


## ----geomBox2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_boxplot(aes(x = cut, y = carat))


## ----geomPoint0, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2 %>% filter(Plant == first(Plant)), aes(x = conc, y = uptake))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_point()


## ---- echo=FALSE, fig.width=1, fig.height=1, out.width='50px'-----------------
g + geom_point() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_line()


## ---- echo=FALSE, fig.width=1, fig.height=1, out.width='50px'-----------------
g + geom_line() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_smooth()


## ---- echo=FALSE, fig.width=1, fig.height=1, out.width='50px'-----------------
g + geom_smooth() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_quantile()


## ---- echo=FALSE, fig.width=1, fig.height=1, out.width='50px'-----------------
g + geom_quantile() +
    blank_theme


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomPoint1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point()


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomPoint2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point(aes(colour = Treatment))


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomPoint3, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point(aes(fill = Treatment),shape=21)


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomPoint4, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point(aes(shape=Treatment))


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomLine1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point() + geom_line()


## ----geomLine1a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_point() + geom_path()


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomLine2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_line(aes(group = Plant))


## ----geomLine3, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_line(aes(color=Plant))


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomLine4, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_line(stat = "summary", fun.y = mean)


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomSmooth1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_smooth(method = "lm")


## ----geomSmooth1a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_smooth(method = "loess")


## ----geomPoint0a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(x = conc, y = uptake))


## ----geomSmooth2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_smooth(aes(fill = Treatment))


## ----geomPoint1a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(as.data.frame(faithfuld), 3)
g <- ggplot(faithfuld, aes(y = eruptions, x = waiting))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_tile(aes(fill = density))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_tile(aes(fill = density)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_raster(aes(fill = density))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_raster(aes(fill = density)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_contour(aes(z = density))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_contour(aes(z = density)) +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_contour_filled(aes(z = density))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_contour_filled(aes(z = density)) +
    blank_theme


## ----geomPoint2a, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
library(maps)
library(mapdata)
aus <- map_data("worldHires", region="Australia")
head(aus,3)


## ----geomPolygon, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
ggplot(aus, aes(x=long, y=lat, group=group)) +
    geom_polygon()


## ---- results='markup'--------------------------------------------------------
head(warpbreaks)
summary(warpbreaks)


## ----geomErrorbar0, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
warpbreaks.sum <- warpbreaks %>%
    group_by(wool) %>%
    summarise(mean_se(breaks))
g <- ggplot(warpbreaks.sum, aes(y = y, x = wool, ymin = ymin, ymax = ymax))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_errorbar()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_errorbar() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_linerange()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_linerange() +
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_pointrange()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_pointrange() +
    blank_theme


## ----geomErrorbar1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(as.data.frame(warpbreaks),2)
g <- ggplot(warpbreaks, aes(y = breaks, x = wool))


## ----geomErrorbar2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_pointrange(stat = "summary",
      fun.data = "mean_se")


## ----geomErrorbar3, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + geom_pointrange(stat = "summary",
      fun.data = "mean_cl_boot")


## ----coord0, results='markup',fig.cap="", fig.width=7, fig.height=5,out.width='500px'----
head(CO2,3)
g <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake))


## ---- eval=FALSE--------------------------------------------------------------
## g + coord_cartesian()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + coord_cartesian() + 
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + coord_flip()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + coord_flip() + 
    blank_theme


## ---- eval=FALSE--------------------------------------------------------------
## g + coord_polar()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + coord_polar() + 
    blank_theme


## ----coord4, results='markup',fig.cap="", fig.width=7, fig.height=5,out.width='450px', tidy=FALSE----
#Orthographic coordinates
library(maps)
library(mapdata)
aus <- map_data("worldHires", region = "Australia")
ggplot(aus, aes(x = long, y = lat, group = group)) +
  coord_map("ortho", orientation=c(-20, 125, 23.5))+
  geom_polygon()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_<SCALE>_<TYPE>(
##     name,     # scale title
##     breaks,   # axis/legend ticks/breaks
##     labels,   # alternative axis/legend text labels
##     values,   # scale dependent properties (sizes/colours etc)
##     limits,   # range of values accommodated
##     ...,      # additional scale dependent options
##     )


## ----scalex, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2,2)
g <- ggplot(CO2, aes(y = uptake, x = conc)) + geom_point()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_x_continuous()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_x_continuous() +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_x_log10()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_x_log10() +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_x_sqrt()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_x_sqrt() +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_x_reverse()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_x_reverse() +
    theme_classic()


## ----scalex2, results='markup',fig.width=4, fig.height=4, out.width='260px', tidy=FALSE----
head(CO2,2)
g + scale_x_continuous(name = expression(
         Ambient~CO[2]~concentration~(mg/l)))


## ----scalex3, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + scale_x_continuous(name = "CO2 conc",
         expand = c(0,200))


## ----scalex4, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
g + scale_x_log10(name = "CO2 conc",
    breaks = as.vector(c(1, 2, 5, 10) %o% 10^(-1:2)))


## ----scalex5, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
ggplot(CO2, aes(y = uptake, x = Treatment)) + geom_point()+
  scale_x_discrete(name = "Treatment")


## ----scaleSize0, results='markup',fig.width=4, fig.height=3.5, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(y = uptake, x = conc))


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_point(aes(size = uptake)) +
##     scale_size_continuous()


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_point(aes(size = uptake)) +
    scale_size_continuous() +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_point(aes(size = Type)) +
##     scale_size_discrete(range = c(2,5))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_point(aes(size = Type)) +
    scale_size_discrete(range = c(2,5)) +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + geom_point(aes(shape = Type)) +
##     scale_shape_manual(values = c(2,3))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + geom_point(aes(shape = Type)) +
    scale_shape_manual(values = c(2,3)) +
    theme_classic()


## ----scaleShape2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
CO2 = CO2 %>% mutate(Comb = interaction(Type, Treatment))
CO2 %>% pull(Comb) %>% levels
ggplot(CO2, aes(y = uptake,x = conc)) + geom_point(aes(shape = Comb))+
  scale_shape_discrete(name = "Type",
   labels=c("Quebec non-chilled","Quebec chilled",
            "Miss. non-chilled","Miss. chilled"))


## ----scaleLinetype, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2,2)
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth(aes(linetype = Comb)) +
  scale_linetype_discrete(name = "Type")


## ----scaleLinetype1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(CO2,2)
ggplot(CO2, aes(y = uptake, x = conc)) +
  geom_smooth(aes(linetype = Treatment)) +
  scale_linetype_manual(name = "Treatment", values = c("dashed","dotted"))


## ----scaleColor0, results='markup',fig.width=4, fig.height=3.5, out.width='300px', tidy=FALSE----
head(CO2, 2)
g <- ggplot(CO2, aes(y = uptake, x = conc)) +
    geom_point(aes(colour = uptake))


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_color_gradient(low = 'red', high = 'blue')


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_color_gradient(low = 'red', high = 'blue') +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_color_gradient2(low = 'red', mid = "white",
##                           high = 'blue')


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_color_gradient2(low = 'red', mid = "white",
                          high = 'blue') +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_color_gradientn(colors = terrain.colors(12))


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_color_gradientn(colors = terrain.colors(12)) +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_color_distiller(palette = "Reds")


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_color_distiller(palette = "Reds") +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## g + scale_color_viridis_c(option = "D")


## ---- echo=FALSE, fig.width=6, fig.height=4, out.width='100px'----------------
g + scale_color_viridis_c(option = "D") +
    theme_classic()


## ---- eval=FALSE--------------------------------------------------------------
## colors()


## ---- echo=FALSE, fig.width=20, fig.height=20, out.height='450px', out.width='450px'----
rgb2col = function(rgbmat){
  # function to apply to each column of input rgbmat
  ProcessColumn = function(col){
    rgb(rgbmat[1, col], 
        rgbmat[2, col], 
        rgbmat[3, col], 
        maxColorValue = 255)
  }
  # Apply the function
  sapply(1:ncol(rgbmat), ProcessColumn)
}
is_Dark <- function(Colors) {
    sapply(Colors,function(x) sum(col2rgb(x)*c(299, 587,114))/1000 < 123)
}
d=data.frame(c=colors(), y=seq(0, length(colors())-1)%%66, x=seq(0, length(colors())-1)%/%66)
d <- d %>%
    mutate(hex = rgb2col(col2rgb(colors())),
           dark = is_Dark(c))
ggplot() +
    scale_x_continuous(name="", breaks=NULL, expand=c(0, 0)) +
    scale_y_continuous(name="", breaks=NULL, expand=c(0, 0)) +
    scale_fill_identity() +
    geom_rect(data=d, mapping=aes(xmin=x, xmax=x+1, ymin=y, ymax=y+1), fill="white") +
    geom_rect(data=d, mapping=aes(xmin=x+0.05, xmax=x+0.95, ymin=y+0, ymax=y+1, fill=c)) +
    geom_text(data=d, mapping=aes(x=x+0.5, y=y+0.5, label=c, color=dark), hjust=0.5, vjust=0.5, size=3, show.legend = FALSE) +
    scale_color_manual(breaks = c(FALSE, TRUE), values = c('black', 'white'))


## ---- eval=TRUE, echo=FALSE, fig.width=12, fig.height=8, out.width='750px'----
library(colorspace)
hcl_palettes(plot = TRUE, n = 5)


## ---- eval=FALSE--------------------------------------------------------------
## library(colorspace)
## pal <- choose_pal()


## ----palettes, results='markdown', eval=TRUE,fig.width=7, fig.height=7, out.width='600px'----
RColorBrewer::display.brewer.all()


## ----palettes1, results='markdown', eval=TRUE,fig.width=7, fig.height=2, out.width='600px'----
RColorBrewer::brewer.pal(n=8, name='Set1')
RColorBrewer::display.brewer.pal(n=8, name='Set1')


## ----scaleFill1, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(faithfuld,2)
ggplot(faithfuld, aes(waiting, eruptions)) +
    geom_raster(aes(fill = density)) +
    scale_fill_continuous(low = 'red', high = 'blue')


## ----scaleFill2, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(faithfuld,2)
ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  scale_fill_gradient2(low = 'red', mid = 'white', high = 'blue',
                       midpoint = 0.02)


## ----scaleFill3, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(faithfuld,2)
ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  scale_fill_gradientn(colours = terrain.colors(10))


## ----scaleFill4, results='markup',fig.width=4, fig.height=4, out.width='300px', tidy=FALSE----
head(faithfuld,2)
ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  scale_fill_viridis_c(option = 'D')
##also try scale_fill_viridis_b
## also options= 'A', 'B', 'C'


## ----facet0, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
g <- ggplot(CO2) +
    geom_point(aes(x = conc, y = uptake, colour = Type))

## ----facet1, fig.cap="", fig.width=7, fig.height=5,out.width='600px'----------
g + facet_wrap(~Plant)

## ----facet1a, echo=FALSE, eval=FALSE, fig.cap="", fig.width=7, fig.height=5,out.width='600px'----
## g +
## ### <b>
##     facet_wrap(~Plant)
## ### </b>


## ----facet0, fig.cap="", fig.width=7, fig.height=5,out.width='600px'----------
g <- ggplot(CO2) +
    geom_point(aes(x = conc, y = uptake, colour = Type))

## ----facet1b, fig.cap="", fig.width=7, fig.height=5,out.width='600px'---------
g + facet_wrap(~Plant, scales = 'free_y')


## ----facet0, fig.cap="", fig.width=7, fig.height=5,out.width='600px'----------
g <- ggplot(CO2) +
    geom_point(aes(x = conc, y = uptake, colour = Type))

## ----facet2, fig.cap="", fig.width=7, fig.height=5,out.width='600px'----------
g + facet_grid(Type~Treatment)


## ----multiplot, fig.cap="", fig.width=7, fig.height=5,out.width='500px'-------
g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
g2 <- ggplot(CO2) + geom_point(aes(x = Treatment, y = uptake))
library(gridExtra)
### <b>
grid.arrange(g1,  g2)
### </b>


## ----multiplot2, fig.cap="", fig.width=7, fig.height=5,out.width='500px'------
g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
g2 <- ggplot(CO2) + geom_point(aes(x = Treatment, y = uptake))
library(patchwork)
### <b>
g1/g2
### </b>


## ----multiplot3, fig.cap="", fig.width=12, fig.height=5,out.width='500px'-----
g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
g2 <- ggplot(CO2) + geom_point(aes(x = Treatment, y = uptake))
library(patchwork)
### <b>
g1+g2
### </b>


## ----multiplot4, fig.cap="", fig.width=12, fig.height=5,out.width='500px'-----
g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
g2 <- ggplot(CO2) + geom_point(aes(x = Treatment, y = uptake))
library(patchwork)
### <b>
(g1+g2)/g1
### </b>


## ----multiplot5, fig.cap="", fig.width=12, fig.height=5,out.width='500px'-----
g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
g2 <- ggplot(CO2) + geom_point(aes(x = Treatment, y = uptake))
library(patchwork)
wrap_plots(g1,g2, g1, g2, widths = c(2,1,1,1), guides = 'collect',
           design = "AAB\nCDE") +
    guide_area() +
    plot_annotation(tag_levels = 'a',
                    tag_suffix = ')')
wrap_plots(g1,g2, g1, g2, guides = 'collect',
           design = "AAAA\nBCDE") +
    guide_area() +
    plot_annotation(tag_levels = 'a',
                    tag_suffix = ')')


## ----theme1, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_classic()
### </b>


## ----theme2, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_bw()
### </b>


## ----theme3, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_grey()
### </b>


## ----theme4, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_minimal()
### </b>


## ----theme5, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_linedraw()
### </b>


## ----theme6, fig.cap="", fig.width=7, fig.height=5,out.width='500px'----------
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth() +
    geom_point() +
### <b>
    theme_light()
### </b>


## ----xkcd, fig.cap="", fig.width=3, fig.height=5,out.width='100px', results='hide'----
png('resources/xkcd.png', width=500, height=500, res=200)
library(xkcd)  
## remotes::install_version("Rttf2pt1", version = "1.3.8")
library(Rttf2pt1)
library(sysfonts)
library(extrafont)
## download.file("http://simonsoftware.se/other/xkcd.ttf", dest="xkcd.ttf")
#download.file("https://github.com/ekmett/arcade/blob/master/static/fonts/xkcd.ttf", dest="xkcd.ttf")
#font_import(".", prompt = FALSE)
#loadfonts()
xrange <- range(CO2$conc)
yrange <- range(CO2$uptake)
ggplot(CO2, aes(y = uptake, x = conc)) + geom_smooth(position='jitter', size=1.5) +
    #geom_point() +
        theme_minimal()+theme(text=element_text(size=16, family='xkcd'))+
        xkcdaxis(xrange, yrange)

dev.off()        


## ----saving, results='markup', eval=FALSE, tidy=FALSE-------------------------
## g1 <- ggplot(CO2) + geom_point(aes(x = conc, y = uptake, colour = Type))
## ### <b>
## ggsave(filename='figure1.pdf', g1,  width=7,  height=5)
## ### </b>


## ---- results='markup', eval=TRUE, tidy=FALSE---------------------------------
state=data.frame(state.x77, state.region, state.division, state.center) %>%
    select(Illiteracy, state.region, x, y)
head(state)


## ----statesum, results='markup', eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px', warning=FALSE----
library(gmodels)
state.sum = state %>% group_by(state.region) %>%
    summarise(Mean = mean(Illiteracy),
              Lower = ci(Illiteracy)[2],
              Upper = ci(Illiteracy)[3])
state.sum
ggplot(state.sum, aes(y = Mean, x = state.region)) + geom_point() +
    geom_errorbar(aes(ymin = Lower, ymax = Upper), width=0.1)


## ----statesumA, results='markup', fig.cap='',eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px'----
ggplot(state.sum, aes(y = Mean, x = state.region)) + geom_point() +
    geom_errorbar(aes(ymin = Lower, ymax = Upper), width = 0.1) +
    scale_x_discrete("Region") +
    scale_y_continuous("Illiteracy rate (%)")+
    theme_classic() +
    theme(axis.line.y = element_line(),
          axis.line.x = element_line())


## ----statesum1, results='markup', eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px', warning=FALSE----
library(gmodels)
state.sum = state %>% group_by(state.region) %>%
    mutate(mean_sdl(Illiteracy))
state.sum
ggplot(state.sum, aes(y = y, x = state.region)) + geom_point() +
    geom_errorbar(aes(ymin = ymin, ymax = ymax), width = 0.1)


## ----statesum2, results='markup', eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px', warning=FALSE----
library(gmodels)
state.sum = state %>% group_by(state.region) %>%
    mutate(mean_cl_boot(Illiteracy))
state.sum
ggplot(state.sum, aes(y = y, x = state.region)) + geom_point() +
    geom_errorbar(aes(ymin = ymin, ymax = ymax), width = 0.1)


## ----statemap, results='markup', fig.cap='',eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px'----
library(mapdata)
US <- map_data("worldHires", region = "USA")
ggplot(US) +
    geom_polygon(aes(x = long, y = lat, group = group)) +
    geom_point(data = state, aes(y = y, x = x, size = Illiteracy),
               color = "red")


## ----statemapA, results='markup', fig.cap='',eval=TRUE, tidy=FALSE,fig.width=4, fig.height=4, out.width='300px'----
library(mapdata) 
US <- map_data("worldHires", region="USA")
ggplot(US) +
    geom_polygon(aes(x = long, y = lat, group = group)) +
    geom_point(data = state,aes(y = y, x = x, size = Illiteracy),
               color = "red")+
    coord_map(xlim = c(-150, -50), ylim = c(20, 60)) +
    theme_minimal()


## ---- results='markup', eval=TRUE, tidy=FALSE---------------------------------
MACNALLY <- read.csv('../data/macnally.csv',
  header = TRUE, row.names = 1, strip.white = TRUE)
head(MACNALLY)


## ----ggMacnally1, results='markup', eval=TRUE, tidy=FALSE, out.width='300px'----
library(gmodels)
ci(MACNALLY$GST)
MACNALLY.agg = MACNALLY %>% group_by(HABITAT) %>%
  summarize(Mean = mean(GST), Lower = ci(GST)[2], Upper = ci(GST)[3])
ggplot(MACNALLY.agg, aes(y = Mean, x = HABITAT)) +
    geom_errorbar(aes(ymin = Lower, ymax = Upper), width = 0.1)+
    geom_point() + theme_classic()


## ----ggMacnally3, results='markup', eval=TRUE, tidy=FALSE, out.width='300px'----
library(tidyverse)
MACNALLY.melt = MACNALLY %>%
  pivot_longer(-HABITAT, names_to = "variable",  values_to = "value")
ggplot(MACNALLY.melt, aes(y = value, x = HABITAT)) +
    stat_summary(fun.y = "mean", geom = "point")+
    stat_summary(fun.data = "mean_cl_normal", geom = "errorbar",
                 width = 0.1)+
    facet_grid(~variable)


## ----ggMacnally4, results='markup', eval=TRUE, tidy=FALSE, out.width='300px'----
#and bootstrapped means..
ggplot(MACNALLY.melt, aes(y = value, x = HABITAT)) +
    stat_summary(fun.y = "mean", geom = "point")+
    stat_summary(fun.data = "mean_cl_boot", geom = "errorbar",
                 width = 0.1)+
    facet_grid(~variable)



