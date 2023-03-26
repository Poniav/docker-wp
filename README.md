# Install docker on ubuntu server

`chmod +x install_docker_tools.sh`

Then execute the script :

`./install_docker_tools.sh`

### Backup database

The .env file share the variables with the shell script. Provide the path of the backup directory inside the file.

1. Make the script executable

`chmod +x mysql_backup.sh`

2. Test the backup script by running it

`./mysql_backup.sh`

3. Define the schedule task with crontab

`crontab -e`

4. Add the line in the file

`0 0 * * 0 /path/to/mysql_backup.sh`

The current line run everyweek on sunday at midnight. Edit the last 0 with the day you want starting from 1 for monday to 0 for sunday.
