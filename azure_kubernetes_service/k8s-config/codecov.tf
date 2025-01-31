module "codecov" {
  source = "../../terraform-k8s-codecov"

  enable_certmanager   = var.enable_certmanager
  letsencrypt_email    = var.letsencrypt_email
  extra_secret_env     = local.extra_secret_env
  extra_env            = var.extra_env
  namespace            = var.namespace
  codecov_version      = var.codecov_version
  web_resources        = var.web_resources
  api_resources        = var.api_resources
  worker_resources     = var.worker_resources
  minio_resources      = var.minio_resources
  resource_tags        = var.resource_tags
  extra_secret_volumes = var.extra_secret_volumes
  statsd_enabled       = var.statsd_enabled
  postgres_url         = local.postgres_url
  redis_url            = local.redis_url
  minio_domain         = local.minio_domain
  codecov_yml_file     = var.codecov_yml
  ingress_enabled      = var.ingress_enabled
  minio_bucket         = data.terraform_remote_state.cluster.outputs.minio_name
  minio_enabled        = true
}