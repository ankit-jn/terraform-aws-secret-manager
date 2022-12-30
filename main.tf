resource aws_secretsmanager_secret "this" {
    name        = var.secret_name
    description = var.secret_description

    kms_key_id  = var.kms_key_id

    tags = merge({"Name" = var.secret_name}, var.tags)
}

resource aws_secretsmanager_secret_version "this" {
    secret_id     = aws_secretsmanager_secret.this.id
    secret_string = jsonencode(var.secret_values)

    lifecycle {
        ignore_changes = [
            secret_string
        ]
    }
}

resource aws_secretsmanager_secret_policy "this" {
    secret_arn = aws_secretsmanager_secret.this.arn
    policy = local.policy_available ? var.policy_content : data.aws_iam_policy_document.default_policy[0].json
}

resource aws_secretsmanager_secret_rotation "this" {
    count = var.rotate_secret ? 1 : 0

    secret_id           = aws_secretsmanager_secret.this.id
    rotation_lambda_arn = var.rotation_lambda_arn

    rotation_rules {
        automatically_after_days = var.rotation_days
    }
}