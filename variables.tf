variable "tag" {
  type = list(string)

}
variable "cidr_block" {
  type = list(string)

}
variable "dns_support" {
  type = bool

}
variable "dns_hostname" {
  type = bool

}
variable "key_name" {
  type = string
  default = "rocket"

}
variable "availability_zone" {
  type = list(string)

}
variable "ami" {
  type    = string
  default = "ami-0b6d9d3d33ba97d99"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "port" {
  type = list(number)

}
variable "protocol" {
  type = string
  default = "tcp"
}