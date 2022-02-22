variable "acl" {
  description = "The canned ACL to apply. Can be 'private', 'public-read' and 'public-read-write'."
  type        = string
  default     = "private"
}

variable "sourceFile" {
  description = "The path to the source file being uploaded to the bucket."
  type        = string
  default     = "test.txt"
}