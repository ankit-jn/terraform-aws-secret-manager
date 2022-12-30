data aws_caller_identity "this" {}

data aws_iam_policy_document "default_policy" {
    count = local.policy_available ? 0 : 1

    statement {
        effect = "Allow"
        actions = [
            "secretsmanager:*",
        ]
        resources = [ "*" ]

        principals {
            type        = "AWS"
            identifiers = ["arn:aws:iam::${data.aws_caller_identity.this.account_id}:root"]
        }
    }
}