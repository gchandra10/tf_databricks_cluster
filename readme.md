# Databricks Deploy Cluster

## Initialize Terraform & Validate Config

```
terraform init
terraform validate
```
## Plan & Deploy a UC Single User Cluster

### Spark Version & Node Type IDs are fixed.

```
terraform plan -target=databricks_cluster.single_user_cluster

terraform apply -target=databricks_cluster.single_user_cluster
```
## Deploy a UC Shared Cluster

### Spark Version & Node Type IDs are dynamically added based on properties.

```
terraform plan -target=databricks_cluster.shared_cluster

terraform apply -target=databricks_cluster.shared_cluster
```

