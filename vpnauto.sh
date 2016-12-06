#!/usr/bin/expect -f
#es necesario instalar expect en  ubuntu apt-get install expect  expect-dev
set username "youruser\r"
set PASS "yourpassword\r"

spawn openvpn --script-security 2  --config client.ovpn -vvv --auth-user-pass
expect "Enter Auth Username:"
send $username
expect "Enter Auth Password:"
send $PASS
interact
