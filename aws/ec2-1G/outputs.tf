output "public_ip" {
  value       = "${aws_instance.pte_node.public_ip}"
  description = "public_ip"
}

output "public_dns" {
  value       = "${aws_instance.pte_node.public_dns}"
  description = "public_dns"
}
