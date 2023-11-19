# Workstation Management and Dotfiles Repository

![Cover image](cover.jpg)

This repository serves as a central hub for managing my workstation setup and personal dotfiles.
It includes an extensive Ansible playbook for streamlined setup and maintenance across various environments, ensuring a consistent and efficient developer experience.

## Key Features

- **Comprehensive Workstation Setup**: Automated setup of a development environment, including installation of essential tools and configurations.
- **Dotfile Synchronization**: Keeps essential dotfiles like `.profile` and `.zshrc` synchronized across different machines.
- **Extensible Ansible Playbook**: Tailored for easy maintenance and extension, covering software installations, environment configurations, and more.
- **Personalized Environment Setup**: Customized to fit personal preferences and productivity workflows.

## Installation

1. **Install Ansible**: Follow the [official Ansible installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

   ```bash
   sudo apt install ansible
   ```

2. **Clone the Repository**:

   ```bash
   git clone [repository-url]
   ```

## Usage

- **Basic Synchronization**: Run the following command to synchronize dotfiles:

  ```bash
  make sync
  ```

- **Full Workstation Setup**: Execute the Ansible playbook to set up and configure the entire workstation. This includes software installations and environment setups:

  ```bash
  make setup
  ```

---

*Photo by [Med Badr Chemmaoui](https://unsplash.com/@medbadrc?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash) on [Unsplash](https://unsplash.com/photos/blue-ballpoint-pen-on-white-notebook-ZSPBhokqDMc?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash)*
