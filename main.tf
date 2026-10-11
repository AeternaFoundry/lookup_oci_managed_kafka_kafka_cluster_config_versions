data "oci_managed_kafka_kafka_cluster_config_versions" "managed_kafka_kafka_cluster_config_versions_lookup" {
  for_each = var.managed_kafka_kafka_cluster_config_versions_lookup

  kafka_cluster_config_id = each.value.kafka_cluster_config_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

