## Ansible Vault:

Ansible Vault is feature used to encrypt sensitive data such as password,API keys, SSH Credentials inside an ansible file.

**Create a new encrypted file:**
``` 
ansible-vault create file_name.yml
```
This opens an editor after prompting for a vault password. 

**Encrypt an existing file:**

```
ansible-vault encrypt file_name.yml
```
It asks to create a vault password.

**View content an encrypted file:**

```
ansible-valut view file_name.yml
```
Don't use `cat` command to view the contents of the file, because it gives AES-256 encrypted content.

**Edit an encrypted file:**
```
ansible-valut edit file_name.yml
```
The file is decrypted temporarily while editing and re-encrypted automatically when you save.

**Decrypt a file permanently:**
```
ansible-vault decrypt secrets.yml
```



Eg:

Suppose `secret.yml` is vault file:

```
aws_access_key: Rdilsyeohooiheossoe
aws_secret_key: oiru8ffisdfdsraiooere8
```

Your playbook:

```
- hosts: localhost
  vars_files:
    - secrets.yml

  tasks:
    - name: List of S3 Buckets
      amazon.aws.s3_bucket_info:
        aws_access_key: "{{ aws_access_key }}" # Here the value refer to vault file aws_access_key variable.
        aws_secret_key: "{{ aws_secret_key }}" # 
      register: result
```

Run the playbook:

```
ansible-playbook playbook_name.yml --ask-vault-pass
```
> --ask-vault-pass = Ansible will ask you to enter the password that was used to encrypt the Vault file.

As a password you can set `text-password` or `password-file`
