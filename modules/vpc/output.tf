output "vpc_id" {
  value = aws_vpc.main-vpc.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.main-public-1.id,
    aws_subnet.main-public-2.id,
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.main-private-1.id,
    aws_subnet.main-private-2.id,
  ]
}