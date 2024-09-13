.PHONY: all

all: install

install:
	ansible-playbook playbook.yml -v
