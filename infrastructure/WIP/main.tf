terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project             = var.project_name
      Environment         = var.environment
      ManagedBy           = "terraform"
      Owner               = var.owner_email
      Version             = var.app_version
      DataClassification  = var.default_data_classification
    }
  }
}

# Variables
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-west-2"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "tattoo-artist-directory"
}