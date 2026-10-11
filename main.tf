resource "google_storage_transfer_agent_pool" "storage_transfer_agent_pools" {
  for_each = var.storage_transfer_agent_pools

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  project         = each.value.project

  dynamic "bandwidth_limit" {
    for_each = each.value.bandwidth_limit != null ? [each.value.bandwidth_limit] : []
    content {
      limit_mbps = bandwidth_limit.value.limit_mbps
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

