resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy_names)

  name = each.value
}