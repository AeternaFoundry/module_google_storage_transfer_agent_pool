variable "storage_transfer_agent_pools" {
  description = <<EOT
Map of storage_transfer_agent_pools, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - display_name
    - project
    - bandwidth_limit (block):
        - limit_mbps (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    display_name    = optional(string)
    project         = optional(string)
    bandwidth_limit = optional(object({
      limit_mbps = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

