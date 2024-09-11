.PHONY: all

all: install

install:
	ansible-playbook -i inventory.yml playbook.yml --skip-tags "uninstall" --vault-password-file vault_pass.txt

uninstall:
	ansible-playbook -i inventory.yml playbook.yml --skip-tags "install" --vault-password-file vault_pass.txt