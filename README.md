# xivlauncher-cn makedeb 

## 安装 makedeb 

	bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
	
## 编译安装xivlauncher-cn

	cd /tmp
	git clone https://github.com/qy117121/xivlauncher-cn.git
	cd xivlauncher-cn
	makedeb -si
	
	
MPR [https://mpr.makedeb.org/pkgbase/xivlauncher-cn](https://mpr.makedeb.org/packages/xivlauncher-cn) 

# xivlauncher-cn pacstall

##  安装 pacstall

    sudo bash -c "$(curl -fsSL https://git.io/JsADh || wget -q https://git.io/JsADh -O -)"

## pacstall 安装xivlauncher-cn

	cd /tmp
	wget -q https://github.com/qy117121/xivlauncher-cn/raw/main/xivlauncher-cn-bin.pacscript
	pacstall -I ./xivlauncher-cn-bin.pacscript


XIVLauncher Core 具有适用于各种 Linux 发行版的社区包。 请注意，**只有 Flathub 版本是官方版本**，但其他版本是由社区成员**打包**。 社区包可能并不总是最新的，或者可能有损坏的版本或包含正在测试的功能（特别是如果标记为不稳定或 git）。 我们对其安全性或可靠性不承担任何责任。

| 仓库        | 状态      |
| ----------- | ----------- |
| [**Flathub (official)**](https://flathub.org/apps/details/cn.ottercorp.xivlaunchercn) | ![Flathub](https://img.shields.io/flathub/v/cn.ottercorp.xivlaunchercn) |
| [AUR](https://aur.archlinux.org/packages/xivlauncher-cn-git) | ![AUR version](https://img.shields.io/aur/version/xivlauncher-cn-git) |
| [MPR (Debian+Ubuntu)](https://mpr.makedeb.org/packages/xivlauncher-cn)  | ![MPR package](https://repology.org/badge/version-for-repo/mpr/xivlauncher-cn.svg?header=MPR) |
| [PRM (Fedora+Opensuse)](https://github.com/bamdragonfly/lure-repo)  | ![RPM package](https://img.shields.io/badge/RPM-1.0.2.2-pink) |
| [Chiyuki-Overlay (Gentoo)](https://github.com/IllyaTheHath/gentoo-overlay)  | ![Ebuild package](https://img.shields.io/badge/Ebuild-1.0.3.1-6E56AF) |
