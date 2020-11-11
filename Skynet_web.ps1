#SKYNET WEB
param($url)

if(!$url){
	echo "SKYNET COLLECTOR WEB"
	echo "Usage example: $url www.businesscorp.com"

}else{
$web = Invoke-WebRequest -uri "$url" -Method Options
echo "The server is running: "
$web.headers.server
echo ""
echo "The server allows these methods: "
$web.headers.allow
echo ""
echo "Found Links"
$web2 = Invoke-WebRequest -uri "$url"
$web2.links.href | Select-String http://
}