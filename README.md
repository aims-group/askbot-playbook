This repository contains Ansible playbooks deploying Askbot.  

 1. Edit ```hosts``` to set the database password
 2. Get a clean CentOS or RHEL VM where you can ssh in as root using ssh keys
 3. Run ```ansible-playbook -i hosts askbot.yml```

