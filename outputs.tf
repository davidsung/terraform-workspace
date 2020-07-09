# Output values
output "web_endpoint" {
  value = aws_instance.web.public_dns
}