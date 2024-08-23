module "github-oidc" {
  source = "terraform-module/github-oidc-provider/aws"

  create_oidc_provider = true
  create_oidc_role     = true

  repositories              = ["Misio942/aws-containers-vpc"]
  oidc_role_attach_policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]

  tags = {
    managed = "terraform"
  }

}

output "oidc_provider_arn" {
  description = "OIDC provider ARN"
  value       = module.github-oidc.oidc_provider_arn
}

output "github_oidc_role" {
  description = "CICD GitHub role."
  value       = module.github-oidc.oidc_role
}

