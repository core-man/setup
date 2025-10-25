#!/usr/bin/env bash
#
# Install miniconda and Python packages
#
# Reference: https://docs.anaconda.com/anaconda/install/silent-mode/
#

set -x -e

# the miniconda installer
# installer=Miniconda3-latest-MacOSX-x86_64.sh  # macOS
installer=Miniconda3-latest-Linux-x86_64.sh  # Linux
# location to install miniconda
installdir=${HOME}/opt/miniconda
# the default shell
shell=zsh
# Archive source (use Tsinghua in China)
# archive=https://repo.anaconda.com/miniconda
archive=https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda

# Download miniconda installer
wget -c ${archive}/${installer} -O ${installer}

# Install miniconda
bash ${installer} -b -p ${installdir}

# Activate conda in current shell
eval "$(${installdir}/bin/conda shell.${shell} hook)"

# Init
conda init ${shell}

# Add conda-forge channel
# conda config --add channels conda-forge

# Set channel priority
# conda config --set channel_priority true
# Set channel URL
# conda config --set show_channel_urls true

# Update conda
# conda update --yes conda

# Update anaconda
# conda update --yes anaconda

# Install packages via conda
# conda install -n base conda-libmamba-solver
# conda config --set solver libmamba
# conda install --yes --file requirements.txt

set +x +e
