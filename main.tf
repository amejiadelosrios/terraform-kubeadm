provider "aws" {
  region = "us-west-2"
}

module "network" {
  source  = "weibeld/kubeadm/aws//modules/network"
  version = "~> 0.2"
}

module "cluster" {
  source  = "weibeld/kubeadm/aws"
  version = "~> 0.2"
  vpc_id    = module.network.vpc_id
  subnet_id = module.network.subnet_id
}
output "nodes" {
  value = module.cluster.cluster_nodes
}