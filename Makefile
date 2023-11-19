
.DEFAULT_GOAL := all

.PHONY: all
all: update sync setup

.PHONY: sync
sync:
	@echo "Syncing dotfiles..."
	ansible-playbook -i ansible/hosts.ini ansible/sync_dotfiles.yml

.PHONY: update
update:
	@echo "Updating system..."
	ansible-playbook -i ansible/hosts.ini ansible/update_system.yml --ask-become-pass

.PHONY: setup
setup:
	@echo "Setting up workstation..."
	ansible-playbook -i ansible/hosts.ini ansible/install_basic_packages.yml --ask-become-pass
	ansible-playbook -i ansible/hosts.ini ansible/install_go_and_hugo.yml --ask-become-pass
	ansible-playbook -i ansible/hosts.ini ansible/install_wsl_utilities.yml --ask-become-pass
	ansible-playbook -i ansible/hosts.ini ansible/setup_commitizen_cli.yml --ask-become-pass
	ansible-playbook -i ansible/hosts.ini ansible/setup_github_cli.yml --ask-become-pass
	ansible-playbook -i ansible/hosts.ini ansible/setup_zsh_and_ohmyzsh.yml --ask-become-pass
