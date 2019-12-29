$file = "F:\Courses\Praxis\nama-file.java"
if(Test-Path $file){
    $a = New-Object -ComObject Wscript.Shell 
    $pop = $a.popup("nama-file.java ada, diganti namanya?",4,"Alert",4)
    if($pop -eq 6){
        $rename = Read-Host "masukan nama file baru"
        Rename-Item -Path $file -NewName $rename
        Write-Host " File dirubah menjadi" $rename
    }
    else{
         Write-Host "OK! file tidak di rename"
    }
}
else{
Write-Host "File tidak ada"
}