#!/usr/bin/env bash
#
# Install anaconda and Python packages
#
# Reference: https://docs.anaconda.com/anaconda/install/silent-mode/
#

set -x -e

# the Anaconda installer
# installer=Anaconda3-2021.05-Linux-x86_64.sh  # Linux
installer=Anaconda3-2021.05-MacOSX-x86_64.sh  # macOS
# location to install anaconda
installdir=${HOME}/.anaconda
# the default shell
shell=zsh
# Archive source (use Tsinghua in China)
# archive=https://repo.anaconda.com/archive
archive=https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive

# Download Anaconda installer
wget -c ${archive}/${installer} -O ${installer}

# Install Anaconda
bash ${installer} -b -p ${installdir}

# Activate conda in current shell
eval "$(${installdir}/bin/conda shell.${shell} hook)"

# Init
conda init ${shell}

# Add conda-forge channel
# conda config --add channels conda-forge

# Update conda
# conda update --yes conda

# Update anaconda
# conda update --yes anaconda

# Install packages via conda
# conda install --yes --file requirements.txt
# Install packages via mamba
conda install --yes mamba
conda update --yes mamba
mamba install --yes --file requirements.txt

set +x +e
