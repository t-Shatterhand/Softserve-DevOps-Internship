output "alb_hostname" {
  value = kubernetes_ingress_v1.example_ingress.status[0].load_balancer[0].ingress[0].hostname
}