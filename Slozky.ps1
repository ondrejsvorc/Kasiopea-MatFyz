[string] $folderName = "Kasiopea " + (Get-Date).Year.ToString()                         
[string] $path = "C:\Users\" + [Environment]::UserName + "\Desktop\" + $folderName      

if (!(Test-Path $path))                                                    
{
    New-Item -ItemType Directory -Path $path          
    Set-Location -Path $path                          

    for ($i = 1; $i -lt 9; $i++) 
    {
        New-Item -ItemType Directory -Path .\$i
        New-Item -ItemType File -Path .\$i\out.txt
    }
}
