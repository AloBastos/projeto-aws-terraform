# ☁️ Provisionamento de Infraestrutura AWS com Terraform

Este repositório contém a automação necessária para subir uma arquitetura básica na AWS de forma escalável e segura. O foco deste projeto é demonstrar o uso de **Infraestrutura como Código (IaC)** para otimizar processos de TI.

## 🛠️ Tecnologias Utilizadas
* **Terraform**: Orquestração e provisionamento.
* **AWS (Cloud)**: Provedor de infraestrutura.
* **Git/GitHub**: Controle de versão.

## 🏗️ O que este código cria?
1. **VPC (Virtual Private Cloud)**: Uma rede isolada na nuvem.
2. **Subnet Pública**: Para permitir acesso à internet.
3. **Internet Gateway**: Roteamento de saída.
4. **Security Group**: Regras de firewall (liberando porta 80 e 22).
5. **Instância EC2**: Servidor Amazon Linux 2 rodando automaticamente.

## 🚀 Como executar
1. Instale o Terraform no seu PC.
2. Configure suas credenciais AWS via CLI.
3. Execute `terraform init` para baixar os provedores.
4. Execute `terraform plan` para ver o plano de execução.
5. Execute `terraform apply` para subir a infra na nuvem.

---
📫 **Contato**: https://www.linkedin.com/in/aloisiobastos/

