terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = ">= 2.9.0"
      }
   }
}

provider "grafana" {
   alias = "cloud"

   url   = "https://hashaha221013.grafana.net/"
   auth  = "glsa_OYKaWvLSwnLwAmTeRCHj0sFvB4ZmGF4X_0b3ca955"
}