# Copium.sh
gotta have dem copes :) through the bad times. a simple script that
tells you everything is fine every 60 secs.

## Instructions

```bash
sudo chmod +x ./Copium.sh
./Copium.sh
```
This script relies on the following packages and tools to function properly:

 - notify-send: A command-line tool for sending desktop notifications.
    ```bash
      sudo apt install libnotify-bin
    ```
 - dunstify: A command-line tool for sending notifications using the Dunst notification daemon.
     ```bash
      sudo apt install dunst
    ```
 - curl: A command-line tool for making HTTP requests.
      ```bash
      sudo apt install curl
    ```
 - jq: A lightweight and flexible command-line JSON processor.
       ```bash
      sudo apt install jq
    ```

## Need ጋቭሮቭ jokes?
- If u are sick of the repetitive copium message you can get the classic ጋቭሮቭ jokes by using `--joke` option.

```bash
   ./Copium.sh --joke
```

## Systemd
Set up systemd service to cope with ease.

### You could create a file (as sudo) with you favorite editor (nano, vim etc) like:
```bash 
$ sudo vim /etc/systemd/system/Copium.service
```

### It should contain at least the following:
```bash
[Unit]
Description=start Copium

[Service]
Type=simple
ExecStart=/path/to/Compium script

[Install]
WantedBy=multi-user.target
```

### To ensure that the service will start after reboot execute: 
```bash
$ sudo systemctl enable Copium.service
```

### You can check it any time using
```bash
$ journalctl -u Copium.service
```


# Preview
![Cat taking copium](/copium-cat.gif)

# Support

Don't forget to leave a star to help me cope ;)

<div align="center">
  <h1><sub>Built with ❤︎ by
  <a href="http://yohannestz.netlify.app/">Yohannes Tz</a><h1>
</div>