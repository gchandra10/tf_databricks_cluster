terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "databricks" {
  profile = "demo-east-us2"
}

# data "databricks_node_type" "smallest" {
#   local_disk = true
# }

# data "databricks_spark_version" "latest_lts" {
#   long_term_support = true
# }