# Final Project:Local Atomated Backup System

## Overview
Creates daily compressed backups of the `~/myproject`.and then logs each backup, and 
stores them in `~/backup`.

## Requirements
- Ubuntu 24.04 LTS
- `tar`,`cron`
- sudo access to edit crontab

## Setup
1. Copy `backup_project.sh` to `~/myproject/scripts`
2. Make executable: `chmod +x backup_project.sh` (In the scripts folder)
3. Add cron: `crontab -e`

## Usage
- Manual run: `./backup_project.sh`
- Check logs: `cat ~/myproject/logs/backup.log`
- Verify backups: `ls ~/backups`

## Troubleshooting
- Can't find any backup? Check your cron logs:`grep CRON /var/log/syslog`
- Ensure Script has Execute permission else there will be permission error.
