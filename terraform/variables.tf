variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_backend_url" {
  description = "URL completa do backend NestJS no EC2 (ex: http://44.192.71.100:3005)"
  type        = string
}

variable "environment" {
  description = "Nome do ambiente (ex: dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Nome do projeto para identificacao dos recursos"
  type        = string
  default     = "checkin-ia"
}
