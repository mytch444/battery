battery
=======
Prints out the status of your battery. Percentage and its state.

lowbatteryd
===========
Bash script that checks your battery percentage and executes commands at three
levels.
The default config uses [nenu](https://github.com/mytch444/nenu) and 
pm-hibernate to show warnings at 10% and 5% then suspend to disk at 2% but you 
can change it to do anything by editing /etc/lowbatteryd.conf.
