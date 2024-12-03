
resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.deploy_location
}

resource "azurerm_virtual_network" "main" {
  name                = "gitvnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "main" {
  name                = "gitnic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = "gittestvm"
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"


  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk2"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}

resource "azurerm_monitor_action_group" "actionGrp" {
  name                = "PranjalActionGrp"
  resource_group_name = azurerm_resource_group.example.name
  short_name          = "Ag-pranjal"
 
  email_receiver {
    name                    = "Pranjal"
    email_address           = "more.pranjalthakaram@hcltech.com"
    use_common_alert_schema = true
  }
}
 
resource "azurerm_monitor_metric_alert" "azure_VM_CPU_alert" {
  name                = "Test_CPU_Alert_VMMonitor"
  resource_group_name = azurerm_resource_group.example.name
  scopes              =  [azurerm_virtual_machine.main.id]
  severity = 3
  enabled = true
  frequency = "PT1M"
  window_size = "PT5M"
 
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 10
  }
 
  action {
    action_group_id = azurerm_monitor_action_group.actionGrp.id
  }
}