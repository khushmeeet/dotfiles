# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh plugins installation
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/auto-notify

ln -sv /Users/khushmeeet/dev/dotfiles/zsh/.zshrc ~/.zshrc

# Install nv
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Homebrew packages
brew install bat
brew install aom
brew install gnutls
brew install libsodium
brew install nettle
brew install sqlite
brew install bat
brew install go
brew install libsoxr
brew install nghttp2
brew install srt
brew install bdw-gc
brew install gobject-introspection
brew install libssh2
brew install opencore-amr
brew install starship
brew install bottom
brew install graphite2
brew install libtasn1
brew install openjdk
brew install tcl-tk
brew install c-ares
brew install grex
brew install libtiff
brew install openjpeg
brew install esseract
brew install cairo
brew install guile
brew install libtool
brew install openssl@1.1
brew install theora
brew install cmake
brew install harfbuzz
brew install libunistring
brew install opus
brew install tldr
brew install dav1d
brew install hugo
brew install libvidstab
brew install p11-kit
brew install tmux
brew install dust
brew install icu4c
brew install libvorbis
brew install pcre
brew install tokei
brew install exa
brew install jemalloc
brew install libvpx
brew install pcre2
brew install tree
brew install fd
brew install jenv
brew install libx11
brew install pipenv
brew install unbound
brew install ffmpeg
brew install jpeg
brew install libxau
brew install pixman
brew install utf8proc
brew install flac
brew install lame
brew install libxcb
brew install pkg-config
brew install webp
brew install fontconfig
brew install leptonica
brew install libxdmcp
brew install procs
brew install x264
brew install freetype
brew install libass
brew install libxext
brew install protobuf
brew install x265
brew install frei0r
brew install libbluray
brew install libxrender
brew install python@3.9
brew install xorgproto
brew install fribidi
brew install libev
brew install libyaml
brew install rav1e
brew install xvid
brew install fzf
brew install libevent
brew install libzip
brew install readline
brew install xz
brew install gdbm
brew install libffi
brew install little-cms2
brew install ripgrep
brew install youtube-dl
brew install gettext
brew install libidn2
brew install llvm
brew install rubberband
brew install zeromq
brew install gh
brew install libogg
brew install lzo
brew install ruby
brew install zimg
brew install giflib
brew install libpng
brew install m4
brew install sd
brew install git
brew install libpthread-stubs
brew install mpdecimal
brew install sdl2
brew install glib
brew install libsamplerate
brew install mysql
brew install snappy
brew install gmp
brew install libsndfile
brew install ncurses
brew install speex
