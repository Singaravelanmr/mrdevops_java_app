output "subnet_id_a" {
  description = ""
  value       = aws_subnet.velans_subnet-a.id
}
output "subnet_id_b" {
  description = ""
  value       = aws_subnet.velans_subnet-b.id
}
output "subnet_id_c" {
  description = ""
  value       = aws_subnet.velans_subnet-c.id
}

output "vpc_id" {
  description = ""
  value       = aws_vpc.velans_vpc.id
}
