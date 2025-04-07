variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
  
}
variable "type" {
  description = "The type of instance to create."
  type        = string
  default     = "t2.micro"
  
}

variable "env" {
  description = "The environment to deploy the resources in."
  type        = string
  default     = "hmg"
  
}