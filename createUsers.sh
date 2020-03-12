#! /bin/bash
#
ACTIVEAMBARIHOST=headnodehost
PORT=8080

curl -iv -u admindev:Liverpool123: -H "X-Requested-By: ambari" -X POST -d  '{"Users/user_name": "usrsistemasdev", "Users/password":  "Liverpool123:", "Users/active": true, "Users/admin": false }' http://$ACTIVEAMBARIHOST:$PORT/api/v1/users

echo "Creating user systemsuser"
password="Liverpool123:"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo useradd -m -p $pass usrsistemasdev