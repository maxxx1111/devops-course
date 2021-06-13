# Process analyzer script
This simple script show's some information about organization which belongs ip adress that proccess connectioned with.

### Installation 
- Make script executable running ```chmod +x script.bash```
- Run script with root privilege ```sudo ./script.bash``` or without it ```./script.bash```
- Follow the built-in instruction

### Example
```
sudo ./script.bash 
Do you want to use root?(It's needed to see all information)(y/n(default: n)): y
Enter process name or PID: firefox
Choose process state:
0 - ALL
1 - CONNECTED
2 - ESTABLISHED
3 - TIME_WAIT
4 - CLOSE_WAIT
5 - CLOSED
0
Select output type:
1 - Only organization name and id
2 - Information about organization
3 - All information
1
------------------------------------
Organization:   Google LLC (GOOGL-2)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZON-4)
Organization:   Amazon.com, Inc. (AMAZON-4)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZO-47)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZON-4)
Organization:   Amazon.com, Inc. (AMAZON-4)
------------------------------------
Organization:   Google LLC (GOGL)
------------------------------------
Organization:   Amazon.com, Inc. (AMAZO-4)
Organization:   Amazon.com, Inc. (AMAZO-47)
------------------------------------
Organization:   Google LLC (GOOGL-2)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZON-4)
Organization:   Amazon.com, Inc. (AMAZON-4)
------------------------------------
------------------------------------
Organization:   Google LLC (GOGL)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZO-47)
------------------------------------
Organization:   Amazon Technologies Inc. (AT-88-Z)
Organization:   Amazon.com, Inc. (AMAZON-4)
Organization:   Amazon.com, Inc. (AMAZON-4)
------------------------------------
```
