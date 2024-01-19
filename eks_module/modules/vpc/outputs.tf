
output "velans_subnet-a" {
  description = ""
  value       = aws_subnet.velans_subnet-a.id
}
output "subnet_id_b" {
  description = ""
  value       = aws_subnet.subnet-b.id
}
output "subnet_id_c" {
  description = ""
  value       = aws_subnet.subnet-c.id
}

output "vpc_id" {
  description = ""
  value       = aws_vpc.vpc.id
}
