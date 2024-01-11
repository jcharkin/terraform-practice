variable "aws_ami" {
  type    = string
  default = "ami-02cad064a29d4550c"
}

variable "instance_type" {
  type = map
  default = {
    "nano"  = "t2.nano"
    "micro" = "t2.micro"
  }
}

variable "iam_role" {
  type    = string
  default = "SSM-Agent-Role"
}