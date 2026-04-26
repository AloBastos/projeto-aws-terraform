# ☁️ Provisionamento de Infraestrutura AWS com Terraform

Este repositório contém a automação necessária para subir uma arquitetura profissional de duas camadas (2-tier) na AWS de forma escalável e segura. O projeto demonstra o uso de **Infraestrutura como Código (IaC)** para otimizar processos de TI, garantindo padronização e agilidade no provisionamento de recursos em nuvem.

## 📊 Fluxo da Arquitetura
Abaixo, a representação visual da infraestrutura provisionada e o fluxo de comunicação entre os componentes:

```mermaid
graph TD
    User((Usuário)) -->|Acesso porta 80| IGW[Internet Gateway]
    IGW -->|VPC| SG_Web[Security Group Web]
    SG_Web -->|EC2| App[Servidor Amazon Linux 2]
    App -->|Porta 3306| SG_DB[Security Group RDS]
    SG_DB -->|RDS| MySQL[(Banco de Dados MySQL)]