provider "alicloud" {
  version              = ">=1.56.0"
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-alicloud-modules/oss-object"
}

resource "alicloud_oss_bucket_object" "this" {
  bucket = var.bucketName
  key    = var.object-key
  source = var.sourceFile
}

