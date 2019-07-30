data "helm_repository" "banzaicloud-stable" {
    name = "banzaicloud-stable"
    url  = "http://kubernetes-charts.banzaicloud.com/branch/master"
}

# # helm repo add banzaicloud-stable http://kubernetes-charts.banzaicloud.com/branch/master
# # helm upgrade --namespace vswh --install vswh banzaicloud-stable/vault-secrets-webhook

resource "helm_release" "vault-secrets-webhook" {
  name       = "vault-secrets-webhook"
  repository = "${data.helm_repository.banzaicloud-stable.metadata.0.name}"
  chart      = "vault-secrets-webhook"
  namespace = "${var.namespace}"
}