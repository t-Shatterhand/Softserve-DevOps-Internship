resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "scalable-nginx-example"
    labels = {
      App = "ScalableNginxExample"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "ScalableNginxExample"
      }
    }
    template {
      metadata {
        labels = {
          App = "ScalableNginxExample"
        }
      }
      spec {
        container {
          image = "alexwhen/docker-2048"
          name  = "example"

          port {
            container_port = 80
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_ingress_v1" "example_ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "example-ingress"
    annotations = {
      "alb.ingress.kubernetes.io/scheme" = "internet-facing"
      "alb.ingress.kubernetes.io/certificate-arn": module.dns.certificate_arn
      "alb.ingress.kubernetes.io/ssl-redirect" = 443
      "alb.ingress.kubernetes.io/tags": "${keys(var.alb_tag)[0]}=${values(var.alb_tag)[0]}"
      "alb.ingress.kubernetes.io/listen-ports": jsonencode([{"HTTP"=80}, {"HTTPS"=443}])
    }
  }

  spec {
    ingress_class_name = "alb"
    default_backend {
      service {
        name = "scalable-nginx-service"
        port {
          number = 80
        }
      }
    }
    rule {
      host = "app.${var.domain}"
      http {
        path {
          backend {
            service {
              name = kubernetes_service_v1.scalable_nginx_service.metadata[0].name
              port {
                number = 80
              }
            }
          }
          path = "/*"
        }
      }
    }
  }

  depends_on = [
    helm_release.lb,
    kubernetes_service_account.service-account,
    module.lb_role
  ]
}

resource "kubernetes_service_v1" "scalable_nginx_service" {
  metadata {
    name = "scalable-nginx-service"
  }

  spec {
    selector = {
      App = "ScalableNginxExample"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "NodePort"
  }
}

resource "aws_route53_record" "lb_record" {
  name    = "app.${var.domain}"
  zone_id = module.dns.zone_id
  type    = "A"

  alias {
    name                   = data.aws_lb.ingress_alb.dns_name
    zone_id                = data.aws_lb.ingress_alb.zone_id
    evaluate_target_health = true
  }
}

data "aws_lb" "ingress_alb" {
  tags = var.alb_tag

  depends_on = [
    kubernetes_ingress_v1.example_ingress
  ]
}