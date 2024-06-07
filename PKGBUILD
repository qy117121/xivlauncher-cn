# Maintainer: chuan <chuan@ubuntu.org.cn>
pkgname=xivlauncher-cn
pkgver=1.0.7.2
pkgrel=1
pkgdesc="Custom Launcher for Final Fantasy XIV Online CN for Ubuntu/Debian"
arch=('amd64')
url='https://github.com/ottercorp/XIVLauncher.Core'
license=('GPL')
depends=(
    'aria2'
    'libsdl2-2.0-0'
    'libsecret-1-0'
    'desktop-file-utils'
    'libjxr0'
    'xdg-utils'
)
makedepends_x86_64=()
optdepends=()
options=('!strip')
extensions=()
provides=("xivlauncher=${pkgver}")
conflicts=("xivlauncher-git")
source=(
    "https://github.com/ottercorp/XIVLauncher.Core/releases/download/$pkgver/XIVLauncher.Core.tar.gz"
    "XIVLauncher.desktop"
)
sha512sums=(
    '887270b58c3e8453e0384e11952838d86b9ca6ba259f497e9a8a02a8f6717b028dad5ae2520ecac9fe8dd05b6294947e488ddf76c6e365dcdefb23533783f18b'
    '637150af398fce40905c301f2c5953897769043cc1e5a52e7af8c6c83e13f50e48e707dd3b8b8dc554154fc825f3d0985716289c0a974059adaa3cabe7fe46a2'
)

build() {
    cd "${srcdir}"
    wget "https://raw.githubusercontent.com/ottercorp/XIVLauncher.Core/cn/misc/linux_distrib/512.png" -O "${srcdir}/xivlauncher.png"
}

package() {
    install -d "${pkgdir}/usr/bin/"
    install -d "${pkgdir}/opt/XIVLauncher/"
    install -D -m644 "${srcdir}/XIVLauncher.desktop" "${pkgdir}/usr/share/applications/XIVLauncher.desktop"
    install -D -m644 "${srcdir}/xivlauncher.png" "${pkgdir}/usr/share/pixmaps/xivlauncher.png"
    cp -r "${srcdir}/." "${pkgdir}/opt/XIVLauncher/"
    rm "${pkgdir}/opt/XIVLauncher/XIVLauncher.Core.tar.gz"
    rm "${pkgdir}/opt/XIVLauncher/XIVLauncher.desktop"
    ln -s ../../opt/XIVLauncher/XIVLauncher.Core "${pkgdir}/usr/bin/xivlauncher-cn"
}

