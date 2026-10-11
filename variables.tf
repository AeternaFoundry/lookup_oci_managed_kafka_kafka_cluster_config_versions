variable "managed_kafka_kafka_cluster_config_versions_lookup" {
  description = <<EOT
Map of managed_kafka_kafka_cluster_config_versions_lookup, attributes below
Required:
    - kafka_cluster_config_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    kafka_cluster_config_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

