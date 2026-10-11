output "vpss_lookup_id" {
  description = "Map of id values across all vpss_lookup, keyed the same as var.vpss_lookup except keys with no id are omitted"
  value       = { for k, v in data.ovh_vpss.vpss_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpss_lookup_result" {
  description = "Map of result values across all vpss_lookup, keyed the same as var.vpss_lookup except keys with no result are omitted"
  value       = { for k, v in data.ovh_vpss.vpss_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

