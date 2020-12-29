output "algorithm" {
  value = module.example.algorithm
}

output "private_key_pem" {
  value     = module.example.private_key_pem
  sensitive = true
}

output "public_key_pem" {
  value = module.example.public_key_pem
}

output "public_key_openssh" {
  value = module.example.public_key_openssh
}
