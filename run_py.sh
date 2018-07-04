#################################
## A script to sync captured image to remote server
## Author: jjww  
## E-mail: jiafucmos@gmail.com
##################################################



cd /home/pi/hh_rsp

find . -name "*jpg" -ctime +1 |xargs rm -v
#rm "*jpg"

rsync -vzrtopgu --progress --delete -e 'ssh -p 8022' *jpg jflin@10.24.3.164:~/raspi/
#python pi.py

#nohup python pi-motion-lite.py&
