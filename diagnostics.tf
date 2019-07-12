#Creates the diagnostics settings for the public ip
resource "azurerm_monitor_diagnostic_setting" "public_ip_diags" {

name                             = "${azurerm_public_ip.public_ip.name}-diag"
target_resource_id               = "${azurerm_public_ip.public_ip.id}"
eventhub_name                    = "${var.diagnostics_map.eh_name}"
eventhub_authorization_rule_id   = "${var.diagnostics_map.eh_id}/authorizationrules/RootManageSharedAccessKey"
log_analytics_workspace_id       = "${var.log_analytics_workspace.id}"
storage_account_id               = "${var.diagnostics_map.diags_sa}"
log {

        category =  "DDoSProtectionNotifications"
        retention_policy {
            days   = 90
            enabled = true
        }
        }
log {

        category =  "DDoSMitigationFlowLogs"
        retention_policy {
            days   = 90
            enabled = true
        }
        }
log {

        category =  "DDoSMitigationReports"
        retention_policy {
            days   = 90
            enabled = true
        }
        }
metric {
        category = "AllMetrics"

        retention_policy {
            days    = 90
            enabled = true
                }
    }
}  