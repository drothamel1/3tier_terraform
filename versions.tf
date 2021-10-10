terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.1"
    }
  }
  
# code to create remote state on terraform cloud
# delete or comment out to run locally
backend "remote" {
    organization = "<insert your organization here>"

    workspaces {
      name = "3tier-test"
    }
  }
}
