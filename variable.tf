variable "region" {
  type = string

}
variable "vpc_cidr" {
  type = string

}
variable "sudnet_cidr" {
  type = string

}
variable "ami" {
  type = string
  default = "ami-0e5f882be1900e43b"
  
}