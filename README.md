# Terraform Module Docker Container

Terraform module which runs a docker container by [Terraform Provider for (Operating) System](https://registry.terraform.io/providers/neuspaces/system).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [system_command.docker_run](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_command"></a> [command](#input\_command) | the command to be executed by the container | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | the image to run | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name for the container | `string` | n/a | yes |
| <a name="input_publish"></a> [publish](#input\_publish) | the port publishing specification | `string` | n/a | yes |
| <a name="input_restart_policy"></a> [restart\_policy](#input\_restart\_policy) | the restart policy (https://docs.docker.com/engine/reference/commandline/run/#restart) | `string` | `"no"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->