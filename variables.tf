variable "environment" {
  description = "Environment"
  default = "staging"
}

variable "aws_region" {
  default = "ap-southeast-1"
}

// VPC
variable "vpc_name" {
  description = "VPC Name"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
}

// IP Whitelist
variable "whitelist_ip" {
  description = "Whitelist IP address"
}

// SSH
variable "ssh_public_key_path" {
  description = "Path location for ssh public key"
}
