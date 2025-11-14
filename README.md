# AutoSleep Script

A simple Bash script for Linux Mint (and other Linux distros) that automatically suspends the system after a user-specified time. Useful for saving power when leaving your machine unattended.

---

## Features

-   Suspend (sleep) your system after a given number of minutes.
-   Visible countdown timer updated every second.
-   Cancel anytime with **Ctrl+C**.
-   Lightweight and runs in the background if needed.

---

## Installation

1. Clone or copy this repository to your system:
    ```bash
    git clone https://github.com/Robotron2/AutoSleep.git
    cd AutoSleep
    ```
2. Make it executable
    ```bash
    chmod +x autosleep.sh
    ```
3. (Optional) Add an alias to your ~/.bashrc for quick use
    ```bash
    echo 'alias autosleep="~/Documents/Scripts/AutoSleep/autosleep.sh"' >> ~/.bashrc
    source ~/.bashrc
    ```

## Usage

1. Run the script with the number of minutes before sleep:
    ```bash
    autosleep <minutes>
    ```

# Example

    autosleep 10 ➡ System will suspend after 10 minutes with a visible countdown.

# Notes

    1. Requires systemd (works with systemctl suspend).
    2. Cancel anytime using Ctrl+C.
