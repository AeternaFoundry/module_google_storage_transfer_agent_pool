output "storage_transfer_agent_pools_id" {
  description = "Map of id values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no id are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_transfer_agent_pools_bandwidth_limit" {
  description = "Map of bandwidth_limit values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no bandwidth_limit are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => one(v.bandwidth_limit) if v.bandwidth_limit != null && length(v.bandwidth_limit) > 0 }
}
output "storage_transfer_agent_pools_deletion_policy" {
  description = "Map of deletion_policy values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_transfer_agent_pools_display_name" {
  description = "Map of display_name values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no display_name are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "storage_transfer_agent_pools_name" {
  description = "Map of name values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no name are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_transfer_agent_pools_project" {
  description = "Map of project values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no project are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.project if v.project != null && length(v.project) > 0 }
}
output "storage_transfer_agent_pools_state" {
  description = "Map of state values across all storage_transfer_agent_pools, keyed the same as var.storage_transfer_agent_pools except keys with no state are omitted"
  value       = { for k, v in google_storage_transfer_agent_pool.storage_transfer_agent_pools : k => v.state if v.state != null && length(v.state) > 0 }
}

