# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "NV5-Geospatial"

    workspaces {
      name = "chandlers-scratch-workspace"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

# TEST
# resource "aws_security_group" "github-actions" {
#   name        = "github-actions"
#   description = "This is just a test for a github-actions tutorial."

#   tags = {
#     Name = "github-actions"
#   }
# }

