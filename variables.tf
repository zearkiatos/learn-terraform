variable "ami_id" {
  default     = ""
  description = "Ami Id"
}

variable "instance_type" {
  default     = ""
  description = "Ami Id"
}

variable "tags" {
  type = map(any)
}
