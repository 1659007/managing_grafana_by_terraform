resource "grafana_oncall_escalation_chain" "Devs" {
  provider = grafana.oncall

  name = "Devs"
}

// Notify users from on-call schedule
resource "grafana_oncall_escalation" "notify_schedule_step_Devs" {
  provider = grafana.oncall

  escalation_chain_id          = grafana_oncall_escalation_chain.Devs.id
  type                         = "notify_on_call_from_schedule"
  notify_on_call_from_schedule = grafana_oncall_schedule.schedule_Devs.id
  position                     = 0
}

// Wait step for 5 Minutes
resource "grafana_oncall_escalation" "wait_step_Devs" {
  provider = grafana.oncall

  escalation_chain_id = grafana_oncall_escalation_chain.Devs.id
  type                = "wait"
  duration            = 300
  position            = 1
}

// Notify default Slack channel step
# resource "grafana_oncall_escalation" "notify_step_Devs" {
#   provider = grafana.oncall
#
#   escalation_chain_id = grafana_oncall_escalation_chain.Devs.id
#   type                = "notify_whole_channel"
#   important           = true
#   position            = 2
# }