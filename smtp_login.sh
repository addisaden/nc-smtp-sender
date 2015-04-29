echo HELO $1
echo AUTH LOGIN
echo $(echo -n $2 | base64)
stty -echo
trap 'stty echo' EXIT
read PSW
stty echo
trap - EXIT
echo $(echo -n $PSW | base64)
cat $3
echo 'QUIT'
