output "managed_kafka_kafka_cluster_config_versions_lookup_id" {
  description = "Map of id values across all managed_kafka_kafka_cluster_config_versions_lookup, keyed the same as var.managed_kafka_kafka_cluster_config_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_config_versions.managed_kafka_kafka_cluster_config_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_kafka_cluster_config_versions_lookup_filter" {
  description = "Map of filter values across all managed_kafka_kafka_cluster_config_versions_lookup, keyed the same as var.managed_kafka_kafka_cluster_config_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_config_versions.managed_kafka_kafka_cluster_config_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "managed_kafka_kafka_cluster_config_versions_lookup_kafka_cluster_config_id" {
  description = "Map of kafka_cluster_config_id values across all managed_kafka_kafka_cluster_config_versions_lookup, keyed the same as var.managed_kafka_kafka_cluster_config_versions_lookup except keys with no kafka_cluster_config_id are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_config_versions.managed_kafka_kafka_cluster_config_versions_lookup : k => v.kafka_cluster_config_id if v.kafka_cluster_config_id != null && length(v.kafka_cluster_config_id) > 0 }
}
output "managed_kafka_kafka_cluster_config_versions_lookup_kafka_cluster_config_version_collection" {
  description = "Map of kafka_cluster_config_version_collection values across all managed_kafka_kafka_cluster_config_versions_lookup, keyed the same as var.managed_kafka_kafka_cluster_config_versions_lookup except keys with no kafka_cluster_config_version_collection are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_config_versions.managed_kafka_kafka_cluster_config_versions_lookup : k => v.kafka_cluster_config_version_collection if v.kafka_cluster_config_version_collection != null && length(v.kafka_cluster_config_version_collection) > 0 }
}

