terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.3.0"
    }
  }

  required_version = ">= 0.14.9"
}

variable "project_tags" {
  type        = map(string)
  description = "Tags used for aws tutorial"
  default = {
    project = "aws-ak-test"
  }
}

data "aws_availability_zones" "available" {}
