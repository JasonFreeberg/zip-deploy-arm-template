az group create --name freebergARMDemo --location "southcentralus" &&
az deployment group create --resource-group freebergARMDemo --parameters webAppName="freeberg-rfp-demo" linuxFxVersion="NODE|10.15" \
--template-file "template.json
