variable "secret_name" {
    description = "Name of the secret."
    type        = string
}

variable "secret_description" {
    description = "(Optional) Description of the secret."
    type        = string
    default     = null
}

variable "secret_values" {
    description = "The map of Key/values to be stored in Secret."
    type        = map(string)

    validation {
        condition = try(length(keys(var.secret_values)), 0) > 0
        error_message = "At least a single key/value pair is required."
    }
}

variable "kms_key_id" {
    description = "(Optional) ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret."
    type        = string
    default     = null
}

variable "recovery_window_in_days" {
    description = "(Optional) Number of days that AWS Secrets Manager waits before it can delete the secret."
    type        = number
    default     = 30

    validation {
        condition = var.recovery_window_in_days == 0 || (var.recovery_window_in_days >= 7 && var.recovery_window_in_days <= 30)
        error_message = "The value of `recovery_window_in_days` can be 0 to force deletion without recovery or range from 7 to 30 days."
    }
}

variable "policy_content" {
    description = "(Optional) (Optional) Valid JSON representing a resource policy."
    type        = string
    default     = null
}

variable "rotate_secret" {
    description = "(Optional) Flag to decide if Automation Rotation is enabled."
    type        = bool
    default     = false
}

variable "rotation_lambda_arn" {
    description = "(Optional) ARN of the Lambda function that can rotate the secret."
    type        = string
    default     = null
}

variable "rotation_days" {
    description = "(Optional) The number of days between automatic scheduled rotations of the secret."
    type        = number
    default     = 30
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the Secret."
  type        = map(string)
  default     = {}
}