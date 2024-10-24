variable "region" {
  default = "us-east-2"
}

variable "zone1" {
  default = "us-east-2a"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "public_key" {
  description = "public key content"
  type        = string
  default     = ""
}
