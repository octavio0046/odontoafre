
CREATE DATABASE BDACLINICA;
USE BDACLINICA;

DROP database BDACLINICA;



CREATE TABLE TB_USUARIOS (
  COD_USUARIO INT AUTO_INCREMENT,
  APELLIDO_USUARIO varchar(30) DEFAULT NULL,
  NOMBRE_USUARIO varchar(30) DEFAULT NULL,
  PAIS varchar(50) DEFAULT NULL,
  PERFIL varchar(30) DEFAULT NULL,
  CORREO varchar(50) DEFAULT NULL,
  CLAVE_USUARIO varchar(20) DEFAULT NULL,
  FECHA_CREACION varchar(20) DEFAULT NULL,
  ESTADO varchar(10) DEFAULT NULL,
  PRIMARY KEY (COD_USUARIO)
); 

DELIMITER &&
CREATE PROCEDURE INSERTAR_USUARIOS (
  APELLIDO_USUARIO varchar(30) ,NOMBRE_USUARIO varchar(30) ,PAIS varchar(50) ,
PERFIL varchar(30) ,CORREO varchar(50) ,CLAVE_USUARIO varchar(20) ,
  ESTADO varchar(10))
  BEGIN
  INSERT INTO TB_USUARIOS VALUES(DEFAULT,APELLIDO_USUARIO  ,NOMBRE_USUARIO  ,PAIS ,
  PERFIL ,CORREO  ,CLAVE_USUARIO  ,
  now()  ,ESTADO );
  END&&


DELIMITER &&
CREATE PROCEDURE ACTUALIZAR_USUARIO (  _COD_USUARIO INT,
  _APELLIDO_USUARIO varchar(30) ,_NOMBRE_USUARIO varchar(30) ,_PAIS varchar(50) ,
_PERFIL varchar(30) ,_CORREO varchar(50) ,_CLAVE_USUARIO varchar(20) ,_FECHA_CREACION VARCHAR(100),
  _ESTADO varchar(10))
  BEGIN
  UPDATE TB_USUARIOS SET   APELLIDO_USUARIO= _APELLIDO_USUARIO  ,NOMBRE_USUARIO=_NOMBRE_USUARIO  ,PAIS=_PAIS  ,
PERFIL=_PERFIL ,CORREO=_CORREO  ,CLAVE_USUARIO=_CLAVE_USUARIO,FECHA_CREACION=_FECHA_CREACION  ,ESTADO=_ESTADO WHERE COD_USUARIO=_COD_USUARIO;
  END&&



DELIMITER &&
CREATE PROCEDURE ELIMINAR_USUARIOS (_COD_USUARIO int)
BEGIN 
UPDATE TB_USUARIOS SET ESTADO='INACTIVO' WHERE COD_USUARIO=_COD_USUARIO;
END&&

INSERT INTO TB_USUARIOS VALUES (DEFAULT,'HERRERA','OCTAVIO','HUEHUE','ADMIN','OCTAVIO@GMAIL.COM','ABC.123','2018-09-24 21:55:34','ACTIVO');

CREATE TABLE TB_PACIENTES (
  COD_PACIENTE int ,
  APELLIDOS varchar(50) DEFAULT NULL,
  APELLIDOS2 varchar(50) DEFAULT NULL,
  NOMBRES varchar(50) DEFAULT NULL,
  NOMBRES2 varchar(50) DEFAULT NULL,
  FECHA_NACIMIENTO varchar(50) DEFAULT NULL,
  DIRECCION varchar(50) DEFAULT NULL,
  TELEFONO_RECIDENCIAL int(11) DEFAULT NULL,
  CELULAR1 int(11) DEFAULT NULL,
  CELULAR2 int(11) DEFAULT NULL,
  REFERIDO varchar(50) DEFAULT NULL,
  OCUPACION varchar(50) DEFAULT NULL,
  DPI varchar(50) DEFAULT NULL,
  ESTADO varchar(20) DEFAULT NULL,
  PRIMARY KEY (COD_PACIENTE)
);
select * from TB_PACIENTES;

select COD_PACIENTE, DPI from TB_PACIENTES where DPI='2430792571301' AND estado='ACTIVO';

DELIMITER &&
CREATE PROCEDURE INSERTAR_PACIENTE (inout COD INT,APE VARCHAR(50),APE2 VARCHAR(50),NOMBRE VARCHAR(50),NOMBRE2 VARCHAR(50),FECHA_NACIMIENTO VARCHAR(50),DIRECCION VARCHAR(50),
RECIDENCIAL INT,CELULAR1 INT,CELULAR2 INT,REFERIDO VARCHAR(50),OCUPA VARCHAR(50),DNI VARCHAR(50) )
BEGIN 
select ifnull(max(COD_PACIENTE),0)+1 into COD from TB_PACIENTES;
INSERT INTO TB_PACIENTES VALUES(COD,APE ,APE2 ,NOMBRE ,NOMBRE2 ,FECHA_NACIMIENTO ,DIRECCION ,
RECIDENCIAL ,CELULAR1 ,CELULAR2 ,REFERIDO ,OCUPA ,DNI ,'ACTIVO');
END&&

DELIMITER &&
CREATE PROCEDURE ELIMINAR_PACIENTE (COD_PA INT)
BEGIN 
UPDATE TB_PACIENTES SET ESTADO='INACTIVO' WHERE COD_PACIENTE=COD_PA;
END&&

DELIMITER &&
CREATE PROCEDURE ACTUALIZAR_PACIENTE (COD_PA INT,APE VARCHAR(50),APE2 VARCHAR(50),NOMBRE VARCHAR(50),
NOMBRE2 VARCHAR(50),FECHA VARCHAR(50),DIRE VARCHAR(50),
RECIDENCIAL INT,CELU1 INT,CELU2 INT,REFE VARCHAR(50),OCUPA VARCHAR(50),DNI VARCHAR(50),ESTA VARCHAR(50))
BEGIN 
UPDATE TB_PACIENTES SET APELLIDOS=APE, APELLIDOS2=APE2 ,NOMBRES=NOMBRE, 
  NOMBRES2=NOMBRE2, FECHA_NACIMIENTO=FECHA ,DIRECCION=DIRE, TELEFONO_RECIDENCIAL=RECIDENCIAL, CELULAR1=CELU1, CELULAR2=CELU2, 
  REFERIDO=REFE, OCUPACION=OCUPA, DPI=DNI, ESTADO=ESTA   WHERE COD_PACIENTE=COD_PA;
END&&


CREATE TABLE TB_FORMU_PACIENTE (
  COD_FORMULARIO int auto_increment,
  COD_PACIENTE int(20) DEFAULT NULL,
  CEPILLA int(20) DEFAULT NULL,
  HILO varchar(20) DEFAULT NULL,
  LENGUA varchar(20) DEFAULT NULL,
  SANGRA varchar(20) DEFAULT NULL,
  MOTIVO varchar(100) DEFAULT NULL,
  MOLESTIA varchar(20) DEFAULT NULL,
  ES varchar(20) DEFAULT NULL,
  DUELE varchar(20) DEFAULT NULL,
  INFLAMACION varchar(20) DEFAULT NULL,
  COLOR varchar(20) DEFAULT NULL,
  ALIENTO varchar(20) DEFAULT NULL,
  ULTIMA_VEZ int(11) DEFAULT NULL,
  EMBARAZADA varchar(20) DEFAULT NULL,
  MEDICAMENTO varchar(20) DEFAULT NULL,
  ANESESIA varchar(20) DEFAULT NULL,
  PIEZA varchar(20) DEFAULT NULL,
  HEMORRAGIA varchar(20) DEFAULT NULL,
  ENFERMEDAD varchar(20) DEFAULT NULL,
  ENFERMEDAD2 varchar(20) DEFAULT NULL,
  HOSPITALIZADO varchar(20) DEFAULT NULL,
  PORQUE varchar(100) DEFAULT NULL,
  PRIMARY KEY (COD_FORMULARIO),
  KEY COD_PACIENTE (COD_PACIENTE),
  CONSTRAINT TB_FORMU_PACIENTE_ibfk_1 FOREIGN KEY (COD_PACIENTE) REFERENCES TB_PACIENTES (COD_PACIENTE)
);

DELIMITER &&
CREATE PROCEDURE INSERTAR_FORMULARIO_PACIENTE (
COD_PACIENTE int(20),CEPILLA int(20) ,HILO varchar(10) ,LENGUA varchar(10),SANGRA varchar(10) ,MOTIVO varchar(100) ,
MOLESTIA varchar(10) ,ES varchar(10) ,DUELE varchar(10) ,INFLAMACION varchar(10) ,COLOR varchar(10) ,ALIENTO varchar(10) ,
ULTIMA_VEZ int(11) ,EMBARAZADA varchar(10) ,MEDICAMENTO varchar(10) ,ANESESIA varchar(10) ,PIEZA varchar(10) ,
HEMORRAGIA varchar(10) ,ENFERMEDAD varchar(10) ,ENFERMEDAD2 varchar(10) ,HOSPITALIZADO varchar(10) ,PORQUE varchar(100) )
BEGIN 
INSERT INTO TB_FORMU_PACIENTE VALUES(default,COD_PACIENTE,CEPILLA  ,HILO  ,LENGUA ,SANGRA ,MOTIVO  ,
MOLESTIA  ,ES  ,DUELE  ,INFLAMACION  ,COLOR  ,ALIENTO  ,
ULTIMA_VEZ ,EMBARAZADA  ,MEDICAMENTO ,ANESESIA ,PIEZA  ,
HEMORRAGIA  ,ENFERMEDAD  ,ENFERMEDAD2  ,HOSPITALIZADO  ,PORQUE );
END&&



CREATE TABLE TB_HISTORIAL (
  COD_HISTORIAL int auto_increment,
  COD_PACIENTE int(20) DEFAULT NULL,
  FECHA_HISTORIAL timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PIEZA float(20,5) DEFAULT NULL,
  CONDUCTO varchar(1000) DEFAULT NULL,
  CONDUCTOMETRIA varchar(1000) DEFAULT NULL,
  BASE varchar(100) DEFAULT NULL,
  OTB varchar(100) DEFAULT NULL,
  OBSERVACIONES varchar(1000) DEFAULT NULL,
  USUARIO varchar(20) DEFAULT NULL,
  ESTADO varchar(20) DEFAULT NULL,
  PRIMARY KEY (COD_HISTORIAL),
  KEY COD_PACIENTE (COD_PACIENTE),
  CONSTRAINT TB_HISTORIAL_ibfk_1 FOREIGN KEY (COD_PACIENTE) REFERENCES TB_PACIENTES (COD_PACIENTE)
);


DELIMITER &&
CREATE PROCEDURE INSERTAR_HISTORIAL ( 
  COD_PACIENTE int(20) ,PIEZA float(20,5), CONDUCTO varchar(1000),
  CONDUCTOMETRIA varchar(1000), BASE varchar(100) ,OTB varchar(100), 
  OBSERVACIONES varchar(1000) ,USUARIO varchar(20) )
BEGIN 
INSERT INTO TB_HISTORIAL VALUES(default ,COD_PACIENTE  ,now(),PIEZA , CONDUCTO ,CONDUCTOMETRIA , BASE  ,OTB , 
  OBSERVACIONES ,USUARIO,'ACTIVO' );
END&&

DELIMITER &&
CREATE PROCEDURE ELIMINAR_HISTORIAL (COD_HIS INT)
BEGIN 
UPDATE TB_HISTORIAL SET ESTADO='INACTIVO' WHERE COD_HISTORIAL=COD_HIS;
END&&



DELIMITER &&
CREATE PROCEDURE ACTUALIZAR_HISTORIAL(COD_HISTO int(20)
  ,PI float(20,5), CON varchar(1000),
  CONTRIA varchar(1000), BA varchar(100) ,OT varchar(100), 
  OBS varchar(1000) ,USU varchar(20),  ES  varchar(20))
BEGIN 
UPDATE TB_HISTORIAL SET PIEZA=PI , CONDUCTO=CON ,CONDUCTOMETRIA=CONTRIA , BASE=BA  ,OTB=OT , 
  OBSERVACIONES=OBS ,USUARIO=USU ,ESTADO=ES  WHERE COD_HISTORIAL=COD_HISTO;
END&&


CREATE TABLE TB_IMAGENES (
  ID_IMAGEN int(20) NOT NULL,
COD_PACIENTE int(20) DEFAULT NULL,
  NOMBRE varchar(100) DEFAULT NULL,
  OBSERVACION varchar(100) DEFAULT NULL,
  IMAGEN varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID_IMAGEN),
  KEY COD_PACIENTE (COD_PACIENTE),
  CONSTRAINT TB_IMAGENES_ibfk_1 FOREIGN KEY (COD_PACIENTE) REFERENCES TB_PACIENTES (COD_PACIENTE)
); 


CREATE TABLE TB_PRESUPUESTO (
  COD_PRESUPUESTO int auto_increment,
  COD_PACIENTE int(100) NOT NULL,
  PIEZA varchar(100) DEFAULT NULL,
  TRATAMIENTO varchar(100) DEFAULT NULL,
  PRECIO float(8,2) DEFAULT NULL,
  USUARIO varchar(100) DEFAULT NULL,
  FECHA varchar(100) DEFAULT NULL,
  ESTADO varchar(20) DEFAULT NULL,
  PRIMARY KEY (COD_PRESUPUESTO),
  KEY COD_PACIENTE (COD_PACIENTE),
  CONSTRAINT TB_PRESUPUESTO_ibfk_1 FOREIGN KEY (COD_PACIENTE) REFERENCES TB_PACIENTES (COD_PACIENTE)
);

DELIMITER &&
CREATE PROCEDURE INSERTAR_PRESUPUESTO ( CODPA int(100) ,PI varchar(100) ,
  TRA varchar(100) ,PRE float(8,2) ,USU varchar(100))
BEGIN 
INSERT INTO TB_PRESUPUESTO VALUES(default,CODPA  ,PI  ,TRA  ,PRE  ,USU ,now()  ,'ACTIVO' );
END&&

DELIMITER &&
CREATE PROCEDURE ELIMINAR_PRESUPUESTO (CODPRE int)
BEGIN 
UPDATE TB_PRESUPUESTO SET ESTADO='INACTIVO' WHERE COD_PRESUPUESTO=CODPRE;
END&&

DELIMITER &&
CREATE PROCEDURE ACTUALIZAR_PRESUPUESTO ( CODPRE int(100) ,PI varchar(100) ,
  TRA varchar(100) ,PRE float(8,2) ,USU varchar(100),ESTA VARCHAR(20))
BEGIN 
UPDATE TB_PRESUPUESTO SET  PIEZA=PI, TRATAMIENTO=TRA,PRECIO=PRE,USUARIO=USU,ESTADO=ESTA WHERE COD_PRESUPUESTO=CODPRE; 
END&&

CREATE TABLE TB_PAGOS (
  ID_PAGO int default 0,
  COD_PACIENTE int(20) NOT NULL,
  COD_PRESUPUESTO int(11) NOT NULL,
  FECHA_PAGO date DEFAULT NULL,
  PAGO float(8,2) DEFAULT NULL,
  SALDO float(8,2) DEFAULT NULL,
  USUARIO varchar(100) DEFAULT NULL,
  NO_RECIBO int default 0,
  ESTADO varchar(20) DEFAULT NULL,
  PRIMARY KEY (ID_PAGO),
  KEY COD_PACIENTE (COD_PACIENTE),
  KEY COD_PRESUPUESTO (COD_PRESUPUESTO),
  CONSTRAINT TB_PAGOS_ibfk_1 FOREIGN KEY (COD_PACIENTE) REFERENCES TB_PACIENTES (COD_PACIENTE),
  CONSTRAINT TB_PAGOS_ibfk_2 FOREIGN KEY (COD_PRESUPUESTO) REFERENCES TB_PRESUPUESTO (COD_PRESUPUESTO)
);

DELIMITER &&
CREATE PROCEDURE INSERTAR_PAGO ( COD_PACIENTE INT(20),COD_PRESUPUESTO INT(20), PAGO FLOAT(8,2),
USUARIO VARCHAR(100),INOUT COD int) 
BEGIN 
SELECT IFNULL(MAX(ID_PAGO),0)+1 INTO COD FROM TB_PAGOS;
INSERT INTO TB_PAGOS VALUES(COD,COD_PACIENTE,COD_PRESUPUESTO,now(),PAGO,0,USUARIO,COD,'ACTIVO');
END&&

SELECT B.PRECIO-SUM(A.PAGO)
FROM TB_PAGOS A,TB_PRESUPUESTO B
 WHERE B.COD_PACIENTE=1 AND A.ESTADO='ACTIVO'
 AND A.COD_PRESUPUESTO=2 AND A.COD_PRESUPUESTO=B.COD_PRESUPUESTO;
