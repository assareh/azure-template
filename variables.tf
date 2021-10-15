variable "environment" {
  description = "The environment."
}
  
variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "West US 2"
}

variable "owner" {
  description = "Project owner."
  default     = "Andy Assareh"
}

locals {
  common_tags = {
    owner              = var.owner
    se-region          = "AMER - West E2 - R2"
    purpose            = "Demo"
    ttl                = "3"    # hours
    terraform          = "true" # true/false
    hc-internet-facing = "true" # true/false
  }
}
