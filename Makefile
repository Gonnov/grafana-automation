.PHONY: all

all: install

install:
	ansible-playbook -i inventory.yml playbook.yml --skip-tags "uninstall"

uninstall:
	ansible-playbook -i inventory.yml playbook.yml --skip-tags "install"