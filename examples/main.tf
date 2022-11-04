terraform {
  required_providers {
    hashicups = {
      version = "0.2"
      source  = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {}

module "psl" {
  source = "./coffee"

  coffee_name = "Packer Spiced Latte"
}

data "hashicups_order" "order" {
  id = 3
}

output "order" {
  value = data.hashicups_order.order
}

output "psl" {
  value = module.psl.coffee
}
