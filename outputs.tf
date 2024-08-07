output "vpc_id" {
  value = aws_vpc.example_vpc.id
}

output "private_subnet_1_id" {
  value = aws_subnet.example_subnet_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.example_subnet_2.id
}

output "example_ec2_role_arn" {
  value = aws_iam_role.example_ec2_role.arn
}