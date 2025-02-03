# 🛑 Linux Destroy Script  

## ⚠️ Disclaimer  
**WARNING:** This script is extremely dangerous and can cause **irreversible damage** to your system, including permanent data loss and system failure. **Use at your own risk.** The author is not responsible for any consequences resulting from running this script.  

## 📌 Overview  
The **Linux Destroy Script** provides several destructive options to either **permanently** or **temporarily** damage a Linux system. This script is intended for **educational** and **research** purposes only.  

## ❗ Features  
- **Permanent Destruction**  
  - `rm -rf /` – Deletes all system files irreversibly.  
  - `echo 000 > /dev/sda` – Wipes the system disk.  
- **Temporary Disruption**  
  - **Fork bomb** – Consumes all system resources, freezing the machine.  
  - **`tail /dev/zero`** – Overloads the CPU.  
  - **Clearing critical memory files** – Can make the system unstable.  

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

## 🛡️ Warning  
- **Do not run this script on a production system.**  
- **Ensure you fully understand the consequences before executing any option.**  
- **Running this script will likely result in total system failure.**  

## 📜 License  
This script is provided **as-is** for educational purposes. The author assumes no responsibility for any misuse.  

---
❌ **DO NOT RUN THIS ON ANY SYSTEM YOU WANT TO KEEP!** ❌