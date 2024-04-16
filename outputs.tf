output "this_dest_file" {
  value = alicloud_oss_bucket_object.this.*.key
}

output "this_source_file" {
  value = alicloud_oss_bucket_object.this.*.source
}