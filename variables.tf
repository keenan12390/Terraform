variable "resource_group_name" {
  default = "tf_resourcegroup"
}

variable "location" {
  default = "eastus"
}

variable "container_name" {
  default = "terraformcontainer24"
  type = string
}



variable "storage_account_name" {
  default = "terraformsa24"
  type = string
}