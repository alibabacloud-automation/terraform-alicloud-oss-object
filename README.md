Alicloud OSS Terraform Module On Alibaba Cloud 
terraform-alicloud-oss-object
=====================================================================

Terraform module which creates OSS bucket and upload object to the bucket on Alibaba Cloud.

These types of resources are supported:

* [OSS](https://www.terraform.io/docs/providers/alicloud/d/oss_bucket_objects.html)

----------------------

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

    ```
    resource "alicloud_oss_bucket" "that" {
        bucket = "your_bucket_name"
        acl    = "private"
    }

    module "oss-object" {
        source     = "terraform-alicloud-modules/oss-object/alicloud"
        bucketName = "${alicloud_oss_bucket.that.bucket}"
        sourceFile = "test.txt"
        object-key = "test-1.txt"
    }
    ```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucketName | the bucket you want to create and operate | string | - | yes |
| object-key | object key like general file name | string | - | yes |
| sourceFile | local file name | string | - | yes |


## Outputs

| Name | Description |
|------|-------------|
| oss_dest_file | the target object key |
| oss_source_file | the source file |

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
