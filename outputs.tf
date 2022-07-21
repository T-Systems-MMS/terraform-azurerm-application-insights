output "application_insights" {
  description = "azurerm_application_insights"
  value = {
    for application_insights in keys(azurerm_application_insights.application_insights) :
    application_insights => {
      id                  = azurerm_application_insights.application_insights[application_insights].id
      name                = azurerm_application_insights.application_insights[application_insights].name
      app_id              = azurerm_application_insights.application_insights[application_insights].app_id
      instrumentation_key = azurerm_application_insights.application_insights[application_insights].instrumentation_key
      connection_string   = azurerm_application_insights.application_insights[application_insights].connection_string
    }
  }
}
