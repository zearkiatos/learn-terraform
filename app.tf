module "app-demo" {
  source        = "github.com/zearkiatos/remote-modules-terraform/modules/instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
  sg_name       = var.sg_name
  ingress_rules = var.ingress_rules
}
