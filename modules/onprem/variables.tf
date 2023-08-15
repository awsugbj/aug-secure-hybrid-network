variable "cloud_cidr" {
    description         = "CIDR du des subnets Cloud"
    type                = string
}

variable "vpc_cidr" {
    description         = "CIDR du VPC Onprem"
    type                = string
}

variable "subnet_privatea_cidr" {
    description         = "CIDR du subnet Private-A"
    type                = string
}

variable "subnet_publica_cidr" {
    description         = "CIDR du subnet Public-A"
    type                = string
}

variable "server_vpn_private_ips" {
    description         = "Liste des IP privees pour le server VPN dans le subnet Public-A"
    type                = list(string)
}

variable "server_vpn_instance_type" {
    description         = "Instance Type EC2 du Server VPN"
    type                = string
}

variable "resource_prefix" {
    description         = "Prefixe pour le nom des ressources"
    type                = string
}
