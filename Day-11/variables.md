## Variables:

Variables in Ansible are named values used to store data that can be reused throughout playbooks, roles, and templates. They make playbooks dynamic and reusable.

* It makes automation flexiable, reusable and easier to maintain.
* Instead of hardcoding the values in playbooks and roles, use  variables.

Eg:

Hardcoding:

```
---
- hosts: all
  become: true

  tasks:
    - name: Package installation
      apt:
        name: nginx
        state: present
```

Using Variables:

```
---
- hosts: all
  become: true

  vars:
    package_name: nginx

  tasks:
    - name: Package installation
      apt:
        name: "{{ package_name }}"
        state: present
```

> Here, {{ package_name }} is a Jinja2 expression. During execution, Ansible replaces it with the value of the package_name variable.


* You can define the same variable in multiple locations. If a variable is defined more than once, Ansible chooses the value based on variable precedence, where higher-precedence variables override lower-precedence ones. 

For more details, see: [Variable Precedence](https://docs.ansible.com/projects/ansible/latest/playbook_guide/playbooks_variables.html)