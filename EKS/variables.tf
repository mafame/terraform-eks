#
# Variables Configuration
#

variable "cluster-name" {
  default = "eks25"
  type    = string
}
variable "key_pair_name" {
  default = "jenkins"
}
variable "eks_node_instance_type" {
  default = "t2.medium"
}
variable "instance_type" {
  default = "t2.medium"
}
