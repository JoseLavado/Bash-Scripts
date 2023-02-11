for i in mary gord luke ; do useradd -m $i ; echo adding user $i ; done
for i in mary gord luke ; do userdel -r $i ; echo deleting user $i ; done
cat /etc/passwd | grep -E "mary|gord|luke"
