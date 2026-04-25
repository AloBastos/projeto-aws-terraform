# 1. Grupo de Subnets: Define onde o banco pode "morar" dentro da sua rede
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = [aws_subnet.public.id] # Usando a subnet que criamos no network.tf

  tags = {
    Name = "${var.project_name}-rds-subnet-group"
  }
}

# 2. Security Group do Banco: O "Segurança" que só deixa a EC2 entrar
resource "aws_security_group" "rds_sg" {
  name        = "rds_sg"
  description = "Permitir acesso ao MySQL apenas para o servidor web"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.web_sg.id] # Referência ao SG do main.tf
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 3. A instância do Banco de Dados RDS (MySQL)
resource "aws_db_instance" "banco_dados" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro" # Econômico para estudos
  db_name              = "meubancodedados"
  username             = "admin"
  password             = "senha_muito_segura_123" # Em um projeto real, usaríamos variáveis secretas
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = false # Segurança: Banco NÃO fica exposto na internet
  
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  tags = {
    Name = "${var.project_name}-mysql-db"
  }
}