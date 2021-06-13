# Process analyzer script
This simple script show's some information about organization which belongs ip adress that proccess connectioned with.

### Installation 
- Make script executable running ```chmod +x script.bash```
- Run script with root privilege ```sudo ./script.bash``` or without it ```./script.bash```
- Follow the built-in instruction

### Example
```
terminal@dtest:~$ sudo chmod +x script.bash
terminal@dtest:~$ sudo ./script.bash 
Do you want to use root?(It's needed to see all information)(y/n(default: n)): y
Enter process name or PID: firefox
Choose process state:
0 - ALL
1 - CONNECTED
2 - ESTABLISHED
3 - TIME_WAIT
4 - CLOSE_WAIT
5 - CLOSED
2
Select output type:
1 - Only organization name and id
2 - Information about organization
3 - All information
2
Enter count of lines to output: 5
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
OrgName:        Amazon Technologies Inc.
OrgId:          AT-88-Z
OrgRoutingHandle: ADR29-ARIN
OrgRoutingName:   AWS Dogfish Routing
```
