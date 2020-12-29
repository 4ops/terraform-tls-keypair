terraform {
  required_version = ">= 0.13"

  required_providers {
    tls = "~> 3.0.0"
  }
}

resource "tls_private_key" "this" {
  algorithm   = var.algorithm
  ecdsa_curve = var.ecdsa_curve
  rsa_bits    = var.rsa_bits
}

resource "tls_cert_request" "this" {
  count = var.request_cert ? 1 : 0

  key_algorithm   = tls_private_key.this.algorithm
  private_key_pem = tls_private_key.this.private_key_pem

  subject {
    common_name         = var.common_name
    organization        = var.organization
    organizational_unit = var.organizational_unit
    street_address      = var.street_address
    locality            = var.locality
    province            = var.province
    country             = var.country
    postal_code         = var.postal_code
    serial_number       = var.serial_number
  }

  dns_names    = var.dns_names
  ip_addresses = var.ip_addresses
}
