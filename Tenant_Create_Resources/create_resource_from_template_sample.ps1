# Set Taiwanmobile Azure Stack API endpoint
Add-AzureRmEnvironment -Name "TenantARM" -ARMEndpoint "https://management.twm.azurestack.taiwancloud.com.tw"
# Login Azure Stack
Login-AzureRmAccount -EnvironmentName "TenantARM" 
# The file path your downloaded
$templatePath = 'C:\Temp\Tenant_Create_Resources\create_multiple_ubuntu_vm_template.json'
# Set deployment variables
$vmprefix = "mtVMs" # Modify this per deployment
$RGName = "yourRG" #Please change the RGname (Resource group name)
$myLocation = "twm"

# Create resource group for template deployment
New-AzureRmResourceGroup -Name $RGName -Location $myLocation

# Deploy simple IaaS template
New-AzureRmResourceGroupDeployment `
    -Name myDeployment$vmprefix `
    -ResourceGroupName $RGName `
    -TemplateFile $templatePath `
    -ApiVersion "2018-03-01-hybrid"