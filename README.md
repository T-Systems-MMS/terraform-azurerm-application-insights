<!-- BEGIN_TF_DOCS -->
# application_insights

This module manages Azure Application Insights.

<-- This file is autogenerated, please do not change. -->

## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.0 |
| azurerm | >=3.11.0, <4.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >=3.11.0, <4.0 |

## Resources

| Name | Type |
|------|------|
| azurerm_application_insights.application_insights | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application_insights | resource definition, default settings are defined within locals and merged with var settings | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| application_insights | azurerm_application_insights |

## Examples

```hcl
module "application_insights" {
  source = "registry.terraform.io/T-Systems-MMS/application-insights/azurerm"
  application_insights = {
    function_app = {
      location                   = "westeurope"
      resource_group_name        = "service-env-rg"
      application_type           = "Node.JS"
      internet_ingestion_enabled = true
      internet_query_enabled     = true
      retention_in_days          = "90"
      tags = {
        service = "service_name"
      }
    }
  }
}
```
<!-- END_TF_DOCS -->