# Startup

This defines a base configuration. By using Ansible, the configuration is declarative, meaning that items will be installed or changed as necessary to make a system match the configuration, and that the process itself is idempotent.

To use it, install ansible and run:

```sh
ansible-galaxy install -r requirements.yaml
```

Note that if installing macos playbooks, you will likely have to install [homebrew](https://brew.sh/)

And then run playbooks via:

```sh
ansible-playbook -i inventory.ini --ask-become <playbook>.yaml
```
