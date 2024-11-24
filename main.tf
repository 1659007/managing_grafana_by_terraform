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

provider "grafana" {
   alias = "oncall"

   oncall_access_token = "f74b0669bd7cdfa1b76e5e50a40717d773e5aa220e82c72aee8fda5bf828"
   oncall_url = "https://oncall-prod-us-central-0.grafana.net/oncall/"
}