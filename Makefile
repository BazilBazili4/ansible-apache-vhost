deploy:
	ansible-playbook -K install.yml -i inventory/localhost.ini
test:
	ansible-playbook -CK install.yml -i inventory/localhost.ini