## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
options(tinytex.engine = 'xelatex')
    
# save the built-in output hook
hook_output <- knitr::knit_hooks$get("output")

# set a new output hook to truncate text output
knitr::knit_hooks$set(output = function(x, options) {
  if (!is.null(n <- options$out.lines)) {
    x <- xfun::split_lines(x)
    if (length(x) > n) {
      # truncate the output
      x <- c(head(x, n), "....\n")
    }
    x <- paste(x, collapse = "\n")
  }
  hook_output(x, options)
})


## ----prepareFolder1,results='hide', eval=TRUE, echo=FALSE---------------------
unlink('~/tmp/docker_tests', recursive=TRUE, force=TRUE)

## mkdir ~/tmp/docker_tests


## \usetikzlibrary{positioning,shapes.callouts}

## \tikzstyle{fileText} = [font={\fontspec[Scale=0.4]{Inconsolata}}]

## \newcommand{\file}[3] {

##  \coordinate (#3) at (#1);

##  \draw[thick,anchor=top left](#1) -- ++(2,0) -- ++(0.5,-0.5) -- ++(0,-3) -- ++(-2.5,0) -- ++(0,3.5);

##  \draw[thick,anchor=top left]($(#1) +(2,0)$) -- ++(0,-0.5) -- ++(0.5,0); 	

##  \node [anchor=north west,fileText] at ($(#1) +(0,-0.1)$) {#2};

## }

## 

## \usetikzlibrary{calc,fit,positioning}

## \definecolor{OS}{rgb}{1,0.8,0.4}%

## \definecolor{Docker}{rgb}{0.26,0.65,0.91}%

## \definecolor{Bin}{rgb}{0.9,0.9,0.2}%

## \definecolor{Container}{rgb}{0.90,0.9,0.9}%

## \sf

## 

## \begin{tikzpicture}

## \node [draw, anchor=south west,fill=Container] at (0,0) (Container1) {

##  \begin{tikzpicture}

##    \node [anchor=west] (title) at (0,0) {\textbf{Container 1}};

##    \node [draw, anchor=west, fill=white] at ($(title.west) + (0,-1.5)$) (App) {

##    \scalebox{0.5}{\begin{tikzpicture}

##    \node (Code) {\huge Apps, Code etc};

##    \commit{below = 1.5cm of Code}{A}{color_inactive}{}{}

##    \commit{right = 1cm of A}{B}{color_inactive}{}{}

##    \commit{right = 1cm of B}{C}{color_commit}{}{}

##    \draw [-,line width=3pt,draw=black!60] (A) -- ++(-1,0);

##    \draw [-,line width=3pt,draw=black!60] (B) -- (A);

##    \draw [-,line width=3pt,draw=black!60] (C) -- (B);

##    \commit{above = 0.5cm of B}{D}{color_inactive}{}{}

##    \draw [-,line width=3pt,draw=black!60] (A.east) to[out=0,in=180] (D);

##    \master{right = 0.5cm of C}\draw[->,line width=3pt,draw=black!60] (master) -- (C);

##    \HEAD{right = 0.5cm of master}\draw[->,line width=3pt,draw=black!60] (HEAD) -- (master);

##    \branch{right = 0.5cm of D}{Feature}\draw[->,line width=3pt,draw=black!60] (Feature) -- (D);

##    \end{tikzpicture}}};

##    \node [draw,anchor=north,inner sep=0pt, fit=(App.south west)(App.south east), fill=Bin, minimum height = 1.75em, label={center:Bins/libs}] {};

##  \end{tikzpicture}

## };

## 

## \node [draw, anchor=south west,fill=Container] at ($(Container1.south east) + (0.2,0)$) (Container2) {

##  \begin{tikzpicture}

##    \node [anchor=west] (title) at (0,0) {\textbf{Container 2}};

##    \node [draw, anchor=west, fill=white,minimum width=4cm] at ($(title.west) + (0,-1)$) (App) {Apps, Code etc};

##    \node [draw, anchor=north west, fill=Bin, minimum width=4cm] at ($(App.south west) + (0,-0)$) {Bins/libs};

##  \end{tikzpicture}

## };

## 

## \node [draw,fit=(Container1.south west)(Container2.south east), anchor=north,inner sep=0pt,fill=Docker, minimum height=2em, label={center:Docker Engine}] (Docker)  {};

## \node [draw,fit=(Docker.south west)(Docker.south east), anchor=north,inner sep=0pt,fill=OS, minimum height=2em, label={center:Host OS}] (OS)  {};

## \end{tikzpicture}


## cd ~/tmp/docker_tests

## echo 'FROM bitnami/minideb:stretch' > Dockerfile

## echo 'LABEL maintainer="Author"' >> Dockerfile

## echo 'LABEL email="author_email@email.com"' >> Dockerfile

## echo '' >> Dockerfile

## echo '## Install the os packages' >> Dockerfile

## echo 'RUN apt-get update \' >> Dockerfile

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile

## echo '    cowsay \' >> Dockerfile

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile


## NA

## cd ~/tmp/docker_tests

## docker build . --tag minideb -f Dockerfile

## docker build . --tag minideb


## docker image ls


## docker images -a


## docker ps -a


## docker run --entrypoint ./usr/games/cowsay --rm minideb Moo


## docker run --entrypoint ./usr/games/cowsay --rm minideb -f /usr/share/cowsay/cows/koala.cow Grunt


## docker run --rm -it minideb


## ls -la


## ./usr/games/cowsay Moo


## exit


## cd ~/tmp/docker_tests

## echo 'FROM bitnami/minideb:stretch' > Dockerfile2

## echo 'LABEL maintainer="Author"' >> Dockerfile2

## echo 'LABEL email="author_email@email.com"' >> Dockerfile2

## echo '' >> Dockerfile2

## echo '## Install the os packages' >> Dockerfile2

## echo 'RUN apt-get update \' >> Dockerfile2

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile2

## echo '    cowsay \' >> Dockerfile2

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile2

## echo '' >> Dockerfile2

## echo '## Default command to run' >> Dockerfile2

## echo 'ENTRYPOINT ["/usr/games/cowsay","-f","/usr/share/cowsay/cows/koala.cow"]' >> Dockerfile2

## echo '' >> Dockerfile2

## echo '## Default extra parameters passed to the command' >> Dockerfile2

## echo 'CMD ["Grunt"]' >> Dockerfile2


## NA

## cd ~/tmp/docker_tests

## docker build . --tag minideb -f Dockerfile2

## docker build . --tag minideb -f Dockerfile2


## docker images -a


## docker run --rm minideb


## docker run --rm minideb Meow


## cd ~/tmp/docker_tests

## echo 'dat <- data.frame(y = rnorm(10))' > analysis.R

## echo 'dat' >> analysis.R

## echo 'write.csv(dat, file = "dat.csv", row.names = FALSE)' >> analysis.R

## NA

## cd ~/tmp/docker_tests

## echo 'FROM bitnami/minideb:stretch' > Dockerfile3

## echo 'LABEL maintainer="Author"' >> Dockerfile3

## echo 'LABEL email="author_email@email.com"' >> Dockerfile3

## echo '' >> Dockerfile3

## echo '## Install the os packages' >> Dockerfile3

## echo 'RUN apt-get update \' >> Dockerfile3

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile3

## echo '    r-base \' >> Dockerfile3

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile3

## echo '' >> Dockerfile3

## echo 'COPY analysis.R ~/' >> Dockerfile3

## echo 'WORKDIR ~/' >> Dockerfile3

## echo '' >> Dockerfile3

## echo '## Default command to run' >> Dockerfile3

## echo 'ENTRYPOINT ["Rscript"]' >> Dockerfile3

## echo '' >> Dockerfile3

## echo '## Default command parameters' >> Dockerfile3

## echo 'CMD ["analysis.R"]' >> Dockerfile3


## NA

## cd ~/tmp/docker_tests

## docker build . --tag r:1 -f Dockerfile3

## docker build . --tag r:1 -f Dockerfile3


## docker run --rm r:1


## cd ~/tmp/docker_tests

## echo 'FROM bitnami/minideb:stretch' > Dockerfile4

## echo 'LABEL maintainer="Author"' >> Dockerfile4

## echo 'LABEL email="author_email@email.com"' >> Dockerfile4

## echo '' >> Dockerfile4

## echo '## Install the os packages' >> Dockerfile4

## echo 'RUN apt-get update \' >> Dockerfile4

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile4

## echo '    r-base \' >> Dockerfile4

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile4

## echo '' >> Dockerfile4

## echo 'WORKDIR /home/Project' >> Dockerfile4

## echo '' >> Dockerfile4

## echo '## Default command to run' >> Dockerfile4

## echo 'ENTRYPOINT ["Rscript"]' >> Dockerfile4

## echo '' >> Dockerfile4

## echo '## Default command parameters' >> Dockerfile4

## echo 'CMD ["analysis.R"]' >> Dockerfile4


## NA

## cd ~/tmp/docker_tests

## docker build . --tag r:2 -f Dockerfile4

## docker build . --tag r:2 -f Dockerfile4


## cd ~/tmp/docker_tests/

## docker run --rm -v `pwd`:/home/Project r:2


## cd ~/tmp/docker_tests/

## ls -la


## cd ~/tmp/docker_tests

## echo 'FROM rocker/r-ver:4.2.2' > Dockerfile5

## echo 'LABEL maintainer="Author"' >> Dockerfile5

## echo 'LABEL email="author_email@email.com"' >> Dockerfile5

## echo '' >> Dockerfile5

## echo 'RUN apt-get update \' >> Dockerfile5

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile5

## echo '  libxml2-dev \' >> Dockerfile5

## echo '  libcurl4-openssl-dev  \' >> Dockerfile5

## echo '  libssl-dev \' >> Dockerfile5

## echo '  zlib1g-dev \' >> Dockerfile5

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile5

## echo '' >> Dockerfile5

## echo '## Install R package versions from MRAN (based on a date - YYYY-MM-DD)' >> Dockerfile5

## echo 'RUN R -e "options(repos = \' >> Dockerfile5

## echo '    list(CRAN = \"http://mran.revolutionanalytics.com/snapshot/2022-10-04/\")); \' >> Dockerfile5

## echo '  install.packages(\"tidyverse\"); \' >> Dockerfile5

## echo '"' >> Dockerfile5

## echo '' >> Dockerfile5

## echo 'WORKDIR /home/Project' >> Dockerfile5

## echo '' >> Dockerfile5

## echo '## Default command to run' >> Dockerfile5

## echo 'ENTRYPOINT ["Rscript"]' >> Dockerfile5

## echo '' >> Dockerfile5

## echo 'CMD ["analysis.R"]' >> Dockerfile5


## NA

## cd ~/tmp/docker_tests

## echo 'FROM rocker/r-ver:4.2.2' > Dockerfile5a

## echo 'LABEL maintainer="Author"' >> Dockerfile5a

## echo 'LABEL email="author_email@email.com"' >> Dockerfile5a

## echo '' >> Dockerfile5a

## echo 'RUN apt-get update \' >> Dockerfile5a

## echo '  && apt-get install -y --no-install-recommends \' >> Dockerfile5a

## echo '  r-cran-tidyverse \' >> Dockerfile5a

## echo '  && rm -rf /var/lib/apt/lists/*' >> Dockerfile5a

## echo '' >> Dockerfile5a

## echo 'WORKDIR /home/Project' >> Dockerfile5a

## echo '' >> Dockerfile5a

## echo '## Default command to run' >> Dockerfile5a

## echo 'ENTRYPOINT ["Rscript"]' >> Dockerfile5a

## echo '' >> Dockerfile5a

## echo 'CMD ["analysis.R"]' >> Dockerfile5a


## NA

## cd ~/tmp/docker_tests

## docker build . --tag r-tidyverse:1 -f Dockerfile5

## docker build . --tag r-tidyverse:1 -f Dockerfile5


## cd ~/tmp/docker_tests/

## docker run --rm -v `pwd`:/home/Project r-tidyverse:1


## cd ~/tmp/docker_tests

## echo 'library(tidyverse)' > analysis5.R

## echo 'dat <- data.frame(y = rnorm(10))' >> analysis5.R

## echo 'dat' >> analysis5.R

## echo 'dat %>% summarise(Mean = mean(y), Median = median(y))' >> analysis5.R

## NA

## cd ~/tmp/docker_tests/

## docker run --rm -v `pwd`:/home/Project r-tidyverse:1 analysis5.R


## docker images


## docker images -f "dangling=false"


## docker images -f "since=minideb"


## docker images -a


## docker system prune


## docker system prune -a


## docker rmi <ID>


## docker images -a | grep <"pattern"> | awk '{print $3}' | xargs docker rmi

