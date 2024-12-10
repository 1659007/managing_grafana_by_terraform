resource "grafana_data_source" "grafanaTestdataDatasource" {
  provider = grafana.cloud

  name = var.datasource
  type = var.datasource
}