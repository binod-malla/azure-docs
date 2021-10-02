# create a new virtual network in azure 

$resourcegroup = 'cloudlearn-rg3'
$virtualNetworkName = "test-vnet"
$location = "australiaeast"

New-AzVirtualNetwork -ResourceGroupName $resourcegroup -Name $virtualNetworkName -Location $location -AddressPrefix 172.16.16.0/24 -Verbose

# Now we have created virtual network we need to create subnet 
$vnet = Get-AzVirtualNetwork -ResourceGroupName 'cloudlearn-rg3' -Name 'test-vnet'

Add-AzVirtualNetworkSubnetConfig -Name 'front-tier' -VirtualNetwork $vnet -AddressPrefix 172.16.16.0/25 -Verbose

Add-AzVirtualNetworkSubnetConfig -Name 'back-tier' -VirtualNetwork $vnet -AddressPrefix 172.16.16.128/26 -Verbose

Add-AzVirtualNetworkSubnetConfig -Name 'gateway' -VirtualNetwork $vnet -AddressPrefix 172.16.16.192/27

# now we neeed to update the changes
Set-AzVirtualNetwork -VirtualNetwork $vnet

