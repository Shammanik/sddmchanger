# sddmchanger
**Sddmchanger - is a script that changes Your sddm theme**

If You have a lot of themes and want to switch between them quicky Sddmchanger will help you.

Script scans directories in `/usr/share/sddm/themes/` and allows you to choose the one you need.
# Installation
Clone repository
```bash
git clone https://github.com/Shammanik/sddmchanger.git
```
Go to the directory
```bash
cd sddmchanger/
```
Add execution for file
```bash
chmod +x sddmchanger.sh
```
# Usage
```bash
./sddmchanger.sh
```
Script shows available themes and suggests You to choose one of them.
After that script will change `/etc/sddm.conf` with sudo.

# Thanks