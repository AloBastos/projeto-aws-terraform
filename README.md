# ☁️ Provisionamento de Infraestrutura AWS com Terraform

Este repositório contém a automação necessária para subir uma arquitetura profissional de duas camadas (2-tier) na AWS de forma escalável e segura. O projeto demonstra o uso de **Infraestrutura como Código (IaC)** para otimizar processos de TI, garantindo padronização e agilidade no provisionamento de recursos em nuvem.

## 🛠️ Tecnologias Utilizadas
* **Terraform**: Orquestração e provisionamento de infraestrutura.
* **AWS (Cloud)**: Provedor de serviços em nuvem.
* **Git/GitHub**: Controle de versionamento e documentação.
* **Markdown**: Formatação da documentação técnica.

## 🏗️ Arquitetura do Projeto
O código automatiza a criação dos seguintes componentes:

1. **VPC (Virtual Private Cloud)**: Rede lógica isolada para o ambiente.
2. **Subnet Pública**: Segmento de rede com acesso configurado à internet.
3. **Internet Gateway**: Roteamento necessário para tráfego de saída e entrada.
4. **Security Groups (Firewall)**: 
    - Regras para a Web: Liberação de portas 80 (HTTP) e 22 (SSH).
    - Regras para o Banco: Acesso restrito apenas para a instância EC2 na porta 3306.
5. **Instância EC2**: Servidor virtual Amazon Linux 2 com script de inicialização automática.
6. **Banco de Dados RDS (MySQL)**: Instância gerenciada de banco de dados com isolamento de rede e segurança integrada.

## 🚀 Como Executar este Projeto
1. **Pré-requisitos**: Possuir o Terraform instalado e o AWS CLI configurado com suas credenciais.
2. **Inicializar**: No terminal, execute `terraform init` para baixar os provedores necessários.
3. **Planejar**: Execute `terraform plan` para validar a infraestrutura que será criada.
4. **Aplicar**: Execute `terraform apply` (e confirme com `yes`) para subir a arquitetura na AWS.
5. **Destruir**: Para evitar custos desnecessários após o teste, use `terraform destroy`.

---
## 👨‍💻 Autor
Desenvolvido por **Aloisio Bastos** *Senior Systems Analyst*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/aloisiobastos/)