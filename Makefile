.DEFAULT_GOAL := sync

.PHONY: sync
sync:
	@echo "Syncing dotfiles..."
	cd ansible && ansible-playbook -i hosts.ini manage_dotfiles.yml
