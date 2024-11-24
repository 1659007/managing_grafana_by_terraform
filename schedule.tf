# # Name of the Slack channel to notify about on-call schedules for Devs
# data "grafana_oncall_slack_channel" "Devs" {
#   provider = grafana.oncall
#
#   name = "<Devs-channel-name>"
# }
#
# # Name of the Slack channel to notify about on-call schedules for SREs
# data "grafana_oncall_slack_channel" "SREs" {
#   provider = grafana.oncall
#
#   name = "<SREs-channel-name>"
# }

resource "grafana_oncall_schedule" "schedule_Devs" {
  provider = grafana.oncall

  name             = "Devs"
  type             = "ical"
  ical_url_primary = "<secret-iCal-URL-for-devs-calendar>"
  # slack {
  #   channel_id = data.grafana_oncall_slack_channel.Devs.slack_id
  # }
}

resource "grafana_oncall_schedule" "schedule_SREs" {
  provider = grafana.oncall

  name             = "SREs"
  type             = "ical"
  ical_url_primary = "<secret-iCal-URL-for-SREs-calendar>"
  # slack {
  #   channel_id = data.grafana_oncall_slack_channel.SREs.slack_id
  # }
}