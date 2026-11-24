variable "vpc_id" {
  description = "Company-approved existing VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Company-approved subnet ID"
  type        = string
}

variable "allowed_rdp_cidr" {
  description = "Approved administrator public IP in CIDR notation"
  type        = string
}

variable "instance_type" {
  description = "Windows Server EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "key_pair_name" {
  description = "Existing approved EC2 key pair name"
  type        = string
}