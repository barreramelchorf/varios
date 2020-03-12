#! /bin/bash
#
ACTIVEAMBARIHOST=headnodehost
PORT=8080

echo "Creating user systemsuser"
password="Liverpool123:"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo useradd -m -p $pass fbarream

curl -iv -u admindev:Liverpool123: -H "X-Requested-By: ambari" -X POST -d  '{"Users/user_name": "fbarreram", "Users/password":  "Liverpool123:", "Users/active": true, "Users/admin": false }' http://$ACTIVEAMBARIHOST:$PORT/api/v1/users
 
