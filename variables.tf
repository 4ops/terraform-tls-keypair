variable "algorithm" {
  type    = string
  default = "RSA"

  validation {
    condition     = contains(["ECDSA", "RSA"], var.algorithm)
    error_message = "Must be set only to `RSA` or `ECDSA`."
  }

  description = "The name of the algorithm to use for the key. Currently-supported values are `RSA` and `ECDSA`."
}

variable "ecdsa_curve" {
  type    = string
  default = "P384"

  validation {
    condition     = contains(["P224", "P256", "P384", "P521"], var.ecdsa_curve)
    error_message = "Value must be one of: `P224`, `P256`, `P384`, `P521`."
  }

  description = "When algorithm is `ECDSA`, the name of the elliptic curve to use."
}

variable "rsa_bits" {
  type        = number
  default     = 4096
  description = "When algorithm is `RSA`, the size of the generated RSA key in bits."

  validation {
    condition     = var.rsa_bits >= 1024 && var.rsa_bits <= 4096
    error_message = "Value must be in range: 1024..4096."
  }
}

variable "request_cert" {
  type    = bool
  default = false

  description = "Generates certificate signing request."
}

variable "allowed_uses" {
  type = list(string)

  default = [
    "digital_signature",
    "key_encipherment",
    "server_auth",
  ]

  description = "List of keywords each describing a use that is permitted for the issued certificate. Used only if `request_cert` is `true`."
}

variable "days" {
  type        = number
  default     = 3650
  description = "The number of days after initial issuing that the certificate will become invalid. Default is 10 years. Affects only self signed certificate. Used only if `request_cert` is `true`."

  validation {
    condition     = var.days > 0
    error_message = "Value must be a positive."
  }
}

variable "common_name" {
  type    = string
  default = ""

  description = "Common name. Used only if `request_cert` is `true`."
}

variable "organization" {
  type    = string
  default = ""

  description = "Organization. Used only if `request_cert` is `true`."
}

variable "organizational_unit" {
  type    = string
  default = ""

  description = "Organizational unit. Used only if `request_cert` is `true`."
}

variable "street_address" {
  type    = list(string)
  default = []

  description = "Street address. Used only if `request_cert` is `true`."
}

variable "locality" {
  type    = string
  default = ""

  description = "Locality. Used only if `request_cert` is `true`."
}

variable "province" {
  type    = string
  default = ""

  description = "Province. Used only if `request_cert` is `true`."
}

variable "country" {
  type    = string
  default = ""

  description = "Country. Used only if `request_cert` is `true`."
}

variable "postal_code" {
  type    = string
  default = ""

  description = "Postal code. Used only if `request_cert` is `true`."
}

variable "serial_number" {
  type    = string
  default = ""

  description = "Serial number. Used only if `request_cert` is `true`."
}

variable "dns_names" {
  type    = list(string)
  default = []

  description = "List of DNS names for which a certificate is being requested. Used only if `request_cert` is `true`."
}

variable "ip_addresses" {
  type    = list(string)
  default = []

  description = "List of IP addresses for which a certificate is being requested. Used only if `request_cert` is `true`."
}
