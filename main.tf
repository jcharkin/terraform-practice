resource "aws_instance" "myfirstec2" {
  ami                  = var.aws_ami
  instance_type        = var.instance_type["nano"]
  iam_instance_profile = var.iam_role
  user_data            = file("./user-data.sh")
  count                = 3
  tags = {
    Name = "EC2Instance${count.index + 1}"
  }
}

resource "aws_instance" "mysecondec2" {
  ami                  = var.aws_ami
  instance_type        = var.instance_type["micro"]
  iam_instance_profile = var.iam_role
  user_data            = file("./user-data1.sh")
  tags = {
    Name = "mysecondec2"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "test19876534243tf"
}
