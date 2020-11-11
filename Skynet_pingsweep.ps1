#SKYNET - PING SWEEP
param($p1)
if (!$p1){
    echo "SKYNET SWEEPER"
    echo "Usage example: .\script.ps1 37.59.174."
} else {
foreach ($ip in 1..254){
try {$response = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
$response.Line.split(' ')[2] -replace ":",""
} catch{}
}
}