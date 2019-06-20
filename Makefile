deploy:
	ansible-playbook -K playbooks/install.yml -i inventory/localhost.ini
test:
	ansible-playbook -CK install.yml -i inventory/localhost.ini