variable "ami" {
  type    = string
  default = "ami-02453f5468b897e31"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "iam_instance_profile" {
  type    = string
  default = "ec2_profile"
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "user_data" {
  type    = string
  default = ""
}

variable "key_name" {
  type    = string
  default = "deployer-key"
}

variable "kms" {
  type    = string
  default = ""
}

variable "ebs_size" {
  type = number
  default = 0
}

variable "ebs_type" {
  type = string
  default = ""
}

variable "device_name" {
  type = string
  default = ""
}

variable "availability_zone" {
  type = string
  default = ""
}


variable "ec2_tags" {
  type    = map(string)
  default = {}
}

variable "ebs_tags" {
  type    = map(string)
  default = {}
}