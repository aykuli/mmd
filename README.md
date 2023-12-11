# README

```ssh
docker container run \
  --env DOKKU_HOSTNAME=mymeddata.ru \
  --env DOKKU_HOST_ROOT=/var/lib/dokku/home/dokku \
  --env DOKKU_LIB_HOST_ROOT=/var/lib/dokku/var/lib/dokku \
  --name dokku \
  --publish 3022:22 \
  --publish 8080:80 \
  --publish 8443:443 \
  --volume /var/lib/dokku:/mnt/dokku \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  dokku/dokku:latest
```

Что такое DNS адреса?

* Как узнать, что я слушаю порт 80?

```shell
sudo lsof -i -P -n | grep 80

-i select IPv[46] files


nginx     1340            root    6u  IPv4  22732      0t0  TCP *:80 (LISTEN)
nginx     1340            root    7u  IPv6  22733      0t0  TCP *:80 (LISTEN)
nginx     2438        www-data    6u  IPv4  22732      0t0  TCP *:80 (LISTEN)
nginx     2438        www-data    7u  IPv6  22733      0t0  TCP *:80 (LISTEN)
nginx     2439        www-data    6u  IPv4  22732      0t0  TCP *:80 (LISTEN)
nginx     2439        www-data    7u  IPv6  22733      0t0  TCP *:80 (LISTEN)
sshd      4055            root    4u  IPv4  61112      0t0  TCP 185.221.213.49:22->95.104.185.164:56274 (ESTABLISHED)
```

Что делает утилита nmap?
Что за сертификаты АААА?
