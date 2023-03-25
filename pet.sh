#!/bin/bash
petnames() {
echo "enter the petnames of your pet"
read petnames
sudo useradd $petnames
id $petnames
sudo tail /etc/passwd

}
echo "creating petname bingo"
petnames
echo "creating petname lion"
petnames
echo "i like devops"
echo " git is fun"
echo " I colnfirm that"
