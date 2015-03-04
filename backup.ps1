$today = get-date -format ddMMMyyyy

$PackageLocation
$EnvironmentFolder = "C:\temp"
$BackupLocation = "$EnvironmentFolder\Backup\$today"

$BackupLocation
mkdir $BackupLocation



<#
$test = gci -path C:\users\rwatson\downloads\ASHP-3246-8404955 -recurse
$a1 = @()

foreach ($t in $test)
{
$a1 += gci -path C:\Personify\ROBERT\TST\winclient -Filter $t -recurse
}
$a1.fullname


foreach ($file in $a1)
{
#>