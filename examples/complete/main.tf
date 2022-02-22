module "oss_bucket" {
  source      = "terraform-alicloud-modules/oss-bucket/alicloud"
  bucket_name = "bucket-terraform-20220222"
  acl         = var.acl
}

module "oss_object" {
  source     = "../.."
  bucketName = module.oss_bucket.this_oss_bucket_id
  object-key = "tf-testacc-object-key"
  sourceFile = var.sourceFile
}