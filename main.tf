module "vpc" {
    source              = "./vendor/modules/vpc"
    VPC_CIDR            = var.VPC_CIDR
    ENV                 = var.ENV
    AZ                  = var.AZ
    PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
    PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
    DEFAULT_VPC_ID      = var.DEFAULT_VPC_ID
    DEFAULT_VPC_CIDR    = var.DEFAULT_VPC_CIDR
    DEFAULT_VPC_RT      = var.DEFAULT_VPC_RT
    PRIVATE_SUBNET_IDS  = var.PRIVATE_SUBNET_IDS
}

# We cannot parameterize anything that is added in the source

# To limit that, we can use a tool called as Terrafile. All it does is clones the remote code from the specified branch and make it locally available. 