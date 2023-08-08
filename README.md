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
    module "oss-object" {
        source     = "terraform-alicloud-modules/oss-object/alicloud"
        bucketName = "your-bucket-name"
        sourceFile = "test.txt"
        object-key = "test-1.txt"
    }
    ```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION
   
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.56.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucketName | the bucket you want to create and operate | string | - | yes |
| object-key | object key like general file name | string | - | yes |
| sourceFile | local file name | string | - | yes |


## Outputs

| Name | Description |
|------|-------------|
| this_bucket_object_bucket | the target object bucket |
| this_bucket_object_key | the target object key |
| this_bucket_object_source | the target object source |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)