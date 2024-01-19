
output "velans_subnet-a" {
  description = ""
  value       = aws_subnet.velans_subnet-a.id
}
output "velans_subnet-b" {
  description = ""
  value       = aws_subnet.velans_subnet-b.id
}
output "velans_subnet-c" {
  description = ""
  value       = aws_subnet.velans_subnet-c.id
}

output "vpc_id" {
  description = ""
  value       = aws_vpc.vpc.id
}
