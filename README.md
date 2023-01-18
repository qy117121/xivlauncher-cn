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
	wget -q https://github.com/qy117121/xivlauncher-cn/raw/main/xivlauncher-cn-git.pacscript
	pacstall -I ./xivlauncher-cn-git.pacscript
