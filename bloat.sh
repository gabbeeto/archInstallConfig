sudo sed -i '/^#\[multilib\]/,/^#Include/ s/^#//' /etc/pacman.conf
sudo pacman -Syu

sudo pacman -S krita firefox blender steam discord kdenlive xwayland-satellite prismlauncher --noconfirm --needed

flatpak-install-if-needed() {
    if ! flatpak list --app | grep -q "$1"; then
        flatpak install --noninteractive flathub "$1"
    else
        flatpak update --noninteractive "$1"
    fi
}

flatpak-install-if-needed org.vinegarhq.Sober
