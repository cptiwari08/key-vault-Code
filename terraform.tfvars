keyvault_map = {
  keyvault1 = {
    rg_name       = "rg-frontend-prod-ci-01"
    location      = "centralindia"
    keyvault_name = "keyvaut01"
  }

  keyvault2 = {
    rg_name       = "rg-backend-prod-ci-01"
    location      = "southindia"
    keyvault_name = "keyvaut02"
  }
  keyvault3 = {
    rg_name       = "rg-backend-prod-ci-01"
    location      = "southindia"
    keyvault_name = "keyvaut03"
  }
}


vm_map = {
  vm1 = {
    pip_name          = "pip-vm"
    rg_name           = "rg-frontend-prod-ci-01"
    location          = "centralindia"
    allocation_method = "Static"
    public_ip_sku     = "Standard"
    nic_name          = "nic-frontend-prod-ci-01"
    ip_config_name    = "nic-frontend-01"
    vm_name           = "vm-frontend-01"
    vm_size           = "Standard_DS1_v2"
    data_name                 = "frontend-subnet-01"
    data_virtual_network_name = "frontend-vnet"
    data_resource_group_name  = "rg-frontend-prod-ci-01"
    publisher                 = "Canonical"
    offer                     = "UbuntuServer"
    sku                       = "18_04-lts-gen2"
    os_disk_name  = "linux-os-disk"
    computer_name = "vm-frontend-01"
  }

  vm2 = {
    pip_name          = "pip-vm-02"
    rg_name           = "rg-backend-prod-ci-01"
    location          = "southindia"
    allocation_method = "Static"
    public_ip_sku     = "Standard"
    win_nic_name          = "nic-backend-prod-ci-01"
    win_ip_config_name    = "nic-backend-01"
    vm_name           = "vm-backend-01"
    vm_size           = "Standard_DS1_v2"
    data_name                 = "backend-subnet-01"
    data_virtual_network_name = "backend-vnet"
    data_resource_group_name  = "rg-backend-prod-ci-01"
    publisher                 = "MicrosoftWindowsServer"
    offer                     = "WindowsServer"
    sku                       = "2019-Datacenter"
    os_disk_name  = "windows-os-disk"
    computer_name = "vm-backend-01"
  }
}

