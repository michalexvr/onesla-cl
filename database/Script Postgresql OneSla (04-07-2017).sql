
--Se crea el role si no existe o sino comentar y ejecutar el resto del script.

--CREATE ROLE sportapp LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
--COMMENT ON ROLE onesla IS 'base de datos onesla.';


DROP SCHEMA public CASCADE;
CREATE SCHEMA public AUTHORIZATION onesla;

GRANT ALL ON SCHEMA public TO onesla;
GRANT ALL ON SCHEMA public TO public;
COMMENT ON SCHEMA public IS 'standard public schema';


CREATE TABLE IF NOT EXISTS clientes (
  id serial NOT NULL,
  rut varchar(12) NOT NULL,
  nombre varchar(100) NOT NULL,
  direccion varchar(100),
  giro varchar(50) NOT NULL,
  telefono varchar(40) NOT NULL,
  email varchar(50) NOT NULL, 
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT clientes_pk PRIMARY KEY (id),
  CONSTRAINT clientes_email UNIQUE  (email)
)   ;


CREATE TABLE IF NOT EXISTS proveedores (
  id serial NOT NULL,
  rut varchar(12) NOT NULL,
  nombre varchar(100) NOT NULL,
  direccion varchar(100),
  giro varchar(50) NOT NULL,
  telefono varchar(40) NOT NULL,
  email varchar(50) NOT NULL, 
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT proveedores_pk PRIMARY KEY (id),
  CONSTRAINT proveedores_email UNIQUE  (email)
)   ;

 
CREATE TABLE IF NOT EXISTS clientes_proveedores (
  id serial NOT NULL,
  cliente_id int check (cliente_id > 0) NOT NULL ,
  proveedor_id int check (proveedor_id > 0) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT clientes_proveedores_pk PRIMARY KEY (id),
  CONSTRAINT clientes_proveedores_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES clientes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientes_proveedores_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES proveedores (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;


CREATE TABLE IF NOT EXISTS instalaciones (
  id serial NOT NULL,
  cliente_id int check (cliente_id > 0) NOT NULL ,
  direccion varchar(100) NOT NULL,
  oficina varchar(50) NOT NULL,
  telefono varchar(40) NOT NULL,
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT instalaciones_pk PRIMARY KEY (id),
  CONSTRAINT instalaciones_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES clientes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX instalaciones_cliente_id ON instalaciones (cliente_id);


--Tipo Equipo: Insdustrial, Oficina, Casa, Otro...

CREATE TABLE IF NOT EXISTS tipo_equipo (
  id serial NOT NULL,
  nombre varchar(30) NOT NULL ,
  descripcion varchar(100) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT tipo_equipo_pk PRIMARY KEY (id)
)   ;

CREATE TABLE IF NOT EXISTS equipos (
  id serial NOT NULL,
  tipo_equipo_id int check (tipo_equipo_id > 0) NOT NULL ,
  instalacion_id int check (instalacion_id > 0) NOT NULL ,
  codigo_cliente varchar(40) NOT NULL,
  codigo_interno varchar(40) NOT NULL,
  codigo_auxiliar varchar(40) NOT NULL,
  nombre varchar(150) NOT NULL,
  descripcion varchar(500),
  marca varchar(45) NOT NULL,
  modelo varchar(45),
  serie varchar(45),
  observaciones varchar(500),
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT equipos_pk PRIMARY KEY (id),
  CONSTRAINT equipos_instalacion_id_fkey FOREIGN KEY (instalacion_id) REFERENCES instalaciones (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT equipos_tipo_equipo_id_fkey FOREIGN KEY (tipo_equipo_id) REFERENCES tipo_equipo (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX equipos_instalacion_id ON equipos (instalacion_id);
CREATE INDEX equipos_tipo_equipo_id ON equipos (tipo_equipo_id);
CREATE INDEX equipos_index1 ON equipos (tipo_equipo_id, instalacion_id);


CREATE TABLE IF NOT EXISTS cliente_contactos (
  id serial NOT NULL,
  cliente_id int check (cliente_id > 0) NOT NULL ,
  nombres varchar(100) NOT NULL,
  apellidos varchar(100) NOT NULL,
  telefono varchar(40) NOT NULL,
  celular varchar(40) NOT NULL,
  email varchar(50) NOT NULL, 
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT cliente_contactos_pk PRIMARY KEY (id),
  CONSTRAINT cliente_contactos_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES clientes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX cliente_contactos_cliente_id ON cliente_contactos (cliente_id);


--estado_requerimientos: Recepcionado, Rechazado, Ingresado, Pendiente, En Ejecución, En Confirmación, Terminado, Entregado.
CREATE TABLE IF NOT EXISTS estado_requerimientos (
  id serial NOT NULL,
  nombre varchar(15) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT estado_requerimiento_pk PRIMARY KEY (id)
)   ;


CREATE TABLE IF NOT EXISTS requerimientos (
  id serial NOT NULL,
  cliente_contacto_id int check (cliente_contacto_id > 0) NOT NULL , --Creado por, es el responsable de ingresar el requerimeinto de un cliente.
  estado_requerimiento_id int check (estado_requerimiento_id > 0) NOT NULL ,
  resumen varchar(100) NOT NULL,
  detalle varchar(200) NOT NULL,
  fecha_creacion timestamp(0) NOT NULL,
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT requerimientos_pk PRIMARY KEY (id),
  CONSTRAINT requerimientos_cliente_contacto_id_fkey FOREIGN KEY (cliente_contacto_id) REFERENCES cliente_contactos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT requerimientos_estado_requerimiento_id_fkey FOREIGN KEY (estado_requerimiento_id) REFERENCES estado_requerimientos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX requerimientos_cliente_contacto_id ON requerimientos (cliente_contacto_id);
CREATE INDEX requerimientos_estado_requerimiento_id ON requerimientos (estado_requerimiento_id);


--Tipo Servicio: Mantención, Reparación, Emergencia.

CREATE TABLE IF NOT EXISTS tipo_servicio (
  id serial NOT NULL,
  nombre varchar(30) NOT NULL ,
  descripcion varchar(100) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT tipo_servicio_pk PRIMARY KEY (id)
)   ;

--Esta tabla NO se utilizara ya que el requerimiento definira el estado general entre requerimiento y servicios.
--estado_servicio: Asignado, Solucionado...
/*CREATE TABLE IF NOT EXISTS estado_servicio (
  id serial NOT NULL,
  nombre varchar(15) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT estado_servicio_pk PRIMARY KEY (id)
)   ;*/

--
CREATE TABLE IF NOT EXISTS tipo_control (
  id serial NOT NULL,
  nombre varchar(30) NOT NULL , --Ejemplo: texbox numerico, texbox alfanumerico, texbox solo texto, etc..
  descripcion varchar(100),
  expresion_regular varchar(200),--Aqui se almacena la exprecion regular del control para controlar datos de entrada. solo para texbox.
  altura boolean DEFAULT false, --para texarea y texbox
  ancho boolean DEFAULT false, --para texarea y texbox
  opciones boolean DEFAULT false, --para combobox y listbox y radio butons.
  altura_default int,
  ancho_default int ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT tipo_control_pk PRIMARY KEY (id)
)   ;


CREATE TABLE IF NOT EXISTS servicios (
  id serial NOT NULL,
  requerimiento_id int check (requerimiento_id > 0) NOT NULL ,
  equipo_id int check (equipo_id > 0) NOT NULL ,
  tipo_servicio_id int check (tipo_servicio_id > 0) NOT NULL ,
  --estado_servicio_id int check (estado_servicio_id > 0) NOT NULL ,
  nombre varchar(40) NOT NULL,
  observaciones varchar(500),
  fecha_creacion timestamp(0) NOT NULL,
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT servicios_pk PRIMARY KEY (id),
  CONSTRAINT servicios_requerimiento_id_fkey FOREIGN KEY (requerimiento_id) REFERENCES requerimientos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicios_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES equipos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicios_tipo_servicio_id_fkey FOREIGN KEY (tipo_servicio_id) REFERENCES tipo_servicio (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION--,
  --CONSTRAINT servicios_estado_servicio_id_fkey FOREIGN KEY (estado_servicio_id) REFERENCES estado_servicio (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX servicios_requerimiento_id ON servicios (requerimiento_id);
CREATE INDEX servicios_equipo_id ON servicios (equipo_id);
CREATE INDEX servicios_tipo_servicio_id ON servicios (tipo_servicio_id);
--CREATE INDEX servicios_estado_servicio_id ON servicios (estado_servicio_id);

CREATE INDEX servicios_index1 ON servicios (requerimiento_id, equipo_id);
CREATE INDEX servicios_index2 ON servicios (requerimiento_id, tipo_servicio_id);
CREATE INDEX servicios_index3 ON servicios (requerimiento_id, equipo_id, tipo_servicio_id);


CREATE TABLE IF NOT EXISTS operadores (
  id serial NOT NULL,
  rut varchar(12) NOT NULL,
  nombre varchar(100) NOT NULL,
  cargo varchar(100),
  telefono varchar(40) NOT NULL,
  email varchar(50) NOT NULL, 
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT operadores_pk PRIMARY KEY (id),
  CONSTRAINT rut_unq UNIQUE  (rut)
)   ;

CREATE TABLE IF NOT EXISTS operadores_servicios (
  id serial NOT NULL,
  operador_id int check (operador_id > 0) NOT NULL ,
  servicio_id int check (servicio_id > 0) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT operadores_servicios_pk PRIMARY KEY (id),
  CONSTRAINT operadores_servicios_operador_id_fkey FOREIGN KEY (operador_id) REFERENCES operadores (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT operadores_servicios_servicio_id_fkey FOREIGN KEY (servicio_id) REFERENCES servicios (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX operadores_servicios_index1 ON operadores_servicios (operador_id, servicio_id);

CREATE TABLE IF NOT EXISTS pauta_servicios (
  id serial NOT NULL,
  --equipo_id int check (equipo_id > 0) NOT NULL ,
  nombre varchar(40) NOT NULL,
  descripcion varchar(100),
  fecha_creacion timestamp(0) NOT NULL,
  observaciones varchar(500),
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT pauta_servicios_pk PRIMARY KEY (id)--,
  --CONSTRAINT pauta_servicios_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES equipos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

--CREATE INDEX pauta_servicios_equipo_id ON pauta_servicios (equipo_id);


CREATE TABLE IF NOT EXISTS pauta_servicios_equipos (
  id serial NOT NULL,
  pauta_servicio_id int check (pauta_servicio_id > 0) NOT NULL ,
  equipo_id int check (equipo_id > 0) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT pauta_servicios_equipos_pk PRIMARY KEY (id),
  CONSTRAINT pauta_servicios_equipos_pauta_servicio_id_fkey FOREIGN KEY (pauta_servicio_id) REFERENCES pauta_servicios (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT pauta_servicios_equipos_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES equipos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX pauta_servicios_equipos_pauta_servicio_id ON pauta_servicios_equipos (pauta_servicio_id);
CREATE INDEX pauta_servicios_equipos_equipo_id ON pauta_servicios_equipos (equipo_id);
CREATE INDEX pauta_servicios_equipos_index1 ON pauta_servicios_equipos (pauta_servicio_id, equipo_id);


--Tipo Unidad Medida: Voltage, Corriente, Flujo, Velocidad, Masa, Presion, Longitud, Potencia.
CREATE TABLE IF NOT EXISTS tipo_unidad_medida (
  id serial NOT NULL,
  nombre varchar(30) NOT NULL ,
  descripcion varchar(50) NOT NULL ,
  categoria varchar(50) NOT NULL , --Voltage, Corriente, Flujo, Velocidad, Masa, Presion, Longitud. 
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT tipo_unidad_medida_pk PRIMARY KEY (id)
)   ;


CREATE TABLE controles
(
  id serial,
  label varchar(30), --nombre del control ejemplo: numero de folio, fecha de mantenimiento, nombre equipo, codigo de equipo, etc...
  tipo_control_id integer check (tipo_control_id > 0) NOT NULL,
  es_requerido boolean DEFAULT false,
  html varchar(1000),
  CONSTRAINT controles_pk PRIMARY KEY (id),
  CONSTRAINT controles_tipo_control_id_fkey FOREIGN KEY (tipo_control_id) REFERENCES tipo_control (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
  
);

CREATE INDEX controles_tipo_control_id ON controles (tipo_control_id);



CREATE TABLE IF NOT EXISTS pauta_tareas (
  id serial NOT NULL,
  pauta_servicio_id int check (pauta_servicio_id > 0) NOT NULL ,
  tipo_unidad_medida_id int check (tipo_unidad_medida_id > 0) NOT NULL ,--es unidad_valor 
  control_id int check (control_id > 0) NOT NULL ,
  nombre varchar(40) NOT NULL,
  descripcion varchar(100),
  ---tipo_valor varchar(45),-- es el tipo_registro en modelo anterior. (identifica el tipo de dato del campo, ejempo si es true/false, numero u otro) es para la configuracion de la aputa en la vista.
  valor_esperado varchar(45),--Ejemplo Si, No, true, false, 10, 20, etc..
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT pauta_tareas_pk PRIMARY KEY (id),
  CONSTRAINT pauta_tareas_pauta_servicio_id_fkey FOREIGN KEY (pauta_servicio_id) REFERENCES pauta_servicios (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT pauta_tareas_tipo_unidad_medida_id_fkey FOREIGN KEY (tipo_unidad_medida_id) REFERENCES tipo_unidad_medida (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT pauta_tareas_control_id_fkey FOREIGN KEY (control_id) REFERENCES controles (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX pauta_tareas_pauta_servicio_id ON pauta_tareas (pauta_servicio_id);
CREATE INDEX pauta_tareas_tipo_unidad_medida_id ON pauta_tareas (tipo_unidad_medida_id);
CREATE INDEX pauta_tareas_control_id ON pauta_tareas (control_id);
CREATE INDEX pauta_tareas_index1 ON pauta_tareas (pauta_servicio_id, tipo_unidad_medida_id);
CREATE INDEX pauta_tareas_index2 ON pauta_tareas (pauta_servicio_id, control_id);
CREATE INDEX pauta_tareas_index3 ON pauta_tareas (pauta_servicio_id, tipo_unidad_medida_id, control_id);


CREATE TABLE IF NOT EXISTS servicio_reportes (
  id serial NOT NULL,
  cliente_id int check (cliente_id > 0) NOT NULL ,
  instalacion_id int check (instalacion_id > 0) NOT NULL ,
  equipo_id int check (equipo_id > 0) NOT NULL ,
  operador_id int check (operador_id > 0) NOT NULL ,
  servicio_id int check (servicio_id > 0) NOT NULL ,
  fecha_creacion timestamp(0) NOT NULL,
  codigo_reporte varchar(45) NOT NULL,
  descripcion varchar(200),
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT servicio_reportes_pk PRIMARY KEY (id),
  CONSTRAINT servicio_reportes_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES clientes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicio_reportes_instalacion_id_fkey FOREIGN KEY (instalacion_id) REFERENCES instalaciones (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicio_reportes_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES equipos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicio_reportes_operador_id_fkey FOREIGN KEY (operador_id) REFERENCES operadores (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT servicio_reportes_servicio_id_fkey FOREIGN KEY (servicio_id) REFERENCES servicios (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX servicio_reportes_cliente_id ON servicio_reportes (cliente_id);
CREATE INDEX servicio_reportes_instalacion_id ON servicio_reportes (instalacion_id);
CREATE INDEX servicio_reportes_equipo_id ON servicio_reportes (equipo_id);
CREATE INDEX servicio_reportes_operador_id ON servicio_reportes (operador_id);
CREATE INDEX servicio_reportes_servicio_id ON servicio_reportes (servicio_id);

CREATE INDEX servicio_reportes_index1 ON servicio_reportes (cliente_id, instalacion_id);
CREATE INDEX servicio_reportes_index2 ON servicio_reportes (cliente_id, instalacion_id, equipo_id);
CREATE INDEX servicio_reportes_index3 ON servicio_reportes (cliente_id, instalacion_id, equipo_id, operador_id);
CREATE INDEX servicio_reportes_index4 ON servicio_reportes (cliente_id, instalacion_id, equipo_id, operador_id, servicio_id);


CREATE TABLE IF NOT EXISTS detalle_servicios (
  id serial NOT NULL,
  servicio_reporte_id int check (servicio_reporte_id > 0) NOT NULL ,
  tipo_unidad_medida_id int check (tipo_unidad_medida_id > 0) NOT NULL ,--es unidad_valor 
  nombre varchar(40) NOT NULL,
  descripcion varchar(100),
  tipo_valor varchar(45),
  valor_esperado varchar(45),--Ejemplo Si, No, true, false, 10, 20, etc..
  valor_obtenido varchar(45),--Ejemplo Si, No, true, false, 10, 20, etc..
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT detalle_servicios_pk PRIMARY KEY (id),
  CONSTRAINT detalle_servicios_servicio_reporte_id_fkey FOREIGN KEY (servicio_reporte_id) REFERENCES servicio_reportes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT detalle_servicios_tipo_unidad_medida_id_fkey FOREIGN KEY (tipo_unidad_medida_id) REFERENCES tipo_unidad_medida (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX detalle_servicios_servicio_reporte_id ON detalle_servicios (servicio_reporte_id);
CREATE INDEX detalle_servicios_tipo_unidad_medida_id ON detalle_servicios (tipo_unidad_medida_id);
CREATE INDEX detalle_servicios_index1 ON detalle_servicios (servicio_reporte_id, tipo_unidad_medida_id);



CREATE TABLE perfiles
(
  id serial NOT NULL,
  nombre character varying(45) NOT NULL,
  descripcion character varying(200),
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT perfiles_pk PRIMARY KEY (id)
);

CREATE UNIQUE INDEX perfiles_nombre_unique ON perfiles (nombre);
CREATE UNIQUE INDEX perfiles_perfil_id_unique ON perfiles (id);

CREATE TABLE roles
(
  id serial NOT NULL,
  perfil_id integer NOT NULL,
  nombre character varying(45) NOT NULL,
  estado character(1) NOT NULL,
  CONSTRAINT roles_pk PRIMARY KEY (id),
  CONSTRAINT roles_perfil_id_fkey FOREIGN KEY (perfil_id) REFERENCES perfiles (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE UNIQUE INDEX roles_nombre_unique ON roles (nombre);
CREATE UNIQUE INDEX roles_rol_id_unique ON roles (id);
CREATE INDEX roles_perfil_id ON roles (perfil_id);


--Un flujo es configurable
CREATE TABLE flujos
(
  id serial,
  nombre character varying(45) NOT NULL,
  descripcion character varying(200),
  fecha_creacion timestamp without time zone,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT flujos_pk PRIMARY KEY (id)
);

CREATE UNIQUE INDEX flujos_nombre_unique ON flujos (nombre);

--Un proceso es configurable.
CREATE TABLE procesos
(
  --id serial,
  flujo_id integer check (flujo_id > 0) NOT NULL,
  rol_id integer NOT NULL DEFAULT 0,--responsable, puede ser mas de una persona con el mismo rol por eso se asocia el rol.
  proceso_anterior integer,--proceso padre
  proceso_siguiente integer,
  orden integer,--es el lugar de ejecucion en el proceso.
  CONSTRAINT procesos_pk PRIMARY KEY (flujo_id, rol_id),
  CONSTRAINT procesos_flujo_id_fkey FOREIGN KEY (flujo_id) REFERENCES flujos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT procesos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES roles (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
  
);

CREATE INDEX procesos_flujo_id ON procesos (flujo_id);
CREATE INDEX procesos_rol_id ON procesos (rol_id);
CREATE INDEX procesos_index1 ON procesos (flujo_id, rol_id);


CREATE TABLE procesos_ejecucion
(
  --id serial,
  flujo_id integer check (flujo_id > 0) NOT NULL,
  rol_id integer check (rol_id > 0) NOT NULL,--responsable, puede ser mas de una persona con el mismo rol por eso se asocia el rol.
  cliente_id integer check (cliente_id > 0) NOT NULL,
  requerimiento_id integer check (requerimiento_id > 0) NOT NULL,
  usuario_ejecutor_id integer,--usuario responsable.
  proceso_anterior integer,--proceso padre
  proceso_siguiente integer,--proceso sucesor
  fecha_ejecucion timestamp(0) NOT NULL,
  ejecutado integer,--0: No Ejecutado, 1:Ejecutado, 999:Donde esta parado el flujo
  CONSTRAINT procesos_ejecucion_pk PRIMARY KEY (flujo_id, rol_id, cliente_id, requerimiento_id, usuario_ejecutor_id),
  CONSTRAINT procesos_ejecucion_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES clientes (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
  
);

CREATE INDEX procesos_ejecucion_flujo_id ON procesos_ejecucion (flujo_id);
CREATE INDEX procesos_ejecucion_rol_id ON procesos_ejecucion (rol_id);
CREATE INDEX procesos_ejecucion_cliente_id ON procesos_ejecucion (cliente_id);
CREATE INDEX procesos_ejecucion_requerimiento_id ON procesos_ejecucion (requerimiento_id);
CREATE INDEX procesos_ejecucion_usuario_ejecutor_id ON procesos_ejecucion (usuario_ejecutor_id);

CREATE INDEX procesos_ejecucion_index1 ON procesos_ejecucion (flujo_id, rol_id);
CREATE INDEX procesos_ejecucion_index2 ON procesos_ejecucion (flujo_id, rol_id, cliente_id);
CREATE INDEX procesos_ejecucion_index3 ON procesos_ejecucion (flujo_id, rol_id, cliente_id, requerimiento_id);
CREATE INDEX procesos_ejecucion_index4 ON procesos_ejecucion (flujo_id, rol_id, cliente_id, requerimiento_id);
CREATE INDEX procesos_ejecucion_index5 ON procesos_ejecucion (flujo_id, rol_id, cliente_id, requerimiento_id, usuario_ejecutor_id);


--Calendarios es donde se almacenara la historia de mantenciones de un equipo.
CREATE TABLE calendarios
(
  id serial,
  equipo_id integer check (equipo_id > 0) NOT NULL,
  fecha_ultima_mantencion timestamp without time zone,
  fecha_mantencion timestamp without time zone,
  fecha_proxima_mantencion timestamp without time zone,
  responsable_mantencion character varying(50) NOT NULL,
  observaciones varchar(500),
  CONSTRAINT calendarios_pk PRIMARY KEY (equipo_id),
  CONSTRAINT calendarios_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES equipos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
  
);

CREATE INDEX calendarios_equipo_id ON calendarios (equipo_id);

--Tipo Insumos: Filtros, Lubricates, Detergentes, Limpiadores, Rodamientos, Pernos, Cables.
CREATE TABLE IF NOT EXISTS tipo_insumo (
  id serial NOT NULL,
  nombre varchar(30) NOT NULL ,
  descripcion varchar(60) NOT NULL ,
  estado char(1) NOT NULL DEFAULT 'A' ,
  CONSTRAINT tipo_insumo_pk PRIMARY KEY (id)
)   ;


--Insumos: son los productos o repuestos que se utilizaran en la reparación o matención de un equipo. 
CREATE TABLE IF NOT EXISTS insumos (
  id serial NOT NULL,
  tipo_insumo_id int check (tipo_insumo_id > 0) NOT NULL ,
  proveedor_id int check (proveedor_id > 0) NOT NULL, --Considerar tambien que un insumo tambien lo podria proveer OneSla como empresa para una mantencion de un equipo X. 
  codigo varchar(40) NOT NULL,
  nombre varchar(60) NOT NULL,
  descripcion varchar(100),
  marca varchar(45) NOT NULL,
  modelo varchar(45),
  serie varchar(45),
  precio integer NOT NULL,
  fecha_ingreso timestamp without time zone,
  observaciones varchar(500),
  estado char(1) NOT NULL DEFAULT 'A' ,
  created timestamp(0) DEFAULT NULL,
  modified timestamp(0) DEFAULT NULL,
  CONSTRAINT insumos_equipos_pk PRIMARY KEY (id),
  CONSTRAINT insumos_equipos_tipo_insumo_id_fkey FOREIGN KEY (tipo_insumo_id) REFERENCES tipo_insumo (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT insumos_equipos_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES proveedores (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)   ;

CREATE INDEX insumos_tipo_insumo_id ON insumos (tipo_insumo_id);
CREATE INDEX insumos_proveedor_id ON insumos (proveedor_id);
CREATE INDEX insumos_index1 ON insumos (tipo_insumo_id, proveedor_id);


CREATE TABLE inventarios
(
  id serial,
  servicio_id integer check (servicio_id > 0) NOT NULL,
  insumo_id integer check (insumo_id > 0) NOT NULL,
  cantidad integer,--cantidad de insumos que se utilizaron en la mantencion asociada al equipo/servicio
  total double precision,
  fecha_movimiento timestamp without time zone,
  CONSTRAINT inventarios_pk PRIMARY KEY (servicio_id, insumo_id),
  CONSTRAINT inventarios_servicio_id_fkey FOREIGN KEY (servicio_id) REFERENCES servicios (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT inventarios_insumo_id_fkey FOREIGN KEY (insumo_id) REFERENCES insumos (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
  
);

CREATE INDEX inventarios_servicio_id ON inventarios (servicio_id);
CREATE INDEX inventarios_insumo_id ON inventarios (insumo_id);
CREATE INDEX inventarios_index1 ON inventarios (servicio_id, insumo_id);


CREATE TABLE list_emails
(
  id serial NOT NULL,
  email character varying(50) NOT NULL,
  CONSTRAINT list_emails_pk PRIMARY KEY (id)
);


CREATE UNIQUE INDEX list_email_emails_unique ON list_emails (email);


CREATE TABLE log_error
(
  id serial NOT NULL ,
  fecha_hora timestamp(0) without time zone DEFAULT now(),
  num_error integer NOT NULL,
  error character varying(100) NOT NULL,
  resumen character varying(500) NOT NULL,
  uri character varying(100) NOT NULL,
  archivo character varying(100) NOT NULL,
  linea integer NOT NULL,
  aplicacion character varying(20) NOT NULL,
  usuario character varying(20) NOT NULL,
  ip character varying(30) NOT NULL,
  estado_revision character varying(20) NOT NULL,
  observaciones character varying(1000) NOT NULL,
  CONSTRAINT log_error_pk PRIMARY KEY (id)
);


CREATE TABLE log_sistema
(
  id serial NOT NULL,
  fechahora timestamp(0) without time zone DEFAULT now(),
  tipo character varying(30) NOT NULL,
  resumen character varying(1000) NOT NULL,
  uri character varying(100) NOT NULL,
  aplicacion character varying(20) NOT NULL,
  usuario character varying(20) NOT NULL,
  ip character varying(30) NOT NULL,
  estadorevision character varying(10) NOT NULL,
  observaciones character varying(1000) NOT NULL,
  CONSTRAINT log_sistema_pk PRIMARY KEY (id)
);




--//-------------------------------------------------------------------------------------------------------------------------------------------------------------------//


