variable "bucketName" {
  description = "The name of the bucket to put the file in."
  type        = string
  default     = ""
}

variable "object-key" {
  description = "The name of the object once it is in the bucket."
  type        = string
  default     = ""
}

variable "sourceFile" {
  description = "The path to the source file being uploaded to the bucket."
  type        = string
  default     = ""
}