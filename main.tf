# ===================================================== #
# - - - - - - - -     GENERAL SETUP     - - - - - - - - #
# ===================================================== #

# The cluster and vpc modules will automatically add all necessary providers.

provider "kubernetes" {
    config_path    = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
  }
}

module "grafana-release" {
  service_name = "grafana"
  source = "./tf-modules/helm-release"
  chart_path = "./helm/grafana"
}

module "grafana-loki-release" {
  service_name = "grafana-loki"
  source = "./tf-modules/helm-release"
  chart_path = "./helm/grafana-loki"
}

module "prometheus-release" {
  service_name = "prometheus"
  source = "./tf-modules/helm-release"
  chart_path = "./helm/prometheus"
}

module "opentelemetry-collector-release" {
  service_name = "opentelemetry-collector"
  source = "./tf-modules/helm-release"
  chart_path = "./helm/open-telemetry-collector"
}

module "grafana-tempo-release" {
  service_name = "grafana-tempo"
  source = "./tf-modules/helm-release"
  chart_path = "./helm/grafana-tempo"
}