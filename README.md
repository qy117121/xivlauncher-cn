# xivlauncher-cn

##安装 makedeb 

	bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
	
##编译安装xivlauncher-cn

	cd /tmp
	git clone https://github.com/qy117121/xivlauncher-cn.git
	cd xivlauncher-cn
	makedeb -si
	
	

