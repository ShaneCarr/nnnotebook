#!/bin/bash

# Create a virtual environment and activate it
python -m venv .notebook
source .notebook/bin/activate

# List of packages to install
packages=(
    "iPython"
    "ipykernel"
    "pipreqs"
    "numpy"
    "sympy"
    "jupyter"
    "ninja"
    "matplotlib"
)

# Install packages using --no-binary flag to avoid encoding issues
for package in "${packages[@]}"; do
    pip install --no-binary :all: "$package"
done

# Install the IPython kernel for your virtual environment
ipython kernel install --user --name=.notebook

# Run Jupyter Notebook
jupyter-notebook &

# Wait for Jupyter Notebook to start (adjust sleep time as needed)
sleep 5

# Generate requirements.txt using pipreqs within your virtual environment
pipreqs .

# Deactivate the virtual environment
deactivate
