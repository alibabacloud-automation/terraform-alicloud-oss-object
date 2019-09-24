output "this_dest_file" {
  value = element(concat(alicloud_oss_bucket_object.this.*.key, [""]), 0)
}

output "this_source_file" {
  value = element(concat(alicloud_oss_bucket_object.this.*.source, [""]), 0)
}

