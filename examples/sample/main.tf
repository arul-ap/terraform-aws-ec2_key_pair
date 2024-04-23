terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = var.default_tags
  }
}

module "ec2_key_pair" {
  source = "arul-ap/ec2_key_pair/aws"
  org    = "abc"
  proj   = "proj-x"
  env    = "dev"

  key-pairs = {
    bastion-ssh-key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0DDDORJMxidUHHDlzbJOPDPAPe9KPScv3Lyi/LeJ8V3SoOmDv/ZjPzM17SyWJYm9GUa/TliEfip2GQn6L/SInK/X7za0Yb04WATtmMDv5FxB5oFE5k6AoGgkQ0eMiMI86zWQFfrmWa5n1JBpm1lwC2IqpyO2nCgIfQTzTamvG9TEQC8meY01ECZCjRljeYiSto3y98HXqj+RO/bWwsnHjwhFYNyKjSTanaGacg1/Eo/povzwo3tyP7bqlY9oYawMqzHKHc/OdE1Gcz62gMSHVrh+q6RyvBaatAYHKWrESwKarDLL0dWej2knxgc4mdhrGkojMwl/QdOw87Ll6bIzN"
  }
}
