variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}
variable "cidr_block_publicsubnet1" {
  default = "10.0.1.0/24"
}
variable "cidr_block_publicsubnet2" {
  default = "10.0.2.0/24"
}
variable "az_1a" {
  default = "us-east-1a"
}
variable "az_1b" {
  default = "us-east-1b"
}