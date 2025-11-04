-- DDL de referência (MySQL) para documentação
CREATE DATABASE IF NOT EXISTS sgequip;
USE sgequip;
CREATE TABLE categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT
);
CREATE TABLE equipamento (
  id_equipamento INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  fabricante VARCHAR(100),
  modelo VARCHAR(100),
  serial VARCHAR(100) UNIQUE,
  status ENUM('disponível','emprestado','manutenção') DEFAULT 'disponível',
  id_categoria INT,
  observacoes TEXT,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);
CREATE TABLE usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  telefone VARCHAR(30),
  matricula VARCHAR(50),
  tipo ENUM('aluno','funcionario','externo') DEFAULT 'aluno'
);
CREATE TABLE emprestimo (
  id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
  id_equipamento INT NOT NULL,
  id_usuario INT NOT NULL,
  data_emprestimo DATETIME NOT NULL,
  data_prevista_devolucao DATETIME NOT NULL,
  data_devolucao DATETIME,
  estado ENUM('ativo','concluído','atrasado') DEFAULT 'ativo',
  observacoes TEXT,
  FOREIGN KEY (id_equipamento) REFERENCES equipamento(id_equipamento),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
