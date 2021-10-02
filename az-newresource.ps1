# create  new resourcegroup 

$resourcegroupname= Read-Host -Prompt "Enter the resourcegroup name you wish to create"
$location= Read-Host -Prompt "Enter the location"

New-AzResourceGroup -Name $resourcegroupname -Location $location  -Verbose
