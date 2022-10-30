function tbackup
  rewind -b; 
  if test -d "/sdcard/Termux/backup"
    set -l backup_path "/sdcard/Termux/backup"
    echo "backup size: "
    du $backup_path
   bash ~/repos/rclone/termux-backup-up.sh
  end  
end
