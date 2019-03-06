# Azure Stack
請確認執行環境已安裝 Azure Stack Powershell, https://docs.microsoft.com/zh-tw/azure/azure-stack/azure-stack-powershell-install

# Powershell 部署
使用Powershell 部署,請參考create_resource_from_template_sample.ps1腳本. 部署時請使用新的資源群組Resource Group

# 目前平台版本1807 需調整API版本參數 
請修改第四行將"apiProfile": "2018-03-01-hybrid" 改為  "apiProfile": "2017-03-09-profile",即可部署.
如使用Powershell 腳本部署資源請修改 -apiversion 為 2017-03-09-profile
