resource "grafana_oncall_integration" "AlertManager" {
  provider = grafana.oncall

  name = "AlertManager"
  type = "alertmanager"
  default_route {
    escalation_chain_id = grafana_oncall_escalation_chain.Devs.id
  }
}