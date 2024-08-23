variable "project_name" {
  description = "Name of the project for all taggable resources."
  type    = string
  default = "arq-EKS"
}

variable "region" {
  description = "The region the cluster is running in"
  type    = string
  default = "us-east-1"
}