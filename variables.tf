variable "audits" {
  description = <<EOT
Map of audits, attributes below
Required:
    - options
    - type
Optional:
    - description
    - local
    - namespace
    - path
EOT

  type = map(object({
    options     = map(string)
    type        = string
    description = optional(string)
    local       = optional(bool)
    namespace   = optional(string)
    path        = optional(string)
  }))
}

