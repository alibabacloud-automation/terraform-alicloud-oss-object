resource "alicloud_oss_bucket_object" "this" {
  bucket = "${var.bucketName}"
  key    = "${var.object-key}"
  source = "${var.sourceFile}"
}
