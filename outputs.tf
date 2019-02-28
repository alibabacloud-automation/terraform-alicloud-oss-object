output "this_dest_file" {
  value = "${element(concat(alicloud_oss_bucket_object.this.*.key, list("")), 0)}"
}

output "this_source_file" {
  value = "${element(concat(alicloud_oss_bucket_object.this.*.source, list("")), 0)}"
}
