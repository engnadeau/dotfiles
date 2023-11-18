# Dotfiles Repository

![Cover image](cover.jpg)

Central hub for my personal dotfiles with an Ansible playbook for streamlined setup across various environments.

## Key Features

- Automated synchronization of configurations using Ansible.
- The repository includes essential dotfiles like `.profile` and `.zshrc`.
- Ansible playbook configured for local environment setup.

## Installation

- Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) on your system.

    ```bash
    sudo apt install ansible
    ```

- Clone the repository.


## Usage

Run `sync` target in Makefile to initiate dotfile synchronization.

```bash
make sync
```

---

Photo by [Med Badr  Chemmaoui](https://unsplash.com/@medbadrc?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash) on [Unsplash](https://unsplash.com/photos/blue-ballpoint-pen-on-white-notebook-ZSPBhokqDMc?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash)
