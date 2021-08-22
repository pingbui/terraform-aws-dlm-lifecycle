## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dlm_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dlm_lifecycle_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description for the DLM lifecycle policy. | `string` | n/a | yes |
| <a name="input_execution_role_arn"></a> [execution\_role\_arn](#input\_execution\_role\_arn) | The ARN of an IAM role that is able to be assumed by the DLM service. | `string` | n/a | yes |
| <a name="input_policy_details"></a> [policy\_details](#input\_policy\_details) | Details of the policy. | <pre>set(object(<br>    {<br>      resource_types = list(string)<br>      schedule = list(object(<br>        {<br>          copy_tags = bool<br>          create_rule = list(object(<br>            {<br>              interval      = number<br>              interval_unit = string<br>              times         = list(string)<br>            }<br>          ))<br>          name = string<br>          retain_rule = list(object(<br>            {<br>              count = number<br>            }<br>          ))<br>          tags_to_add = map(string)<br>        }<br>      ))<br>      target_tags = map(string)<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | Whether the lifecycle policy should be enabled or disabled. ENABLED or DISABLED are valid values. Defaults to ENABLED. | `string` | `"ENABLED"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The arn of this lifecycle. |
| <a name="output_id"></a> [id](#output\_id) | The id of this lifecycle. |
| <a name="output_lifecycle"></a> [lifecycle](#output\_lifecycle) | All about this lifecycle |
