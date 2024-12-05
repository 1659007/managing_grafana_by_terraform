resource "grafana_data_source" "grafanaTestdataDatasource" {
  provider = grafana.cloud

  name = "TestData"
  type = "testdata"
}