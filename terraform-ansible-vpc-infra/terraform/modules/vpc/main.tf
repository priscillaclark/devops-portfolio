resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
<<<<<<< HEAD
    Name = "main-vpc"
=======
    Name = var.vpc_name
>>>>>>> terraform-ansible-vpc-infra
  }
}
