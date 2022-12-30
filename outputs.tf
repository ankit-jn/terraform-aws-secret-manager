output "arn" {
    description = "ARN of the secret."
    value = aws_secretsmanager_secret.this.arn
}

output "secret" {
    description = "A pipe delimited combination of secret ID and version ID."
    value = aws_secretsmanager_secret_version.this.id
}

output "version_id" {
    description = "The unique identifier of the version of the secret."
    value = aws_secretsmanager_secret_version.this.version_id
}

output "rotation_enabled" {
    description = "Whether automatic rotation is enabled for this secret."
    value = aws_secretsmanager_secret.this.rotation_enabled
}