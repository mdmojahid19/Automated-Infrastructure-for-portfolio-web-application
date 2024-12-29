output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "ec2_public_ip" {
  value = aws_instance.s11.public_ip
}

output "elb_dns_name" {
  value = aws_elb.web_elb.dns_name
}

