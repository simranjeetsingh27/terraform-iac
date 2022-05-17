#pass the cidr block of your infra.
variable "cidrblock" {
  default = "10.0.0.0/16"

}

#pass the region in which you want to create your infra.
variable "region" {
  default = "us-east-1"

}

#pass the number of public subnet you want to pass.
variable "public-subnet-count" {
  default = "2"

}

#pass the number of private subnet you want to pass.
variable "private-subnet-count" {
  default = "2"

}

#pass the name of the subnets.
variable "subnet-names" {
  default = ["ninja-pub-sub-01", "ninja-pub-sub-02", "ninja-priv-sub-01", "ninja-priv-sub-02"]

}


#security group variable.
variable "web-ingress" {

  default = {
 
    "22" = {
      port        = 22
      protocol    = "tcp"

    }
  }
}



#security group variable.
variable "Traefik-ingress" {

  default = {
    "443" = {
      port        = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
    "80" = {
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
    "22" = {
      port        = 22
      protocol    = "tcp"

    }
  }
}



