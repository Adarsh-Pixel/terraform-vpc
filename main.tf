module "vpc" {
    source      = "./vendor/modules/vpc"
    VPC_CIDR    = var.VPC_CIDR
}

# We cannot parameterize anything that is added in the source

# To limit that, we can use a tool called as Terrafile. All it does is clones the remote code from the specified branch and make it locally available. 