
# archinstall
sudo pacman -S niri waybar fuzzel mako xdg-desktop-portal-gnome alacritty nautilus --noconfirm --needed
# intel graphics from archinstall I think
sudo pacman -S mesa vulkan-intel intel-media-driver  --noconfirm --needed


sudo pacman -S wl-clipboard  --noconfirm --needed

sudo pacman -S keyd --noconfirm --needed
sudo pacman -S yt-dlp --nOconfirm --needed
sudo pacman -S qutebrowser --noconfirm --needed
sudo pacman -S cargo --noconfirm --needed
sudo pacman -S snapshot --noconfirm --needed
sudo pacman -S imv --noconfirm --needed

sudo pacman -S d2 --noconfirm --needed

# drawing and image editing
sudo pacman -S gimp --noconfirm --needed
sudo pacman -S pinta --noconfirm --needed
sudo pacman -S xclip --noconfirm --needed


# for waybar
sudo pacman -S otf-font-awesome ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd waybar --noconfirm --needed

# best terminal file manager and dependencies
sudo pacman -S yazi  7zip  poppler fd ripgrep  zoxide resvg imagemagick   --noconfirm --needed

# for reading pdf
sudo pacman -S okular libreoffice zathura zathura-pdf-mupdf --noconfirm --needed 



# for c++ and godot
sudo pacman -S clang scons python3 --noconfirm --needed

# apps for that I use daily
sudo pacman -S curl unzip go helix  npm nodejs python-pip python-pipx python flatpak fzf arch-wiki-docs jre-openjdk mpv pavucontrol man-db man-pages less tmux --noconfirm --needed


# dependencies for raylib and raylib
sudo pacman -S alsa-lib  libx11 libxrandr libxi libxcursor libxinerama libxkbcommon lib32-wayland lib32-libxkbcommon raylib --noconfirm --needed

# dependencies for phonemizer
sudo pacman -S festival festival-english espeak-ng --noconfirm --needed
pipx install phonemizer

# fcitx5 for ipa and chinese
sudo pacman -S fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-table-other fcitx5-chinese-addons fcitx5-rime fcitx5-pinyin-zhwiki --noconfirm --needed

# fuse2 for appimages
sudo pacman -S fuse2 --noconfirm --needed



sudo systemctl enable keyd --now
sudo systemctl start keyd

npm-install-if-needed() {
    if ! npm list -g "$1" --depth=0 | grep -q "$1"; then
        sudo npm install -g "$1" --no-fund --no-audit
    else
        sudo npm update -g "$1" --no-fund --no-audit
    fi
}


flatpak-install-if-needed() {
    if ! flatpak list --app | grep -q "$1"; then
        flatpak install --noninteractive flathub "$1"
    else
        flatpak update --noninteractive "$1"
    fi
}

flatpak-install-if-needed com.orama_interactive.Pixelorama
flatpak-install-if-needed org.localsend.localsend_app
flatpak-install-if-needed com.github.IsmaelMartinez.teams_for_linux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


 # install language servers for helix
npm-install-if-needed vscode-langservers-extracted
npm-install-if-needed @olrtg/emmet-language-server
npm-install-if-needed typescript
npm-install-if-needed typescript-language-server


sudo pacman -S python-lsp-server --noconfirm --needed
sudo pacman -S lua-language-server --noconfirm --needed

# for godot language server
sudo pacman -S nmap --needed --noconfirm
pipx install "gdtoolkit==4.*"
pipx upgrade "gdtoolkit==4.*"


git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global core.editor "helix"

cargo install kd-rust
cargo install ripdrag
kd --update-dict


# sets fish
sudo pacman -S fish pkgfile ttf-dejavu powerline-fonts  inetutils --noconfirm --needed 

# font used
sudo pacman -S ttf-jetbrains-mono-nerd --noconfirm --needed 
chsh -s /usr/bin/fish
echo "exec fish" >> ~/.bashrc
source ~/.bashrc


# remove 'bloat'
sudo pacman -Rns swaybg swayidle swaylock
