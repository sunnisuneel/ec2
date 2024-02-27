output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "sudnet_cidr" {
  value = aws_subnet.subnets.id
}
output "webinfra" {
  value = aws_instance.webinfra.public_ip
  
}