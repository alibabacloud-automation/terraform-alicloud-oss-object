output "oss_dest_file" {
  value = "${element(concat(alicloud_oss_bucket_object.upload_object_without_encryption.*.key, list("")), 0)}"
}

output "oss_source_file" {
  value = "${element(concat(alicloud_oss_bucket_object.upload_object_without_encryption.*.source, list("")), 0)}"
}
