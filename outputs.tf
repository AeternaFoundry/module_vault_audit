output "audits_id" {
  description = "Map of id values across all audits, keyed the same as var.audits except keys with no id are omitted"
  value       = { for k, v in vault_audit.audits : k => v.id if v.id != null && length(v.id) > 0 }
}
output "audits_description" {
  description = "Map of description values across all audits, keyed the same as var.audits except keys with no description are omitted"
  value       = { for k, v in vault_audit.audits : k => v.description if v.description != null && length(v.description) > 0 }
}
output "audits_local" {
  description = "Map of local values across all audits, keyed the same as var.audits except keys with no local are omitted"
  value       = { for k, v in vault_audit.audits : k => v.local if v.local != null }
}
output "audits_namespace" {
  description = "Map of namespace values across all audits, keyed the same as var.audits except keys with no namespace are omitted"
  value       = { for k, v in vault_audit.audits : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "audits_options" {
  description = "Map of options values across all audits, keyed the same as var.audits except keys with no options are omitted"
  value       = { for k, v in vault_audit.audits : k => v.options if v.options != null && length(v.options) > 0 }
}
output "audits_path" {
  description = "Map of path values across all audits, keyed the same as var.audits except keys with no path are omitted"
  value       = { for k, v in vault_audit.audits : k => v.path if v.path != null && length(v.path) > 0 }
}
output "audits_type" {
  description = "Map of type values across all audits, keyed the same as var.audits except keys with no type are omitted"
  value       = { for k, v in vault_audit.audits : k => v.type if v.type != null && length(v.type) > 0 }
}

