variable "rg_name" {
  type        = string
  description = "Name of the Resource group in which to deploy shared resources"
  default     = "TerraformGitHubRG2"
}

variable "client_id" {
  type = string 
}
variable "client_secret" {
  type = string 
}
variable "subscription_id" {
  type = string 
}
variable "tenant_id" {
  type = string 
}