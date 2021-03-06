#!/bin/bash -x

# rvm
echo "rvm_install_on_use_flag=1" >> $HOME/.rvmrc
echo "rvm_project_rvmrc=1"       >> $HOME/.rvmrc
echo "rvm_trust_rvmrcs_flag=1"   >> $HOME/.rvmrc

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --autolibs=4
source "$HOME/.rvm/scripts/rvm"
[[ -s "$rvm_path/hooks/after_cd_bundle" ]] && chmod +x $rvm_path/hooks/after_cd_bundle

rvm autolibs enable
rvm requirements
rvm reload

# ruby
#rvm install 1.9 # kleer-website
#rvm install 2.1 # eventer
rvm install 2.3

sudo apt-get install -y gem

gem install bundler
gem install rspec
