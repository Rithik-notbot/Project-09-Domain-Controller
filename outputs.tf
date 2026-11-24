output "instance_id" {
  description = "Windows Server EC2 instance ID"
  value       = aws_instance.domain_controller.id
}

output "private_ip" {
  description = "Private IP address of the domain controller"
  value       = aws_instance.domain_controller.private_ip
}

output "security_group_id" {
  description = "Domain controller security group ID"
  value       = aws_security_group.domain_controller.id
}

output "ami_id" {
  description = "Selected Windows Server AMI ID"
  value       = data.aws_ami.windows_server.id
}