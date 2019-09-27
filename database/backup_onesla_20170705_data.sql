
--
-- Data for Name: calendarios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: calendarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('calendarios_id_seq', 1, false);


--
-- Data for Name: cliente_contactos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: cliente_contactos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cliente_contactos_id_seq', 1, false);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO clientes VALUES (1, '87674400-7', 'Laboratorio Pasteur S.A.', 'Calle ignacio serrano 568, Concepcion', 'Laboratorio Famacéutico', '56412243326', 'info@lpasteur.cl', 'A', NULL, NULL);


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clientes_id_seq', 1, true);


--
-- Data for Name: clientes_proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: clientes_proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clientes_proveedores_id_seq', 1, false);


--
-- Data for Name: controles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: controles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('controles_id_seq', 1, false);


--
-- Data for Name: detalle_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: detalle_servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detalle_servicios_id_seq', 1, false);


--
-- Data for Name: equipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO equipos VALUES (2, 1, 1, 'Lp_Inst_0001', 'Lp_Inst_0001', 'Lp_Inst_0001', 'REACTOR DE FUNDICION', 'Sensor PT100 + indicador [REACTOR DE FUNDICION SISTEMA TERMOMETRICO DIGITAL]', 'Autonics', 'Autonics / TZN4S', 'ITEM-TE', 'Rango 35 a 100ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (3, 1, 1, 'Lp_Inst_0002', 'Lp_Inst_0002', 'Lp_Inst_0002', 'REACTOR, MEZCLADOR, HOMOGENIZADOR NUOVA COSMAR (TURBOEMULSOR)', 'Sensor PT 100 + Indicador de temperatura (producto) [SISTEMA TERMOMETRICO DIGITAL]', 'Autonics', 'Autonics / TZN4S', 'STEM-TE', 'Rango de 35 a 100ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (4, 1, 1, 'Lp_Inst_0003', 'Lp_Inst_0003', 'Lp_Inst_0003', 'REACTOR, MEZCLADOR, HOMOGENIZADOR NUOVA COSMAR (TURBOEMULSOR)', 'Termómetro análogo bimetálico', 'BTU Controls', 'BTU Controls', 'TER-T', 'Rango de 30 a 50ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (5, 1, 1, 'Lp_Inst_0006', 'Lp_Inst_0006', 'Lp_Inst_0006', 'ENVASADORA DE SUPOSITORIOS SARONG', 'Indicador PT 100 + Sensor de Temperatura (Baño Termorregulado) ', 'Autonics', 'Shinho [AUTONICS TZN4S]', '508009 [LH29]', 'Rango de 20 a 100ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (6, 1, 1, 'Lp_Inst_0007', 'Lp_Inst_0007', 'Lp_Inst_0007', 'ENVASADORA DE SUPOSITORIOS SARONG', 'Indicador PT 100 + Sensor de Temperatura (Bomba Dosificadora)', 'Autonics', 'Shinho [AUTONICS TZN4S]', '596447 [NF28]', 'Rango de 30 a 50ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (7, 1, 1, 'Lp_Inst_0008', 'Lp_Inst_0008', 'Lp_Inst_0008', 'REACTOR, MEZCLADOR, HOMOGENIZADOR TEQUISA', 'Termómetro Análogo  (Reactor Principal) [Termómetro Bimetálico]', 'ERC', 'WEC', 'TER-TQ', 'Rango de 30 a 50ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (8, 1, 1, 'Lp_Inst_0009', 'Lp_Inst_0009', 'Lp_Inst_0009', 'REACTOR, MEZCLADOR, HOMOGENIZADOR TEQUISA', 'Sensor PT 100  + indicador de Temperatura - Reactor principal (Superficie) [sistema termométrico digital (superficie)]', 'WEC', 'johnson control MR100', 'HC14', 'Rango de 20 a 90ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (9, 1, 1, 'Lp_Inst_0010', 'Lp_Inst_0010', 'Lp_Inst_0010', 'REACTOR, MEZCLADOR, HOMOGENIZADOR TEQUISA', 'Sensor PT 100 + indicador de Temperatura (Marmita de fundición)', 'Autonics', 'Autonics / TZN4S', 'SIN SERIE', 'Rango de 20 a 90ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (11, 1, 1, 'Lp_Inst_0013', 'Lp_Inst_0013', 'Lp_Inst_0013', 'COMADIS', 'Termómetro análogo', 'WINTERS', 'WINTERS', 'TERREMV-PO', 'Rango de 0 a 60 psi        0 a -20 psi, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (12, 1, 1, 'Lp_Inst_0082', 'Lp_Inst_0082', 'Lp_Inst_0082', 'RECTOR TERMOREGULADO 100 L', 'Controlador de temperatura [sistema termométrico digital]', 'Autonics', 'E5CN-R2MTC-500 [Autonics TZN4S]', '69001 [SIN SERIE]', 'Rango de 20 a 80ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (14, 1, 1, 'Lp_Inst_342', 'Lp_Inst_342', 'Lp_Inst_342', 'REACTOR ACERO INOXIDABLE 150 L', 'Sistema Termométrico digital con sensor ', 'Autonics', 'Autonics / TZN4S', '------------', 'Rango de 10 a 1400 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (15, 1, 1, 'Lp_Inst_341', 'Lp_Inst_341', 'Lp_Inst_341', 'DOSIFICADORA DE MENTHOSE', 'Sistema Termométrico digital con sensor ', 'Autonics', 'Autonics / TZN4S', '------------', 'Rango de 30 a 120ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (16, 1, 1, 'Lp_Inst_344', 'Lp_Inst_344', 'Lp_Inst_344', 'DOSIFICADORA DE POMADAS CONTROL DE TEMPERATURA', 'Sistema Termométrico digital con sensor ', 'Autonics', 'Autonics / TZN4S', '------------', 'Rango de 30 a 120ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (20, 1, 1, 'Lp_Inst_140', 'Lp_Inst_140', 'Lp_Inst_140', 'SECADOR DE LECHO FLUIDO GLATT ', 'Sistema Termométrico digital con sensor ', 'Autonics', 'Autonics / TZN4S', '------------', 'Rango de 10 a 50,3 Hz, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (25, 1, 1, 'Lp_Inst_0019', 'Lp_Inst_0019', 'Lp_Inst_0019', 'ESTUFA DE SECADO Nº 2', 'Sensor PT 100 + indicador', 'Autonics', 'Autonics / TZN4S', '2', 'Rango de 310 a 500 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (29, 1, 1, 'Lp_Inst_0042', 'Lp_Inst_0042', 'Lp_Inst_0042', 'PAILA RECUBRIDORA AUTOMATICA INTERCAMBIABLE', 'Sensor + indicador  de temperatura de Entrada [PAILA RECUBRIDORA Nº 2]', 'Autonics', 'Libejinox Ltda.[AUTONICS TZN4S]', 'N/A [JH22]', 'Rango de 813 a 2000 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (13, 3, 1, 'Lp_Inst_0081', 'Lp_Inst_0081', 'Lp_Inst_0081', 'RECTOR TERMOREGULADO 100 L', 'Variador de frecuencia [CONTROLADOR DE ROTACION Y FRECUENCIA]', 'Mitsubishi', 'FR-D740-012SC-EC [CCR-100]', 'C37Q67 [13098]', 'Rango de 0 a 100ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (21, 4, 1, 'Lp_Inst_0132', 'Lp_Inst_0132', 'Lp_Inst_0132', 'SECADOR DE LECHO FLUIDO GLATT ', 'Controlador de Tiempo', 'Autonics', 'Autonics [CT6S]', 'Timer-pch', 'Rango de 20 a 70ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (22, 4, 1, 'Lp_Inst_0015', 'Lp_Inst_0015', 'Lp_Inst_0015', 'PANTALON CHICO', 'Controlador de Tiempo', 'Autonics', 'Autonics [CT6S]', 'Timer-pch', 'Rango de 20 a 120 min, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (23, 4, 1, 'Lp_Inst_0016 ', 'Lp_Inst_0016 ', 'Lp_Inst_0016 ', 'PANTALON GRANDE', 'Controlador de Tiempo', 'Autonics', 'Autonics / LE4S', 'Timer-TG', 'Rango de 5 a 30 min, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (26, 4, 1, 'Lp_Inst_134', 'Lp_Inst_134', 'Lp_Inst_134', 'ESTUFA DE SECADO Nº 2', 'Controlador de Tiempo', 'Autonics', 'Autonics / LE4S', 'Timer-TG', 'Rango de 30 a 70ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (36, 1, 1, 'Lp_Inst_0109', 'Lp_Inst_0109', 'Lp_Inst_0109', 'CRODRYER 75', 'Lazo de temperatura DE AIRE DE ENTRADA', 'Silse', 'Silse / PRS-3-100-A-S-0600-D1-NB9W', 'TT160A1', 'Rango de 0 a 150 mm, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (37, 1, 1, 'Lp_Inst_0110', 'Lp_Inst_0110', 'Lp_Inst_0110', 'CRODRYER 75', 'Lazo de temperatura DE AIRE DE SALIDA', 'Silse', 'Silse / PRS-3-100-A-S-0600-D1-NB9W', 'TT160B1', 'Rango de 30 a 150ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (38, 1, 1, 'Lp_Inst_0111', 'Lp_Inst_0111', 'Lp_Inst_0111', 'CRODRYER 75', 'Lazo de temperatura DE PRODUCTO', 'Silse', 'Silse / PRS-3-100-A-S-0600-D1-NB9W', 'TT161A1', 'Rango de 20 a 90ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (39, 1, 1, 'Lp_Inst_0022', 'Lp_Inst_0022', 'Lp_Inst_0022', 'BLISTERA BLIPACK 203', 'Sensor PT 100  + indicador (Sellado) [SENSOR PT-100C + INDICADOR DE TEMPERATURA (BLIPACK 203)]', 'Omrron', 'BLIPACK Omrron - E5 CN', 'Tsell-203 [BLIPACK-203]', 'Rango de 20 a 90ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (40, 1, 1, 'Lp_Inst_0023', 'Lp_Inst_0023', 'Lp_Inst_0023', 'BLISTERA BLIPACK 203', 'Sensor PT 100  de Temperatura (Moldeo Placa Superior)', 'Omrron', 'Omrron - E5 CN', 'TMOLSUP -203', 'Rango de 180ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (35, 5, 1, 'Lp_Inst_0061', 'Lp_Inst_0061', 'Lp_Inst_0061', 'PIE DE METRO', 'Velocidad de disco ', 'VWR', 'VWR  RI62379-531', '1405152123', 'Rango de 1 a 4 min, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (10, 2, 1, 'Lp_Inst_0012', 'Lp_Inst_0012', 'Lp_Inst_0012', 'REACTOR, MEZCLADOR, HOMOGENIZADOR TEQUISA', 'Manovacuómetro [ANALOGO]', 'NUOVA FIMA', 'NUOVA FIMA', 'MANRMH-TEQ', 'Rango de 20 a 90ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (31, 2, 1, 'Lp_Inst_0058', 'Lp_Inst_0058', 'Lp_Inst_0058', 'DURÓMETRO', 'Dureza', 'ERWEKA', 'ERWEKA                   TBH 125 D', '129298-1268', 'Rango de 6 a 19,7 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (17, 3, 1, 'Lp_Inst_147', 'Lp_Inst_147', 'Lp_Inst_147', 'Agitador Homogeneizador Giri', 'Variador de frecuencia', 'Danfoss', 'Danfoss', '------------', 'Rango de 30 a 120ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (18, 3, 1, 'Lp_Inst_145', 'Lp_Inst_145', 'Lp_Inst_145', 'Estanque Fabricación 2000L Nº13', 'Variador de frecuencia', 'Danfoss', 'Danfoss', '------------', 'Rango de 500 a 3000 r.p.m, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (19, 3, 1, 'Lp_Inst_146', 'Lp_Inst_146', 'Lp_Inst_146', 'Estanque Faminox 1000L Nº15', 'Variador de frecuencia', 'Danfoss', 'Danfoss', '------------', 'Rango de 10 a 45,3 Hz, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (24, 3, 1, 'Lp_Inst_0041', 'Lp_Inst_0041', 'Lp_Inst_0041', 'MOLINO CRONIMO CROMILL 8"', 'Variador frecuencia [CONTROLADOR DE ROTACION Y VELOCIDAD]', 'CRONIMO', 'CRONIMO S.A', 'VF-cromill-8 [105454]', 'Rango de 5 a 30 min, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (27, 3, 1, 'Lp_Inst_0083', 'Lp_Inst_0083', 'Lp_Inst_0083', 'MEZCLADOR DE BINES', 'Variador de frecuencia', 'Shneider Electric', 'ATV312HV22N4 [N55-SQ10-V2]', '1 [09113K]', 'Rango de 6 a 20 hrs, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (28, 3, 1, 'Lp_Inst_0080', 'Lp_Inst_0080', 'Lp_Inst_0080', 'MOLINO FITZ MILL', 'Variador de frecuencia [CONTROLADOR DE ROTACION Y VELOCIDAD]', 'Mitsubishi', 'FR-D740-120SC-EC [FITZ PATRICK COMPANY]', 'B38L31[8627]', 'Rango de 2 a 6 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (30, 3, 1, 'Lp_Inst_0043', 'Lp_Inst_0043', 'Lp_Inst_0043', 'PAILA RECUBRIDORA AUTOMATICA INTERCAMBIABLE', 'Controlador de rotación y velocidad de la paila', 'Libejinox', 'Libejinox Ltda. [N1500]', 'N/A [12405413]', 'Rango de 50 a 100 ºC, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (32, 3, 1, 'Lp_Inst_0054', 'Lp_Inst_0054', 'Lp_Inst_0054', 'TURBOMEZCLADOR GRANULADOR COMASA', 'Variador de Frecuencia impulsor', 'SIMATIC', 'SIMATIC PO7', 'MIC P-100', 'Rango de 2 a 30 kgf, Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (33, 3, 1, 'Lp_Inst_0055', 'Lp_Inst_0055', 'Lp_Inst_0055', 'TURBOMEZCLADOR GRANULADOR COMASA', 'Variador de Frecuencia picador', 'SIMATIC', 'SIMATIC PO7', 'MIC P-100', 'Rango de 130 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);
INSERT INTO equipos VALUES (34, 4, 1, 'Lp_Inst_0056', 'Lp_Inst_0056', 'Lp_Inst_0056', 'TURBOMEZCLADOR GRANULADOR COMASA ', 'Controlador de tiempo [TIMER DIGITAL]', 'SIMATIC', 'SIMATIC PO7', 'MIC P-100', 'Rango de 3000 r.p.m., Frecuencia de calibración cada 12 meses', 'A', NULL, NULL);


--
-- Name: equipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('equipos_id_seq', 40, true);


--
-- Data for Name: estado_requerimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estado_requerimientos VALUES (1, 'Recepcionado', 'A');
INSERT INTO estado_requerimientos VALUES (2, 'Rechazado', 'A');
INSERT INTO estado_requerimientos VALUES (3, 'Ingresado', 'A');
INSERT INTO estado_requerimientos VALUES (4, 'Pendiente', 'A');
INSERT INTO estado_requerimientos VALUES (5, 'En Ejecución', 'A');
INSERT INTO estado_requerimientos VALUES (6, 'En Confirmación', 'A');
INSERT INTO estado_requerimientos VALUES (7, 'Terminado', 'A');
INSERT INTO estado_requerimientos VALUES (8, 'Entregado', 'A');


--
-- Name: estado_requerimientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_requerimientos_id_seq', 8, true);


--
-- Data for Name: flujos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: flujos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('flujos_id_seq', 1, false);


--
-- Data for Name: instalaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO instalaciones VALUES (1, 1, 'Calle ignacio serrano 568, Concepcion', 'Laboratorio', '56412243326', 'A', NULL, NULL);


--
-- Name: instalaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instalaciones_id_seq', 1, true);


--
-- Data for Name: insumos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: insumos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('insumos_id_seq', 1, false);


--
-- Data for Name: inventarios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: inventarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inventarios_id_seq', 1, false);


--
-- Data for Name: list_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO list_emails VALUES (1, 'alguien@mail.com');
INSERT INTO list_emails VALUES (3, 'michalexvr@gmail.com');


--
-- Name: list_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('list_emails_id_seq', 6, true);


--
-- Data for Name: log_error; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: log_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('log_error_id_seq', 1, false);


--
-- Data for Name: log_sistema; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: log_sistema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('log_sistema_id_seq', 1, false);


--
-- Data for Name: operadores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: operadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('operadores_id_seq', 1, false);


--
-- Data for Name: operadores_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: operadores_servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('operadores_servicios_id_seq', 1, false);


--
-- Data for Name: pauta_servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pauta_servicios_equipos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pauta_servicios_equipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pauta_servicios_equipos_id_seq', 1, false);


--
-- Name: pauta_servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pauta_servicios_id_seq', 1, false);


--
-- Data for Name: pauta_tareas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pauta_tareas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pauta_tareas_id_seq', 1, false);


--
-- Data for Name: perfiles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: perfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('perfiles_id_seq', 1, false);


--
-- Data for Name: procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: procesos_ejecucion; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proveedores_id_seq', 1, false);


--
-- Data for Name: requerimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: requerimientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('requerimientos_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 1, false);


--
-- Data for Name: servicio_reportes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: servicio_reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('servicio_reportes_id_seq', 1, false);


--
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('servicios_id_seq', 1, false);


--
-- Data for Name: tipo_control; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tipo_control_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_control_id_seq', 1, false);


--
-- Data for Name: tipo_equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_equipo VALUES (1, 'Temperatura', 'Sensores, termómetros o termostatos', 'A');
INSERT INTO tipo_equipo VALUES (2, 'Presión', 'Sensores, medidores de presión o presostatos', 'A');
INSERT INTO tipo_equipo VALUES (3, 'RPM', 'Equipos que indican velocidad o frecuencia, rapidez.', 'A');
INSERT INTO tipo_equipo VALUES (4, 'Tiempo', 'Relojes y cronómetros', 'A');
INSERT INTO tipo_equipo VALUES (5, 'Longitud', 'Instrumentos de medida de longitud o distancia, huinchas, pie de metro, etc', 'A');


--
-- Name: tipo_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_equipo_id_seq', 5, true);


--
-- Data for Name: tipo_insumo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_insumo VALUES (1, 'Filtros', 'Filtros', 'A');
INSERT INTO tipo_insumo VALUES (2, 'Lubricantes', 'Lubricantes', 'A');
INSERT INTO tipo_insumo VALUES (3, 'Detergentes', 'Detergentes', 'A');
INSERT INTO tipo_insumo VALUES (4, 'Limpiadores', 'Limpiadores', 'A');
INSERT INTO tipo_insumo VALUES (5, 'Rodamientos', 'Rodamientos', 'A');
INSERT INTO tipo_insumo VALUES (6, 'Pernos', 'Pernos', 'A');
INSERT INTO tipo_insumo VALUES (7, 'Cables', 'Cables', 'A');


--
-- Name: tipo_insumo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_insumo_id_seq', 7, true);


--
-- Data for Name: tipo_servicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_servicio VALUES (1, 'Mantención', 'Servicios de Mantención', 'A');
INSERT INTO tipo_servicio VALUES (2, 'Reparación', 'Servicios de Reparación', 'A');
INSERT INTO tipo_servicio VALUES (3, 'Emergencia', 'Servicios de Emergencia', 'A');


--
-- Name: tipo_servicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_servicio_id_seq', 3, true);


--
-- Data for Name: tipo_unidad_medida; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tipo_unidad_medida_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_unidad_medida_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

