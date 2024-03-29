name="xivlauncher-cn-bin"
pkgname="xivlauncher-cn"
gives="xivlauncher-cn"
arch=('amd64')
pkgver="1.0.7.1"
pkgrel="1"
repology=("project: ${gives}")
maintainer="Chuan <chuan@ubuntu.org.cn>"
homepage='https://github.com/ottercorp/XIVLauncher.Core'
url="https://github.com/ottercorp/XIVLauncher.Core/releases/download/${pkgver}/XIVLauncher.Core.tar.gz"
makedepends=( )
depends=("aria2" "libsdl2-2.0-0" "libsecret-1-0" "desktop-file-utils" "libjxr0" "xdg-utils")
pkgdesc="Custom Launcher for Final Fantasy XIV Online CN for Ubuntu/Debian"
hash="6360c63233a4eec08d0f7fa99aaaef57458eaa8099d121c5e4e93c25af50b8a0"

package() {
    cd ..
    sudo mkdir -p "${pkgdir}/opt/${gives}"
    sudo mkdir -p "${pkgdir}/usr/share/applications"
    sudo mkdir -p "${pkgdir}/usr/share/pixmaps"
    sudo rm XIVLauncher.Core.tar.gz
    sudo wget "https://raw.githubusercontent.com/ottercorp/XIVLauncher.Core/main/misc/linux_distrib/512.png" -O xivlauncher.png 
    sudo wget -q "https://github.com/qy117121/xivlauncher-cn/raw/main/XIVLauncher.desktop"
    sudo mv "XIVLauncher.desktop" "${pkgdir}/usr/share/applications/XIVLauncher.desktop"
    sudo cp "xivlauncher.png" "${pkgdir}/usr/share/pixmaps"
    sudo cp -R * "${pkgdir}/opt/${gives}"

}

post_install() {
  sudo ln -sf "/opt/xivlauncher-cn/XIVLauncher.Core" "/usr/bin/xivlauncher-cn"
}

