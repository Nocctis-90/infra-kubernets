resource "kubernetes_service" "example" {
  metadata {
    name = "example"
  }

  spec {
    selector = {
      app = kubernetes_deployment.example.spec.0.template.0.metadata.0.labels["app"]
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}