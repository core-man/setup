#!/usr/bin/env bash
#
# Install miniforge and Python packages
#
# Reference: https://docs.anaconda.com/anaconda/install/silent-mode/
#

set -x -e

# the miniforge installer
# installer=Miniforge3-MacOSX-x86_64.sh  # macOS
installer=Miniforge3-Linux-x86_64.sh  # Linux
# location to install miniforge
installdir=${HOME}/opt/miniforge3
# the default shell
shell=zsh
# Archive source (use Tsinghua in China)
# archive=https://github.com/conda-forge/miniforge/releases/latest/download
archive=https://mirrors.tuna.tsinghua.edu.cn/github-release/conda-forge/miniforge/LatestRelease

# Download miniforge installer
wget -c ${archive}/${installer} -O ${installer}

# # Install miniforge
# bash ${installer} -b -p ${installdir}

## Activate conda in current shell
# eval "$(${installdir}/bin/conda shell.${shell} hook)"
# # Init conda
# conda init ${shell}

# # Activate mamba in current shell
# eval "$(${installdir}/bin/mamba shell hook --shell ${shell} --root-prefix ${installdir})"

# Configure conda
# conda config --add channels conda-forge  # Add conda-forge channel
# conda config --set channel_priority strict  # Set channel priority
# conda config --set show_channel_urls true  # Set channel URL
# conda config --set 'custom_channels.conda-forge' https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud

# # Update conda
# conda update --yes conda

# # Install packages via mamba
# mamba install --yes --file requirements.txt --channel conda-forge

set +x +e
