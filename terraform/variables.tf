variable "region" {
  default = "us-east-1"
}

variable "zone1" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_key" {
  description = "public key content"
  type        = string
  default     = "Change me at deploy"
}
##