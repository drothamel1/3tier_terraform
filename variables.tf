variable "namespace" {
  description = "The project namespace for resource naming"
}

variable "ssh_keypair" {
  description = "SSH keypair to use for EC2 instance"
  default     = null
  type        = string
}
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}