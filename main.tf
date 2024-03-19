provider "kubernetes" {
  config_context = "minikube"
}

provider "aws" {
  region = "us-west-2"
}

module "kubernetes_resources" {
  source = "./kubernetes"
}

module "iam_resources" {
  source = "./iam"
}

output "kubernetes_resources" {
  value = module.kubernetes_resources
}

output "iam_resources" {
  value = module.iam_resources
}