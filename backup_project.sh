#!/bin/bash

set -e

SOURCE_DIR="/home/$USER/myproject"
BACKUP_DIR="home/$USER/backups"
LOG_FILE="/home/$USER/myproject/logs/backup.log"
DATE=$(date +"%Y-%m-%d:%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/myproject_backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
mkdir -p "$(dirname "LOG_FILE")"

log(){
	echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> "$LOG_FILE"
}
log "Starting backup"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

log "Backup Completed : $BACKUP_FILE"
echo "Backup Done"
