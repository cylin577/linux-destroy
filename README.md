# linux-destroy

## Disclaimer

**WARNING**: This script is intended **solely for educational purposes** and should only be run with a full understanding of the potential consequences. 

Running this script can cause:

- Irreversible damage to your operating system.
- Loss of critical data.
- System instability or permanent failure.

By proceeding, you acknowledge that you:

- Accept full responsibility for any damage caused.
- Understand the risks of running destructive commands.

**USE THIS SCRIPT AT YOUR OWN RISK.**

## Description

This script provides several options for experimenting with destructive commands in Linux. It features two main categories:

- **Permanently Destroy**: Commands that can cause permanent damage to your system, such as deleting critical files and device configurations.
- **Temporary Destroy**: Commands that affect system resources temporarily, such as running a fork bomb or clearing memory files.

## Features

- **Permanently Destroy**:
  - `rm -rf /`: Deletes all files on the system.
  - `echo 000 > /dev/sda`: Writes zeros to the storage device.
  
- **Temporary Destroy**:
  - Fork bomb: Creates an infinite loop of processes.
  - `tail /dev/zero`: Spawns a continuous stream of zero bytes to overwhelm the system.
  - Clears `/proc/kcore`, `/dev/kmem`, and `/dev/mem` files, potentially affecting system memory.

## Usage

To use the script, simply run the script in a terminal:

```bash
./linux_destroy.sh
