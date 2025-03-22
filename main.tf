module "vpc" {
  source  = "./modules/vpc"
  AWS_REGION = var.AWS_REGION
}

module "eks" {
  source  = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids= module.vpc.private_subnet_ids
}

