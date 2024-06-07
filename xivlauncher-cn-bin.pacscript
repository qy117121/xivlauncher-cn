name="xivlauncher-cn"
pkgname="xivlauncher-cn-bin"
gives="xivlauncher-cn"
arch=('amd64')
pkgver="1.0.7.2"
pkgrel="1"
repology=("project: ${gives}")
maintainer="Chuan <chuan@ubuntu.org.cn>"
url='https://github.com/ottercorp/XIVLauncher.Core'
source=(
  "https://github.com/ottercorp/XIVLauncher.Core/releases/download/${pkgver}/XIVLauncher.Core.tar.gz"
  "https://raw.githubusercontent.com/ottercorp/XIVLauncher.Core/main/misc/linux_distrib/512.png"
  "https://github.com/qy117121/xivlauncher-cn/raw/main/XIVLauncher.desktop"
)
makedepends=( )
depends=("aria2" "libsdl2-2.0-0" "libsecret-1-0" "desktop-file-utils" "libjxr0" "xdg-utils")
pkgdesc="Custom Launcher for Final Fantasy XIV Online CN for Ubuntu/Debian"
sha512sums="887270b58c3e8453e0384e11952838d86b9ca6ba259f497e9a8a02a8f6717b028dad5ae2520ecac9fe8dd05b6294947e488ddf76c6e365dcdefb23533783f18b"

package() {
    cd ..
    mkdir -p "${pkgdir}/opt/${gives}"
    mkdir -p "${pkgdir}/usr/share/applications"
    mkdir -p "${pkgdir}/usr/share/pixmaps"
    cp "xivlauncher-cn-bin~${pkgver}/XIVLauncher.desktop" "${pkgdir}/usr/share/applications/XIVLauncher.desktop"
    cp "xivlauncher-cn-bin~${pkgver}/512.png" "${pkgdir}/usr/share/pixmaps/xivlauncher.png"
    cp -R xivlauncher-cn-bin~${pkgver}/* "${pkgdir}/opt/${gives}"

}

post_install() {
  ln -sf "/opt/xivlauncher-cn/XIVLauncher.Core" "/usr/bin/xivlauncher-cn"
}

