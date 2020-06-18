.DEFAULT_GOAL := daemon

DIR := $(shell pwd)
# Install configs 

# WARNING: THIS WILL MOVE YOUR CURRENT CONFIG TO USERconfig_backup inside ~/.config 
install:
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
