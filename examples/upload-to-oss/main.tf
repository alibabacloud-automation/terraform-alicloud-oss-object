provider "alicloud" {
  region = "cn-beijing"
}

resource "alicloud_oss_bucket" "that" {
  bucket = "bucket-terraform-20181111"
  acl    = "private"
}

// Upload file without encryption
module "oss-object" {
  source     = "../../"
  bucketName = "${alicloud_oss_bucket.that.bucket}"
  sourceFile = "test.txt"
  object-key = "test-1.txt"
}
