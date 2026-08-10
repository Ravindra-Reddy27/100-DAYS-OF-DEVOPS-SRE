## Ansible Roles Install:

Installing of ansible roles means download the ansible roles from the ansible galaxy to control node so it can be reused in playbooks.
> Ansible Galaxy is a repository that hosts public and private Ansible roles and collections shared by the community and organizations.

1.Install a role:
```bash
ansible-galaxy role install <ROLE_NAME>
```

2. Verify the installed roles:

```bash
ansible-galaxy role list
```

3 Exectuing the installed ansible role:
* create an play-book for the role :
```bash
---
- hosts: all
  become: yes
  roles:
    - <NAME_OF_ROLE>
```
* Executing:
```bash
ansible-playbook -i inventory.ini play-book.yml
```


## Ansible Roles Import:

 Importing an Ansible role means registering a GitHub-hosted role with Ansible Galaxy so it becomes available for others to install.

 > Create an account in Ansible Galaxy, if you don't have one.

1. Make sure your role is structured correctly. The basic structure should look like this:

```
my_role/
├── defaults/
│   └── main.yml
├── files/
├── handlers/
│   └── main.yml
├── meta/
│   └── main.yml
├── tasks/
│   └── main.yml
├── templates/
├── tests/
│   ├── inventory
│   └── test.yml
└── vars/
    └── main.yml
```

2. Make sure ansible-galaxy CLI exists

```
ansible-galaxy --version
```

3. Push Your Role to GitHub

```
cd <role-name>
git init
git remote add origin <https://github.com/your_github_username/my_role.git>
git add .
git commit -m "Initial commit"
git push -u origin main
```

4. Import the Role to Ansible Galaxy

```
ansible-galaxy role import <your_github_username> <role-name>
```

> If error ariase, add the token 

```
ansible-galaxy role import --token <YOUR_API_TOKEN> <github_username> <role_name>
```

> Check out token at ansible galaxy --> Collection --> API token


