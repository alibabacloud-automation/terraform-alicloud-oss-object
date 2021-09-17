// Upload file without encryption
module "oss-object" {
  source     = "../.."
  bucketName = var.bucketName
  sourceFile = var.sourceFile
  object-key = var.object-key
}
