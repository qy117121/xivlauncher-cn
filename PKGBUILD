# Maintainer: chuan <chuan@ubuntu.org.cn>
pkgname=xivlauncher-cn
pkgver=1.0.3.0
pkgrel=1
pkgdesc="Custom Launcher for Final Fantasy XIV Online CN"
arch=('amd64')
url='https://github.com/ottercorp/XIVLauncher.Core'
license=('GPL')
depends=(
    'build-essential'
    'aria2'
    'libsdl2-2.0-0'
    'libsecret-1-0'
    'attr'
    'fontconfig'
    'liblcms2-2'
    'libxml2'
    'libxcursor1'
    'libxrandr2'
    'libxdamage1'
    'libxio0'
    'gettext'
    'libfreetype6'
    'libglu1-mesa'
    'libsm6'
    'libpcap0.8'
    'libfaudio0'
    'desktop-file-utils'
    'libjxr0'
    'xdg-utils'
)
makedepends_x86_64=('dotnet-sdk-6.0')
optdepends=()
options=('!strip')
extensions=()
provides=("xivlauncher=${pkgver}")
conflicts=("xivlauncher-git")
source=(
    "XIVLauncher.Core::git+https://github.com/ottercorp/XIVLauncher.Core.git"
    "XIVLauncher.desktop"
)
sha512sums=(
    'SKIP'
    '637150af398fce40905c301f2c5953897769043cc1e5a52e7af8c6c83e13f50e48e707dd3b8b8dc554154fc825f3d0985716289c0a974059adaa3cabe7fe46a2'
)

build() {
    mkdir -p "${srcdir}/build"
    cd "${srcdir}/XIVLauncher.Core"
    git submodule update --init --recursive
    cd "${srcdir}/XIVLauncher.Core/src/XIVLauncher.Core/"
    dotnet publish -r linux-x64 --sc -o "${srcdir}/build" --configuration Release
}

package() {
    install -d "${pkgdir}/usr/bin/"
    install -d "${pkgdir}/opt/XIVLauncher/"
    install -D -m644 "${srcdir}/XIVLauncher.desktop" "${pkgdir}/usr/share/applications/XIVLauncher.desktop"
    install -D -m644 "${srcdir}/XIVLauncher.Core/misc/linux_distrib/512.png" "${pkgdir}/usr/share/pixmaps/xivlauncher.png"
    cp -r "${srcdir}/build/." "${pkgdir}/opt/XIVLauncher/"
    ln -s ../../opt/XIVLauncher/XIVLauncher.Core "${pkgdir}/usr/bin/xivlauncher-cn"
}

