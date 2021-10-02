<# We have successfully created a virtual network with three subnets
Now we will download the template file and deploy in another resource group

step 1: downlod the template file
step 2: modify the template file
step 3: deploy from local drive 

we have already downloaded and modified the template and saved in our local directory as C:\azure-docs\azure-docs\dev-net.json
#>

$filepath = Read-Host -Prompt "Enter the file full path:" 
$resourcegrp = 'cloudlearn-rg4'

New-AzResourceGroupDeployment -TemplateFile $filepath -ResourceGroupName $resourcegrp -Verbose
