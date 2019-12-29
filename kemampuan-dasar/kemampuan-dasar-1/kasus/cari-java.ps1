$Dir = get-childitem F:\Courses\Praxis -recurse
$List = $Dir | where {$_.extension -eq ".java"}
#$List | format-table name
$c=0;
foreach ($file in $List){
$c = $c+1;
}
Write-Host "ada" $c "file java"
