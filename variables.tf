# Variables
variable "region" {
  description = "AWS region where all resource will be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.16.0.0/16"
}

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}

variable "preferred_number_of_public_subnets" {
  type    = number
  default = 2
}

variable "preferred_number_of_private_subnets" {
  type    = number
  default = 4
}

variable "project_name" {
  description = "Learn IaC with Terraform"
  type        = string
  default     = "Learn AWS with IaC"
}


variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "az_count" {
  description = "Number of Availability Zone to use"
  type        = number
  default     = 2


  validation {
    condition     = var.az_count >= 1 && var.az_count == floor(var.az_count)
    error_message = "az must be a positive number"
  }
}

variable "common_tags" {
  description = "Common tags applied to AWS resources"
  type        = map(string)

  default = {
    ManagedBy = "Terraform"
    Owner     = "Devops Teams"
  }
}


# Key-Pairs values variables
variable "managed_by" {
  description = "Tool used to manage the infrastructure"
  type        = string
  default     = "Terraform"
}

variable "owner" {
  description = "Team responsible for the infrastructure"
  type        = string
  default     = "Devops Team"
}

variable "cost_center" {
  description = "Department or cost center responsible for costs"
  type        = string
  default     = "Engineering"
}

variable "public_subnet_type" {
  description = "Type tag valuefor public subnets"
  type        = string
  default     = "Public"
}

variable "private_subnet_type" {
  description = "Type tag valuefor private subnets"
  type        = string
  default     = "Private"
}


variable "vpc_resource_type" {
  description = "Resource type tag value for the VPC"
  type        = string
  default     = "VPC"
}

variable "subnet_resource_type" {
  description = "Resource type tag value for subnets"
  type        = string
  default     = "Subnet"
}

variable "internet_gateway_resource_type" {
  description = "Resource type tag value for the Internet Gateway"
  type        = string
  default     = "InternetGateway"
}

variable "route_table_resource_type" {
  description = "Resource type tag value for route tables"
  type        = string
  default     = "RouteTable"
}




variable "name" {
  type    = string
  default = "ACS"

}

variable "ami" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "keypair" {
  type        = string
  description = "key pair for the instances"
}

variable "account_no" {
  type        = number
  description = "the account number"
}

variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}
