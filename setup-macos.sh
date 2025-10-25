
# Install Command Line Tools for Xcode
xcode-select --install
# All commands we can used are in /Library/Developer/CommandLineTools/usr/bin
# While we also have them in /usr/bin

coreman@Jiayuans-MacBook-Pro research % gcc --version
Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
Apple clang version 12.0.0 (clang-1200.0.32.28)
Target: x86_64-apple-darwin20.2.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin
coreman@Jiayuans-MacBook-Pro research % which gcc
/usr/bin/gcc

coreman@Jiayuans-MacBook-Pro research % git --version
git version 2.24.3 (Apple Git-128)
coreman@Jiayuans-MacBook-Pro research % which git
/usr/bin/git

coreman@Jiayuans-MacBook-Pro research % make --version
GNU Make 3.81
Copyright (C) 2006  Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

This program built for i386-apple-darwin11.3.0
coreman@Jiayuans-MacBook-Pro research % which make
/usr/bin/make


# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# files will be put in /usr/local/
# now, only brew is in /usr/local/bin

# Check
coreman@Jiayuans-MacBook-Pro research % brew --version
Homebrew 2.7.4
Homebrew/homebrew-core (git revision 2c3f3b; last commit 2021-01-14)
coreman@Jiayuans-MacBook-Pro research % which brew
/usr/local/bin/brew

# Install Java
brew install openjdk
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# check java

coreman@Jiayuans-MacBook-Pro research % java -version
openjdk version "15.0.1" 2020-10-20
OpenJDK Runtime Environment (build 15.0.1+9)
OpenJDK 64-Bit Server VM (build 15.0.1+9, mixed mode, sharing)
coreman@Jiayuans-MacBook-Pro research % which java
/usr/bin/java

# Install gfortran
brew install gfortran

Now we have more files in /usr/local/bin
coreman@Jiayuans-MacBook-Pro research % which gfortran
/usr/local/bin/gfortran
coreman@Jiayuans-MacBook-Pro research % ls /usr/local/bin 
brew					gfortran
c++-10					gfortran-10
cpp-10					lto-dump-10
g++-10					x86_64-apple-darwin20-c++-10
gcc-10					x86_64-apple-darwin20-g++-10
gcc-ar-10				x86_64-apple-darwin20-gcc-10
gcc-nm-10				x86_64-apple-darwin20-gcc-10.2.0
gcc-ranlib-10				x86_64-apple-darwin20-gcc-ar-10
gcov-10					x86_64-apple-darwin20-gcc-nm-10
gcov-dump-10				x86_64-apple-darwin20-gcc-ranlib-10
gcov-tool-10				x86_64-apple-darwin20-gfortran-10

# Check gfortran
coreman@Jiayuans-MacBook-Pro research % gfortran --version
GNU Fortran (Homebrew GCC 10.2.0_2) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

coreman@Jiayuans-MacBook-Pro research % gfortran -v
Using built-in specs.
COLLECT_GCC=gfortran
COLLECT_LTO_WRAPPER=/usr/local/Cellar/gcc/10.2.0_2/libexec/gcc/x86_64-apple-darwin20/10.2.0/lto-wrapper
Target: x86_64-apple-darwin20
Configured with: ../configure --build=x86_64-apple-darwin20 --prefix=/usr/local/Cellar/gcc/10.2.0_2 --libdir=/usr/local/Cellar/gcc/10.2.0_2/lib/gcc/10 --disable-nls --enable-checking=release --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-10 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-system-zlib --with-pkgversion='Homebrew GCC 10.2.0_2' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --disable-multilib --with-native-system-header-dir=/usr/include --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk SED=/usr/bin/sed
Thread model: posix
Supported LTO compression algorithms: zlib
gcc version 10.2.0 (Homebrew GCC 10.2.0_2)


# Install git
brew install git

Open a new terminal, otherwise will use old git.

coreman@Jiayuans-MacBook-Pro research % git --version
git version 2.30.0
coreman@Jiayuans-MacBook-Pro research % which git
/usr/local/bin/git

# Install Anaconda
bash Anaconda3-2020.11-MacOSX-x86_64.sh -b

coreman@Jiayuans-MacBook-Pro Downloads % source ~/anaconda3/bin/activate 
(base) coreman@Jiayuans-MacBook-Pro Downloads % conda init zsh
no change     /Users/coreman/anaconda3/condabin/conda
no change     /Users/coreman/anaconda3/bin/conda
no change     /Users/coreman/anaconda3/bin/conda-env
no change     /Users/coreman/anaconda3/bin/activate
no change     /Users/coreman/anaconda3/bin/deactivate
no change     /Users/coreman/anaconda3/etc/profile.d/conda.sh
no change     /Users/coreman/anaconda3/etc/fish/conf.d/conda.fish
no change     /Users/coreman/anaconda3/shell/condabin/Conda.psm1
no change     /Users/coreman/anaconda3/shell/condabin/conda-hook.ps1
no change     /Users/coreman/anaconda3/lib/python3.8/site-packages/xontrib/conda.xsh
no change     /Users/coreman/anaconda3/etc/profile.d/conda.csh
modified      /Users/coreman/.zshrc

==> For changes to take effect, close and re-open your current shell. <==


(base) coreman@Jiayuans-MacBook-Pro research % python
Python 3.8.5 (default, Sep  4 2020, 02:22:02) 
[Clang 10.0.0 ] :: Anaconda, Inc. on darwin
Type "help", "copyright", "credits" or "license" for more information.

(base) coreman@Jiayuans-MacBook-Pro Downloads % conda config --set auto_activate_base False

(base) coreman@Jiayuans-MacBook-Pro Downloads % conda --version
conda 4.9.2

(base) coreman@Jiayuans-MacBook-Pro Downloads % conda list anaconda$ 
# packages in environment at /Users/coreman/anaconda3:
#
# Name                    Version                   Build  Channel
anaconda                  2020.11                  py38_0  



# utils
brew install dos2unix unix2dos
brew install gawk


(base) coreman@Jiayuans-MacBook-Pro research % brew install gawk
==> Downloading https://homebrew.bintray.com/bottles/readline-8.1.big_sur.bottle.tar.gz
==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/2cc3a9582e3c7e21eb3c2c8964abd33e9720fb4a9588c626d8424ff8cc9b1aed?
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/gawk-5.1.0.big_sur.bottle.tar.gz
==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/8ff8108740004ede9c938b8bb42d2768d532d9ac8ee492250bbd23c8dfbef0cb?
######################################################################## 100.0%
==> Installing dependencies for gawk: readline
==> Installing gawk dependency: readline
==> Pouring readline-8.1.big_sur.bottle.tar.gz
==> Caveats
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides BSD libedit.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"

==> Summary
🍺  /usr/local/Cellar/readline/8.1: 48 files, 1.6MB
==> Installing gawk
==> Pouring gawk-5.1.0.big_sur.bottle.tar.gz
🍺  /usr/local/Cellar/gawk/5.1.0: 90 files, 5.1MB
==> Caveats
==> readline
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides BSD libedit.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"


brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask iterm2

# 预览源码时加上语法高亮
$ brew install --cask qlcolorcode

# 预览无后缀的纯文本文件，比如README, HISTORY等
$ brew install --cask qlstephen

# 预览渲染后的markdown文件
$ brew install --cask qlmarkdown

https://support.apple.com/en-sg/HT202491




brew install --cask google-chrome
brew install wget



microsoft 365 from APP store

set Chinese input source from setting

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

previous .zshrc will be .zshrc.pre-oh-my-zsh

```open a new terminal
Last login: Thu Jan 14 19:56:19 on ttys003
[oh-my-zsh] Insecure completion-dependent directories detected:
drwxrwxr-x  3 coreman  admin   96 Jan 14 15:18 /usr/local/share/zsh
drwxrwxr-x  6 coreman  admin  192 Jan 14 17:11 /usr/local/share/zsh/site-functions

[oh-my-zsh] For safety, we will not load completions from these directories until
[oh-my-zsh] you fix their permissions and ownership and restart zsh.
[oh-my-zsh] See the above list for directories with group or other writability.

[oh-my-zsh] To fix your permissions you can do so by disabling
[oh-my-zsh] the write permission of "group" and "others" and making sure that the
[oh-my-zsh] owner of these directories is either root or your current user.
[oh-my-zsh] The following command may help:
[oh-my-zsh]     compaudit | xargs chmod g-w,o-w

[oh-my-zsh] If the above didn't help or you want to skip the verification of
[oh-my-zsh] insecure directories you can set the variable ZSH_DISABLE_COMPFIX to
[oh-my-zsh] "true" before oh-my-zsh is sourced in your zshrc file.
```

$ ls -l /usr/local/share
drwxr-xr-x   3 coreman  admin    96 Jan 14 15:18 zsh
$ ls -l /usr/local/share/zsh
drwxrwxr-x  6 coreman  admin  192 Jan 14 17:11 site-functions

https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390187157
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

# Install zsh plugins
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/autojump
brew install autojump
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
# https://github.com/zsh-users/zsh-syntax-highlighting
# Seems should put at the end of the plugins list
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting



# Install nustore
brew install --cask nutstore
open /usr/local/Caskroom/nutstore/latest/坚果云安装程序.app/

# Install dropbox
brew install --cask dropbox

# Install endnote
brew install --cask endnote
Then GUI will run to install it.

But right now, we have to download ntu endnote to use it.
https://libguides.ntu.edu.sg/referencemanagement/endnote

# Install zotero
brew install --cask zotero

# Install eagle
https://eagle.cool/download/

# Install hugo
brew install hugo

# Install youdao
brew install --cask youdaodict
brew does not work now
use https://cidian.youdao.com/index-mac.html
the url does not work either

# Install Tencent Meeting 腾讯会议
brew install --cask tencent-meeting

# Install wechat and qq from APP Store


# Install MacTex
brew install --cask mactex-no-gui
Too large! stop!

# Install TinyTex Instead
# It seems that fonts installed by the sh script does not work.
# Install font
brew tap homebrew/cask-fonts
brew install font-source-sans-pro
brew install font-source-code-pro

# Install Typora
brew install --cask typora

# Install WMware Fusion
brew install --cask vmware-fusion

# Install XQuartz
brew install --cask xquartz

# Install sogou
brew install --cask sogouinput
open /usr/local/Caskroom/sogouinput/58a,1588947491/sogou_mac_58a.app  安装图形界面

# Install google earth
brew install --cask google-earth-pro

# Install Google Drive
brew install --cask google-drive
# This command will also install Google Docs, Sheets and Slides

# Install slack
brew install --cask slack

# cpdf
brew tap oncletom/cpdf
brew install cpdf

