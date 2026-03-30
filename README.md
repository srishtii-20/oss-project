Open Source Audit Project

Student Name: Srishti Manav
Registration Number: 24BAI10314
Chosen Software: Python

Project Description
This project is an audit of the open-source software Python. It covers the origin, philosophy, licensing, Linux usage, ecosystem, and comparison with proprietary software. The project also includes five shell scripts that demonstrate practical knowledge of Linux commands and automation.

Shell Scripts Description

Script 1 – System Identity Report
This script displays basic system information such as Linux distribution, kernel version, current user, home directory, system uptime, and current date and time. It uses variables, command substitution, and formatted output.

Script 2 – FOSS Package Inspector
This script checks whether a given package is installed on the system. It displays package details if installed and shows a short description using a case statement. It uses if-else conditions, case statements, and grep.

Script 3 – Disk and Permission Auditor
This script checks important system directories and displays their size, permissions, owner, and group. It uses loops, conditionals, and commands like ls, du, and awk.

Script 4 – Log File Analyzer
This script reads a log file and counts how many times a keyword appears. It also displays the last matching lines. It uses while loops, counters, file handling, and grep.

Script 5 – Open Source Manifesto Generator
This script generates a personalized manifesto based on user input and saves it to a text file. It uses variables, user input, file writing, and the date command.

Steps to Run the Scripts on Linux

Step 1: Open terminal and navigate to the project folder
cd folder_name

Step 2: Give execution permission to the script
chmod +x script_name.sh

Step 3: Run the script
./script_name.sh

Example
./system_identity.sh

For Script 4
./log_analyzer.sh test.log

Dependencies

Linux environment (Ubuntu, WSL, Virtual Machine, or Google Colab)
Bash shell
Basic Linux commands such as grep, awk, du, ls

Notes

Google Colab (Linux-based environment) was used due to system limitations. All scripts follow standard Linux commands and work similarly on a real Linux system.

Conclusion

This project helped in understanding open-source software and Linux systems. It improved practical skills in shell scripting and demonstrated how Python works within a Linux environment.
