resource "vault_audit" "audits" {
  for_each = var.audits

  options     = each.value.options
  type        = each.value.type
  description = each.value.description
  local       = each.value.local
  namespace   = each.value.namespace
  path        = each.value.path
}

