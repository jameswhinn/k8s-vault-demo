# module "vault" {
#   source = "./vault"
#   }

# module "k8s" {
#   source = "./k8s"
  
# }

resource "kubernetes_namespace" "vaultdemo" {
  metadata {
    name = "${var.namespace}"
    labels = {
      name = "${var.namespace}"
    }
  }
}
