module "lz_vending" {
  source  = "Azure/lz-vending/azurerm"
  version = "v5.1.2" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  # Set the default location for resources
  location = "southeastasia"

  # subscription variables
  subscription_alias_enabled = true
  subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/7c0b9089-fd64-5d61-e847-2065f602106d:ff81f6a8-4163-4aa4-95b7-b3b34853b813_2019-05-31/billingProfiles/YOLD-AHRU-BG7-PGB/invoiceSections/PILE-J4JK-PJA-PGB"
  subscription_display_name  = "bdotest4sub"
  subscription_alias_name    = "bdotest4subalias"
  subscription_workload      = "Production"

}

module "lz_vending1" {
  source  = "Azure/lz-vending/azurerm"
  version = "v5.1.2" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  # Set the default location for resources
  location = "southeastasia"

  # subscription variables
  subscription_alias_enabled = true
  subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/7c0b9089-fd64-5d61-e847-2065f602106d:ff81f6a8-4163-4aa4-95b7-b3b34853b813_2019-05-31/billingProfiles/YOLD-AHRU-BG7-PGB/invoiceSections/PILE-J4JK-PJA-PGB"
  subscription_display_name  = "bdotest5sub"
  subscription_alias_name    = "bdotest5subalias"
  subscription_workload      = "Production"

}
