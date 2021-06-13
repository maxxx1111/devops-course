#!/bin/bash
set -e
stopScript(){
	echo "Bad input. Shutting down..."
	exit 1
}
read -p "Do you want to use root?(It's needed to see all information)(y/n(default: n)): " SU
if [[ $SU == "y" ]]; then
	SU="sudo"
else
	SU=""
fi	
read -p "Enter process name or PID: " PID
echo -e "Choose process state:\n0 - ALL\n1 - CONNECTED\n2 - ESTABLISHED\n3 - TIME_WAIT\n4 - CLOSE_WAIT\n5 - CLOSED"
read PSTATE
case $PSTATE in
	0)
		PSTATE="all";;
	1)
		PSTATE="connected";;
	2)
		PSTATE="established";;
	3)
		PSTATE="time_wait";;
	4)
		PSTATE="close_wait";;
	5)
		PSTATE="closed";;
	*)
		stopScript;;
esac
echo -e "Select output type:\n1 - Only organization name and id\n2 - Information about organization\n3 - All information"
read RES
if [[ ! $RES =~ [1-3] ]]; then
	stopScript;
fi
if [[ ! $RES -eq 1 ]]; then
	read -p "Enter count of lines to output: " LN
	if [[ ! $LN =~ [0-9] ]]; then
		stopScript
	fi
fi
#IPlist=$($SU netstat -tunapl 2>/dev/null | awk "/$PID/*/$PSTATE/"' {print $5}' | cut -d: -f1)
IPlist=$($SU ss -tuap state established | awk "/$PID/"' {print $5}' | cut -d: -f1)
for ip in $IPlist; do 
	echo "------------------------------------"
	case $RES in
		1)
			whois $ip | awk '/^Organization/';;
		2)
			whois $ip | awk '/^Org/' | head -$LN;;
		3)
			whois $ip | awk '/^([A-Z]|[a-z])/' | head -$LN;;	
	esac
done
