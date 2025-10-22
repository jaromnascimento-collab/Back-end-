-- Exclui o banco de dados se ele já existir para um novo começo
DROP DATABASE IF EXISTS FoodNet;

-- Cria o banco de dados FoodNet com codificação de caracteres adequada para português
CREATE DATABASE IF NOT EXISTS FoodNet
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

-- Seleciona o banco de dados FoodNet para uso
USE FoodNet;

-- Define o motor de armazenamento padrão como InnoDB, que suporta transações e chaves estrangeiras
SET default_storage_engine=INNODB;

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    dataCadastro DATE NOT NULL
) ENGINE=InnoDB;

-- Inserção de 50 clientes fictícios
INSERT INTO Cliente (cpf, nome, dataNascimento, email, telefone, dataCadastro) VALUES
('111.111.111-11', 'Ana Silva', '1990-05-15', 'ana.silva@email.com', '(11) 98765-4321', '2023-01-10'),
('222.222.222-22', 'Bruno Costa', '1985-08-20', 'bruno.costa@email.com', '(21) 91234-5678', '2023-01-12'),
('333.333.333-33', 'Carla Dias', '1992-02-25', 'carla.dias@email.com', '(31) 99999-8888', '2023-01-15'),
('444.444.444-44', 'Daniel Martins', '1988-11-30', 'daniel.martins@email.com', '(41) 98888-7777', '2023-02-01'),
('555.555.555-55', 'Eduarda Ferreira', '1995-07-12', 'eduarda.ferreira@email.com', '(51) 97777-6666', '2023-02-05'),
('666.666.666-66', 'Felipe Almeida', '1998-03-18', 'felipe.almeida@email.com', '(61) 96666-5555', '2023-02-10'),
('777.777.777-77', 'Gabriela Lima', '1991-09-05', 'gabriela.lima@email.com', '(71) 95555-4444', '2023-02-20'),
('888.888.888-88', 'Heitor Pereira', '1987-12-22', 'heitor.pereira@email.com', '(81) 94444-3333', '2023-03-01'),
('999.999.999-99', 'Isabela Santos', '1993-06-08', 'isabela.santos@email.com', '(91) 93333-2222', '2023-03-05'),
('101.010.101-01', 'João Oliveira', '1996-04-14', 'joao.oliveira@email.com', '(12) 92222-1111', '2023-03-15'),
('112.233.445-56', 'Larissa Souza', '1994-01-20', 'larissa.souza@email.com', '(22) 91111-0000', '2023-04-02'),
('123.456.789-00', 'Marcos Ribeiro', '1989-10-10', 'marcos.ribeiro@email.com', '(32) 90000-9999', '2023-04-10'),
('234.567.890-11', 'Natália Gomes', '1997-08-03', 'natalia.gomes@email.com', '(42) 98989-8989', '2023-04-18'),
('345.678.901-22', 'Otávio Rocha', '1990-05-28', 'otavio.rocha@email.com', '(52) 97878-7878', '2023-05-01'),
('456.789.012-33', 'Patrícia Barros', '1999-02-15', 'patricia.barros@email.com', '(62) 96767-6767', '2023-05-11'),
('567.890.123-44', 'Quintino Azevedo', '1986-07-21', 'quintino.azevedo@email.com', '(72) 95656-5656', '2023-05-20'),
('678.901.234-55', 'Rafael Correia', '1991-04-09', 'rafael.correia@email.com', '(82) 94545-4545', '2023-06-03'),
('789.012.345-66', 'Sofia Cardoso', '1994-11-11', 'sofia.cardoso@email.com', '(92) 93434-3434', '2023-06-12'),
('890.123.456-77', 'Thiago Mendes', '1984-09-19', 'thiago.mendes@email.com', '(13) 92323-2323', '2023-06-25'),
('901.234.567-88', 'Úrsula Castro', '1996-01-01', 'ursula.castro@email.com', '(23) 91212-1212', '2023-07-01'),
('012.345.678-99', 'Victor Nogueira', '1992-08-17', 'victor.nogueira@email.com', '(33) 90101-0101', '2023-07-10'),
('123.123.123-12', 'Wanda Pires', '1983-03-03', 'wanda.pires@email.com', '(43) 98765-1234', '2023-07-15'),
('234.234.234-23', 'Xavier Pinto', '1995-10-25', 'xavier.pinto@email.com', '(53) 97654-2345', '2023-08-02'),
('345.345.345-34', 'Yasmin Farias', '1998-06-30', 'yasmin.farias@email.com', '(63) 96543-3456', '2023-08-11'),
('456.456.456-45', 'Zeca Neves', '1980-12-12', 'zeca.neves@email.com', '(73) 95432-4567', '2023-08-20'),
('567.567.567-56', 'Alice Barbosa', '1993-07-07', 'alice.barbosa@email.com', '(83) 94321-5678', '2023-09-01'),
('678.678.678-67', 'Bento Cavalcanti', '1997-02-28', 'bento.cavalcanti@email.com', '(93) 93210-6789', '2023-09-05'),
('789.789.789-78', 'Catarina Dantas', '1991-09-14', 'catarina.dantas@email.com', '(14) 92109-7890', '2023-09-12'),
('890.890.890-89', 'Davi Esteves', '1988-04-23', 'davi.esteves@email.com', '(24) 91098-8901', '2023-09-20'),
('901.901.901-90', 'Esther Fernandes', '1994-11-02', 'esther.fernandes@email.com', '(34) 90987-9012', '2023-10-01'),
('012.012.012-01', 'Fábio Guimarães', '1982-01-18', 'fabio.guimaraes@email.com', '(44) 98765-0123', '2023-10-07'),
('123.234.345-45', 'Gael Henriques', '1999-08-21', 'gael.henriques@email.com', '(54) 97654-1234', '2023-10-15'),
('234.345.456-56', 'Helena Isaac', '1990-06-16', 'helena.isaac@email.com', '(64) 96543-2345', '2023-10-22'),
('345.456.567-67', 'Ícaro Jesus', '1987-03-09', 'icaro.jesus@email.com', '(74) 95432-3456', '2023-11-01'),
('456.567.678-78', 'Júlia Klein', '1996-10-13', 'julia.klein@email.com', '(84) 94321-4567', '2023-11-09'),
('567.678.789-89', 'Kevin Lopes', '1992-05-05', 'kevin.lopes@email.com', '(94) 93210-5678', '2023-11-18'),
('678.789.890-90', 'Laura Macedo', '1995-12-24', 'laura.macedo@email.com', '(15) 92109-6789', '2023-11-25'),
('789.890.901-01', 'Miguel Noronha', '1985-02-11', 'miguel.noronha@email.com', '(25) 91098-7890', '2023-12-01'),
('890.901.012-12', 'Nicole Otero', '1998-09-07', 'nicole.otero@email.com', '(35) 90987-8901', '2023-12-08'),
('901.012.123-23', 'Pedro Queiroz', '1993-04-01', 'pedro.queiroz@email.com', '(45) 98765-9012', '2023-12-15'),
('012.123.234-34', 'Raquel Sampaio', '1997-11-27', 'raquel.sampaio@email.com', '(55) 97654-0123', '2023-12-22'),
('123.321.456-65', 'Samuel Telles', '1989-08-08', 'samuel.telles@email.com', '(65) 96543-1234', '2024-01-02'),
('234.432.567-76', 'Talita Uchoa', '1994-03-13', 'talita.uchoa@email.com', '(75) 95432-2345', '2024-01-10'),
('345.543.678-87', 'Uriel Vasconcelos', '1991-10-19', 'uriel.vasconcelos@email.com', '(85) 94321-3456', '2024-01-18'),
('456.654.789-98', 'Valentina Xavier', '1996-06-26', 'valentina.xavier@email.com', '(95) 93210-4567', '2024-01-25'),
('567.765.890-09', 'Wagner Zanetti', '1986-01-31', 'wagner.zanetti@email.com', '(16) 92109-5678', '2024-02-03'),
('678.876.901-10', 'Amanda Brandão', '1999-07-04', 'amanda.brandao@email.com', '(26) 91098-6789', '2024-02-11'),
('789.987.012-21', 'Bernardo Drummond', '1983-05-17', 'bernardo.drummond@email.com', '(36) 90987-7890', '2024-02-19'),
('890.098.123-32', 'Clarice Evangelista', '1992-12-06', 'clarice.evangelista@email.com', '(46) 98765-8901', '2024-02-27');

-- Criação da tabela Entregador
CREATE TABLE Entregador (
    idEntregador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    placaVeiculo VARCHAR(10)
) ENGINE=InnoDB;

-- Inserção de 50 entregadores fictícios
INSERT INTO Entregador (nome, cpf, telefone, placaVeiculo) VALUES
('Carlos Eduardo', '121.212.121-21', '(11) 91111-2222', 'ABC-1234'),
('Fernanda Gonçalves', '232.323.232-32', '(21) 92222-3333', 'DEF-5678'),
('Gustavo Henrique', '343.434.343-43', '(31) 93333-4444', 'GHI-9012'),
('Heloísa Justino', '454.545.454-54', '(41) 94444-5555', 'JKL-3456'),
('Igor Kramer', '565.656.565-65', '(51) 95555-6666', 'MNO-7890'),
('Jéssica Lacerda', '676.767.676-76', '(61) 96666-7777', 'PQR-1234'),
('Leonardo Moreira', '787.878.787-87', '(71) 97777-8888', 'STU-5678'),
('Manuela Nogueira', '898.989.898-98', '(81) 98888-9999', 'VWX-9012'),
('Nicolas Oliveira', '909.090.909-09', '(91) 99999-0000', 'YZA-3456'),
('Olivia Pereira', '010.101.010-10', '(12) 91010-1010', 'BCD-7890'),
('Paulo Quintela', '121.121.121-12', '(22) 92121-2121', 'EFG-1234'),
('Renata Santana', '232.232.232-23', '(32) 93232-3232', 'HIJ-5678'),
('Sérgio Tavares', '343.343.343-34', '(42) 94343-4343', 'KLM-9012'),
('Tatiana Underwood', '454.454.454-45', '(52) 95454-5454', 'NOP-3456'),
('Ulisses Viana', '565.565.565-56', '(62) 96565-6565', 'QRS-7890'),
('Vanessa Werner', '676.676.676-67', '(72) 97676-7676', 'TUV-1234'),
('William Xavier', '787.787.787-78', '(82) 98787-8787', 'WXY-5678'),
('Yasmin Youssef', '898.898.898-89', '(92) 98989-8989', 'ZAB-9012'),
('Ziraldo Andrade', '909.909.909-90', '(13) 90909-0909', 'CDE-3456'),
('Adriano Bastos', '010.010.010-01', '(23) 91010-1010', 'FGH-7890'),
('Beatriz Campos', '111.222.333-44', '(33) 92121-2121', 'IJK-1234'),
('Caio Diniz', '222.333.444-55', '(43) 93232-3232', 'LMN-5678'),
('Diana Escobar', '333.444.555-66', '(53) 94343-4343', 'OPQ-9012'),
('Erick Fagundes', '444.555.666-77', '(63) 95454-5454', 'RST-3456'),
('Flávia Guedes', '555.666.777-88', '(73) 96565-6565', 'UVW-7890'),
('Guilherme Horta', '666.777.888-99', '(83) 97676-7676', 'XYZ-1234'),
('Heloísa Ibanez', '777.888.999-00', '(93) 98787-8787', 'ABC-5678'),
('Ícaro Jasmim', '888.999.000-11', '(14) 98989-8989', 'DEF-9012'),
('Joana Kubitschek', '999.000.111-22', '(24) 90909-0909', 'GHI-3456'),
('Kléber Lins', '000.111.222-33', '(34) 91010-1010', 'JKL-7890'),
('Luana Matos', '111.111.222-22', '(44) 92121-2121', 'MNO-1234'),
('Marcelo Novaes', '222.222.333-33', '(54) 93232-3232', 'PQR-5678'),
('Nair Ourique', '333.333.444-44', '(64) 94343-4343', 'STU-9012'),
('Otávio Paes', '444.444.555-55', '(74) 95454-5454', 'VWX-3456'),
('Paula Quintão', '555.555.666-66', '(84) 96565-6565', 'YZA-7890'),
('Ricardo Ramos', '666.666.777-77', '(94) 97676-7676', 'BCD-1234'),
('Simone Sales', '777.777.888-88', '(15) 98787-8787', 'EFG-5678'),
('Túlio Torres', '888.888.999-99', '(25) 98989-8989', 'HIJ-9012'),
('Ubiratã Varejão', '999.999.000-00', '(35) 90909-0909', 'KLM-3456'),
('Vitória Wagner', '000.000.111-11', '(45) 91010-1010', 'NOP-7890'),
('Washington Xavier', '111.000.222-22', '(55) 92121-2121', 'QRS-1234'),
('Xena Yagami', '222.111.333-33', '(65) 93232-3232', 'TUV-5678'),
('Yuri Zimmerman', '333.222.444-44', '(75) 94343-4343', 'WXY-9012'),
('Zélia Albuquerque', '444.333.555-55', '(85) 95454-5454', 'ZAB-3456'),
('Arthur Benevides', '555.444.666-66', '(95) 96565-6565', 'CDE-7890'),
('Bárbara Cordeiro', '666.555.777-77', '(16) 97676-7676', 'FGH-1234'),
('César Dutra', '777.666.888-88', '(26) 98787-8787', 'IJK-5678'),
('Débora Elias', '888.777.999-99', '(36) 98989-8989', 'LMN-9012'),
('Eduardo Freire', '999.888.000-00', '(46) 90909-0909', 'OPQ-3456');

-- Criação da tabela Cupom
CREATE TABLE Cupom (
    idCupom INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    valorDesconto DECIMAL(10,2) NOT NULL,
    validade DATE NOT NULL
) ENGINE=InnoDB;

-- Inserção de 50 cupons fictícios
INSERT INTO Cupom (codigo, valorDesconto, validade) VALUES
('PRIMEIRA10', 10.00, '2025-12-31'),
('FDS20', 20.00, '2025-09-01'),
('PIZZA15', 15.00, '2025-10-31'),
('BURGUER5', 5.00, '2025-11-30'),
('SUSHI25', 25.00, '2025-09-15'),
('DOCE10', 10.00, '2025-12-20'),
('ALMOCO7', 7.50, '2025-09-30'),
('JANTA12', 12.00, '2025-10-10'),
('VEGANO18', 18.00, '2025-11-05'),
('ITALIANO22', 22.00, '2025-09-25'),
('MEXICANO10', 10.00, '2025-12-01'),
('ARABE5', 5.00, '2025-10-05'),
('CHINES15', 15.00, '2025-11-15'),
('JAPA20', 20.00, '2025-09-10'),
('BRASIL10', 10.00, '2025-12-07'),
('FRETEGRATIS', 12.50, '2025-09-05'),
('COMBO30', 30.00, '2025-10-20'),
('SOBREMESA8', 8.00, '2025-11-22'),
('BEBIDA5', 5.00, '2025-09-18'),
('NOVOUSER15', 15.00, '2025-12-31'),
('CLIENTEVIP25', 25.00, '2025-10-01'),
('SEGUNDA10', 10.00, '2025-09-02'),
('TERCA10', 10.00, '2025-09-03'),
('QUARTA10', 10.00, '2025-09-04'),
('QUINTA10', 10.00, '2025-09-05'),
('SEXTA15', 15.00, '2025-09-06'),
('SABADO20', 20.00, '2025-09-07'),
('DOMINGO20', 20.00, '2025-09-08'),
('MADRUGA10', 10.00, '2025-09-30'),
('HAPPYHOUR15', 15.00, '2025-10-15'),
('INVERNO10', 10.00, '2025-09-21'),
('VERAO10', 10.00, '2025-12-21'),
('OUTONO10', 10.00, '2026-03-20'),
('PRIMAVERA10', 10.00, '2025-09-22'),
('NATAL25', 25.00, '2025-12-25'),
('PASCOA20', 20.00, '2026-04-05'),
('ANONOVO30', 30.00, '2026-01-01'),
('CARNAVAL15', 15.00, '2026-02-17'),
('DIADASMAES20', 20.00, '2026-05-10'),
('DIADOSPAIS20', 20.00, '2026-08-09'),
('BLACKFRIDAY50', 50.00, '2025-11-28'),
('CYBERMONDAY40', 40.00, '2025-12-01'),
('NAMORADOS25', 25.00, '2026-06-12'),
('CRIANCAS15', 15.00, '2025-10-12'),
('ESTUDANTE10', 10.00, '2025-12-31'),
('PROFESSOR10', 10.00, '2025-10-15'),
('SAUDE5', 5.00, '2025-12-31'),
('GAMER15', 15.00, '2025-11-11'),
('PETFRIENDLY10', 10.00, '2025-10-04'),
('CULTURA10', 10.00, '2025-09-30');

-- Criação da tabela Restaurante
CREATE TABLE Restaurante (
    idRestaurante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    endereco VARCHAR(150),
    categoria VARCHAR(50),
    horarioFuncionamento VARCHAR(100),
    notaMedia DECIMAL(3,2) DEFAULT 0
) ENGINE=InnoDB;

-- Inserção de 50 restaurantes fictícios
INSERT INTO Restaurante (nome, cnpj, endereco, categoria, horarioFuncionamento, notaMedia) VALUES
('Cantina da Nona', '11.111.111/0001-11', 'Rua das Pizzas, 123', 'Italiana', '18:00 - 23:00', 4.5),
('Sushi Master', '22.222.222/0001-22', 'Avenida Oriental, 456', 'Japonesa', '19:00 - 00:00', 4.8),
('Burger Queen', '33.333.333/0001-33', 'Praça do Lanche, 789', 'Hamburgueria', '12:00 - 02:00', 4.2),
('Tempero da Vovó', '44.444.444/0001-44', 'Travessa Aconchego, 10', 'Brasileira', '11:00 - 15:00', 4.9),
('La Takeria', '55.555.555/0001-55', 'Calle de los Sabores, 20', 'Mexicana', '17:00 - 23:30', 4.6),
('Sabor Vegano', '66.666.666/0001-66', 'Alameda das Folhas, 30', 'Vegana', '11:30 - 22:00', 4.7),
('Padaria Pão Quente', '77.777.777/0001-77', 'Rua do Trigo, 40', 'Padaria', '06:00 - 21:00', 4.4),
('Açaí Power', '88.888.888/0001-88', 'Avenida das Frutas, 50', 'Açaí', '10:00 - 22:00', 4.8),
('China in Box Express', '99.999.999/0001-99', 'Rua da Muralha, 60', 'Chinesa', '11:00 - 23:00', 4.1),
('Kebab do Califa', '10.101.010/0001-10', 'Praça do Deserto, 70', 'Árabe', '16:00 - 01:00', 4.5),
('Mar de Sabores', '12.345.678/0001-90', 'Avenida Beira Mar, 100', 'Frutos do Mar', '12:00 - 23:00', 4.9),
('Steak House Prime', '23.456.789/0001-01', 'Rua da Grelha, 200', 'Churrascaria', '18:00 - 00:00', 4.7),
('Sorveteria Gelato', '34.567.890/0001-12', 'Praça Doce, 300', 'Sorveteria', '13:00 - 22:00', 4.8),
('Café com Letras', '45.678.901/0001-23', 'Travessa dos Livros, 400', 'Cafeteria', '08:00 - 20:00', 4.6),
('Crepe Francês', '56.789.012/0001-34', 'Rua de Paris, 500', 'Creperia', '15:00 - 23:00', 4.5),
('Galeto na Brasa', '67.890.123/0001-45', 'Avenida do Fogo, 600', 'Grelhados', '11:00 - 16:00', 4.3),
('Empório das Massas', '78.901.234/0001-56', 'Rua do Macarrão, 700', 'Italiana', '12:00 - 22:00', 4.7),
('Bar do Alemão', '89.012.345/0001-67', 'Rua da Cerveja, 800', 'Alemã', '17:00 - 01:00', 4.4),
('Toca do Pastel', '90.123.456/0001-78', 'Feira Livre, Box 10', 'Pastelaria', '09:00 - 18:00', 4.9),
('Reino da Coxinha', '01.234.567/0001-89', 'Largo do Salgado, 20', 'Salgados', '07:00 - 19:00', 4.8),
('Tapiocaria da Sé', '11.223.344/0001-55', 'Praça da Matriz, 30', 'Tapiocaria', '08:00 - 20:00', 4.6),
('Pizzaria Forno a Lenha', '22.334.455/0001-66', 'Rua da Lenha, 40', 'Pizzaria', '18:30 - 23:30', 4.9),
('Dogão do Zé', '33.445.566/0001-77', 'Esquina da Fome, 50', 'Lanches', '19:00 - 03:00', 4.2),
('Cozinha Indiana', '44.556.677/0001-88', 'Rua das Especiarias, 60', 'Indiana', '18:00 - 23:00', 4.7),
('Mundo do Chocolate', '55.667.788/0001-99', 'Avenida Cacau, 70', 'Doceria', '10:00 - 21:00', 4.9),
('Boteco da Esquina', '66.778.899/0001-00', 'Rua da Boemia, 80', 'Bar', '16:00 - 02:00', 4.3),
('Salad Bowl', '77.889.900/0001-11', 'Alameda Fitness, 90', 'Saudável', '11:00 - 21:00', 4.8),
('Espetinho do Manel', '88.990.011/0001-22', 'Rua do Churrasco, 110', 'Espetaria', '17:00 - 00:00', 4.5),
('Delícias de Portugal', '99.001.122/0001-33', 'Travessa do Fado, 120', 'Portuguesa', '12:00 - 22:00', 4.7),
('Sopa & Cia', '10.112.233/0001-44', 'Rua do Inverno, 130', 'Sopas', '18:00 - 23:00', 4.6),
('Point do Peixe', '21.223.344/0001-55', 'Mercado Público, Box 5', 'Peixaria', '10:00 - 17:00', 4.8),
('Cuscuzeria Sertaneja', '32.334.455/0001-66', 'Rua do Sertão, 140', 'Regional', '07:00 - 14:00', 4.9),
('O Rei do Mate', '43.445.566/0001-77', 'Praça Verde, 150', 'Casa de Chá', '09:00 - 19:00', 4.4),
('Fábrica de Waffles', '54.556.677/0001-88', 'Avenida Doce, 160', 'Waffles', '14:00 - 22:00', 4.7),
('Vila do Vinho', '65.667.788/0001-99', 'Rua da Uva, 170', 'Adega', '17:00 - 00:00', 4.8),
('Ceviche Peruano', '76.778.899/0001-00', 'Avenida dos Andes, 180', 'Peruana', '19:00 - 23:00', 4.9),
('Frango Frito Crocante', '87.889.900/0001-11', 'Rua do Balde, 190', 'Fast Food', '12:00 - 00:00', 4.1),
('Bistrô Parisiense', '98.990.011/0001-22', 'Alameda dos Artistas, 210', 'Francesa', '19:30 - 00:00', 4.9),
('Cantinho Tailandês', '19.101.112/0001-33', 'Rua de Bangkok, 220', 'Tailandesa', '18:00 - 23:00', 4.6),
('Bar de Tapas', '28.212.223/0001-44', 'Plaza de España, 230', 'Espanhola', '17:00 - 01:00', 4.7),
('Casa da Feijoada', '37.323.334/0001-55', 'Rua do Feijão, 240', 'Brasileira', '11:30 - 16:00 (Sáb e Dom)', 4.9),
('Gyros Grego', '46.434.445/0001-66', 'Avenida Atenas, 250', 'Grega', '12:00 - 22:00', 4.5),
('Poke Havaiano', '55.545.556/0001-77', 'Praia do Sol, 260', 'Havaiana', '11:00 - 21:00', 4.8),
('Fondue na Montanha', '64.656.667/0001-88', 'Estrada da Neblina, km 5', 'Fondue', '19:00 - 00:00', 4.9),
('Pub Irlandês', '73.767.778/0001-99', 'Rua do Trevo, 270', 'Pub', '18:00 - 03:00', 4.4),
('Culinária Afetiva', '82.878.889/0001-00', 'Viela da Saudade, 280', 'Contemporânea', '19:00 - 23:00', 4.8),
('Empanadas Argentinas', '91.989.990/0001-11', 'Rua de Buenos Aires, 290', 'Argentina', '12:00 - 22:00', 4.7),
('Focacceria Italiana', '10.292.101/0001-22', 'Largo de Roma, 310', 'Italiana', '10:00 - 20:00', 4.6),
('Ramen House', '29.383.212/0001-33', 'Travessa de Tóquio, 320', 'Japonesa', '12:00 - 15:00, 18:00 - 22:00', 4.9),
('Quitutes da Fazenda', '38.474.323/0001-44', 'Estrada de Terra, S/N', 'Mineira', '09:00 - 17:00', 4.8);

-- Criação da tabela Produto
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    idRestaurante INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    disponibilidade BOOLEAN DEFAULT TRUE,
    CONSTRAINT fk_produto_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Inserção de 50 produtos fictícios
INSERT INTO Produto (idRestaurante, nome, descricao, categoria, preco, disponibilidade) VALUES
(1, 'Pizza Margherita', 'Molho de tomate, mussarela e manjericão fresco.', 'Pizza', 45.00, TRUE),
(2, 'Combinado Sushi (20 peças)', 'Seleção do chef com os melhores sushis e sashimis.', 'Sushi', 80.00, TRUE),
(3, 'Cheeseburger Duplo', 'Dois hambúrgueres, queijo cheddar, picles e molho especial.', 'Hambúrguer', 35.00, TRUE),
(4, 'Feijoada Completa', 'Acompanha arroz, couve, farofa e laranja.', 'Prato Principal', 55.00, TRUE),
(5, 'Tacos al Pastor (3 unidades)', 'Carne de porco marinada, abacaxi, cebola e coentro.', 'Tacos', 30.00, TRUE),
(6, 'Moqueca de Palmito', 'Deliciosa moqueca vegana com palmito pupunha.', 'Prato Principal', 48.00, TRUE),
(7, 'Pão na Chapa com Requeijão', 'Pão francês crocante com requeijão cremoso.', 'Café da Manhã', 8.00, TRUE),
(8, 'Açaí na Tigela (500ml)', 'Com banana, morango e granola.', 'Açaí', 25.00, TRUE),
(9, 'Yakisoba de Frango', 'Macarrão frito com frango e legumes frescos.', 'Yakisoba', 38.00, TRUE),
(10, 'Kebab de Cordeiro', 'Pão sírio, cordeiro, salada e molho de iogurte.', 'Kebab', 32.00, TRUE),
(11, 'Bobó de Camarão', 'Camarão refogado no azeite de dendê com purê de aipim.', 'Prato Principal', 75.00, TRUE),
(12, 'Picanha na Grelha (300g)', 'Acompanha farofa de ovos e vinagrete.', 'Carne', 90.00, TRUE),
(13, 'Sorvete de Pistache (2 bolas)', 'Gelato artesanal cremoso.', 'Sobremesa', 18.00, TRUE),
(14, 'Café Espresso', 'Café forte e encorpado.', 'Bebida', 6.00, TRUE),
(15, 'Crepe de Nutella com Morango', 'Massa fina e crocante com recheio generoso.', 'Doce', 28.00, TRUE),
(16, 'Galeto Desossado', 'Acompanha arroz, feijão tropeiro e batata frita.', 'Grelhado', 45.00, TRUE),
(17, 'Lasanha à Bolonhesa', 'Massa fresca, molho bolonhesa e queijo gratinado.', 'Massa', 50.00, TRUE),
(18, 'Joelho de Porco', 'Servido com chucrute e batatas cozidas.', 'Prato Típico', 85.00, TRUE),
(19, 'Pastel de Carne Seca com Catupiry', 'Massa crocante e recheio cremoso.', 'Pastel', 12.00, TRUE),
(20, 'Coxinha de Frango', 'Salgado tradicional brasileiro.', 'Salgado', 9.00, TRUE),
(21, 'Tapioca de Queijo Coalho com Manteiga de Garrafa', 'Iguaria nordestina.', 'Tapioca', 15.00, TRUE),
(22, 'Pizza Portuguesa', 'Mussarela, presunto, ovo, cebola, azeitona e pimentão.', 'Pizza', 52.00, TRUE),
(23, 'Hot Dog Completo', 'Pão, salsicha, purê, batata palha, milho e ervilha.', 'Lanche', 18.00, TRUE),
(24, 'Frango Tikka Masala', 'Pedaços de frango marinados em iogurte e especiarias.', 'Prato Principal', 65.00, TRUE),
(25, 'Brownie com Sorvete', 'Brownie quente com uma bola de sorvete de creme.', 'Sobremesa', 26.00, TRUE),
(26, 'Porção de Batata Frita com Cheddar e Bacon', 'Batatas crocantes com cobertura cremosa.', 'Porção', 35.00, TRUE),
(27, 'Salada Caesar com Frango Grelhado', 'Alface romana, croutons, parmesão e frango.', 'Salada', 40.00, TRUE),
(28, 'Espetinho de Alcatra', 'Carne macia e suculenta na brasa.', 'Espetinho', 14.00, TRUE),
(29, 'Bacalhau à Gomes de Sá', 'Bacalhau em lascas com batatas, ovos, azeitonas e cebola.', 'Prato Principal', 95.00, TRUE),
(30, 'Sopa de Capeletti in Brodo', 'Massa recheada com carne em caldo de galinha.', 'Sopa', 30.00, TRUE),
(31, 'Peixe na Telha', 'Posta de peixe assada com legumes e pirão.', 'Peixe', 88.00, TRUE),
(32, 'Cuscuz Nordestino com Carne de Sol', 'Cuscuz de milho com carne de sol desfiada e queijo coalho.', 'Regional', 28.00, TRUE),
(33, 'Chá Mate Gelado com Limão (500ml)', 'Bebida refrescante.', 'Bebida', 10.00, TRUE),
(34, 'Waffle com Calda de Chocolate e Frutas Vermelhas', 'Waffle quentinho e crocante.', 'Sobremesa', 32.00, TRUE),
(35, 'Tábua de Frios e Queijos', 'Seleção de queijos e embutidos para harmonizar com vinho.', 'Entrada', 70.00, TRUE),
(36, 'Ceviche Clássico', 'Peixe branco marinado no limão com cebola roxa e coentro.', 'Entrada', 45.00, TRUE),
(37, 'Balde de Frango Frito (10 pedaços)', 'Frango crocante e suculento.', 'Porção', 60.00, TRUE),
(38, 'Boeuf Bourguignon', 'Carne cozida lentamente no vinho tinto com legumes.', 'Prato Principal', 110.00, TRUE),
(39, 'Pad Thai', 'Talharim de arroz frito com camarão, tofu, amendoim e broto de feijão.', 'Prato Principal', 68.00, TRUE),
(40, 'Paella Valenciana', 'Arroz com açafrão, frutos do mar, frango e legumes.', 'Prato Principal', 120.00, TRUE),
(41, 'Feijoada Individual', 'Acompanha arroz, couve e farofa.', 'Prato Principal', 45.00, TRUE),
(42, 'Gyros de Frango no Prato', 'Frango, batata frita, salada e pão pita.', 'Prato Principal', 42.00, TRUE),
(43, 'Poke de Salmão', 'Arroz japonês, salmão, abacate, manga e sunomono.', 'Poke', 55.00, TRUE),
(44, 'Fondue de Queijo', 'Acompanha pães, batata e goiabada.', 'Fondue', 150.00, TRUE),
(45, 'Fish and Chips', 'Peixe empanado com batatas fritas.', 'Prato Principal', 58.00, TRUE),
(46, 'Risoto de Cogumelos', 'Arroz arbóreo com mix de cogumelos frescos.', 'Risoto', 62.00, TRUE),
(47, 'Empanada de Carne', 'Massa amanteigada com recheio de carne suculento.', 'Salgado', 10.00, TRUE),
(48, 'Focaccia de Alecrim e Sal Grosso', 'Pão italiano macio e aromático.', 'Pão', 20.00, TRUE),
(49, 'Tonkotsu Ramen', 'Caldo de porco, macarrão, chashu, ovo e nori.', 'Ramen', 50.00, TRUE),
(50, 'Pão de Queijo Recheado com Linguiça', 'Delícia mineira.', 'Salgado', 12.00, TRUE);

-- Criação da tabela Pedido
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    idRestaurante INT NOT NULL,
    idEntregador INT NOT NULL,
    idCupom INT NULL,
    dataPedido DATE NOT NULL,
    horaPedido TIME NOT NULL,
    formaPagamento VARCHAR(50),
    status ENUM('em preparação','a caminho','entregue','cancelado') NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_entregador FOREIGN KEY (idEntregador)
        REFERENCES Entregador(idEntregador)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_cupom FOREIGN KEY (idCupom)
        REFERENCES Cupom(idCupom)
        ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB;


INSERT INTO Pedido (idCliente, idRestaurante, idEntregador, idCupom, dataPedido, horaPedido, formaPagamento, status) VALUES
(1, 1, 1, 1, '2025-08-20', '19:30:00', 'Cartão de Crédito', 'entregue'),
(2, 2, 2, 14, '2025-08-20', '20:00:00', 'PIX', 'entregue'),
(3, 3, 3, 3, '2025-08-21', '12:15:00', 'Cartão de Débito', 'a caminho'),
(4, 4, 4, 16, '2025-08-21', '13:00:00', 'Dinheiro', 'em preparação'),
(5, 5, 5, 5, '2025-08-22', '21:00:00', 'Cartão de Crédito', 'entregue'),
(6, 6, 6, 18, '2025-08-22', '19:45:00', 'PIX', 'cancelado'),
(7, 7, 7, 7, '2025-08-23', '08:00:00', 'Vale Refeição', 'entregue'),
(8, 8, 8, 20, '2025-08-23', '15:30:00', 'Cartão de Crédito', 'a caminho'),
(9, 9, 9, 9, '2025-08-24', '11:45:00', 'PIX', 'em preparação'),
(10, 10, 10, 22, '2025-08-24', '22:00:00', 'Dinheiro', 'entregue'),
(11, 11, 11, 11, '2025-08-25', '14:00:00', 'Cartão de Débito', 'entregue'),
(12, 12, 12, 24, '2025-08-25', '20:30:00', 'Cartão de Crédito', 'a caminho'),
(13, 13, 13, 13, '2025-08-26', '16:00:00', 'PIX', 'em preparação'),
(14, 14, 14, 26, '2025-08-26', '10:00:00', 'Dinheiro', 'entregue'),
(15, 15, 15, 15, '2025-08-27', '18:00:00', 'Vale Refeição', 'entregue'),
(16, 16, 16, 28, '2025-08-27', '12:30:00', 'Cartão de Crédito', 'a caminho'),
(17, 17, 17, 17, '2025-08-28', '13:15:00', 'PIX', 'em preparação'),
(18, 18, 18, 30, '2025-08-28', '21:45:00', 'Cartão de Débito', 'entregue'),
(19, 19, 19, 19, '2025-08-29', '09:30:00', 'Dinheiro', 'cancelado'),
(20, 20, 20, 32, '2025-08-29', '17:00:00', 'Cartão de Crédito', 'entregue'),
(21, 21, 21, 21, '2025-08-30', '10:30:00', 'PIX', 'a caminho'),
(22, 22, 22, 34, '2025-08-30', '19:00:00', 'Vale Refeição', 'em preparação'),
(23, 23, 23, 23, '2025-08-31', '23:00:00', 'Cartão de Crédito', 'entregue'),
(24, 24, 24, 36, '2025-08-31', '20:15:00', 'Dinheiro', 'entregue'),
(25, 25, 25, 25, '2025-09-01', '14:30:00', 'PIX', 'a caminho'),
(26, 26, 26, 38, '2025-09-01', '18:30:00', 'Cartão de Débito', 'em preparação'),
(27, 27, 27, 27, '2025-09-02', '12:00:00', 'Cartão de Crédito', 'entregue'),
(28, 28, 28, 40, '2025-09-02', '19:15:00', 'Vale Refeição', 'entregue'),
(29, 29, 29, 29, '2025-09-03', '13:45:00', 'PIX', 'cancelado'),
(30, 30, 30, 42, '2025-09-03', '20:45:00', 'Dinheiro', 'entregue'),
(31, 31, 31, 31, '2025-09-04', '11:00:00', 'Cartão de Crédito', 'a caminho'),
(32, 32, 32, 44, '2025-09-04', '08:30:00', 'PIX', 'em preparação'),
(33, 33, 33, 33, '2025-09-05', '16:30:00', 'Cartão de Débito', 'entregue'),
(34, 34, 34, 46, '2025-09-05', '17:45:00', 'Cartão de Crédito', 'entregue'),
(35, 35, 35, 35, '2025-09-06', '18:15:00', 'Vale Refeição', 'a caminho'),
(36, 36, 36, 48, '2025-09-06', '21:15:00', 'PIX', 'em preparação'),
(37, 37, 37, 37, '2025-09-07', '12:45:00', 'Dinheiro', 'entregue'),
(38, 38, 38, 50, '2025-09-07', '22:30:00', 'Cartão de Crédito', 'entregue'),
(39, 39, 39, 39, '2025-09-08', '19:00:00', 'PIX', 'a caminho'),
(40, 40, 40, 2, '2025-09-08', '20:00:00', 'Cartão de Débito', 'em preparação'),
(41, 41, 41, 41, '2025-09-09', '13:00:00', 'Cartão de Crédito', 'entregue'),
(42, 42, 42, 4, '2025-09-09', '14:15:00', 'Dinheiro', 'cancelado'),
(43, 43, 43, 43, '2025-09-10', '11:30:00', 'Vale Refeição', 'entregue'),
(44, 44, 44, 6, '2025-09-10', '21:00:00', 'PIX', 'a caminho'),
(45, 45, 45, 45, '2025-09-11', '18:45:00', 'Cartão de Crédito', 'em preparação'),
(46, 46, 46, 8, '2025-09-11', '19:30:00', 'Dinheiro', 'entregue'),
(47, 47, 47, 47, '2025-09-12', '12:15:00', 'PIX', 'entregue'),
(48, 48, 48, 10, '2025-09-12', '10:00:00', 'Cartão de Débito', 'a caminho'),
(49, 49, 49, 49, '2025-09-13', '14:00:00', 'Cartão de Crédito', 'em preparação'),
(50, 50, 50, 12, '2025-09-13', '09:00:00', 'Vale Refeição', 'entregue');
-- Criação da tabela EnderecoCliente
CREATE TABLE EnderecoCliente (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    logradouro VARCHAR(150),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    tipo VARCHAR(20), 
    CONSTRAINT fk_endereco_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

-- Inserção de 50 endereços fictícios
INSERT INTO EnderecoCliente (idCliente, logradouro, numero, bairro, cidade, tipo) VALUES
(1, 'Rua das Flores', '10', 'Jardim Primavera', 'São Paulo', 'Casa'),
(2, 'Avenida Copacabana', '200', 'Copacabana', 'Rio de Janeiro', 'Apartamento'),
(3, 'Rua da Bahia', '30', 'Centro', 'Belo Horizonte', 'Casa'),
(4, 'Rua XV de Novembro', '40', 'Centro', 'Curitiba', 'Apartamento'),
(5, 'Avenida Ipiranga', '500', 'Menino Deus', 'Porto Alegre', 'Apartamento'),
(6, 'Quadra 101', '6', 'Asa Sul', 'Brasília', 'Apartamento'),
(7, 'Avenida Sete de Setembro', '70', 'Barra', 'Salvador', 'Casa'),
(8, 'Rua da Aurora', '800', 'Boa Vista', 'Recife', 'Apartamento'),
(9, 'Travessa dos Inconfidentes', '9', 'Ouro Preto', 'Ouro Preto', 'Casa'),
(10, 'Rua Augusta', '1010', 'Consolação', 'São Paulo', 'Apartamento'),
(11, 'Rua do Lavradio', '11', 'Lapa', 'Rio de Janeiro', 'Casa'),
(12, 'Avenida Afonso Pena', '1212', 'Funcionários', 'Belo Horizonte', 'Apartamento'),
(13, 'Rua 24 Horas', '13', 'Centro', 'Curitiba', 'Comercial'),
(14, 'Rua Padre Chagas', '140', 'Moinhos de Vento', 'Porto Alegre', 'Apartamento'),
(15, 'Setor Hoteleiro Norte', '15', 'Asa Norte', 'Brasília', 'Hotel'),
(16, 'Largo do Pelourinho', '16', 'Pelourinho', 'Salvador', 'Casa'),
(17, 'Rua do Bom Jesus', '170', 'Recife Antigo', 'Recife', 'Apartamento'),
(18, 'Praça Tiradentes', '18', 'Centro', 'Ouro Preto', 'Casa'),
(19, 'Avenida Paulista', '1900', 'Bela Vista', 'São Paulo', 'Apartamento'),
(20, 'Rua Visconde de Pirajá', '20', 'Ipanema', 'Rio de Janeiro', 'Apartamento'),
(21, 'Rua Cláudio Manoel', '21', 'Savassi', 'Belo Horizonte', 'Casa'),
(22, 'Rua das Carmelitas', '220', 'São Francisco', 'Curitiba', 'Apartamento'),
(23, 'Avenida Goethe', '23', 'Rio Branco', 'Porto Alegre', 'Casa'),
(24, 'Eixo Monumental', '24', 'Plano Piloto', 'Brasília', 'Comercial'),
(25, 'Rua Chile', '25', 'Comércio', 'Salvador', 'Apartamento'),
(26, 'Avenida Boa Viagem', '2600', 'Boa Viagem', 'Recife', 'Apartamento'),
(27, 'Rua Direita', '27', 'Pilar', 'Ouro Preto', 'Casa'),
(28, 'Rua Oscar Freire', '280', 'Jardins', 'São Paulo', 'Apartamento'),
(29, 'Avenida Atlântica', '2900', 'Leme', 'Rio de Janeiro', 'Apartamento'),
(30, 'Rua Sergipe', '30', 'Funcionários', 'Belo Horizonte', 'Casa'),
(31, 'Rua Trajano Reis', '31', 'São Francisco', 'Curitiba', 'Apartamento'),
(32, 'Rua 24 de Outubro', '320', 'Independência', 'Porto Alegre', 'Casa'),
(33, 'Setor Comercial Sul', '33', 'Asa Sul', 'Brasília', 'Comercial'),
(34, 'Avenida Oceânica', '340', 'Ondina', 'Salvador', 'Apartamento'),
(35, 'Rua da Moeda', '35', 'Recife Antigo', 'Recife', 'Casa'),
(36, 'Ladeira de Santa Efigênia', '36', 'Alto da Cruz', 'Ouro Preto', 'Casa'),
(37, 'Avenida Faria Lima', '3700', 'Itaim Bibi', 'São Paulo', 'Apartamento'),
(38, 'Rua Barata Ribeiro', '38', 'Copacabana', 'Rio de Janeiro', 'Apartamento'),
(39, 'Avenida do Contorno', '3900', 'Santa Efigênia', 'Belo Horizonte', 'Casa'),
(40, 'Alameda Dr. Muricy', '40', 'Centro', 'Curitiba', 'Apartamento'),
(41, 'Rua Mostardeiro', '410', 'Moinhos de Vento', 'Porto Alegre', 'Casa'),
(42, 'SQN 205', '42', 'Asa Norte', 'Brasília', 'Apartamento'),
(43, 'Rua da Paciência', '43', 'Rio Vermelho', 'Salvador', 'Casa'),
(44, 'Cais do Apolo', '44', 'Recife', 'Recife', 'Apartamento'),
(45, 'Rua das Lajes', '45', 'Centro', 'Ouro Preto', 'Casa'),
(46, 'Rua Haddock Lobo', '460', 'Cerqueira César', 'São Paulo', 'Apartamento'),
(47, 'Avenida Nossa Senhora de Copacabana', '47', 'Copacabana', 'Rio de Janeiro', 'Apartamento'),
(48, 'Rua dos Aimorés', '480', 'Lourdes', 'Belo Horizonte', 'Casa'),
(49, 'Rua Riachuelo', '49', 'Centro', 'Curitiba', 'Apartamento'),
(50, 'Avenida Borges de Medeiros', '5000', 'Praia de Belas', 'Porto Alegre', 'Apartamento');

-- Criação da tabela Avaliacao
CREATE TABLE Avaliacao (
    idAvaliacao INT AUTO_INCREMENT PRIMARY KEY,
    idPedido INT NOT NULL,
    idCliente INT NOT NULL,
    idRestaurante INT NULL,
    idEntregador INT NULL,
    nota TINYINT NOT NULL,
    comentario TEXT,
    dataAvaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_avaliacao_pedido FOREIGN KEY (idPedido)
        REFERENCES Pedido(idPedido)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_restaurante FOREIGN KEY (idRestaurante)
        REFERENCES Restaurante(idRestaurante)
        ON DELETE CASCADE,
    CONSTRAINT fk_avaliacao_entregador FOREIGN KEY (idEntregador)
        REFERENCES Entregador(idEntregador)
        ON DELETE CASCADE
);

INSERT INTO Avaliacao (idPedido, idCliente, idRestaurante, idEntregador, nota, comentario) VALUES
(1, 1, 1, 1, 5, 'Pizza deliciosa, chegou quentinha!'),
(2, 2, 2, 2, 5, 'Sushi fresco e entrega rápida.'),
(3, 3, 3, 3, 4, 'O hambúrguer é bom, mas a batata chegou um pouco murcha.'),
(4, 4, 4, 4, 5, 'Comida caseira maravilhosa, super recomendo!'),
(5, 5, 5, 5, 5, 'Tacos muito saborosos e bem servidos.'),
(7, 7, 7, 7, 4, 'Pão na chapa simples e gostoso.'),
(8, 8, 8, 8, 5, 'Açaí perfeito, do jeito que eu gosto.'),
(9, 9, 9, 9, 3, 'O yakisoba estava um pouco salgado.'),
(10, 10, 10, 10, 5, 'Kebab excelente, entrega no prazo.'),
(11, 11, 11, 11, 5, 'Bobó de camarão divino!'),
(12, 12, 12, 12, 5, 'Picanha no ponto certo, muito suculenta.'),
(13, 13, 13, 13, 4, 'Sorvete cremoso, mas o entregador demorou um pouco.'),
(14, 14, 14, 14, 5, 'Café forte, como deve ser.'),
(15, 15, 15, 15, 5, 'Crepe de Nutella é vida!'),
(16, 16, 16, 16, 4, 'Galeto bem temperado.'),
(17, 17, 17, 17, 5, 'Lasanha com muito queijo, adorei!'),
(18, 18, 18, 18, 5, 'Comida alemã autêntica, excelente!'),
(20, 20, 20, 20, 5, 'A melhor coxinha da cidade.'),
(21, 21, 21, 21, 5, 'Tapioca sequinha e com muito recheio.'),
(22, 22, 22, 22, 4, 'Pizza boa, mas poderia ter mais recheio.'),
(23, 23, 23, 23, 3, 'O hot dog veio todo desmontado.'),
(24, 24, 24, 24, 5, 'Comida indiana muito saborosa e aromática.'),
(25, 25, 25, 25, 5, 'Brownie sensacional!'),
(26, 26, 26, 26, 4, 'A porção de batata é bem generosa.'),
(27, 27, 27, 27, 5, 'Salada fresca e com ingredientes de qualidade.'),
(28, 28, 28, 28, 5, 'Espetinho de alcatra macio e delicioso.'),
(30, 30, 30, 30, 5, 'Sopa quentinha e reconfortante.'),
(31, 31, 31, 31, 5, 'Peixe fresco e muito bem preparado.'),
(32, 32, 32, 32, 5, 'Cuscuz que lembra a casa da avó.'),
(33, 33, 33, 33, 4, 'Mate gelado e refrescante.'),
(34, 34, 34, 34, 5, 'Waffle crocante e com muita calda.'),
(35, 35, 35, 35, 5, 'Tábua de frios perfeita para uma noite de vinhos.'),
(36, 36, 36, 36, 5, 'Ceviche com o tempero na medida certa.'),
(37, 37, 37, 37, 4, 'Frango crocante, mas um pouco oleoso.'),
(38, 38, 38, 38, 5, 'Prato francês impecável.'),
(39, 39, 39, 39, 5, 'Pad Thai autêntico e delicioso.'),
(40, 40, 40, 40, 5, 'Paella rica em frutos do mar, vale o preço.'),
(41, 41, 41, 41, 5, 'Feijoada saborosa e bem servida.'),
(43, 43, 43, 43, 5, 'Poke com ingredientes frescos e combinações ótimas.'),
(44, 44, 44, 44, 5, 'Noite de fondue maravilhosa!'),
(45, 45, 45, 45, 4, 'Bom fish and chips, mas já comi melhores.'),
(46, 46, 46, 46, 5, 'Risoto cremoso e no ponto perfeito.'),
(47, 47, 47, 47, 5, 'Empanada argentina de verdade!'),
(48, 48, 48, 48, 5, 'Focaccia quentinha e macia.'),
(49, 49, 49, 49, 5, 'O melhor ramen que já comi!'),
(50, 50, 50, 50, 5, 'Pão de queijo com linguiça é uma combinação perfeita.');

-- Criação da tabela de associação PedidoProduto
CREATE TABLE PedidoProduto (
    idPedido INT NOT NULL,
    idProduto INT NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(idPedido, idProduto),
    CONSTRAINT fk_pedidoproduto_pedido FOREIGN KEY (idPedido)
        REFERENCES Pedido(idPedido)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_pedidoproduto_produto FOREIGN KEY (idProduto)
        REFERENCES Produto(idProduto)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;


INSERT INTO PedidoProduto (idPedido, idProduto, quantidade, preco) VALUES
(1, 1, 1, 45.00),
(2, 2, 1, 80.00),
(3, 3, 2, 35.00),
(4, 4, 1, 55.00),
(5, 5, 3, 30.00),
(6, 6, 1, 48.00),
(7, 7, 2, 8.00),
(8, 8, 1, 25.00),
(9, 9, 1, 38.00),
(10, 10, 1, 32.00),
(11, 11, 1, 75.00),
(12, 12, 1, 90.00),
(13, 13, 2, 18.00),
(14, 14, 3, 6.00),
(15, 15, 1, 28.00),
(16, 16, 1, 45.00),
(17, 17, 1, 50.00),
(18, 18, 1, 85.00),
(19, 19, 4, 12.00),
(20, 20, 5, 9.00),
(21, 21, 2, 15.00),
(22, 22, 1, 52.00),
(23, 23, 2, 18.00),
(24, 24, 1, 65.00),
(25, 25, 1, 26.00),
(26, 26, 1, 35.00),
(27, 27, 1, 40.00),
(28, 28, 3, 14.00),
(29, 29, 1, 95.00),
(30, 30, 1, 30.00),
(31, 31, 1, 88.00),
(32, 32, 1, 28.00),
(33, 33, 2, 10.00),
(34, 34, 1, 32.00),
(35, 35, 1, 70.00),
(36, 36, 1, 45.00),
(37, 37, 1, 60.00),
(38, 38, 1, 110.00),
(39, 39, 1, 68.00),
(40, 40, 1, 120.00),
(41, 41, 1, 45.00),
(42, 42, 1, 42.00),
(43, 43, 1, 55.00),
(44, 44, 1, 150.00),
(45, 45, 1, 58.00),
(46, 46, 1, 62.00),
(47, 47, 4, 10.00),
(48, 48, 1, 20.00),
(49, 49, 1, 50.00),
(50, 50, 2, 12.00);

-- Seleciona todos os dados de cada tabela para verificação
SELECT * FROM cliente;
SELECT * FROM entregador;
SELECT * FROM cupom;
SELECT * FROM restaurante;
SELECT * FROM produto;
SELECT * FROM pedido;
SELECT * FROM enderecocliente;
SELECT * FROM avaliacao;
SELECT * FROM pedidoproduto;
 
drop database foodnet