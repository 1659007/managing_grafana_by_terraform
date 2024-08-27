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

   url   = "http://localhost:3000/?orgId=1"
   auth  = "glsa_a7HpswDeC0dHnZvuSSQbQC8eIlVTMQdL_e2159c9d"
}