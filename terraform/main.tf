module "Development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rahulnagpure+dev@gmail.com"
    AccountName               = "Development"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "rahulnagpure+dev@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "Dev"
  }

  account_tags = {
    "Managed by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Rahul Nagpure"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Dev"
}

module "UAT" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rahulnagpure+uat@gmail.com"
    AccountName               = "UAT"
    ManagedOrganizationalUnit = "UAT"
    SSOUserEmail              = "rahulnagpure+uat@gmail.com"
    SSOUserFirstName          = "UAT"
    SSOUserLastName           = "UAT"
  }

  account_tags = {
    "Managed by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Rahul Nagpure"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "UAT"
}