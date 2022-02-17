#!/bin/bash

mkdir -p ~/Downloads/fonts
mkdir -p ~/Downloads/iterm2-material-design

git clone https://github.com/powerline/fonts.git ~/Downloads/
git clone https://github.com/MartinSeeler/iterm2-material-design.git ~/Downloads/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install  autoconf \
          awscli \
          awsebcli \
          circleci \
          cmake \
          coreutils \
          ffmpeg \
          fwup \
          gpg \
          gstreamer \
          openssl@1.1 \
          pkg-config \
          readline \
          shellcheck \
          squashfs \
          unzip \
          earthly \
          wxwidgets \
          zsh \
          bat \
          tldr \
          prettyping \
          fzf \
          ncdu \
          jq \
          asdf \
          gawk \
          setup \
          diff-so-fancy \
          tig 
brew install --cask vlc gpg-suite-no-mail dbeaver-community

cp .aliases ~/.aliases
cp .editorconfig ~/.editorconfig
cp .tool-versions ~/.tool-versions


echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
#echo '. ~/.asdf/completions/asdf.bash' >> ~/.zshrc
source ~/.zshrc

asdf update
asdf plugin-add ruby
asdf plugin-add erlang
asdf plugin-add elixir
asdf plugin-add adr-tools
asdf plugin-add yq 
asdf plugin-add minikube 
asdf plugin-add helm 
asdf plugin-add kustomize 
asdf plugin-add kubectl 
asdf plugin-add maven 
asdf plugin-add java
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install
asdf current
