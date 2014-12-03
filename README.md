This repository contains Ansible playbooks deploying Askbot.  

 1. Get a clean CentOS or RHEL VM where you can ssh in as root using ssh keys.
 2. Install Ansible (www.ansible.com) (http://docs.ansible.com/intro_installation.html)
 3. Edit ```hosts.devel``` to set which hostname you are deploying onto.
 4. Edit ```askbot_complete.yml``` to set the hostname of your site and other application options.
 5. Run ```ansible-playbook -i hosts.devel askbot_complete.yml```

This should do the following:

 1. Install Postgres, apache and memcached
 2. Create a Python virtualenv at /var/www/askbot for all Askbot instances
 3. Download and install Askbot and it's Python dependencies
 4. Configure Postgres for Askbot
 5. Configure Apache to run askbot within the mod_wsgi container

