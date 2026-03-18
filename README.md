# Scripts Repository

A collection of useful Bash scripts for Linux system administration, package management, file backup, and system monitoring.

## Overview

This repository contains a set of well-documented Bash scripts designed to automate common Linux system administration tasks. Each script is self-contained and includes helpful comments and usage instructions.

## Scripts Included

### 1. file_backup_and_rotation_script.sh
**Description:** Automatically backs up your data and manages backup retention using rotation.

**Features:**
- Creates compressed ZIP backups with timestamp
- Automatic rotation keeping the 5 most recent backups
- Removes older backups automatically

**Usage:**
```bash
./file_backup_and_rotation_script.sh <source_path> <backup_destination_path>
```

**Example:**
```bash
./file_backup_and_rotation_script.sh /home/user/documents /home/user/backups
```

---

### 2. system_log.sh
**Description:** Displays comprehensive system information and resource usage metrics.

**Features:**
- Shows available RAM memory
- Displays available disk space
- Identifies the process consuming the most memory with details

**Usage:**
```bash
./system_log.sh
```

**Output Includes:**
- Available RAM (human-readable format)
- Available disk space
- Top memory-consuming process name, PID, and memory usage percentage

---

### 3. package_installer.sh
**Description:** Interactively installs and configures packages on your Linux system.

**Features:**
- Checks if a package is already installed
- Automatically updates the system before installation
- Installs the package and starts its service
- Enables the service for auto-startup

**Usage:**
```bash
./package_installer.sh
```

**Interactive Prompts:**
1. Enter the package name to install
2. Enter the service name to start

**Example:**
```
which package do you want to install : apache2
which service do you want to start : apache2
```

---

### 4. package_install_with_arguments.sh
**Description:** Installs packages with command-line arguments for automation.

**Usage:**
```bash
./package_install_with_arguments.sh <package_name> <service_name>
```

**Example:**
```bash
./package_install_with_arguments.sh apache2 apache2
```

---

### 5. package_remover.sh
**Description:** Safely removes packages from your Linux system.

**Features:**
- Removes unwanted packages
- Cleans up system resources

**Usage:**
```bash
./package_remover.sh
```

---

### 6. useradd_script.sh
**Description:** Automates the process of adding new users to the system.

**Features:**
- Creates new user accounts
- Simplifies user management tasks

**Usage:**
```bash
./useradd_script.sh
```

---

## Prerequisites

These scripts are designed for Debian/Ubuntu-based Linux systems. You will need:
- Bash shell
- `sudo` access for package management and system operations
- `zip` utility (for the backup script)
- Standard Linux utilities: `awk`, `sed`, `grep`, `ps`, `df`, `free`, etc.

## Installation

1. Clone the repository:
```bash
git clone https://github.com/Harsh7209/Scripts.git
cd Scripts
```

2. Make scripts executable:
```bash
chmod +x *.sh
```

3. Run any script with:
```bash
./script_name.sh
```

## Usage Tips

- **For System Administration:** Use `system_log.sh` to monitor your system health
- **For Data Protection:** Set up regular backups using `file_backup_and_rotation_script.sh`
- **For Package Management:** Use `package_installer.sh` for interactive installation or `package_install_with_arguments.sh` for automated installation
- **For Security:** Create user accounts with `useradd_script.sh`

## Important Notes

⚠️ **Warning:** Some scripts require `sudo` privileges to execute successfully (package installation, service management, user creation). Always review script contents before running with elevated privileges.

## Contributing

Feel free to fork this repository and submit pull requests with improvements, bug fixes, or new scripts!

## License

This repository is open source and available for public use.

## Author

Created by [Harsh7209](https://github.com/Harsh7209)

## Support

If you encounter any issues or have questions about these scripts, please open an issue in the repository.

---

**Last Updated:** 2026-03-18 18:51:35