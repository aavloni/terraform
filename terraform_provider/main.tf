terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

#Configure the Harness provider for Next Gen resources
provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "${var.account_id}"
  platform_api_key = "${var.api_key}"
}

resource "harness_platform_usergroup" "userGroupTerraformTest" {
  identifier         = "terraformtest2"
  name               = "Terraform Test 2"
}
