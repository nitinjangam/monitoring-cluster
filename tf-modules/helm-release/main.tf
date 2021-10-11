terraform {
  required_version = ">= 1.0"
}

resource "helm_release" "this" {
    name        = var.service_name
    chart       = var.chart_path

    # required for deployment to read/write serviceaccounts in the k8s cluster
    #namespace   = var.k8s_namespace
    
    // dynamic "set" {
    //     for_each = var.value_map

    //     content {
    //         name     = set.key
    //         value    = set.value
    //     }
    // }
}