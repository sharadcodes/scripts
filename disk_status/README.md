## Disk Status Notifier

### How to use


1. Save the file `disk_status.py` at a safe place

    [Download disk_status.py](https://github.com/sharadcodes/scripts/blob/master/disk_status/disk_status.py)
2. Open your terminal run-
    ```bash
    crontab -e
    ```
3. Now add an entry for the script like this
    ```bash
    */15 * * * * /usr/bin/python3 /home/YOUR_USERNAME_HERE/FOLDER_NAME_OR_PATH_TO_FILE_FROM_USER_DIR/disk_status.py
    ```
    >Change 15 * * * * according to your needs as it will run the script every 15 minutes.
    >Take help of [Crontab Guru](https://crontab.guru/)  if you are new to CRON
    
    Example: 
    ```bash
    */15 * * * * /usr/bin/python3 /home/sharad/Documents/disk_status.py
    ```
4. Check the corn job using following command
    ```bash
    crontab -l
    ```
    It will show something like this
    ```bash
    sharad@mypc:~$ crontab -l
    # m h  dom mon dow   commando
    */15 * * * * /usr/bin/python3 /home/sharad/Documents/disk_status.py
    ```
5. That's it now it will notify you if your disk usage of / exceeds 40%.

    **You can change the threshold to another value in the `disk_status.py` at line 7**
    
    ```py
    if int(usage) >= 40: # Change 40 to something else according to your needs
    ```
6. That's it :smile:
