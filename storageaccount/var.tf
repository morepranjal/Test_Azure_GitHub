variable "deploy_location" {
  type        = string
  description = "The Azure Region in which all resources in this example should be created."
  default     = "Central India"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource group in which to deploy shared resources"
  default     = "TerraformGitHubRG2"
}