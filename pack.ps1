$folder = Read-Host -Prompt "Input folder name to pack"
$zipName = $folder + ".zip"
$pbitName = $folder + ".pbit"
$folder = $folder + "\*"
Compress-Archive -Path $folder -DestinationPath $zipName -CompressionLevel Optimal -Force
Rename-Item -Path $zipName -NewName $pbitName