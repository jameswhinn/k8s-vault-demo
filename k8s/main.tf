provider "kubernetes" {
  
}

provider "helm" {
    service_account = "tiller"
}

