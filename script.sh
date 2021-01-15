
$groupname="freebergARMDemo"
$appname="freeberg-rfp-demo"


az group create --name $groupname --location "southcentralus" &&
az deployment group create --resource-group $groupname --parameters webAppName=$appname linuxFxVersion="NODE|10.15" \
--template-file "template.json"
