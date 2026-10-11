variable "s3files_file_systems_lookup" {
  description = <<EOT
Map of s3files_file_systems_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

