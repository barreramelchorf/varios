#! /bin/bash
#
ACTIVEAMBARIHOST=headnodehost
PORT=8080
usuario=usrsistemasdev
password="Liverpool123:"

curl -iv -u admindev:Liverpool123: -H "X-Requested-By: ambari" -X POST -d  '{"Users/user_name": "$usuario", "Users/password":  "$password", "Users/active": true, "Users/admin": false }' http://$ACTIVEAMBARIHOST:$PORT/api/v1/users

echo "Creating user systemsuser"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo useradd -m -p $pass $usuario
 
