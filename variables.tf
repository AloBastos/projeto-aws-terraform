# --- Variáveis de Conectividade ---

variable "region" {
  description = "Regiao da AWS onde os recursos serao criados"
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto para organizar as tags"
  default     = "meu-portfolio-aws"
}

# --- Variáveis de Governança (Nível Sênior) ---

variable "owner" {
  description = "Responsável técnico pelo projeto"
  default     = "Aloisio Bastos"
}

variable "environment" {
  description = "Ambiente de execução (Dev/Prod/Staging)"
  default     = "Dev"
}

variable "cost_center" {
  description = "Centro de custo para controle financeiro"
  default     = "Cloud-Infrastructure-2026"
}

# --- Variáveis de Configuração de Recursos ---

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "db_username" {
  description = "Usuario admin do banco de dados"
  default     = "admin"
}

variable "db_password" {
  description = "Senha do banco de dados (Ideal usar AWS Secrets Manager em prod)"
  default     = "senha_muito_segura_123"
}