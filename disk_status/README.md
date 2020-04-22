## Disk Status Notifier

### How to use


1. Save the file `disk_status.py` at a safe place
2. Open your terminal type-
    ```bash
    crontab -e
    ```
3. Now add an entry for the script like this
    ```bash
    */15 * * * * /usr/bin/python3 /home/YOUR_USERNAME_HERE/FOLDER_NAME_OR_PATH_TO_FILE_FROM_USER_DIR/disk_status.py
    ```
    >Change 15 * * * * to according to your needs as it will run the script every 15 minutes
    
    Example: 
    ```bash
    */15 * * * * /usr/bin/python3 /home/sharad/Documents/disk_status.py
    ```
4. Check the corn job using following
    ```bash
    crontab -l
    ```
    It will show something like this
    ```bash
    sharad@mypc:~$ crontab -l
    # m h  dom mon dow   commando
    */15 * * * * /usr/bin/python3 /home/sharad/Documents/disk_status.py
    dojo@machine-0:~$ 
    ```
