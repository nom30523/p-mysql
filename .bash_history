ls
cd root
ls
cd ..
mysql -u root -p < /root/create_myapp.sql
myaql -u myapp_user -p myapp
mysql -u myapp_user -p myapp
mysql -u myapp_user -p myapp
exit
mysql -u myapp_user -p mydb01
mysql -u myapp_user -p myapp
mysqldump -u myapp_user -p myapp > 202006_myapp.backup.sql
less 2020_myapp.backup.sql
ls
mysql -u myapp_user -p myapp
ls
mv 202006_myapp.backup.sql ./root
ls
mysql -u myapp_user -p myapp
exit
