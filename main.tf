resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy_names)

  name = each.value
}

# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
 
# Configure the New Relic provider
provider "newrelic" {
account_id = var.NEWRELIC_ACCOUNT_ID
  api_key    = var.NEWRELIC_API_KEY   # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}
