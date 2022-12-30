## ARJ-Stack: AWS Secret Manager Terraform module

A Terraform module for managing resources in AWS Secret Manager

### Resources

This module features the following components to be provisioned:

- Secret Manager Secret [[aws_secretsmanager_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret)]
- Secret Manager Secret Version [[aws_secretsmanager_secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version)]
- Secret Manager Secret Policy [[aws_secretsmanager_secret_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_policy)]
- Secret Manager Secret Rotation [[aws_secretsmanager_secret_rotation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_rotation)]

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.22.0 |

### Examples

Refer [Configuration Examples](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-secret-manager) for effectively utilizing this module.

### Inputs
---

| Name | Description | Type | Default | Required |
|:------|:------|:------|:------|:------:|
| <a name="secret_name"></a> [secret_name](#input\_secret\_name) | Name of the secret. | `string` |  | yes |
| <a name="secret_description"></a> [secret_description](#input\_secret\_description) | Description of the secret. | `string` | `null` | no |
| <a name="secret_values"></a> [secret_values](#input\_secret\_values) | The map of Key/values to be stored in Secret | `map(string)` |  | yes |
| <a name="kms_key_id"></a> [kms_key_id](#input\_kms\_key\_id) | ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. | `strin` | `null` | no |
| <a name="recovery_window_in_days"></a> [recovery_window_in_days](#input\_recovery\_window\_in\_days) | Number of days that AWS Secrets Manager waits before it can delete the secret. | `number` | `30` | no |
| <a name="policy_content"></a> [policy_content](#input\_policy\_content) | Valid JSON representing a resource policy. | `string` | `null` | no |
| <a name="rotate_secret"></a> [rotate_secret](#input\_rotate\_secret) | Flag to decide if Automation Rotation is enabled. | `bool` | `false` | no |
| <a name="rotation_lambda_arn"></a> [rotation_lambda_arn](#input\_rotation\_lambda\_arn) | ARN of the Lambda function that can rotate the secret. | `strin` | `null` | no |
| <a name="rotation_days"></a> [rotation_days](#input\_rotation\_days) | The number of days between automatic scheduled rotations of the secret. | `number` | `30` | no |
| <a name="tags"></a> [tags](#input\_tags) | A map of tags to assign to the Secret. | `map(string)` | `{}` | no |

### Outputs

| Name | Type | Description |
|:------|:------|:------|
| <a name="arn"></a> [arn](#output\_arn) | ARN of the secret. | `string` |
| <a name="secret"></a> [secret](#output\_secret) | A pipe delimited combination of secret ID and version ID. | `string` |
| <a name="version_id"></a> [version_id](#output\_version\_id) | The unique identifier of the version of the secret. | `string` |
| <a name="rotation_enabled"></a> [rotation_enabled](#output\_rotation\_enabled) | Whether automatic rotation is enabled for this secret. | `bool` |

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-secret-manager/graphs/contributors).