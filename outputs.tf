output "instance_id" {
  value = aws_instance.lab01.id
}

output "public_ip" {
  value = aws_instance.lab01.public_ip
}

output "public_dns" {
  value = aws_instance.lab01.public_dns
}
