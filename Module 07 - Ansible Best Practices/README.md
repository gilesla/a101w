# Module 07 - Ansible Best Practices

# Module Overview

There are many best practices for working with Ansible in the real world. Here are three of them.

## Best Practice #1: Keep your secrets with `ansible-vault`

Encrypting version-controlled passwords is important.

BTW, you should know that increasing verbosity (e.g., `-vvvv`) risks your secrets leaking into log files, etc.

While most use cases involve targeting remote hosts, we also want to show an example of running an Ansible playbook against the localhost. 

1. $ `cd ~`

1. $ `vim creds.yml`

1. $ `echo Password1 > ~/.vpass.txt`

1. $ `ansible-vault encrypt creds.yml`

1. $ `cat creds.yml`

1. $ `vim encryptiondemo.yml`

1. $ `ansible-playbook -v -i localhost -c local encryptiondemo.yml --vault-password-file ~/.vpass.txt`

1. $ `su <USERNAME>`

1. $ `whoami`

1. $ `exit`

A related demo video: https://levelupla.io/video-integrate-ansible-and-jira/

## Best Practice #2: Look before you leap with `--check` and `--diff`

Check Mode (aka “Dry Run”)

1. $ `cd ~`

1. $ `ansible-playbook -i inventory apache_basic/02-remove-apache.yml --check --diff --limit host1`

Ansible docs: https://docs.ansible.com/ansible/latest/user_guide/playbooks_checkmode.html

## Best Practice #3: Live up to your team's code standards using customized `ansible-lint` rules

1. $ `cd ~`

1. $ `vim iteratordemo.yml`

1. $ `ansible-lint iteratordemo.yml`

1. $ `vim GatherFactsRule.py`

1. $ `ansible-lint -r . iteratordemo.yml`

A related demo video: https://levelupla.io/video-iac-standards-w-ansible-lint-becoming-cloud-native-automation/

## Also worth mentioning:

* Rolling Updates: for those who want to go fast without breaking everything at the same time
* `ansible-pull`: for those who want to invert Ansible's push-based design
* Test Kitchen for Ansible: for those who want to be test-driven


# Additional resources:

https://docs.ansible.com/ansible/latest/user_guide/playbooks_special_topics.html (Advanced Playbooks Features)

https://docs.ansible.com/ansible/latest/user_guide/playbooks_strategies.html

https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html

https://github.com/neillturner/kitchen-ansible