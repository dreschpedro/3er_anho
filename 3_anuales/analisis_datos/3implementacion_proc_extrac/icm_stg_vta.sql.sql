/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     01/7/2020 11:00:00                           */
/* OBJETIVO:     TABLAS INTERMEDIAS                            */
/*==============================================================*/

drop table if exists stg_inicio_vta;
drop table if exists  INT_TRANSFORM_VTA;

/*  Tablas Stagin */

drop table if exists STG_FACT_COM_VTA_PROY_VS_REAL;

drop table if exists STG_FACT_MEDIO_PAGO_FACTURACION;

drop table if exists STG_FACT__ITEM_VENDIDO;

drop table if exists STG_DIM_CANAL;

drop table if exists STG_DIM_CLIENTE;

drop table if exists STG_DIM_MEDIO_PAGO;

drop table if exists STG_DIM_PRODUCTO;

drop table if exists STG_DIM_SUCURSAL;

drop table if exists STG_DIM_TIEMPOCOMPARATIVO;

drop table if exists STG_DIM_TIEMPODIARIO;


/* tablas internas */

drop table if exists INT_FACT_COM_VTA_PROY_VS_REAL;

drop table if exists INT_FACT_MEDIO_PAGO_FACTURACION;

drop table if exists INT_FACT__ITEM_VENDIDO;


drop table if exists INT_DIM_CANAL;

drop table if exists INT_DIM_CLIENTE;

drop table if exists INT_DIM_MEDIO_PAGO;

drop table if exists INT_DIM_PRODUCTO;

drop table if exists INT_DIM_SUCURSAL;

drop table if exists INT_DIM_TIEMPOCOMPARATIVO;

drop table if exists INT_DIM_TIEMPODIARIO;


CREATE TABLE `stg_inicio_vta` (
  `ID_CAB_VTA` int(11) NOT NULL,
  `FECHA_VTA` date DEFAULT NULL,
  `APELLIDO` varchar(200) DEFAULT NULL,
  `NOMBRE` varchar(200) DEFAULT NULL,
  `NRO_DOCUMENTO` varchar(11) DEFAULT NULL,
  `nombre_canal` varchar(200) DEFAULT NULL,
  `DESC_RUBRO` varchar(200) DEFAULT NULL,
  `DESC_SUBRUBRO` varchar(200) DEFAULT NULL,
  `DESC_MARCA` varchar(200) DEFAULT NULL,
  `DESC_PRODUCTO` varchar(200) DEFAULT NULL,
  `DESC_PROVINCIA` varchar(200) DEFAULT NULL,
  `DESC_CIUDAD` varchar(200) DEFAULT NULL,
  `DESC_ZONA` varchar(200) DEFAULT NULL,
  `DESC_SUCURSAL` varchar(200) DEFAULT NULL,
  `UNIDAD_VENDIDA` int(11) DEFAULT NULL,
  `MONTO_VENDIDO` decimal(10,0) DEFAULT NULL,
  `BENEFICIO_VENDIDO` decimal(10,0) DEFAULT NULL,
  NRO_LOTE  int(11) not null
) ENGINE=InnoDB;

CREATE TABLE `INT_TRANSFORM_VTA` (
  `ID_CAB_VTA` int(11) NOT NULL,
  `FECHA_VTA` date DEFAULT NULL,
  `APELLIDO` varchar(200) DEFAULT NULL,
  `NOMBRE` varchar(200) DEFAULT NULL,
  `NRO_DOCUMENTO` varchar(11) DEFAULT NULL,
  `nombre_canal` varchar(200) DEFAULT NULL,
  `DESC_RUBRO` varchar(200) DEFAULT NULL,
  `DESC_SUBRUBRO` varchar(200) DEFAULT NULL,
  `DESC_MARCA` varchar(200) DEFAULT NULL,
  `DESC_PRODUCTO` varchar(200) DEFAULT NULL,
  `DESC_PROVINCIA` varchar(200) DEFAULT NULL,
  `DESC_CIUDAD` varchar(200) DEFAULT NULL,
  `DESC_ZONA` varchar(200) DEFAULT NULL,
  `DESC_SUCURSAL` varchar(200) DEFAULT NULL,
  `A O` int(4) NOT NULL,
  `SEMESTRE` int(1) NOT NULL,
  `TRIMESTRE` int(1) NOT NULL,
  `MES` int(2) NOT NULL,
  `DIA_MES` int(2) NOT NULL,
   `UNIDAD_VENDIDA` int(11) DEFAULT NULL,
  `MONTO_VENDIDO` decimal(10,0) DEFAULT NULL,
  `BENEFICIO_VENDIDO` decimal(10,0) DEFAULT NULL,
  NRO_LOTE  int(11) not null
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*==============================================================*/
/* Table: DIM_CANAL                                             */
/*==============================================================*/
create table INT_DIM_CANAL
(
   ID_CANAL0            int AUTO_INCREMENT NOT NULL,
   NOMBRE_CANAL         varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_CANAL0)
);

create table STG_DIM_CANAL
(
   ID_CANAL0            int AUTO_INCREMENT NOT NULL,
   NOMBRE_CANAL         varchar(255),
   NRO_LOTE             int(11) not null,
    primary key (ID_CANAL0)
);

/*==============================================================*/
/* Table: DIM_CLIENTE                                           */
/*==============================================================*/
create table INT_DIM_CLIENTE
(
   ID_CLIENTE0          int AUTO_INCREMENT NOT NULL,
   APELLIDO             varchar(255),
   NOMBRE               varchar(255),
   NRO_DOCUMENTO        int,
   NRO_LOTE             int(11) not null,
   primary key (ID_CLIENTE0)
);

create table STG_DIM_CLIENTE
(
   ID_CLIENTE0          int AUTO_INCREMENT NOT NULL,
   APELLIDO             varchar(255),
   NOMBRE               varchar(255),
   NRO_DOCUMENTO        int,
    NRO_LOTE  int(11) not null,
   primary key (ID_CLIENTE0)
);

/*==============================================================*/
/* Table: DIM_MEDIO_PAGO                                        */
/*==============================================================*/
create table INT_DIM_MEDIO_PAGO
(
   ID_MEDIO_PAGO0       int AUTO_INCREMENT NOT NULL,
   FORMA_PAGO           varchar(255),
   OPCION_PAGO          varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_MEDIO_PAGO0)
);

create table STG_DIM_MEDIO_PAGO
(
   ID_MEDIO_PAGO0       int AUTO_INCREMENT NOT NULL,
   FORMA_PAGO           varchar(255),
   OPCION_PAGO          varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_MEDIO_PAGO0)
);

/*==============================================================*/
/* Table: DIM_PRODUCTO                                          */
/*==============================================================*/
create table INT_DIM_PRODUCTO
(
   ID_PRODUCTO0         int AUTO_INCREMENT NOT NULL,
   RUBRO                varchar(255),
   SUB_RUBRO            varchar(255),
   MARCA                varchar(255),
   NOMBRE_PRODUCTO      varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_PRODUCTO0)
);

create table STG_DIM_PRODUCTO
(
   ID_PRODUCTO0         int AUTO_INCREMENT NOT NULL,
   RUBRO                varchar(255),
   SUB_RUBRO            varchar(255),
   MARCA                varchar(255),
   NOMBRE_PRODUCTO      varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_PRODUCTO0)
);
/*==============================================================*/
/* Table: DIM_SUCURSAL                                          */
/*==============================================================*/
create table INT_DIM_SUCURSAL
(
   ID_SUCURSAL0         int AUTO_INCREMENT NOT NULL,
   PROVINCIA            varchar(255),
   CIUDAD               varchar(255),
   ZONA                 varchar(255),
   SUCURSAL             varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_SUCURSAL0)
);

create table STG_DIM_SUCURSAL
(
   ID_SUCURSAL0         int AUTO_INCREMENT NOT NULL,
   PROVINCIA            varchar(255),
   CIUDAD               varchar(255),
   ZONA                 varchar(255),
   SUCURSAL             varchar(255),
   NRO_LOTE             int(11) not null,
   primary key (ID_SUCURSAL0)
);
/*==============================================================*/
/* Table: DIM_TIEMPOCOMPARATIVO                                 */
/*==============================================================*/
create table INT_DIM_TIEMPOCOMPARATIVO
(
   ID_TIMPOCOMPARATIVO  int AUTO_INCREMENT NOT NULL,
   TC_ANIO              int,
   TC_SEMESTRE          int,
   TC_TRIMESTRE         int,
   TC_MES               int,
   NRO_LOTE             int(11) not null,
   primary key (ID_TIMPOCOMPARATIVO)
);

create table STG_DIM_TIEMPOCOMPARATIVO
(
   ID_TIMPOCOMPARATIVO  int AUTO_INCREMENT NOT NULL,
   TC_ANIO              int,
   TC_SEMESTRE          int,
   TC_TRIMESTRE         int,
   TC_MES               int,
   NRO_LOTE             int(11) not null,
   primary key (ID_TIMPOCOMPARATIVO)
);

/*==============================================================*/
/* Table: DIM_TIEMPODIARIO                                      */
/*==============================================================*/
create table INT_DIM_TIEMPODIARIO
(
   ID_TIEMPO1           int AUTO_INCREMENT NOT NULL,
   ANIO1                int,
   SEMESTRE1            int,
   TRIMESTRE1           int,
   MES1                 int,
   DIA_DEL_MES1         int,
   FECHA1               date,
   NRO_LOTE             int(11) not null,
   primary key (ID_TIEMPO1)
);

create table STG_DIM_TIEMPODIARIO
(
   ID_TIEMPO1           int AUTO_INCREMENT NOT NULL,
   ANIO1                int,
   SEMESTRE1            int,
   TRIMESTRE1           int,
   MES1                 int,
   DIA_DEL_MES1         int,
   FECHA1               date,
   NRO_LOTE             int(11) not null,
   primary key (ID_TIEMPO1)
);
/*==============================================================*/
/* Table: FACT_COMARATIVO_VTA_PROYECTADO_VS_REAL                */
/*==============================================================*/
create table INT_FACT_COM_VTA_PROY_VS_REAL
(
   ID_FACT_CVTA_PROY_REAL int AUTO_INCREMENT NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_PRODUCTO0         int NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_TIMPOCOMPARATIVO  int NOT NULL,
   MONTO_PROYECTADO     decimal,
   MONTO_REAL           decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_CVTA_PROY_REAL)
);

create table STG_FACT_COM_VTA_PROY_VS_REAL
(
   ID_FACT_CVTA_PROY_REAL int AUTO_INCREMENT NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_PRODUCTO0         int NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_TIMPOCOMPARATIVO  int NOT NULL,
   MONTO_PROYECTADO     decimal,
   MONTO_REAL           decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_CVTA_PROY_REAL)
);

/*==============================================================*/
/* Table: FACT_MEDIO_PAGO_FACTURACION                           */
/*==============================================================*/
create table INT_FACT_MEDIO_PAGO_FACTURACION
(
   ID_FACT_MEDIO_PAG_FACT int AUTO_INCREMENT NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_TIEMPO1           int NOT NULL,
   ID_MEDIO_PAGO0       int NOT NULL,
   MONTO_FACTURADO      decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_MEDIO_PAG_FACT)
);

create table STG_FACT_MEDIO_PAGO_FACTURACION
(
   ID_FACT_MEDIO_PAG_FACT int AUTO_INCREMENT NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_TIEMPO1           int NOT NULL,
   ID_MEDIO_PAGO0       int NOT NULL,
   MONTO_FACTURADO      decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_MEDIO_PAG_FACT)
);

/*==============================================================*/
/* Table: FACT__ITEM_VENDIDO                                    */
/*==============================================================*/
create table INT_FACT__ITEM_VENDIDO
(
   ID_FACT_ITEM_VTA     int AUTO_INCREMENT NOT NULL,
   ID_CLIENTE0          int NOT NULL,
   ID_PRODUCTO0         int NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_TIEMPO1           int NOT NULL,
   NRO_FACTURA          varchar(255),
   UNIDAD_VENDIDA       int,
   MONTO_VENDIDO        decimal,
   BENEFICIO_VENDIDO    decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_ITEM_VTA)
);

create table STG_FACT__ITEM_VENDIDO
(
   ID_FACT_ITEM_VTA     int AUTO_INCREMENT NOT NULL,
   ID_CLIENTE0          int NOT NULL,
   ID_PRODUCTO0         int NOT NULL,
   ID_SUCURSAL0         int NOT NULL,
   ID_CANAL0            int NOT NULL,
   ID_TIEMPO1           int NOT NULL,
   NRO_FACTURA          varchar(255),
   UNIDAD_VENDIDA       int,
   MONTO_VENDIDO        decimal,
   BENEFICIO_VENDIDO    decimal,
   NRO_LOTE             int(11) not null,
   primary key (ID_FACT_ITEM_VTA)
);

alter table INT_FACT_COM_VTA_PROY_VS_REAL add constraint FK_I_RELATIONSHIP_15 foreign key (ID_TIMPOCOMPARATIVO)
      references INT_DIM_TIEMPOCOMPARATIVO (ID_TIMPOCOMPARATIVO) on delete restrict on update restrict;

alter table INT_FACT_COM_VTA_PROY_VS_REAL add constraint FK_I_RELATIONSHIP_6 foreign key (ID_CANAL0)
      references INT_DIM_CANAL (ID_CANAL0) on delete restrict on update restrict;

alter table INT_FACT_COM_VTA_PROY_VS_REAL add constraint FK_I_RELATIONSHIP_8 foreign key (ID_PRODUCTO0)
      references INT_DIM_PRODUCTO (ID_PRODUCTO0) on delete restrict on update restrict;

alter table INT_FACT_COM_VTA_PROY_VS_REAL add constraint FK_I_RELATIONSHIP_9 foreign key (ID_SUCURSAL0)
      references INT_DIM_SUCURSAL (ID_SUCURSAL0) on delete restrict on update restrict;

alter table INT_FACT_MEDIO_PAGO_FACTURACION add constraint FK_I_RELATIONSHIP_10 foreign key (ID_SUCURSAL0)
      references INT_DIM_SUCURSAL (ID_SUCURSAL0) on delete restrict on update restrict;

alter table INT_FACT_MEDIO_PAGO_FACTURACION add constraint FK_I_RELATIONSHIP_11 foreign key (ID_CANAL0)
      references INT_DIM_CANAL (ID_CANAL0) on delete restrict on update restrict;

alter table INT_FACT_MEDIO_PAGO_FACTURACION add constraint FK_I_RELATIONSHIP_12 foreign key (ID_TIEMPO1)
      references INT_DIM_TIEMPODIARIO (ID_TIEMPO1) on delete restrict on update restrict;

alter table INT_FACT_MEDIO_PAGO_FACTURACION add constraint FK_I_RELATIONSHIP_13 foreign key (ID_MEDIO_PAGO0)
      references INT_DIM_MEDIO_PAGO (ID_MEDIO_PAGO0) on delete restrict on update restrict;

alter table INT_FACT__ITEM_VENDIDO add constraint FK_I_RELATIONSHIP_1 foreign key (ID_CLIENTE0)
      references INT_DIM_CLIENTE (ID_CLIENTE0) on delete restrict on update restrict;

alter table INT_FACT__ITEM_VENDIDO add constraint FK_I_RELATIONSHIP_14 foreign key (ID_TIEMPO1)
      references INT_DIM_TIEMPODIARIO (ID_TIEMPO1) on delete restrict on update restrict;

alter table INT_FACT__ITEM_VENDIDO add constraint FK_I_RELATIONSHIP_2 foreign key (ID_PRODUCTO0)
      references INT_DIM_PRODUCTO (ID_PRODUCTO0) on delete restrict on update restrict;

alter table INT_FACT__ITEM_VENDIDO add constraint FK_I_RELATIONSHIP_3 foreign key (ID_SUCURSAL0)
      references INT_DIM_SUCURSAL (ID_SUCURSAL0) on delete restrict on update restrict;

alter table INT_FACT__ITEM_VENDIDO add constraint FK_I_RELATIONSHIP_4 foreign key (ID_CANAL0)
      references INT_DIM_CANAL (ID_CANAL0) on delete restrict on update restrict;
