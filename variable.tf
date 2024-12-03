variable "rg_name" {
  type        = string
  description = "Name of the Resource group in which to deploy shared resources"
  default     = "TerraformGitHubRG2"
}

variable "client_id" {
  type = string 
default = "45b5de6f-333e-4e0b-9146-441630f7a13a"

}
variable "client_secret" {
  type = string 
  default = "CP78Q~XddXub5dQM_hgRim.hrj8Oi2-HTnZepb~i"
}
variable "subscription_id" {
  type = string 
  default = "505743ae-49da-49ce-b0a4-eeb2cc0f8f0e"
}
variable "tenant_id" {
  type = string 
  default = "f77d0bdc-0d72-4b3d-8d8c-d87448c17ef8"
}