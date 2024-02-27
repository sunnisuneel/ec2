resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr

  tags = {
    "Name" = "myvpc"
  }

}


##########subnet#####
resource "aws_subnet" "subnets" {
  cidr_block = var.sudnet_cidr
  vpc_id     = aws_vpc.myvpc.id
  tags = {
    "Name " = "mysub"
  }
}