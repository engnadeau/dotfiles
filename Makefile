
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
	@for playbook in ansible/setup_*.yml; do \
		ansible-playbook -i ansible/hosts.ini $$playbook --ask-become-pass; \
	done
