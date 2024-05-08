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

  public_keys = {
    test-ec2-key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC36iPxZu9RxZZ5VytE5KC9kshMbZOoQ7dKGE3QafajSYxoCYQBRhHAS3/MWf1giqhH+YPLpRIm65m9tfkcKziMUC+Oe10HM50wY3TFmORqjImcRymyU2W7AlcgfIpGa7ytSO4HU1XzZUkmoD4g2BJwP+SMDUlQ8OWoZaHWJ/IosRK+/8a3epAHWxWTyBN/TsEN01/QFGoy1qToaD1qD/s+LmGRjj4pYEIhzhirZBCsXSR8plJZjMKl/y9k7LwxsoV6QavFJ5lfLKFWfgbF1Y9LVl+Ev6DowNHKimCAkIZ4Gj7zGzex8ZTquw8LT9aHYnfnGNLmtubVw9SM4axvVxbN test-ec2"
  }
}
