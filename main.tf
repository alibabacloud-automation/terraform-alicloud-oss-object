resource "alicloud_oss_bucket_object" "upload_object_without_encryption" {
  bucket = "${var.bucketName}"
  key    = "${var.object-key}"
  source = "${var.sourceFile}"
}
