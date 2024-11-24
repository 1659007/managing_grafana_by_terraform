resource "grafana_oncall_route" "route_SREs" {
  provider = grafana.oncall

  integration_id      = grafana_oncall_integration.AlertManager.id
  escalation_chain_id = grafana_oncall_escalation_chain.SREs.id
  routing_regex       = "\"namespace\" *: *\"ops-.*\""
  position            = 0
}