# Linux Commands Cheatsheet

This cheatsheet provides a quick reference for commonly used Linux commands.

## File and Directory Operations

| Command | Usage | Description |
|---------|-------|-------------|
| `ls` | `ls [options] [directory]` | List directory contents |
| `cd` | `cd [directory]` | Change directory |
| `pwd` | `pwd` | Print working directory |
| `mkdir` | `mkdir [options] directory` | Create a new directory |
| `rm` | `rm [options] file` | Remove files or directories |
| `cp` | `cp [options] source destination` | Copy files or directories |
| `mv` | `mv [options] source destination` | Move or rename files or directories |
| `touch` | `touch [options] file` | Create an empty file or update file timestamps |

## File Viewing and Editing

| Command | Usage | Description |
|---------|-------|-------------|
| `cat` | `cat [options] file` | Concatenate and display file content |
| `less` | `less [options] file` | View file content one screen at a time |
| `head` | `head [options] file` | Display the beginning of a file |
| `tail` | `tail [options] file` | Display the end of a file |
| `nano` | `nano [options] [file]` | Simple text editor |
| `vim` | `vim [options] [file]` | Advanced text editor |

## System Information and Management

| Command | Usage | Description |
|---------|-------|-------------|
| `top` | `top` | Display and manage system processes |
| `ps` | `ps [options]` | Report process status |
| `kill` | `kill [options] pid` | Terminate processes |
| `df` | `df [options]` | Report file system disk space usage |
| `du` | `du [options] [file/directory]` | Estimate file and directory space usage |
| `free` | `free [options]` | Display amount of free and used memory |
| `uname` | `uname [options]` | Print system information |

## File Permissions and Ownership

| Command | Usage | Description |
|---------|-------|-------------|
| `chmod` | `chmod [options] mode file` | Change file permissions |
| `chown` | `chown [options] user:group file` | Change file owner and group |
| `sudo` | `sudo command` | Execute a command as another user (usually root) |

## Networking

| Command | Usage | Description |
|---------|-------|-------------|
| `ping` | `ping [options] host` | Send ICMP ECHO_REQUEST to network hosts |
| `ifconfig` | `ifconfig [interface]` | Configure network interface parameters |
| `netstat` | `netstat [options]` | Print network connections, routing tables, interface statistics, etc. |
| `ssh` | `ssh [options] user@host` | OpenSSH SSH client (remote login program) |
| `scp` | `scp [options] source destination` | Secure copy (remote file copy program) |

## Package Management (for Debian-based systems)

| Command | Usage | Description |
|---------|-------|-------------|
| `apt update` | `sudo apt update` | Refresh package lists |
| `apt upgrade` | `sudo apt upgrade` | Upgrade installed packages |
| `apt install` | `sudo apt install package` | Install a package |
| `apt remove` | `sudo apt remove package` | Remove a package |

## Archiving and Compression

| Command | Usage | Description |
|---------|-------|-------------|
| `tar` | `tar [options] [archive] [file/directory]` | Archive files |
| `gzip` | `gzip [options] file` | Compress or expand files |
| `unzip` | `unzip [options] file.zip` | List, test, or extract files from a ZIP archive |

## Search and Text Processing

| Command | Usage | Description |
|---------|-------|-------------|
| `grep` | `grep [options] pattern [file...]` | Search for patterns in files |
| `find` | `find [path] [expression]` | Search for files in a directory hierarchy |
| `sed` | `sed [options] 'command' file` | Stream editor for filtering and transforming text |
| `awk` | `awk [options] 'program' file` | Pattern scanning and processing language |

Remember to use `man [command]` to access the manual pages for detailed information about each command and its options.
