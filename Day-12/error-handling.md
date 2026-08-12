## Error Handling in Ansible

Error handling in Ansible is the mechanism that allows you to detect, manage, and recover from failures during playbook execution instead of stopping the entire automation.

Default nature of ansible:

* If the task fails in a host, it Stops executing the remaining tasks in a host.

To overcome this:

### Common Error Handling Methods

**1. `ignore_errors`**

Continues executing the next tasks even if the current task fails

Eg:

```
- name: Install package
  apt:
    name: invalid-package
    state: present
  ignore_errors: yes

- name: This task still runs
  debug:
    msg: "Previous task failed, but playbook continued."

```

**2. `failed_when`**

`failed_when` is an Ansible keyword that lets you define your own condition for when a task should be considered failed.

* It is mainly used when result code (rc) is 0, but error is there.

Eg:

```
- name: Run application
  command: ./app
  register: result
  failed_when: "'ERROR' in result.stdout"
```
Here, ERROR word present result.stdout, Ansible treats this task as failed even though rc = 0.


For Real Example, Check out: [error-handling.yml](error-handling.yml) file.

---


## Registers in ansible:

Register in ansible is used to store the output of a task in a variable so that you can used it later in the playbook.

Eg:

```
- name: Docker version check
  command: docker --version
  register: ouput

- name: Debug the docker --version
  debug:
    var: ouput.stdout
```

Here, output is the variablel that stores the output of the command docker --version