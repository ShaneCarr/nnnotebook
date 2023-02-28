# nnnotebook

nn notebooks from tutorial

## links

- <https://www.youtube.com/watch?v=VMj-3S1tku0&ab_channel=AndrejKarpathy>
- <https://github.com/karpathy/nn-zero-to-hero>
- <https://www.geeksforgeeks.org/using-jupyter-notebook-in-virtual-environment/>
- <https://howchoo.com/python/how-to-make-ipython-work-in-a-virtualenv-virtual-environment>
- <https://github.com/bndr/pipreqs>

## configure notebook

### python

**install and configure python**

```bash
brew install pyenv
pyenv install 3.11
echo 'export PATH="$(pyenv root)/bin:$PATH"' >> ~/.zshrc

export PATH="$(pyenv root)/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

```

**install and configure an environment
**

```bash
python -m venv .notebook
source .notebook/bin/activate
pip install iPython
pip3 install ipykernel
ipython kernel install --user --name=.notebook
pip install pipreqs
 pip install --upgrade jupyter

jupyter-notebook


pipreqs .
```

## review math

### import libraries

```bash
pip3 install numpy
pip install matplotlib
```

```python
import math
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline

```

## technologies

**IPython** is an interactive command-line terminal for Python. It was created by Fernando Perez in 2001. IPython offers an enhanced read-eval-print loop (REPL) environment particularly well adapted to scientific computing. In other words, IPython is a powerful interface to the Python language.

Link: <https://ipython.org/>
