
if [ "$#" -ne 1 -o \( "$1" != master -a "$1" != minion \) ]; then
	echo "Usage syntax: $0 master|minion"
	exit 1
fi

if [ "$1" = master ]; then
	echo Starting master
	/usr/bin/salt-master -l info
else
	echo Starting minion
	grep '^\s*master\s*:' /etc/salt/minion \
		|| echo "master: salt1" >> /etc/salt/minion
	/usr/bin/salt-minion -l info
fi


