.DEFAULT_GOAL := daemon

DIR := $(shell pwd)
# Install configs 

# WARNING: THIS WILL MOVE YOUR CURRENT CONFIG TO USERconfig_backup inside ~/.config 
install:
	mkdir /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.config/nvim /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.config/ranger /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.config/i3 /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.config/polybar /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.zshrc /home/${USER}/.config/${USER}config_backup
	mv  /home/${USER}/.tmux* /home/${USER}/.config/${USER}config_backup
	ln -s $(DIR)/nvim /home/${USER}/.config/
	ln -s $(DIR)/i3 /home/${USER}/.config/
	ln -s $(DIR)/polybar /home/${USER}/.config/
	ln -s $(DIR)/ranger /home/${USER}/.config/
	ln -s $(DIR)/.tmux.conf /home/${USER}/
	ln -s $(DIR)/.tmux-themepack /home/${USER}/
	ln -s $(DIR)/.tmux /home/${USER}/
	ln -s $(DIR)/.zshrc /home/${USER}/
	pip2 install -r requirements-2.txt
	pip3 install -r requirements-3.txt

# Update repo and reinstall
update:
	git fetch	
	make.install

# Show version
version:
	@echo "1.0"
