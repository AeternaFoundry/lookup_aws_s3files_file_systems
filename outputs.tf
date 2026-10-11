output "s3files_file_systems_lookup_file_systems" {
  description = "Map of file_systems values across all s3files_file_systems_lookup, keyed the same as var.s3files_file_systems_lookup"
  value       = { for k, v in data.aws_s3files_file_systems.s3files_file_systems_lookup : k => v.file_systems if v.file_systems != null && length(v.file_systems) > 0 }
}
output "s3files_file_systems_lookup_region" {
  description = "Map of region values across all s3files_file_systems_lookup, keyed the same as var.s3files_file_systems_lookup"
  value       = { for k, v in data.aws_s3files_file_systems.s3files_file_systems_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

