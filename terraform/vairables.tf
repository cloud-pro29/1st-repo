variable "vpc_cidr" {
  description = "vpc cidr"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "vayola"
}

variable "instance_ami" {
  default = "ami-08e637cea2f053dfa"
}

variable "instance_type" {
  default = "t2.micro"
}