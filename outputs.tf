output "alb_dns_name" {
  description = "Application Load Balancer DNS Name"
  value       = aws_lb.application_lb.dns_name
}

output "webserver1_public_ip" {
  value = aws_instance.webserver1.public_ip
}

output "webserver2_public_ip" {
  value = aws_instance.webserver2.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}