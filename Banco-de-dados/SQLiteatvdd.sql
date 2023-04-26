CREATE TABLE clinica(
  nome VARCHAR(50),
  cnpj VARCHAR(14) NOT NULL,
  telefone VARCHAR(16),
  funcionarios VARCHAR(20),
  cpf_funcionarios VARCHAR(14) NOT NULL,
  PRIMARY KEY(cnpj),
  FOREIGN KEY(cpf_funcionarios) REFERENCES funcionario(cpf)
 )
 CREATE TABLE animal(
   nome VARCHAR(50),
   idade INT,
   raça VARCHAR(50),
   porte VARCHAR(5),
   identificador serial NOT NULL,
   cnpj_clinica VARCHAR(14) NOT NULL,
   PRIMARY KEY (identificador),
   FOREIGN key (cnpj_clinica) REFERENCES clinica (cnpj)
   )
   CREATE TABLE tutor(
     nome VARCHAR(50), 
     cpf VARCHAR(14) NOT NULL,
     animal VARCHAR(50),
     telefone VARCHAR(16), 
     endereco VARCHAR(50),
     identificador_animal serial NOT NULL,
     PRIMARY KEY (cpf),
     FOREIGN key (identificador_animal) REFERENCES animal (identificador)
     )
     CREATE TABLE site(
       nome VARCHAR(50), 
       login VARCHAR(50), 
       senha VARCHAR(10),
       informacoes VARCHAR(100), 
       chat VARCHAR(100),
       identificador serial NOT NULL,
       PRIMARY KEY (identificador)
       )
       CREATE TABLE funcionarios(
       nome VARCHAR(50),
       cpf VARCHAR(14) NOT NULL,
     turno VARCHAR(15),
       salario VARCHAR(8),
     identificador_site serial NOT NULL,
     PRIMARY KEY (cpf),
     FOREIGN KEY (identificador_site) REFERENCES site (identificador)
     )
       