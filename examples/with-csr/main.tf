terraform {
  required_version = ">= 0.13"
}

module "example" {
  source = "../../"

  request_cert = true
  algorithm    = "ECDSA"
  common_name  = "example.com"

  dns_names = [
    "example.com",
    "www.example.com",
  ]
}
