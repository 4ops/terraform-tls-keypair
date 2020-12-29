output "algorithm" {
  value = tls_private_key.this.algorithm

  description = "This CA key algorithm."
}

output "private_key_pem" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true

  description = "Private key in PEM format."
}

output "public_key_pem" {
  value = tls_private_key.this.public_key_pem

  description = "Public key in PEM format."
}

output "public_key_openssh" {
  value = tls_private_key.this.public_key_openssh

  description = "Public key in OpenSSH format."
}

output "cert_request_pem" {
  value = join("", tls_cert_request.this.*.cert_request_pem)

  description = "Certificate signing request in PEM format."
}
