# Linux Destroy Script

## ⚠️ Disclaimer
**WARNING:** This script is extremely dangerous and can cause **irreversible damage** to your system. Running this script may:
- Lead to the **permanent loss of critical data**.
- **Damage or corrupt system files**, making your system unbootable.
- Cause **system instability** or **permanent failure**.
- In some cases, it may even result in **CPU damage**.

This script is intended **solely for educational** and **research purposes**. By proceeding, you acknowledge that you:
- Accept full responsibility for any damage caused by running this script.
- Understand the risks associated with running destructive commands.

**USE THIS SCRIPT AT YOUR OWN RISK.**

## 📌 Features

- **Permanently Destructive Commands:**
  - `rm -rf /` – Deletes all files on your system, leading to permanent data loss.
  - `echo 000 > /dev/sda` – Wipes the system disk.
  - `Destroy CPU MSR Registers` – Potentially causes **irreversible CPU damage** by corrupting model-specific registers.

- **Temporary Disruption Commands:**
  - **Fork bomb** – Saturates system resources, making the machine unresponsive.
  - **`tail /dev/zero`** – Continually writes zeroes to the output, leading to CPU overload.
  - **Clearing critical system files** – Makes the system unstable by clearing memory files.

## 🚀 Usage

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/cylin577/linux-destroy.git
cd linux-destroy
```

### 2️⃣ Make the Script Executable
```bash
chmod +x linux_destroy.sh
```

### 3️⃣ Run the Script
```bash
./linux_destroy.sh
```

## 🛡️ Warnings
- **Do not run this script on any system you wish to keep.**
- Ensure that you **fully understand the consequences** before executing any of the options.
- **Running this script will likely result in the complete failure of your system.**

## 📜 License
This script is provided **as-is** for educational purposes. The author assumes no responsibility for any misuse or consequences resulting from the execution of this script.

---
❌ **DO NOT RUN THIS ON ANY SYSTEM YOU WANT TO KEEP!** ❌