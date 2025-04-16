resource "random_password" "sql_admin" {
  length           = 16
  special          = true
  override_special = "!@#%&*()-_=+<>?/"
}

resource "azurerm_mssql_server" "this" {
  name                                 = var.server_name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  version                              = var.version

  administrator_login                  = var.administrator_login
  administrator_login_password         = random_password.sql_admin.result

  public_network_access_enabled        = var.public_network_access_enabled
  minimum_tls_version                  = var.minimum_tls_version
  outbound_network_restriction_enabled = var.outbound_network_restriction_enabled

  identity {
    type         = var.identity_type
    identity_ids = var.identity_ids
  }

  tags = var.tags
}
