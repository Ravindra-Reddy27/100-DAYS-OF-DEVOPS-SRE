## Ansible Collection:

An Ansible Collection is a package that bundles related modules, roles, plugins, playbooks and documentation into a single versioned unit.

Eg: AWS Collection, Cisco Collection

Check out more examples: [Collection Examples](https://docs.ansible.com/projects/ansible/latest/collections_guide/index.html)

* Collection are mostly used to communicate with 3rd party tools.(AWS,Cisco,Azure)

* Collection are installed in the control node and execute in the control node only, because the control node talk to 3rd party tools through APIs


### Practical Example:

**Create an EC2 instance in AWS**


1. Add your AWS secret key and valule to Ansible Valut:

-  Create a password for vault:

```
openssl rand -base64 2048 > vault.pass
```
> It generates a random Base64 string and stores it in the vault.pass file. This file is used as the password for encrypting and decrypting Ansible Vault files.

- Add your AWS credentials using the below vault command:

```
ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass
```

> It creates an encrypted YAML file for storing sensitive variables, using the password stored in vault.pass

eg:
```
aws_access_key: <value>
aws_secret_key: <value>
```
2. Install the AWS collection:
```
ansible-galaxy collection install amazon.aws
```

3. Create a Playbook and update it with the [main.yml](main.yml).

4. Create an inventory.ini update with it:
```
localhost ansible_connection=local
```

5. Execute the Playbook:

```
ansible-playbook -i inventory.ini <playbook_name>.yml --vault-password-file vault.pass
```

**NOTE:** Boto3 should be installed in the system, other wise you will get the error.


