variable "vpss_lookup" {
  description = <<EOT
Map of vpss_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

