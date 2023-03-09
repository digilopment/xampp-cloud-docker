### nastavenie `xampp` projektu ako hello world projektu
```sh
#nastavenie /etc/hosts
127.0.0.1 xampp.loc
127.0.0.1 phpmyadmin.cloud.loc
```

```sh
cd xampp-cloud/docker
sudo sh up -d
```
- otvorit http://xampp.loc

### Nove virtualhosty
`xampp-cloud/docker/images/apache/virtual-hosts.conf`
- tu je mozne podseba pridavat nove virtualhosty

### Nove projekty
`xampp-cloud/src`
- tu je mozne pridavat nove projekty

### Nastavenie PHP
`docker/images/apache/virtual-hosts.conf`
- tu som nastavil ukladanie session cookie do memcached, aby bolo mozne spustat viacero palalenych instanci aplikacie pre jedno clientId
-nastaveny MAX UPLOAD na 200M

### Zmena verzie PHP
`xampp-cloud/docker/.env`
- tu sa nastavuje verzia PHP pre projekt

### Import databazy
```sh
cd xampp-cloud/docker/import
sudo sh import.sh {databaseName} {databaseFile.sql}
```
- databazu `file.sql` nakopirovat do `xampp-cloud/docker/import`
- spustit command `sh import.sh my-database file.sql`

### PHP My Admin
`http://xampp.loc:8080`
**DEFAULT DB LOGIN:**
host: **`mysql`**  
user: **`root`**  
pass: **`root`**  
