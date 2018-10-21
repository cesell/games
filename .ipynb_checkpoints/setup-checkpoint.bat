conda env create -f environment.yml

conda activate games
REM Too add the environment as a kernel in jupyter
ipython kernel install --user --name=games

REM Avoid "JavaScript heap out of memory" errors during extension installation
set NODE_OPTIONS=--max-old-space-size=4096

jupyter labextension install @jupyterlab/toc

REM unset NODE_OPTIONS
set NODE_OPTIONS=


