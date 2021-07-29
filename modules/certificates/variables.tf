variable "create" {
  description = "(Optional, Default: false) For the resource to be created use true"
  type        = bool
  default     = false
}

variable "certificate_id" {
  description = "(Required) The certificate identifier."
  type        = string
  default     = ""
}

variable "certificate_pem" {
  description = "(Optional) The contents of the .pem X.509 certificate file for the certificate. Either certificate_pem or certificate_wallet must be set."
  type        = string
  default     = ""
}

variable "certificate_wallet" {
  description = "(Optional) The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either certificate_pem or certificate_wallet must be set."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags for certificate"
  type        = map(string)
  default     = {}
}
