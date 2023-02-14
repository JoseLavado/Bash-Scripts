#cron job to run every minute
* * * * * /root/scripts/monitor_udp_every5secs.sh

#bash script that runs the script every 5 seconds
monitor_udp_every5secs.sh
#!/bin/bash

i=0
while [ $i -lt 12 ]; do # 12 five-second intervals in 1 minute
 /root/scripts/monitor_udp.sh
 sleep 5
 i=$(( i + 1 ))
done

#Tthe script that runs and collects UDP info
#and redirects it to a log file
monitor_udp.sh
#!/bin/bash

date >> /root/scripts/udp_log.txt
netstat -anp |grep -i udp >> /root/scripts/udp_log.txt
sudo lsof -i UDP >> /root/scripts/udp_log.txt
echo "*****************************************************************************************************" >> /root/scripts/udp_log.txt