$today = get-date -format ddMMMyyyy
$time = get-date -format HHmm\h

$PackageLocation = ""
$EnvironmentFolder = ""
$BackupLocation = "$EnvironmentFolder\Backup\$today"

cd $EnvironmentFolder

If (Test-Path $BackupLocation){
    $BackupLocation = $BackupLocation + " $time"
}

#mkdir $BackupLocation




$test = gci -path $PackageLocation -recurse
$a1 = @()

foreach ($t in $test)
{
    $a1 += gci -path $EnvironmentFolder -Filter $t.name -recurse | where { ! $_.PSIsContainer }
}
$a1.name

<#
foreach ($file in $a1)
{
    
    Copy-Item -path $file -destination $BackupLocation -container
}
#>
