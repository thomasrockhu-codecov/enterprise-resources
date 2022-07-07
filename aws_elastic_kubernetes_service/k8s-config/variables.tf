variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "codecov_version" {
  description = "Version of codecov enterprise to deploy"
  default     = "latest-stable"
}

variable "cluster_name" {
  description = "Google Kubernetes Engine (GKE) cluster name"
  default     = "codecov-cluster"
}

variable "web_resources" {
  type = map(any)
  default = {
    replicas       = 2
    cpu_limit      = "1000m"
    memory_limit   = "2048M"
    cpu_request    = "150m"
    memory_request = "128M"
  }
}

variable "api_resources" {
  type = map(any)
  default = {
    replicas       = 2
    cpu_limit      = "1000m"
    memory_limit   = "2048M"
    cpu_request    = "250m"
    memory_request = "256M"
  }
}

variable "worker_resources" {
  type = map(any)
  default = {
    replicas       = 2
    cpu_limit      = "3000m"
    memory_limit   = "1024M"
    cpu_request    = "500m"
    memory_request = "1024M"
  }
}

variable "codecov_yml" {
  description = "Path to your codecov.yml"
  default     = "codecov.yml"
}

variable "ingress_host" {
  description = "Hostname used for http(s) ingress"
}

variable "resource_tags" {
  type = map(any)
  default = {
    application = "codecov"
    environment = "test"
  }
}

variable "scm_ca_cert" {
  description = "SCM CA certificate path"
  default     = ""
}

variable "ingress_enabled" {
  description = "Whether to create an ALB ingress for Codecov"
  default     = true
}

variable "ingress_namespace" {
  description = "Namespace to create the ingress in"
  default     = "default"
}

variable "ingress_replicas" {
  description = "Amount of replicas to be created."
  type        = number
  default     = 1
}

variable "ingress_scheme" {
  description = "internal or internet-facing alb"
  default     = "internet-facing"
}

variable "ingress_controller_version" {
  description = "The AWS ALB Ingress Controller version to use. See https://github.com/kubernetes-sigs/aws-alb-ingress-controller/releases for available versions"
  type        = string
  default     = "2.4.2"
}

variable "ingress_pod_annotations" {
  description = "Additional annotations to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "ingress_pod_labels" {
  description = "Additional labels to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "codecov_namespace" {
  description = "Namespace to deploy Codecov into"
  default     = "codecov"
}

variable "dns_enabled" {
  description = "Whether to create route53 records for Codecov"
  default     = false
}

variable "cert_enabled" {
  description = "Whether to create an ACM cert for Codecov. Only works with dns enabled"
  default     = true
}

variable "hosted_zone_id" {
  description = "Route53 Hosted Zone ID to enable DNS to your Codecov install"
  default     = ""
}

variable "statsd_enabled" {
  default = false
}

variable "vpc_name" {
  description = "The name of the vpc that was created. This must match the vpc_name var in cluster template"
  default     = "codecov-vpc"
}