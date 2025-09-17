variable "postgres_port" {
  description = "Puerto externo para PostgreSQL"
  type        = number
}

variable "redis_port" {
  description = "Puerto externo para Redis"
  type        = number
}

variable "grafana_port" {
  description = "Puerto externo para Grafana"
  type        = number
}

variable "postgres_password" {
  description = "Contraseña de PostgreSQL"
  type        = string
  sensitive   = true
}
