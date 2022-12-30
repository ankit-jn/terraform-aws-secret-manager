## ARJ-Stack: AWS Secret Manager Terraform module

A Terraform module for managing resources in AWS Secret Manager

### Resources

This module features the following components to be provisioned:

- Secret Manager Secret [[aws_secretsmanager_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret)]
- Secret Manager Secret Version [[aws_secretsmanager_secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version)]
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

| Name | Description | Type | Default | Required | Example|
|:------|:------|:------|:------|:------:|:------|

### Outputs

| Name | Type | Description |
|:------|:------|:------|

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-secret-manager/graphs/contributors).