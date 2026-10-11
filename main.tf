data "aws_s3files_file_systems" "s3files_file_systems_lookup" {
  for_each = var.s3files_file_systems_lookup

  region = each.value.region
}

