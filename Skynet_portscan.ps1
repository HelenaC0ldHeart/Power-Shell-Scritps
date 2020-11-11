#SKYNET PORT SCANNER
param($ip,$port)

if(!$ip){
    echo "SKYNET - PORT SCANNER"
    echo ".\portscan.ps1 192.168.0.1 80"
} else {

$mainports = 21,22,3306,80,443

try {foreach($port in $mainports){
if(Test-NetConnection $ip -Port $port -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Port $port is open"
}} else {
    echo "Port $port is closed"
 }} catch{}
 }