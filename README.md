## Requirements

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | 4.2.0   |

## Providers

No providers.

## Modules

| Name                                         | Source               | Version |
| -------------------------------------------- | -------------------- | ------- |
| <a name="module_vpc"></a> [vpc](#module_vpc) | ./infrastructure/vpc | n/a     |

## Resources

No resources.

## Inputs

| Name                                                                                    | Description                       | Type           | Default | Required |
| --------------------------------------------------------------------------------------- | --------------------------------- | -------------- | ------- | :------: |
| <a name="input_azs"></a> [azs](#input_azs)                                              | Availability Zones                | `list(string)` | n/a     |   yes    |
| <a name="input_enable_nat_gateway"></a> [enable_nat_gateway](#input_enable_nat_gateway) | Enable NAT Gateway                | `bool`         | n/a     |   yes    |
| <a name="input_env"></a> [env](#input_env)                                              | Environment (dev, qa, test, prod) | `string`       | n/a     |   yes    |
| <a name="input_private_subnets"></a> [private_subnets](#input_private_subnets)          | Private subnets                   | `list(string)` | n/a     |   yes    |
| <a name="input_public_subnets"></a> [public_subnets](#input_public_subnets)             | Public subnets                    | `list(string)` | n/a     |   yes    |
| <a name="input_region"></a> [region](#input_region)                                     | AWS Region                        | `string`       | n/a     |   yes    |

## Outputs

No outputs.
