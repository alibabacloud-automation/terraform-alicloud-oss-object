variable "region" {
  description = "The region used to launch this module resources."
  default     = ""
}

variable "bucketName" {
  type = string
}

variable "object-key" {
  type = string
}

variable "sourceFile" {
  type = string
}

