
use master
CREATE DATABASE LAZUL
use LAZUL

DROP DATABASE LAZUL
-- inicio da table Sexo
CREATE TABLE Sexo (
	
	cd_Sexo 			int 				not null 	identity(1,1),
	nm_Sexo 			varchar(10) 		not null,
	abr_Sexo 			char(3) 			not null,
	CONSTRAINT pk_Sexo PRIMARY KEY (cd_Sexo) 
)

INSERT INTO Sexo (nm_Sexo, abr_Sexo) VALUES ('Masculino', 'Mas')
INSERT INTO Sexo (nm_Sexo, abr_Sexo) VALUES ('Feminino', 'Fem')
INSERT INTO Sexo (nm_Sexo, abr_Sexo) VALUES ('Outros', 'Out')

SELECT * FROM Sexo
-- fim da table Sexo

-- INICIO da table EstadoCivilPaciente
CREATE TABLE EstadoCivilPaciente (
	
	cd_EstadoCivilPaciente 			int 				not null 	identity(1,1),
	nm_EstadoCivilPaciente 			varchar(10) 		not null,
	abr_EstadoCivilPaciente 		char(3) 			not null,
	CONSTRAINT pk_EstadoCivilPaciente PRIMARY KEY (cd_EstadoCivilPaciente) 
)


INSERT INTO EstadoCivilPaciente (nm_EstadoCivilPaciente, abr_EstadoCivilPaciente) VALUES ('Casado', 'Cas')
INSERT INTO EstadoCivilPaciente (nm_EstadoCivilPaciente, abr_EstadoCivilPaciente) VALUES ('Divorciado', 'Div')
INSERT INTO EstadoCivilPaciente (nm_EstadoCivilPaciente, abr_EstadoCivilPaciente) VALUES ('Separado', 'Sep')
INSERT INTO EstadoCivilPaciente (nm_EstadoCivilPaciente, abr_EstadoCivilPaciente) VALUES ('Solteiro', 'Sol')
INSERT INTO EstadoCivilPaciente (nm_EstadoCivilPaciente, abr_EstadoCivilPaciente) VALUES ('Viuvo', 'Viu')

SELECT * FROM EstadoCivilPaciente
-- Fim da table EstadoCivilPaciente


-- fim da table Paciente
Create table Paciente (
	cd_paciente				int				not null identity(1,1),
	nm_paciente				varchar(30)		not null,
	nr_DDDPaciente			int				not null,
	nr_TelefonePaciente		int				not null,
	dt_nascimentoPaciente	int				not null,
	nr_CPFpaciente			int				not null,
	nr_RGpaciente			int				not null,
	cd_EstCivilPaciente		int				not null,
	cd_SexoPaciente			int				not null,
	CONSTRAINT pk_paciente					PRIMARY KEY (cd_paciente),
	CONSTRAINT fk_Paciente_Sexo				FOREIGN KEY (cd_SexoPaciente) REFERENCES Sexo (cd_Sexo),
	CONSTRAINT fk_Paciente_EstadoCivil		FOREIGN KEY (cd_EstCivilPaciente) REFERENCES EstadoCivilPaciente (cd_EstadoCivilPaciente)
) 

	INSERT INTO Paciente (nm_paciente, nr_DDDPaciente, nr_TelefonePaciente, dt_nascimentoPaciente, nr_CPFpaciente, nr_RGpaciente, cd_SexoPaciente, cd_EstCivilPaciente) VALUES ('Andreia', '11', '43677070', '20071989', '675937489', '784736981', '2', '1')
	INSERT INTO Paciente (nm_paciente, nr_DDDPaciente, nr_TelefonePaciente, dt_nascimentoPaciente, nr_CPFpaciente, nr_RGpaciente, cd_SexoPaciente, cd_EstCivilPaciente) VALUES ('Joao', '11', '43677065', '03071973', '030719733', '123567467', '1', '2')
	INSERT INTO Paciente (nm_paciente, nr_DDDPaciente, nr_TelefonePaciente, dt_nascimentoPaciente, nr_CPFpaciente, nr_RGpaciente, cd_SexoPaciente, cd_EstCivilPaciente) VALUES ('Maria', '11', '70704367', '20111990', '675489937', '769818473', '1', '5')

	SELECT * FROM Paciente
-- fim da table Paciente

-- inicio da table Psicologo
CREATE TABLE Psicologo (
	
	cd_Psicologo 			int 			not null 	identity(1,1),
	nm_Psicologo 			varchar(30) 	not null,
	nr_CRPpsicologo 		int 			not null,
	nr_DDDpsicologo 		int 			not null,
	nr_Telefonepsicologo 	int 			not null,
	ds_emailPsicologo 		varchar(30) 	not null,
	nm_FaculdadePsicologo 	varchar(30) 	not null,
	dt_DataNascimentoPsi 	int 			not null,
	nr_CPFpsicologo 		int 			not null,
	nr_RGpsicologo 			int 			not null,
	cd_SexoPsicologo		int 			not null,
	CONSTRAINT pk_Psicologo PRIMARY KEY (cd_Psicologo), 
	CONSTRAINT fk_Psicologo_Sexo FOREIGN KEY (cd_SexoPsicologo) REFERENCES Sexo (cd_Sexo)
)
	INSERT INTO Psicologo (nm_Psicologo , nr_CRPpsicologo, nr_DDDpsicologo, nr_Telefonepsicologo, ds_emailPsicologo, nm_FaculdadePsicologo, dt_DataNascimentoPsi, nr_CPFpsicologo, nr_RGpsicologo, cd_SexoPsicologo) VALUES ('Luana', '12345', '11', '70704367', 'luana@gmail.com', 'FATEC','01011980', '535678345', '634754321','1')
	INSERT INTO Psicologo (nm_Psicologo , nr_CRPpsicologo, nr_DDDpsicologo, nr_Telefonepsicologo, ds_emailPsicologo, nm_FaculdadePsicologo, dt_DataNascimentoPsi, nr_CPFpsicologo, nr_RGpsicologo, cd_SexoPsicologo) VALUES ('Pedro', '13452', '11', '70677043', 'pedro@gmail.com', 'USP','01081987', '583453567', '633214754','2')
	INSERT INTO Psicologo (nm_Psicologo , nr_CRPpsicologo, nr_DDDpsicologo, nr_Telefonepsicologo, ds_emailPsicologo, nm_FaculdadePsicologo, dt_DataNascimentoPsi, nr_CPFpsicologo, nr_RGpsicologo, cd_SexoPsicologo) VALUES ('Leticia', '45412', '11', '70367704', 'leticia@gmail.com', 'FATEC','15111992', '834535675', '754363421','3')


	SELECT * FROM Psicologo

-- fim da table Psicologo

-- inicio da table Pagamento
Create table Pagamento (
	cd_Pagamento			int				not null identity(1,1),
	tp_pagamento			varchar(30)		not null,
	abr_pagamento			varchar(3) 			not null,
	CONSTRAINT pk_Pagamento PRIMARY KEY (cd_Pagamento),
) 

INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Cartão de Crédito', 'CRE')
INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Cartão de Débito', 'DEB')
INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Transferência', 'TRA')
INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Cheque', 'CHE')
INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Dinheiro', 'DIN')
INSERT INTO Pagamento (tp_pagamento, abr_pagamento) VALUES ('Boleto', 'BOL')

SELECT * FROM Pagamento
--fim da table Pagamento

-- inicio da table Sessao
CREATE TABLE Sessao (
	
	cd_Sessao				int		not null	identity(1,1),
	dt_sessao				int		not null,
	hr_InicioSessao			int		not null,
	hr_TerminoSessao		int		not null,
	vlr_Sessao				varchar(10)		not null,
	cd_SessaoPsicologo		int 	not null,
	cd_SessaoPaciente		int 	not null,
	cd_SessaoPagamento		int 	not null,
	CONSTRAINT pk_Sessao PRIMARY KEY (cd_Sessao), 
	CONSTRAINT fk_Sessao_Psicologo FOREIGN KEY (cd_SessaoPsicologo) REFERENCES Psicologo (cd_Psicologo),
	CONSTRAINT fk_Sessao_Paciente FOREIGN KEY (cd_SessaoPaciente) REFERENCES Paciente (cd_paciente),
	CONSTRAINT fk_Sessao_Pagamento FOREIGN KEY (cd_SessaoPagamento) REFERENCES Pagamento (cd_Pagamento)
)

	INSERT INTO Sessao (dt_sessao, hr_InicioSessao, hr_TerminoSessao, vlr_Sessao, cd_SessaoPsicologo, cd_SessaoPaciente, cd_SessaoPagamento) VALUES ('20012021', '11', '12', '120,00', '1', '2', '1')
	INSERT INTO Sessao (dt_sessao, hr_InicioSessao, hr_TerminoSessao, vlr_Sessao, cd_SessaoPsicologo, cd_SessaoPaciente, cd_SessaoPagamento) VALUES ('15122020', '15', '16', '125,00', '3', '1', '5')
	INSERT INTO Sessao (dt_sessao, hr_InicioSessao, hr_TerminoSessao, vlr_Sessao, cd_SessaoPsicologo, cd_SessaoPaciente, cd_SessaoPagamento) VALUES ('05122020', '20', '21', '130,00', '2', '3', '2')


	SELECT * FROM Sessao
-- fim da table Sessao







