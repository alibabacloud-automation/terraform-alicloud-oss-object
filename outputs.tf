output "this_bucket_object_bucket" {
  value = alicloud_oss_bucket_object.this.bucket
}

output "this_bucket_object_key" {
  value = alicloud_oss_bucket_object.this.key
}

output "this_bucket_object_source" {
  value = alicloud_oss_bucket_object.this.source
}