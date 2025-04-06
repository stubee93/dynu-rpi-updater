# dynu-rpi-updater

IP updater for Dynu running in docker

### Build the image

`docker build -t dynu-rpi-updater .`

### Run

```
docker run -d --name dynu-rpi-updater \
  -e DYNU_USERNAME="your-username" \
  -e DYNU_PASSWORD_MD5="your-md5-password" \
  -e DYNU_HOSTNAME="your-subdomain.ddnsfree.com" \
 dynu-rpi-updater
```

### Environment variables

| Variable         | Default value | Description                       |
| :--------------- | :-----------: | :-------------------------------- |
| DYNU_USERNAME    |    `null`     | Username                          |
| DYNU_PASWORD_MD5 |    `null`     | MD5 hashed password               |
| DYNU_HOSTNAME    |    `null`     | Hostname which you want to update |
| POLLINTERVAL     |      300      | Update interval in seconds        |

### Sources

- [Official Dynu tutorial for RPi](https://www.dynu.com/DynamicDNS/IPUpdateClient/RaspberryPi-Dynamic-DNS)
- [cURL IP update](https://www.dynu.com/DynamicDNS/IPUpdateClient/cURL)
- [Dynu API documentation](https://www.dynu.com/Support/API)
