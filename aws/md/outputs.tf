output "public_ip" {
  value       = "${aws_instance.hackmd.public_ip}"
  description = "public_ip"
}

output "public_dns" {
  value       = "${aws_instance.hackmd.public_dns}"
  description = "public_dns"
}

output "md_address_link" {
  value       = "http://${aws_instance.hackmd.public_ip}:3000"
  description = "md address link."
}