# ===================================================== #
# - - - - - - - -      VARIABLES        - - - - - - - - #
# ===================================================== #

variable "service_name" {
  type        = string
  description = "Name for the helm release."
}

variable "chart_path" {
  type        = string
  description = "Path to the chart to install."
}

// variable "k8s_namespace" {
//   type        = string
//   description = "K8s namespace to install the service in."
// }
 
// variable "value_map" {
//   type        = map(string)
//   description = "Map of values to use. Needs to be of type map (or object)."
// }