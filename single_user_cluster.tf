
resource "databricks_cluster" "single_user_cluster" { 
  cluster_name            = "gc-tf-singleuser"
  spark_version           = "14.3.x-cpu-ml-scala2.12"
  node_type_id            = "Standard_DS3_v2"
  autotermination_minutes = 20
  data_security_mode      = "SINGLE_USER"

  spark_conf = {
    # Single-node
    "spark.databricks.cluster.profile" : "singleNode"
    "spark.master" : "local[*]"
  }

  custom_tags = {
    "ResourceClass" = "SingleNode"
  }

  cluster_log_conf {
    dbfs {
      destination = "dbfs:/mnt/acao-container/databricks-cluster-logs"
    }
  }
}