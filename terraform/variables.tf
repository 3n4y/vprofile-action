variable "region" {
  default = "us-east-2"
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
  default     = ""
}
