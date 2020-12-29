# Keypair

Creates pair of private and public key. Generates CSR.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| tls | ~> 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| tls | ~> 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| algorithm | The name of the algorithm to use for the key. Currently-supported values are `RSA` and `ECDSA`. | `string` | `"RSA"` | no |
| allowed\_uses | List of keywords each describing a use that is permitted for the issued certificate. Used only if `request_cert` is `true`. | `list(string)` | <pre>[<br>  "digital_signature",<br>  "key_encipherment",<br>  "server_auth"<br>]</pre> | no |
| common\_name | Common name. Used only if `request_cert` is `true`. | `string` | `""` | no |
| country | Country. Used only if `request_cert` is `true`. | `string` | `""` | no |
| days | The number of days after initial issuing that the certificate will become invalid. Default is 10 years. Affects only self signed certificate. Used only if `request_cert` is `true`. | `number` | `3650` | no |
| dns\_names | List of DNS names for which a certificate is being requested. Used only if `request_cert` is `true`. | `list(string)` | `[]` | no |
| ecdsa\_curve | When algorithm is `ECDSA`, the name of the elliptic curve to use. | `string` | `"P384"` | no |
| ip\_addresses | List of IP addresses for which a certificate is being requested. Used only if `request_cert` is `true`. | `list(string)` | `[]` | no |
| locality | Locality. Used only if `request_cert` is `true`. | `string` | `""` | no |
| organization | Organization. Used only if `request_cert` is `true`. | `string` | `""` | no |
| organizational\_unit | Organizational unit. Used only if `request_cert` is `true`. | `string` | `""` | no |
| postal\_code | Postal code. Used only if `request_cert` is `true`. | `string` | `""` | no |
| province | Province. Used only if `request_cert` is `true`. | `string` | `""` | no |
| request\_cert | Generates certificate signing request. | `bool` | `false` | no |
| rsa\_bits | When algorithm is `RSA`, the size of the generated RSA key in bits. | `number` | `4096` | no |
| serial\_number | Serial number. Used only if `request_cert` is `true`. | `string` | `""` | no |
| street\_address | Street address. Used only if `request_cert` is `true`. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| algorithm | This CA key algorithm. |
| cert\_request\_pem | Certificate signing request in PEM format. |
| private\_key\_pem | Private key in PEM format. |
| public\_key\_openssh | Public key in OpenSSH format. |
| public\_key\_pem | Public key in PEM format. |

