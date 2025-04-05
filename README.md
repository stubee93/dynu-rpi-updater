# dynu-rpi-updater

IP updater for Dynu running in docker

### Build the image

`docker build -t dynu-rpi-updater .`

### Run

```
docker run -d --name dynu-rpi-updater \
-e "DYNU_USERNAME=username" \
-e "DYNU_PASSWORD_MD5=md5-hashed-password" \
-e "POLLINTERVAL=120" \
 dynu-rpi-updater
```

### Environment variables

| Variable         | Default value | Description                |
| :--------------- | :-----------: | :------------------------- |
| DYNU_USERNAME    |    `null`     | Username                   |
| DYNU_PASWORD_MD5 |    `null`     | MD5 hashed password        |
| POLLINTERVAL     |      300      | Update interval in seconds |

### Sources

- [Official Dynu tutorial for RPi](https://www.dynu.com/DynamicDNS/IPUpdateClient/RaspberryPi-Dynamic-DNS)
