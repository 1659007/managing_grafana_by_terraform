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

   oncall_access_token = "738ad693b1ddbc1cff1cd670102d5457bada34562bb699638b4251bec7d49d8a"
   oncall_url = "https://oncall-prod-us-central-0.grafana.net/oncall/"
}