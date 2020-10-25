[string] $folderName = "Kasiopea " + (Get-Date).Year.ToString()                         
[string] $path = "C:\Users\" + [Environment]::UserName + "\Desktop\" + $folderName
[string] $firstRound = "Domaci kolo"
[string] $finalRound = "Finale"      
[int] $subFolderASCII = 65

if (!(Test-Path $path))                                                    
{
    New-Item -ItemType Directory -Path $path
    Set-Location -Path $path
    New-Item -ItemType Directory -Path .\$firstRound
    Set-Location -Path $path\$firstRound           
                          
    for ($i = 0; $i -lt 8; $i++) 
    {
        [char] $subFolderName = [char] $subFolderASCII++

        New-Item -ItemType Directory -Path .\$subFolderName
        New-Item -ItemType File -Path .\$subFolderName\out.txt
    }
    
    $subFolderASCII = 65

    Set-Location -Path $path
    New-Item -ItemType Directory -Path .\$finalRound
    Set-Location -Path $path\$finalRound

    for ($i = 0; $i -lt 6; $i++) 
    {
        [char] $subFolderName = [char] $subFolderASCII++

        New-Item -ItemType Directory -Path .\$subFolderName
        New-Item -ItemType File -Path .\$subFolderName\out.txt
    }
}
