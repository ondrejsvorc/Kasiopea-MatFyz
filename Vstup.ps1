[string] $letter = Read-Host "Zadej pismeno ulohy (napr. A)"

[string] $folderName = "Kasiopea " + (Get-Date).Year.ToString()
[string] $fileName = $letter + "-lehky.txt"
[string] $fileSource = "D:\Downloads\" + $fileName
[string] $fileDestination = "C:\Users\" + [Environment]::UserName + "\Desktop\" + $folderName + "\Domaci kolo\" + $letter + "\in.txt"

if (Test-Path $fileSource)
{
    Get-Content -Path $fileSource | Out-File $fileDestination
    Remove-Item -Path $fileSource
}