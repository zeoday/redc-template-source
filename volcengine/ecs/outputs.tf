output "ecs_ip" {
  value       = volcengine_eip_address.eip.eip_address
  description = "ECS public IP address"
}

output "ecs_password" {
  value       = nonsensitive(random_password.password.result)
  description = "ECS SSH password"
}
