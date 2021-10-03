# create a new disk
# before creating data sisk, we need to create a new disk configuration.
$location = 'eastus'
$resourcegroup = 'cloudlearn-rg4'
$skuName ='Standard_LRS'
$dataDiskName = "mydatadisk"
$diskSize = 1024

$diskconfig = New-AzDiskConfig -Location $location -CreateOption Empty -DiskSizeGB $diskSize  -SkuName $skuName 

# once the configuration is created, now create a new disk
 New-AzDisk   -DiskName $dataDiskName  -ResourceGroupName $resourcegroup -Disk $diskconfig -verbose 
 
