variable "region" {
  description = "AWS region to deploy to"
  type        = string
}

variable "node_group_name" {
    description = "Name of the node group"
    type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_type" {
  description = "EC2 instance type for nodes"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the cluster"
  type        = number
}

variable "node_min" {
  description = "Minimum number of nodes"
  type        = number
}

variable "node_max" {
  description = "Maximum number of nodes"
  type        = number
}