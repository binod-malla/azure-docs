# connect to azure portal 
Connect-AzAccount 
# install Azure module 
Install-Module -Name Az -Repository PSGallery -Scope CurrentUser

# if you have multiple subscriptions set the subscription
Set-AzContext -Subscription 'Azure Subscription 1' 

