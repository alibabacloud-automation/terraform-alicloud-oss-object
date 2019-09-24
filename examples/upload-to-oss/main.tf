module "oss_bucket" {
  source      = "terraform-alicloud-modules/oss-bucket/alicloud"
  bucket_name = "bucket-terraform-20181111"
  acl         = "private"
}

// Upload file without encryption
module "oss-object" {
  source     = "../.."
  bucketName = module.oss_bucket.this_oss_bucket_id
  sourceFile = "test.txt"
  object-key = "test-1.txt"
}

