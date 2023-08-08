resource "random_integer" "default" {
  max = 999999
  min = 100000
}

module "oss_bucket" {
  source      = "terraform-alicloud-modules/oss-bucket/alicloud"
  bucket_name = "terraform-example-${random_integer.default.result}"
  acl         = var.acl
}

module "oss_object" {
  source     = "../.."
  bucketName = module.oss_bucket.this_oss_bucket_id
  object-key = "tf-example-object-key"
  sourceFile = "${path.module}/${var.sourceFile}"
}