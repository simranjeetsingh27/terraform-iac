output "vpc_cidr" {
    value = aws_vpc.ninjavpc.id
  
}

output "igw" {
    value = aws_internet_gateway.ninjaigw.id
  
}

output "public-subnet-id" {
    value = aws_subnet.public_subnet.*.id
  
}

output "private-subnet-id" {
    value = aws_subnet.private_subnet.*.id
  
}

output "bastian-ig" {
    value = aws_instance.BastianServer.id
  
}

output "Traefik-ig" {
    value = aws_instance.Traefik-Server.id
  
}