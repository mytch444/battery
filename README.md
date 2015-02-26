battery
=======
Prints out the status of your battery. Percentage and its state.

lowbatteryd
===========
Bash script (and rc file; install yourself) that checks your battery percentage
and executes commands.
The default config uses [showmessage](https://github.com/mytch444/showmessage)
to show warnings at 10% and 3% then suspend to disk at 1% but you can change 
it to do anything by editing /etc/lowbatteryd.
