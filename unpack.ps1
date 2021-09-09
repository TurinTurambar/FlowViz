Get-ChildItem * -Filter *.pbit | 
Foreach-Object {
    Write-Host "Processing " + $_.BaseName
    Remove-Item $_.BaseName -Recurse -ErrorAction Ignore
    $zipName = $_.BaseName + ".zip"
    Copy-Item -Path $_.Name -Destination $zipName
    Expand-Archive -Path $zipName -Force
    Remove-Item -Path $zipName
}