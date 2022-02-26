## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | Availability Zones | `list(string)` | n/a | yes |
| <a name="input_budget"></a> [budget](#input\_budget) | Team responsible for the resource | `string` | n/a | yes |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Enable NAT Gateway | `bool` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment (dev, qa, test, prod) | `string` | n/a | yes |
| <a name="input_hipaa"></a> [hipaa](#input\_hipaa) | HIPAA compliance | `bool` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner of the resource | `string` | n/a | yes |
| <a name="input_pii"></a> [pii](#input\_pii) | PII compliance | `bool` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | Private subnets | `list(string)` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | Public subnets | `list(string)` | n/a | yes |
| <a name="input_service"></a> [service](#input\_service) | Service offering | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Hours before the resource expires. *Use -1 for indefinite.* | `string` | `"168"` | no |

## Outputs

No outputs.
