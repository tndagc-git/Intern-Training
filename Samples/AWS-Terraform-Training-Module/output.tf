#########################################
# Outputs
# Show important information after deployment
#########################################

output "web_public_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web.public_ip
}

output "website_url" {
  description = "URL to access the website"
  value       = "http://${aws_instance.web.public_ip}"
}
