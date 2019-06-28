--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2018-09-03 09:16:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 19969)
-- Name: aprendiente2; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE aprendiente2 (
    idaprendiente integer NOT NULL,
    fecharegistro date DEFAULT '2017-01-01'::date,
    fechainscripcion date DEFAULT '2017-01-01'::date,
    cta_rfc character varying NOT NULL,
    nombre character varying,
    categoria smallint,
    idioma smallint,
    procedencia smallint,
    fechanacimiento date DEFAULT '1982-01-01'::date,
    sexo character varying,
    inscripcion boolean DEFAULT false,
    numinscripcion smallint DEFAULT 0,
    apaterno character varying DEFAULT 'apellidoPaterno'::character varying NOT NULL,
    amaterno character varying DEFAULT 'apellidoMaterno'::character varying NOT NULL,
    nombres character varying DEFAULT 'nombresAprendiente'::character varying NOT NULL,
    carrera smallint DEFAULT 0 NOT NULL,
    movilidad character varying DEFAULT 0 NOT NULL,
    difusion character varying DEFAULT ''::character varying NOT NULL,
    comprobante integer DEFAULT 0
);


ALTER TABLE aprendiente2 OWNER TO alex;

--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.idaprendiente; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.idaprendiente IS 'No';


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.fecharegistro; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.fecharegistro IS 'Fecha de Registro';


--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.fechainscripcion; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.fechainscripcion IS 'Fecha de Inscripci¢n';


--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.cta_rfc; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.cta_rfc IS 'N£mero de cuenta o RFC';


--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.nombre; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.nombre IS 'Nombre';


--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.categoria; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.categoria IS 'Categoria';


--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.idioma; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.idioma IS 'Idioma';


--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.procedencia; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.procedencia IS 'Procedencia';


--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.fechanacimiento; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.fechanacimiento IS 'Fecha de Nacimiento';


--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.sexo; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.sexo IS 'Genero';


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.inscripcion; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.inscripcion IS 'Inscripci¢n';


--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN aprendiente2.numinscripcion; Type: COMMENT; Schema: public; Owner: alex
--

COMMENT ON COLUMN aprendiente2.numinscripcion IS 'No. Inscripci¢n';


--
-- TOC entry 2207 (class 0 OID 19969)
-- Dependencies: 193
-- Data for Name: aprendiente2; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY aprendiente2 (idaprendiente, fecharegistro, fechainscripcion, cta_rfc, nombre, categoria, idioma, procedencia, fechanacimiento, sexo, inscripcion, numinscripcion, apaterno, amaterno, nombres, carrera, movilidad, difusion, comprobante) FROM stdin;
221059	2012-01-30	2012-01-30	309128438	RODRIGUEZ LAGUNAS JENNIFER	1	1	78	1987-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221060	2012-01-30	2012-01-30	412038220	GOMEZ TREJO EMILSE SELENE	1	7	76	1988-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221061	2012-01-30	2012-01-30	3030531-6	CORDOVA MARTINEZ JESUS ANTONIO	1	2	84	1988-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221062	2012-01-30	2012-01-30	303655189	LOPEZ SERRANO LEONARDO	1	5	84	1987-01-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221063	2012-01-31	2012-01-31	304661565	KRIEG SCHREIBER STEPHANIE	1	5	78	1987-08-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221064	2012-01-31	2012-09-07	308291609	ROJAS TELLEZ GUILLERMO BENJAMIN	1	2	89	1992-06-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221065	2012-01-31	2012-01-31	9700170178-8	OLIVE DELGADO TANIA	1	2	81	1983-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221066	2012-01-31	2012-09-07	GOSJ871019	GOYA SANCHEZ JESSICA	2	4	85	1987-10-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221067	2012-01-31	2012-01-31	302291058	GARCIA NORIEGA EMMANUEL	1	1	79	1984-07-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221068	2012-01-31	2012-01-31	30226852-2	GARCIA MORALES JOSE DE JESUS	1	1	89	1985-10-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221069	2012-02-01	2012-02-01	9900341-0	ESPINOSA GUTIERREZ IRVIN JAVIER	1	2	82	1986-06-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221070	2012-02-01	2012-02-01	30513674-1	POZOS TOVAR ALEJANDRA AZUCENA	1	4	90	1989-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221071	2012-02-01	2012-02-01	405087969	DELGADO VARGAS ANTONIO EDUARDO	1	7	83	1984-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221072	2012-02-01	2012-02-01	30533629-5	MOLINA GONZALEZ DIANA JUDITH PAOLA	1	2	90	1989-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221073	2012-02-02	2012-09-19	406077959	GALLARDO CERVANTES DAVID ENRIQUE	1	7	82	1986-10-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221074	2012-02-02	2012-02-02	DEDR570126	DELGADO DIANCE M. DEL ROSARIO	2	1	102	1957-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221075	2012-02-02	2017-02-16	303622691	SALAZAR PADILLA MARIBELL	1	2	82	1986-01-24	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221076	2012-02-03	2012-02-03	306140020	GARCIA HERNANDEZ MAYTE	1	7	85	1989-10-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221077	2012-02-03	2012-08-27	407059252	ZAPATA GONZALEZ EDUARDO EMILIANO	1	2	80	1988-04-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221078	2012-02-03	2012-02-03	308092365	LECUONA SILVA JESSICA CONSUELO	1	2	82	1991-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221079	2012-02-07	2012-09-21	301330662	ESTRADA ALONSO OCTAVIO FERNANDO	1	1	90	1985-06-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221080	2012-02-07	2012-02-07	91189055	BAZAN PEREZ CESAR ISRAEL	1	1	84	1975-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221081	2012-02-07	2012-02-07	CARH850312	CASTILLO ROSALES HUGO HIRAM	2	1	85	1985-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221082	2012-02-07	2012-09-13	411091257	DIAZ TAMARIZ ALEJANDRA	1	4	79	1991-04-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221083	2012-02-07	2015-10-26	308269644	NAVARRO JUNCO KAREN ITZEL	1	1	86	1992-08-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221084	2012-02-07	2012-02-07	406080224	VELAZQUEZ MARIN YEHECATL ALEJANDRO	1	7	78	1986-04-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221085	2012-02-07	2012-02-07	412069972	SILVA SANTIAGO JUAN CARLOS	1	1	82	1993-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221086	2012-02-07	2012-02-07	92228658	HERRERA CASTRO TOMAS ANTONIO	1	4	82	1976-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221087	2012-02-07	2014-03-24	91112890-8	PEREZ NUÑEZ CLAUDIA NAYELI EDNA	1	4	84	1985-10-24	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221088	2012-02-07	2012-02-07	30715663-3	RUIZ RAMIREZ ELIZABETH	1	2	82	1991-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221089	2012-02-07	2012-02-07	303321325	SEVILLA COVARRUBIAS URIEL FIDEL	1	1	85	1987-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221090	2012-02-07	2012-02-07	8924592-5	VARELA CASTILLO CELIA LILIANA	1	2	80	1972-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221091	2012-02-07	2012-02-07	512451723	ARELLANES VETCHINOVA JESUSOVNA	1	2	83	1986-01-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221092	2012-02-07	2012-02-07	411128001	MORA SANCHEZ RAFAEL	1	4	85	1987-03-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221093	2012-02-07	2012-02-07	304354474	ESQUIVEL DE JESUS RAFAEL	1	2	78	1988-07-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221094	2012-02-08	2012-02-08	10000082-1	COVARRUBIAS ANAYA EMMANUEL ALEJANDRO	1	1	80	1987-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221095	2012-02-08	2012-02-08	8958009-5	GOMEZ SERRANO MARICELA	1	1	84	1968-06-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221096	2012-02-08	2012-02-08	98324387	DOMINGUEZ BARBOSA JOSE ANTONIO	1	5	84	1982-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221097	2012-02-08	2012-02-08	HESJ690526	HERNANDEZ SANCHEZ JOAQUIN	2	1	84	1969-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221098	2012-02-08	2012-08-21	411049667	MEJIA MARTINEZ EDUARDO	1	4	83	1991-08-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221099	2012-02-08	2012-02-08	308094981	MORALES MANCILLA ALDO FABIAN	1	4	84	1990-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221100	2012-02-09	2013-10-07	SARA590719	SAHAGUN RUIZ ALFREDO	2	5	87	1959-07-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221101	2012-02-09	2012-02-09	41205873-8	GOMEZ ALCANTARA CESAR	1	2	90	1993-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221102	2012-02-09	2013-08-07	30602829-8	KURI PINEDA ANTONIO ELIAS	1	1	90	1990-03-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221103	2012-02-09	2012-02-09	30523233-1	TEJEDA VAZQUEZ ROSA ISELA	1	1	83	1989-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221104	2012-02-09	2012-02-09	308050187	FLORES CENTENO PAOLA MARISOL	1	1	76	1992-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221105	2012-02-09	2012-02-09	411088631	ALCANTARA DOMINGUEZ LUIS FERNANDO	1	2	84	1989-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221106	2012-02-09	2012-02-09	303320988	SERRANO FLORES BIBIANA PRISCILA	1	4	89	1987-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221107	2012-02-09	2012-02-09	305266352	GONZALEZ CRUZ GUILLERMO IVAN	1	2	82	1988-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221108	2012-02-10	2012-02-10	307315236	ZENTELLA LEON ANDREA	1	2	85	1992-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221109	2012-02-10	2012-02-10	507001694	BALLINAS PIEDRAS MERCEDES OCOTLAN	1	2	81	1982-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221110	2012-02-13	2012-02-13	3082075118	SANCHEZ HERNANDEZ YOSANY YURIKO	1	1	86	1992-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221111	2012-02-13	2015-03-04	405070637	ESCOBAR RUIZ CARLOS ANDRES	1	1	79	1986-08-20	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221112	2012-02-13	2012-02-13	9158620-3	RODRIGUEZ MUÑOZ GEORGINA IVETTE	1	5	86	1970-07-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221113	2012-02-13	2012-02-13	51245171-6	FAJARDO ROMERO JAVIER MAURICIO	1	1	78	1984-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221114	2012-02-14	2012-02-14	411011978	OCHOA BLANCAS NORBERTO JOSE	1	2	79	1991-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221115	2012-02-14	2012-02-14	30356810	THOMPSON RUBIO PAOLA	1	2	80	1987-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221116	2012-02-14	2012-02-14	89226005	GALVAN BAUTISTA VIRGINIA DEL ROSARIO	1	5	89	1973-01-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221117	2012-02-14	2012-02-14	SAMI790720	SANCHEZ MAYA IVAN DAVID	1	4	7	1979-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221118	2012-02-14	2012-02-14	97370783	ALDAMA MEDINA RUBEN	1	1	81	1980-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221119	2012-02-15	2012-02-15	9806395-8	PEREZ LOPEZ ROMAN ARMANDO	1	7	7	1985-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221120	2012-02-15	2012-02-15	305079620	SEVILLA ARENAS PERLA NALLELY	1	7	84	1989-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221121	2012-02-16	2012-02-16	411079367	CARRASCO AYALA ADRIAN	1	1	85	1991-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221122	2012-02-16	2012-02-16	307092135	FAJARDO DE LA ROSA ALBERTO ALEJANDRO	1	4	90	1991-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221123	2012-02-16	2012-02-16	300151314	MORA LOPEZ TANIA	1	1	150	1984-09-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221124	2012-02-16	2013-09-09	412006849	ANIMAS RUEDA ELIASID	1	5	78	1992-05-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221125	2012-02-16	2013-03-12	304070150	PEREZ REYES MONICA	1	1	90	1988-08-29	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221126	2012-02-17	2012-02-17	308288186	OSEGUERA OCAMPO VALERIA	1	1	80	1991-10-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221127	2012-02-17	2017-08-28	CABG820315	CALLEJAS BUASI GUILLERMO	2	4	150	1982-03-15	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221128	2012-02-17	2012-02-17	41022855	ZENTENO MARTINEZ JONATHAN	1	1	82	1984-09-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221129	2012-02-17	2012-02-17	FOME850511	FLORES MORALES ERNESTO	1	2	7	1985-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221130	2012-02-17	2012-02-17	306306969	ROMERO BRAVO DALILA	1	2	82	1990-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221131	2012-02-17	2012-02-17	300095393	TORRES SOSA JAVIER	1	1	7	1984-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221132	2012-02-20	2012-02-20	30602060-1	CRUZ VAZQUEZ MARCO ANTONIO	1	1	83	1990-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221133	2012-02-20	2012-08-28	411009304	GUTIERREZ OLGUIN FRANCISCO JAVIER	1	4	78	1990-03-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221134	2012-02-20	2012-02-20	308260586	ROJAS FLORES GABRIELA YASMIN	1	1	82	1992-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221135	2012-02-20	2012-02-20	304298462	ROSAS LINARES JOSE CARLOS	1	1	85	1988-04-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221136	2012-02-20	2012-09-10	40800792	RITO RODRIGUEZ DALID	1	1	79	1988-04-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221137	2012-02-21	2012-02-21	402079411	JIMENEZ NIETO ADAIR	1	1	90	1982-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221138	2012-02-21	2012-02-21	307077251	DIAZ PEREZ ESTEFANIA	1	5	84	1989-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221139	2012-02-21	2012-02-21	306004689	CHAVEZ VEGA FERNANDO	1	2	84	1990-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221140	2012-02-21	2012-02-21	ESMC541122	ESCOBAR MONTERO MARIA CECILIA	1	1	83	1954-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221141	2012-02-21	2012-02-21	303863948	MACIAS MEDINA MINERVA BERENICE	1	7	81	1987-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221142	2012-02-21	2012-02-21	305618782	SHERWELL BETANCOURT GUILLERMO FRANCISCO	1	7	85	1989-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221143	2012-02-21	2012-02-21	511014446	GUTIERREZ GARCIA ROBERTO	1	1	113	1986-11-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221144	2012-02-22	2012-02-22	305687676	VILLANUEVA GARCIA DANIEL ARAM	1	7	79	1988-02-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221145	2012-02-22	2012-02-22	9116883-2	CORDERO PEREZ PATRICIA	1	2	82	1967-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221146	2012-02-22	2012-02-22	CORP840607	CONTLA ROMERO PEDRO XAVIER	2	7	79	1984-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221147	2012-02-22	2012-08-28	305041807	CABRERA MEZA LILIANA	1	7	80	1989-07-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221148	2012-02-22	2012-02-22	411004024	GALIS GARCIA JESUS ALBERTO	1	1	79	1992-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221149	2012-02-23	2012-02-23	308666115	DE LA BRENA CORDERO ESTHER	1	1	78	1991-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221150	2012-02-23	2012-08-29	304651050	NAVA ROVIRA MARIANA	1	2	78	1988-08-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221151	2012-02-23	2012-02-23	308318319	CORTES SANCHEZ LIZETH ALEJANDRA	1	4	82	1992-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221152	2012-02-23	2012-02-23	304083350	BELLO BONILLA MIGUEL ANGEL	1	1	84	1988-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221153	2012-02-24	2012-02-24	FORE650116	FLORES RODRIGUEZ EMILIO MARTIN	3	1	86	1965-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221154	2012-02-24	2012-02-24	402098166	TORRES GARDUÑO ANA LILIA	1	1	76	1979-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221155	2012-02-24	2012-09-03	VARA501130	VALENZUELA ROBLES ANDRES	3	1	48	1950-11-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221156	2012-02-27	2012-02-27	305332912	GARCIA CRUZ BRENDA	1	2	80	1988-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221157	2012-02-28	2012-02-28	3053306124	HERRERA TREJO ARIANNA	1	1	85	1989-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221158	2012-02-28	2012-02-28	303227650	SALVATIERRA CRUZ MARGARITA LILIANA	1	1	84	1987-03-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221159	2012-02-28	2012-02-28	511019805	VAZQUEZ NERI MARIA ESPERANZA	1	1	82	1981-12-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221160	2012-02-28	2012-02-28	306205422	MARTINEZ RAMIREZ RODRIGO	1	4	80	1990-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221161	2012-02-28	2012-02-28	30622604-7	ROMERO LANDON EDUARDO	1	1	81	1990-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221162	2012-02-28	2012-02-28	MAMX860426	MARTINEZ MAYORGA EDUARDO SELIM	2	1	79	1986-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221163	2012-02-28	2012-02-28	41178858	ALVAREZ MILLAN ROSHID ALFREDO	1	1	85	1992-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221164	2012-02-28	2012-02-28	305839019	ALVAREZ MILLAN LESLI AIDE	1	1	79	1989-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221165	2012-02-28	2014-03-14	307012423	SANCHEZ DOMINGUEZ GEMA	1	1	88	1991-04-25	F	f	4	apellido p	apellido m	nombres	0	none	none	0
221166	2012-03-01	2012-03-01	306318966	SANCHEZ CRUZ VICTOR HUGO	1	1	82	1989-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221167	2012-03-01	2015-08-14	HUCR791005	HUARTE CUELLAR RENATO	2	4	84	1979-10-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221168	2012-03-01	2012-03-01	SAEC910908	SALAZAR ESCALANTE CYNTHIA BEATRIZ	1	2	80	1991-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221169	2012-03-01	2012-03-01	CAOC810501	CARREON OTAÑEZ CESAR	2	4	80	1981-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221170	2012-03-01	2012-03-01	91162603	MENDEZ LOPEZ RAUL	1	5	89	1974-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221171	2012-03-01	2012-03-01	411087531	RAMOS AGUILAR SAYDI ANDREA	1	1	81	1991-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221172	2012-03-01	2012-03-01	309193094	MARQUINA PICO HUGO	1	1	78	1993-04-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221173	2012-03-01	2012-03-01	307171768	LOPEZ AVENDAÑO ARACELI	1	1	82	1991-11-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221174	2012-03-01	2014-08-19	410087404	MENDEZ GONZALEZ IVAN DAVID	1	1	79	1984-12-22	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221175	2012-03-01	2012-03-01	9621343-2	DE LA ROSA ESPINOSA DE LOS MONTEROS NOE	1	1	84	1980-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221176	2012-03-02	2015-02-04	308560745	HERNANDEZ SANTOS LUIS ANGEL	1	1	90	1992-05-10	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221177	2012-03-02	2012-03-02	305065409	ARRIAGA VIGIL ALFONSO	1	7	85	1987-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221178	2012-03-02	2012-03-02	30525823-6	HERNANDEZ DE LA ROSA ORLANDO LUDEK	1	1	83	1989-12-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221179	2012-03-02	2012-03-02	305147349	RODRIGUEZ MORALES CAROLINA	1	1	80	1989-08-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221180	2012-03-02	2012-03-02	309267588	SANTANDER AGUILAR VIRIDIANA GETSEMANI	1	1	78	1993-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221181	2012-03-02	2012-03-02	306114232	ROSALES MACIAS BLANCA ROSALBA	1	1	79	1990-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221182	2012-03-05	2013-02-20	306663826	ENRIQUEZ CABRERA ALBERTO	1	4	80	1990-03-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221183	2012-03-05	2012-03-05	302092343	LIMETA CHINO NALLEY	1	1	82	1986-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221184	2012-03-06	2012-03-06	509021586	GALIOTE FLORES ALEJANDRA	1	4	90	1984-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221185	2012-03-06	2012-03-06	3051137119	RODRIGUEZ SALAS SILVIA KARINA	1	7	80	1989-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221186	2012-03-06	2014-09-04	MECS690627	MELCHOR CAUDILLO SOCORRO	3	1	97	1969-06-27	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221187	2012-03-06	2012-03-06	410013539	VARILLAS LIMA JUAN CARLOS	1	1	80	1991-10-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221188	2012-03-07	2012-03-07	412051492	VILLEGAS NARANJO CESAR ALBERTO	1	2	78	1992-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221189	2012-03-07	2012-03-07	307221131	PEÑA REYES VICTOR LEONEL	1	2	85	1991-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221190	2012-03-07	2012-03-07	411087988	PAYTUVI ALVAREZ MARIA AYOLANI	1	4	84	1989-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221191	2012-03-07	2013-02-07	ZUDA820308	ZUPPERDONI DAVIDE	1	5	7	1982-08-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221192	2012-03-07	2012-03-07	LLLLL	NOMBRE APATERNO AMATERNO	1	1	999	1982-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221193	2012-03-09	2013-09-27	304280140	IGLESIAS ALANIS ALMA MAGDALENA	1	1	80	1989-07-21	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221194	2012-03-09	2012-03-09	305159384	REYES CARDENAS HECTOR MUCIO	1	1	81	1988-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221195	2012-03-09	2012-03-09	LOEA831030	LORA Y CHAVEZ ELIZONDO AGUSTIN RAFAEL	1	7	7	1983-10-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221196	2012-03-09	2012-03-09	407021738	DIAZ REYNOSO URIEL ALBERTO	1	7	79	1987-08-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221197	2012-03-09	2012-03-09	306052422	MERINO HERNANDEZ PATRICIA LIZETH	1	1	82	1990-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221198	2012-03-09	2012-03-09	410031005	RENTERIA DE JESUS ARELI ESMERALDA	1	1	82	1991-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221199	2012-03-09	2012-09-17	305550097	VAZQUEZ HERNANDEZ EDUARDO	1	1	83	1986-11-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221200	2012-03-09	2012-03-09	308033182	CARRILLO NIETO ANGELICA	1	2	89	1992-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221201	2012-03-09	2013-08-05	MESI821013	MEMBRILLO SOLIS INGRID AMARANTA	2	1	79	1982-10-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221202	2012-03-09	2012-03-09	8104777-0	GARCIA MORENO MARCELA	1	2	81	1965-10-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221203	2012-03-12	2012-03-12	309146777	HERNANDEZ GALINDO JORGE ALFONSO	1	5	78	1993-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221204	2012-03-12	2015-03-03	3052242729	TREJO DURAN MOISES	1	1	90	1989-05-26	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221205	2012-03-12	2012-03-12	3056686284	SANTILLAN DELGADILLO SILVANA	1	1	83	1989-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221206	2012-03-12	2012-03-12	51202219-4	RAMIREZ  GONZALEZ SALVADOR HUMBERTO	1	1	82	1984-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221207	2012-03-12	2012-03-12	3055544889	CHAPARRO GARCIA JUAN CARLOS	1	7	80	1988-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221208	2012-03-12	2012-03-12	100000289-4	ZARCO ITURBE JAZMIN	1	2	86	1987-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221209	2012-03-14	2012-03-14	RUHB740506	RODRIGUEZ HERNANDEZ BEATRIZ	3	1	80	1974-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221210	2012-03-14	2012-03-14	300114375	SIERRA AVILES MARIA CRISTINA	1	1	89	1984-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221211	2012-03-14	2013-01-30	9719967-8	CENTENO BETANZOS LUCIA YOSCELINA	1	1	79	1980-11-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221212	2012-03-14	2012-03-14	COGA880930	CORTAZAR GARCIA ALMA MARISOL	1	2	7	1988-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221213	2012-03-14	2012-03-14	511006148	GALVAN ROMERO DANIEL	1	2	85	1981-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221214	2012-03-14	2012-03-14	411067511	RAMIREZ RUIZ JORGE EDUARDO	1	2	79	1992-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221215	2012-03-14	2012-03-14	MODP860629	MORALES DELGADILLO PEDRO	2	1	85	1986-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221216	2012-03-15	2015-02-09	SAER4880618	SALAS ESPINDOLA RAUL	2	1	78	1948-06-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221217	2012-03-15	2012-03-15	405093711-3	ANGULO CASTILLO OSCAR	1	1	80	1986-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221218	2012-03-15	2012-03-15	305142746	LOPEZ LOPEZ FERNANDO	1	1	85	1988-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221219	2012-03-15	2012-10-26	409077944	FUENTES LOPEZ DAVID	1	2	85	1988-05-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221220	2012-03-15	2012-03-15	305215532	MIRANDA XICOTENCATL BRENDA	1	2	90	1989-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221221	2012-03-15	2012-03-15	DEPO811002	DE FUENTES PEREZ OKIBETH	1	1	7	1981-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221222	2012-03-16	2012-03-16	509013130	MORALES RUIZ MARIO ERNESTO	1	1	89	1983-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221223	2012-03-16	2012-03-16	403038987	GARCIA TORRES JAFET	1	2	81	1988-11-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221224	2012-03-16	2012-03-16	511003116	LOPEZ CORONA GEORGETE AIMME	1	1	108	1970-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221225	2012-03-21	2014-09-23	308338615	BARBOSA GONZALEZ PAOLA ANDREA	1	1	90	1992-05-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221226	2012-03-21	2013-09-25	410063125	GRESS LARA ANAHI	1	5	76	1989-09-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221227	2012-03-21	2012-03-21	304314759	PIZARRO HERNANDEZ CHRISTIANE	1	2	79	1988-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221228	2012-03-21	2013-02-28	304233050	MEZA GONZALEZ XIATIL RUTH	1	1	84	1988-01-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221229	2012-03-21	2012-03-21	303314684	ROMERO DIAZ KARLA DANIELA	1	1	88	1987-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221230	2012-03-22	2012-11-08	410119772	JIMENEZ GARCIA GILBERTO MANUEL	1	5	84	1989-07-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221231	2012-03-22	2014-09-25	307506595	STALDER ALVARADO MARIA FERNANDA	1	4	80	1991-02-04	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221232	2012-03-23	2013-03-05	89392693	AGUILERA JIMENEZ PATRICIA	1	1	84	1973-07-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221233	2012-03-23	2012-03-23	504003365	ALCARAZ HERNANDEZ SONIA	1	1	84	1982-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221234	2012-03-26	2012-03-26	306044667	QUINTANA VAZQUEZ CITLALLI VERONICA	1	4	79	1988-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221235	2012-03-27	2012-03-27	308192922	ROJAS MARCOS SARA DELIA	1	1	81	1992-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221236	2012-03-27	2012-03-27	507019961	ROJAS NICOLAS JENNY	1	1	150	1979-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221237	2012-03-28	2014-04-01	96302556	MARCOS BENITEZ XELHUA ELIHUT	1	1	90	1988-10-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221238	2012-03-29	2012-03-29	307047001	AGUILLON SANCHEZ MARIA DE LOS ANGELES	1	5	80	1991-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221239	2012-03-29	2012-03-29	309266567	RUELAS VENTURA LUIS ANTONIO	1	1	82	1993-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221240	2012-03-29	2012-03-29	402110273	CERVANTES VALENCIA MARIA EUGENIA	1	1	87	1982-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221241	2012-03-29	2012-03-29	308058286	ARIZMENDI MUNGUIA ACASIO	1	1	82	1992-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221242	2012-03-29	2012-03-29	LOCI780312	LOPEZ CISNEROS ILLIE	2	4	84	1978-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221243	2012-03-30	2012-03-30	512451754	DE LAVALLE HERRERA YASMIN	1	1	78	1987-07-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221244	2012-04-20	2012-04-20	AAVH510218	ALVAREZ VALENCIA HECTOR	1	1	7	1951-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221245	2012-04-20	2012-04-20	507015-437	MANJARREZ PEREZ GIBRAN HUMBERTO	1	1	85	1981-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221246	2012-04-20	2012-04-20	305333043	MURILLO RAMIREZ JESSICA JUDITH	1	2	80	1990-01-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221247	2012-04-20	2013-08-22	308016008	ACHA MENDOZA SALEM RUBI	1	5	79	1992-08-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221248	2012-04-20	2012-04-20	508003962	FRANCO OCHOA CUAUHTEMOC	1	1	85	1982-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221249	2012-04-20	2012-04-20	411035453	FLORES LANDEROS CHRISTIAN BRYAN	1	7	80	1992-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221250	2012-04-20	2012-04-20	306549870	LOPEZ GARCIA ALBERTO ALFONSO	1	1	89	1989-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221251	2012-04-20	2012-04-20	BUZP880426	BUZO ZARZOSA PAULA	1	5	7	1988-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221252	2012-04-20	2012-04-20	305188788	DAMIAN REYES ISAAC	1	5	84	1987-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221253	2012-04-20	2012-04-20	511451036	BARON JAIMEZ JAIRO ALBERTO	1	1	114	1976-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221254	2012-04-20	2012-04-20	99332224	VEGA CAMACHO JOAQUIN JOSE	1	5	75	1983-11-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221255	2012-04-20	2012-04-20	305159298	ROMERO SANCHEZ DIANA	1	2	89	1989-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221256	2012-04-20	2012-04-20	306154186	CRUZ GONZALEZ OMAR ALFREDO	1	5	76	1990-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221257	2012-04-20	2012-04-20	303173629	MIRANDA NIETO TERE KARINA	1	5	88	1987-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221258	2012-04-20	2012-04-20	409032033	SANTOS MORENO MA. FERNANDA	1	5	81	1990-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221259	2012-04-20	2012-04-20	307524891	LOPEZ GOMEZ MARIANA	1	4	81	1991-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221260	2012-04-20	2012-04-20	409060306	MARTINEZ LIRA LIZET	1	1	76	1987-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221261	2012-04-20	2012-04-20	305264760	SANCHEZ DE LA TORRE DIANA GERALDINE	1	1	76	1989-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221262	2012-04-23	2012-04-23	30226169-8	GONZALEZ FLORES VICTOR MANUEL	1	1	83	1986-02-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221263	2012-04-23	2012-04-23	412031843	ALVA ROJAS MARICRUZ	1	4	81	1993-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221264	2012-04-25	2012-04-25	411068965	CORTES PERALTA IRVING MAXIMINO	1	4	85	1992-09-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221265	2012-04-25	2012-04-25	307217879	HERNANDEZ VAZQUEZ ELENA	1	1	83	1991-04-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221266	2012-04-25	2012-04-25	305044107	CRUZ SANTOS LUIS ANTONIO	1	1	85	1988-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221267	2012-04-26	2012-04-26	30704651-1	ANTONIO MAYA ANA CYNTHIA	1	5	85	1991-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221268	2012-04-27	2012-04-27	307318756	SORIANO PINEDA IVEETT	1	5	88	1992-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221269	2012-04-27	2012-04-27	409007211	SANCHEZ GARCIA JOSE ROBERTO	1	5	85	1989-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221270	2012-04-27	2012-04-27	307028387	CABRERA ESCAMILLA MICHAEL	1	1	82	1991-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221271	2012-04-30	2012-04-30	99013932	AGUILAR SOTO JUAN	1	4	81	1983-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221272	2012-04-30	2012-04-30	511001349	RIVERA GARCIA VIOLETA AZUCENA	1	1	81	1985-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221273	2012-05-02	2014-09-01	304625444	TORRES TORRES JOSE EDUARDO	1	7	85	1988-04-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221274	2012-05-02	2012-05-02	307049672	ARVIZU TRIGUEROS JOSE DE JESUS	1	5	81	1987-04-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221275	2012-05-02	2012-05-02	9539395-2	MENDOZA ESPINOSA PAOLA	1	1	97	1979-07-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221276	2012-05-04	2012-05-04	307071682	BARRIOS HERNANDEZ JOANA IRLEHIN	1	2	79	1991-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221277	2012-05-07	2012-05-07	411078281	TERRAZAS FLORES ANA LAURA	1	2	75	1986-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221278	2012-05-07	2012-05-07	40402982-1	RIVAS GARCIA JUANA DEL SOCORRO	1	1	74	1985-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221279	2012-05-07	2012-05-07	409115200	ARELLANO BERMUDEZ ILIANA	1	1	79	1989-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221280	2012-05-07	2012-11-26	30021803-3	RIVERO VILLAVERDE POLETTE	1	2	80	1984-07-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221281	2012-05-07	2012-05-07	20050162	CHONG RUIZ MA. DEL CARMEN	1	7	8	1962-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221282	2012-05-07	2012-05-07	LALJ830208	LARA LARA JAVIER	1	4	7	1983-02-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221283	2012-05-07	2012-05-07	4050000289	ALATORRE GUZMAN DARIO	1	4	115	1986-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221284	2012-05-11	2012-05-11	99549402	LEAL REYES LAURA JULIETA	1	2	105	1980-01-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221285	2012-05-16	2012-05-16	PEVK870201	PEREZ VAZQUEZ KARINA VIRIDIANA	2	7	77	1987-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221286	2012-05-17	2012-05-17	304214817	CRUZ SIERRA KHEYSSIA CORINA	1	5	80	1987-01-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221287	2012-05-18	2014-09-24	411071110	AREVALO ZAVALA LIZBETH JANNETH	1	1	79	1991-02-16	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221288	2012-05-18	2012-05-18	9951799-7	AGUILAR MARTINEZ JEANNETE GPE.	1	1	102	1981-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221289	2012-05-18	2012-05-18	507015169	AVILES VELAZQUEZ JESUS DAVID	1	1	85	1982-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221290	2012-05-23	2012-05-23	306035063	SORIANO SOLOVEICHIK OSCAR OMAR	1	1	89	1990-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221291	2012-05-28	2012-05-28	511005952	ESPERILLA HERNANDEZ JULIA CRISTINA	1	1	84	1976-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221292	2012-05-31	2018-08-21	40209493-1	RODRIGUEZ LEAL Y LEON FERNANDO	1	5	7	1983-06-25	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221293	2012-05-31	2012-05-31	40606927	CORTES SALMERON JAIRO DAVID	1	1	83	1987-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221294	2012-06-05	2012-06-05	306725590	ALCOCER ALVARADO VERONICA	1	4	88	1990-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221295	2012-06-05	2012-06-05	306047644	AMBROSIO JARAMILLO LAURA JIMENA	1	1	80	1989-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221296	2012-06-08	2012-06-08	308208275	VAZQUEZ REYES JORGE JESUS	1	7	85	1992-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221297	2012-06-08	2012-06-08	41212264-8	QUIÑONES LADRON DE GUEVARA BERLANGA S.	1	1	84	1977-07-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221298	2012-06-08	2012-06-08	306132148	FLORES LOPEZ COLUMBA	1	1	82	1989-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221299	2012-06-13	2012-06-13	RUTZ810321	RUIZ TREJO CARLOS IDAIR	3	2	70	1981-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221300	2012-06-13	2012-06-13	VILM701022	VICTORIA LABRADA MARIO GUADALUPE	2	2	46	1970-10-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221301	2012-06-13	2012-06-13	93222159-7	MARTINEZ TINAJERO MARCELA ALEJANDRA	1	4	73	1976-12-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221302	2012-06-18	2012-06-18	305028408	MALDONADO GUZMAN ALEJANDRA	1	1	81	1990-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221303	2012-06-18	2012-06-18	304310641	MENDOZA PEDRAZA ERIK ULISES	1	1	80	1988-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221304	2012-06-19	2012-06-19	30532270	CRUZ ARENAS OMAR	1	1	85	1990-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221305	2012-07-24	2012-07-24	306650138	MORENO PENICHE BERNARDO	1	2	86	1989-01-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221306	2012-07-31	2012-07-31	307650021	ASEBEY SOLARES DIEGO	1	4	80	1991-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221307	2012-08-01	2017-05-02	IAEJ470702	IRACHETA YESTRUK JUAN CARLOS FERNANDO	2	4	46	1947-07-02	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221308	2012-08-01	2012-08-01	9924027-1	PEREZ TORRES MIGUEL	1	2	90	1983-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221309	2012-08-20	2012-08-20	305293185	ROMERO GONZALEZ FERNANDO MARCOS	1	1	81	1984-02-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221310	2012-08-20	2012-08-20	31086752	MORENO NUÑEZ CESAR ARMANDO	1	4	82	1994-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221311	2012-08-20	2012-08-20	402079679	HILARIO RODRIGUEZ YAZMIN JESSIKA	1	1	81	1987-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221312	2012-08-20	2012-08-20	410021507	VAZQUEZ ESPINOSA IVONNE	1	1	90	1990-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221313	2012-08-21	2014-03-05	40404038-1	VELAZQUEZ QUESADA SUSANA ISABEL	1	1	80	1985-08-21	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221314	2012-08-21	2012-08-21	307335878	VENTURA REYES HANSSEL URIEL	1	1	85	1991-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221315	2012-08-21	2012-08-21	306039185	DURAN OSUNA JOSE DE JESUS	1	4	85	1990-03-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221316	2012-08-21	2014-02-13	103005722	VITAL ARRIAGA XOCHITL GUADALUPE	1	5	79	1990-07-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221317	2012-08-21	2012-08-21	301015770	ARRATIA MENDEZ VICTOR MANUEL	1	4	84	1985-07-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221318	2012-08-21	2014-09-02	309777797	MEDINA HERNANDEZ MARCO ALEJANDRO MARTI	1	1	80	1993-01-11	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221319	2012-08-21	2013-10-01	308101100	RODRIGUEZ SANDOVAL SINEAD	1	1	78	1987-08-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221320	2012-08-21	2012-08-21	41011875-1	ALTAMIRANO MIRANDA RICARDO CESAR	1	4	85	1990-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221321	2012-08-21	2012-08-21	310213901	PALACIOS ALCANTARA ALAN JOEL	1	1	83	1994-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221322	2012-08-22	2013-09-11	308135406	PALOMARES OSORIO FATIMA	1	1	89	1992-09-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221323	2012-08-22	2012-08-22	304556656	VAZQUEZ CERVANTES JAVIER ALBERTO	1	4	84	1988-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221324	2012-08-22	2012-08-22	308527261	VAZQUEZ CASTILLO ERIKA ELIZABETH	1	2	84	1992-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221325	2012-08-22	2014-10-13	305348405	SANDOVAL ROJO MARIO	1	1	82	1988-11-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221326	2012-08-22	2012-08-22	304199682	GONZALEZ SANCHEZ GERMAN ABRAHAM	1	1	85	1989-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221327	2012-08-22	2012-08-22	309193616	MEDRANO COLON RICARDO EZEQUIEL	1	1	80	1993-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221328	2012-08-22	2016-08-30	308050321	ESPINOSA GONZALEZ RENE TADEO	1	2	85	1992-09-27	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221329	2012-08-22	2012-08-22	41022501	OSORNO SANCHEZ ISRAEL	1	1	81	1988-01-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221330	2012-08-22	2012-08-22	413032953	GUARDIOLA ESPINOSA JOSE RAMON	1	4	79	1993-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221331	2012-08-22	2012-08-22	306225411	SERRANO HERNANDEZ EMILIO OMAR	1	2	90	1990-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221332	2012-08-22	2012-08-22	306134441	HERRERA JUAREZ MYRIAM DAPHNE	1	1	86	1990-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221333	2012-08-23	2012-08-23	401068638	PORRAS RODRIGUEZ BRENDA	1	5	84	1980-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221334	2012-08-23	2013-03-21	LOBF870426	LOPEZ BONIFACIO FERNANDO ALAN	2	1	80	1987-04-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221335	2012-08-23	2012-08-23	302026766	ORTEGA OROZCO MARLENE	1	1	89	1986-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221336	2012-08-23	2012-08-23	306509177	GALLEGOS CARRERA AMERICA	1	1	78	1990-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221337	2012-08-23	2012-08-23	301074041	GALDAMES AGUILAR JOSE ALFREDO	1	1	82	1994-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221338	2012-08-23	2017-02-14	9720424264	NOXPANCO PEREZ ISABEL	1	4	78	1981-08-10	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221339	2012-08-23	2012-08-23	406086790	FLORES FRANCO CINTHIA KAREN	1	1	114	1988-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221340	2012-08-23	2015-03-03	310004901	GALICIA FUENTES ADALID DANIEL	1	1	82	1993-11-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221341	2012-08-23	2012-08-23	305612924	DONIZ ANGELES FRANCISCO JAVIER	1	4	79	1989-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221342	2012-08-23	2012-08-23	407022041	TAPIA PEREZ LUIS FRANCISCO	1	1	79	1986-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221343	2012-08-23	2012-08-23	411073987	LOPEZ MORALES IVAN	1	1	82	1992-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221344	2012-08-23	2013-11-12	513009437	RAMIREZ GUERRA EMMANUEL ALEJANDRO	1	2	83	1988-01-11	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221345	2012-08-23	2014-10-06	303222978	PEREZ NIEVES REY DAVID	1	4	85	1986-12-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221346	2012-08-24	2015-10-13	VIGG911228	VILLAGOMEZ GARDUÑO GEMMA NYDIA	2	4	79	1991-12-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221347	2012-08-24	2012-08-24	304080919	CANO CASTELLANOS ANNETTE JOHANA	1	1	78	1987-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221348	2012-08-24	2012-08-24	513013012	BRAVO CALDERON MARCELO ARCHIBALDO	1	2	89	1986-08-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221349	2012-08-24	2012-08-24	310217875	JIMENEZ CARREON ANA VICTORIA	1	1	82	1994-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221350	2012-08-24	2012-08-24	92197284	VILLANUEVA CARDENAS RODRIGO GABRIEL	1	2	78	1975-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221351	2012-08-24	2012-08-24	RAOB620222	RAMIREZ ORTIZ BERTHA	3	1	63	1969-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221352	2012-08-24	2012-08-24	31049672	MENDOZA RAMIREZ ZYANYA	1	1	82	1993-07-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221353	2012-08-24	2012-08-24	30605273-8	CRUZ FABRE NIKEE	1	2	79	1990-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221354	2012-08-24	2012-08-24	305036050	CHAVEZ RESENDIZ JESUS ULISES	1	2	81	1989-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221355	2012-08-24	2012-08-24	30904027	ESPINOZA SALVADOR MARIA ISABEL	1	1	84	1993-02-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221356	2012-08-24	2012-08-24	307179568	CHAVEZ PACHECO BRENDA	1	1	85	1991-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221357	2012-08-24	2016-10-11	30903315-4	BOBADILLA VELAZQUEZ HECTOR JONATHAN	1	1	85	1993-09-29	M	f	6	apellido p	apellido m	nombres	0	none	none	0
221358	2012-08-24	2012-08-24	308204555	PICHARDO ARAGON DANIEL ROMAN	1	4	78	1991-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221359	2012-08-27	2012-08-27	411001339	PEREZ CASTELAN IKER ELI	1	1	85	1992-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221360	2012-08-27	2012-08-27	409003804	PONCE BOBADILLA ANA VICTORIA	1	2	79	1989-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221361	2012-08-27	2012-08-27	310160434	VENEGAS HERNANDEZ ANA LILIA	1	1	82	1994-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221362	2012-08-27	2012-08-27	306156489	ESQUIVEL PEÑA VICENTE	1	1	90	1991-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221363	2012-08-27	2012-08-27	COMA881110	COTA MOLINA MARIA ALEJANDRA	1	2	81	1988-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221364	2012-08-27	2013-10-01	307143275	RUEDA VILLAURRUTIA ALEJANDRA	1	2	84	1991-07-19	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221365	2012-08-27	2012-08-27	306599435	MENDOZA GALVAN LUCERO	1	5	89	1990-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221366	2012-08-27	2012-08-27	308270668	ROBLES OLIVOS JOSE LUIS	1	1	85	1991-10-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221367	2012-08-27	2012-08-27	302146642	VALDEZ GOMEZ PAMELA LIZET	1	1	82	1986-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221368	2012-08-27	2015-09-11	309071248	CRUZ REYES JOSE CHRISTOPHER	1	1	83	1994-03-16	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221369	2012-08-27	2014-10-16	306001004	BENITEZ TORRES LAURA MARIA	1	1	84	1989-12-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221370	2012-08-27	2012-08-27	407097377	ORTIZ ARELLANES SERGIO	1	2	78	1973-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221371	2012-08-28	2013-09-27	308007538	APAEZ BRITO ANDREA XIMENA	1	5	84	1992-01-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221372	2012-08-28	2012-08-28	413021252	MENDOZA GARCIA LUZ AMERICA	1	2	80	1993-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221373	2012-08-28	2012-08-28	41302095-6	MENDOZA GARCIA XOCHILT	1	2	80	1993-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221374	2012-08-28	2012-08-28	310212708	MARTINEZ VAZQUEZ ELYN MELANY	1	4	90	1994-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221375	2012-08-28	2012-08-28	411050296	TENORIO ROMERO NIDIA JAZMIN	1	1	83	1992-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221376	2012-08-28	2012-08-28	306097357	NICHOLS MARTINEZ JOCELYN	1	1	82	1991-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221377	2012-08-28	2012-08-28	305191689	HERRERA CRUZ JESICA IVONNE	1	1	85	1989-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221378	2012-08-29	2014-02-11	RUTT680930	RUIZ TOVAR TALIA	1	5	7	1968-09-30	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221379	2012-08-29	2016-02-15	LOMN870110	LOPEZ MORALES NADIA IBETTE	3	1	90	1987-01-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221380	2012-08-29	2012-08-29	304023981	JIMENEZ REYES ANNA CAROLINA	1	5	84	1988-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221381	2012-08-29	2012-08-29	304207437	MUÑOZ ARELLANO PATSI	1	2	80	1983-01-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221382	2012-08-29	2012-08-29	308306006	GALLEGOS MARTINEZ MELISA	1	7	79	1992-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221383	2012-08-29	2013-04-01	306148741	ALVAREZ QUIROGA ROGELIO AZAEL	1	1	85	1988-11-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221384	2012-08-29	2015-01-27	9383874	CHAVEZ RIVERA HECTOR	1	1	81	1976-06-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221385	2012-08-30	2012-08-30	MERA730108	MENDOZA ROMERO ANA LILIA	1	5	79	1973-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221386	2012-08-30	2012-08-30	306220681	GONZALEZ FLORES BLANCA ESTHELA	1	4	82	1990-12-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221387	2012-08-30	2015-01-27	306179149	MAXIMINO MAGAÑA VIANEY KARINA	1	1	85	1990-01-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221388	2012-08-30	2012-08-30	308666115	DE LA BRENA CORDERO ESTHER	1	1	78	1991-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221389	2012-08-30	2013-03-04	409072042	PERDOMO MARIN ANA CRISTINA	1	1	90	1990-02-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221390	2012-08-30	2013-08-12	30312948-2	MACHUCA HERNANDEZ ANA LETICIA	1	1	80	1986-04-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221391	2012-08-30	2012-08-30	307683887	LOZA ESPEJEL ROBERTO	1	1	85	1990-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221392	2012-08-30	2013-04-29	3'830617-8	GOMEZ DELGADO MIGUEL ANGEL	1	4	79	1992-10-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221393	2012-08-30	2012-08-30	306029484	MOLINA RIQUELME MARCO	1	1	79	1990-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221394	2012-08-30	2012-08-30	30529143-5	VETRO VILLANUEVA PAOLO	1	2	85	1990-03-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221395	2012-08-30	2015-09-07	410045240	VALDIVIA VELAZQUEZ SERGIO	1	7	80	1991-05-10	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221396	2012-08-30	2012-08-30	MAJE810914	MACIAS JUAREZ ERICK ALFREDO	1	5	7	1981-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221397	2012-08-31	2012-08-31	41006839-5	GUTIERREZ CASTILLO ELBA BETHEL	1	2	82	1991-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221398	2012-08-31	2012-08-31	308140246	ORTA GONZALEZ RAFAEL	1	1	85	1992-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221399	2012-08-31	2012-08-31	309052029	GANDARILLA BLANCO NOEL EDUARDO	1	2	84	1993-04-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221400	2012-08-31	2016-03-14	3091977-00	GARCIA MORA MARTIN	1	4	84	1993-11-17	M	f	5	apellido p	apellido m	nombres	0	none	none	0
221401	2012-08-31	2017-11-21	PARM660513	PALOMINO RUIZ MIGUEL ANGEL	1	1	7	1966-05-13	M	f	9	apellido p	apellido m	nombres	0	none	none	0
221402	2012-08-31	2012-08-31	30506841-7	FLORES GUTIERREZ SANDRA	1	5	80	1989-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221403	2012-08-31	2013-04-11	SARM761030	SANCHEZ ROJAS MIRIAM ARACELI	3	5	83	1967-10-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221404	2012-08-31	2012-08-31	QUGA641103	QUIROZ GOMEZ MA. ANTELIA	3	1	86	1964-11-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221405	2012-09-03	2012-09-03	308261875	MORENO PADILLA DIANA ISABEL	1	1	89	1992-03-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221406	2012-09-03	2012-09-03	308337332	VALENCIA MOLINA NYDIA ANGELICA	1	1	85	1992-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221407	2012-09-03	2012-09-03	MESG790505	MEZA SALAZAR GERARDO	3	1	98	1979-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221408	2012-09-03	2012-09-03	306262120	JIMENEZ HERNANDEZ GRACIELA	1	5	79	1990-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221409	2012-09-03	2012-09-03	9719654-3	MENDOZA ZACAPA MARIA ALEJANDRA	1	4	84	1981-02-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221410	2012-09-03	2012-09-03	30617171-0	CASILLAS MARQUEZ ADAN YAIR	1	5	90	1989-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221411	2012-09-03	2012-09-03	104000342	ARROYO JARAMILLO MELISA LIZETTE	1	1	81	1991-09-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221412	2012-09-03	2013-10-15	410069354	NUÑEZ RAMOS BLANCA	1	1	75	1987-11-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221413	2012-09-03	2012-09-03	306056987	HERRERA LOPEZ DIEGO	1	1	85	1990-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221414	2012-09-03	2015-11-10	409011779	GALICIA MONTES FERNANDA	1	6	85	1990-02-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221415	2012-09-03	2012-09-03	304266830	CASTILLO FRANCO ALEJANDRO ABRAHAM	1	1	79	1988-06-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221416	2012-09-04	2012-09-04	94298129	GOMEZ ARIAS THELMA	1	5	73	1975-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221417	2012-09-04	2014-02-17	308235867	TRUJILLO RAMOS MARIA ELENA	1	1	82	1992-11-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221418	2012-09-04	2012-09-04	SABA831030	SANTOS BACA ANDREA	1	5	7	1983-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221419	2012-09-04	2014-10-10	310189684	GASPAR GALINDO GABRIEL	1	1	85	1994-06-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221420	2012-09-04	2012-09-04	308544039	VALENCIA VILA ALEJANDRO	1	2	84	1991-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221421	2012-09-04	2012-09-04	412095777	BARAJAS SANCHEZ LAURA NATALI	1	1	80	1984-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221422	2012-09-04	2012-09-04	310027393	CUEVAS ROCHA MARIO ALBERTO	1	2	82	1993-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221423	2012-09-04	2012-09-04	307053453	GUZMAN CUPICH MIGUEL ALAN	1	4	84	1990-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221424	2012-09-04	2012-09-04	408062572	MONDRAGON REYES EDUARDO IVAN	1	4	84	1988-07-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221425	2012-09-04	2012-09-04	306114050	PEREZ ROMERO ANA PAULINA	1	1	79	1990-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221426	2012-09-05	2015-03-18	411000112	DE LEON ESCOBEDO TERESA GUADALUPE	1	1	84	1992-05-23	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221427	2012-09-05	2012-09-05	304289239	RAMON CELIS JOSE GILBERTO	1	2	75	1988-01-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221428	2012-09-05	2012-09-05	405032172	TREJO DOMINGUEZ YESSICA PAULINA	1	1	85	1986-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221429	2012-09-05	2012-09-05	304270185	MIRANDA PEREZ COSETTE MONSERRAT	1	1	82	1988-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221430	2012-09-05	2012-09-05	307142584	NICASIO GONZALEZ FATIMA MARIA INES	1	4	84	1991-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221431	2012-09-05	2012-09-05	31007117-6	ABAD FONSECA NAYELI	1	1	82	1994-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221432	2012-09-05	2012-09-05	409086304	MERCADO VELAZQUEZ NAZUL	1	1	83	1988-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221433	2012-09-05	2013-03-13	SAAW861203	SALGADO AGUIRRE WENDY ELIZABETH	3	1	86	1986-12-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221434	2012-09-05	2012-09-05	310305291	SERRANO JAUREGUI BRENDA BERENICE	1	1	82	1993-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221435	2012-09-05	2012-09-05	30669789-2	VENEGAS NAVA JUAN ALBERTO	1	4	90	1990-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221436	2012-09-05	2012-09-05	30619219-1	LEON ZARATE RAFAEL	1	1	90	1989-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221437	2012-09-06	2012-09-06	305201689	GOMEZ CORTES KARLA	1	7	84	1989-10-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221438	2012-09-06	2012-09-06	REAM571111	ARELLANO ARANA MARTIN	3	1	82	1952-11-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221439	2012-09-06	2012-09-06	303059477	LOZADA SALAS STEPHANY	1	5	83	1987-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221440	2012-09-06	2012-09-06	GOMR521223	GONZALEZ MOLINA RODOLFO IVAN	2	2	83	1952-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221441	2012-09-06	2013-09-10	74822989-3	MENENDEZ CREAMER FRINE IMELDA	1	4	84	1955-09-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221442	2012-09-06	2013-04-11	307037376	GONZALEZ SANCHEZ KARINA	1	5	84	1991-03-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221443	2012-09-06	2016-09-09	30113033-8	TORRES GOMEZ JOSE ANGEL	1	1	85	1983-07-11	M	f	5	apellido p	apellido m	nombres	0	none	none	0
221444	2012-09-07	2012-09-07	306184927	RODRIGUEZ BLAS MELISA	1	1	78	1990-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221445	2012-09-07	2012-09-07	410094956	HERNANDEZ HERRERA CINTHIA IVETTE	1	5	83	1990-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221446	2012-09-07	2012-09-07	307525082	MANCILLA ENCISO ERICK DANIEL	1	5	81	1991-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221447	2012-09-10	2012-09-10	306725904	CEREZO RUIZ ESPARZA ALEJANDRA	1	4	80	1990-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221448	2012-09-10	2012-09-10	511010510	LAMEIRAS ZAVALA SASIL	1	1	82	1983-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221449	2012-09-10	2018-02-12	10600375-8	ROBLES CALOCA LEONARDO DANIEL	1	7	88	1993-02-03	M	f	6	apellido p	apellido m	nombres	0	none	none	0
221450	2012-09-10	2012-09-10	410011322	AMEZQUITA SANDOVAL MIGUEL ANGEL	1	4	80	1987-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221451	2012-09-10	2017-03-31	30811577	VELAZQUEZ MARTINEZ NANCY	1	1	78	1992-09-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221452	2012-09-10	2013-03-20	306043921	NAVA SANCHEZ SARAI	1	1	83	1989-08-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221453	2012-09-11	2012-09-11	308173693	GASPAR ROJAS LUIS IVAN	1	1	82	1992-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221454	2012-09-11	2012-09-11	30605791-5	BLANCO MARTINEZ MELISSA SUZUKI	1	1	80	1991-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221455	2012-09-11	2012-09-11	305269195	MEDINA RAMIREZ DANEA BETZABETH	1	1	90	1989-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221456	2012-09-11	2012-09-11	307050524	CORTEZ VAZQUEZ GABRIELA GPE.	1	1	84	1991-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221457	2012-09-11	2012-09-11	307644710	LOPEZ GROVAS JESSICA GUADALUPE	1	2	90	1990-12-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221458	2012-09-11	2012-09-11	307317003	REYES GUTIERREZ ROBERTO	1	2	84	1988-10-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221459	2012-09-11	2012-09-11	308285628	TARACENA MORALES VICTOR JORGE	1	5	79	1992-08-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221460	2012-09-11	2014-05-06	308056330	GRANADOS URIBE CESAR JOAQUIN	1	1	84	1992-09-11	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221461	2012-09-11	2012-09-11	411083306	TORRES SANCHEZ ILADY ABRIL	1	4	84	1992-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221462	2012-09-11	2012-09-11	307045636	AVILA ESPINOSA DAMIAN	1	1	84	1991-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221463	2012-09-11	2013-03-21	300121085	BALTAZAR LANDEROS EDGAR	1	5	84	1985-01-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221464	2012-09-11	2012-09-11	306052044	JIMENEZ ORTEGA DANTE	1	1	79	1990-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221465	2012-09-12	2012-09-12	305163976	ACOSTA BLANCO FEDERICO	1	5	89	1989-04-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221466	2012-09-12	2012-09-12	306014046	DOMINGUEZ JIMAREZ ARCELIA	1	1	90	1990-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221467	2012-09-12	2015-02-11	305147923	RAMIREZ GUTIERREZ ISAI HUGO	1	1	85	1989-10-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221468	2012-09-13	2012-09-13	306209665-7	PRIMERO BRISEÑO LUCERO	1	1	83	1989-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221469	2012-09-13	2012-09-13	94630910	DE LA CRUZ TORRES VALENTIN	1	1	79	1974-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221470	2012-09-13	2012-09-13	303091710	PATIÑO MENDOZA GABRIEL	1	2	82	1985-11-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221471	2012-09-13	2012-09-13	308008195	BECERRIL REA VIRIDIANA	1	2	84	1991-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221472	2012-09-13	2014-09-23	309226084	VELASCO RAMIREZ ALVIN	1	7	84	1993-08-13	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221473	2012-09-13	2018-02-01	405114201	OLALDE BAUTISTA FABIAN	1	1	82	1984-02-01	M	f	5	apellido p	apellido m	nombres	0	none	none	0
221474	2012-09-14	2012-09-14	9232093-4	VARGAS GONZALEZ BEATRIZ LIZBETH	1	2	79	1976-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221475	2012-09-14	2012-09-14	303097695	VILLANUEVA VELASCO MARIO ANTONIO	1	5	84	1986-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221476	2012-09-14	2012-09-14	307742270	RIVERA TORRES ALEJANDRO E.	1	5	85	1990-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221477	2012-09-14	2012-09-14	306064993	AVENDAÑO SERRANO ITZEL	1	5	84	1990-07-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221478	2012-09-14	2012-09-14	308215964	HERNANDEZ FUENTES PEDRO EDUARDO	1	5	84	1992-04-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221479	2012-09-17	2016-02-12	413030344	SANTIAGO SOTELO ABRAHAM	1	4	75	1991-03-20	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221480	2012-09-18	2012-09-18	303153599	NORIEGA LUCIANO YOANA ELIZABETH	1	5	80	1986-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221481	2012-09-18	2012-09-18	LOHG770518	LOPEZ HERNANDEZ GERARDO RUBEN	2	4	79	1977-05-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221482	2012-09-18	2012-09-18	307193689	MARTINEZ CHINO ALEJANDRO	1	5	79	1992-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221483	2012-09-18	2012-09-18	310146337	OROPEZA PEREZ DANIEL ALEJANDRO	1	4	89	1994-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221484	2012-09-18	2012-09-18	307031714	AMEZQUITA LEON MONICA MARIBEL	1	1	80	1991-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221485	2012-09-18	2012-09-18	308198364	MORENO GARCIA RAUL OMAR	1	1	80	1992-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221486	2012-09-18	2013-08-22	310018971	FLORES LOPEZ CESAR	1	2	79	1994-10-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221487	2012-09-18	2012-09-18	307319588	SANCHEZ SANDOVAL DAVID ISAAC	1	1	85	1987-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221488	2012-09-18	2016-02-23	309171726	PEREZ MENDOZA MARIA DE LA LUZ	1	1	78	1993-04-26	F	f	3	apellido p	apellido m	nombres	0	none	none	0
221489	2012-09-18	2012-09-18	307090722	CARRILLO MARTINEZ AURA BERENICE	1	5	84	1991-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221490	2012-09-18	2012-09-18	9919324-9	MENDIOLA ALMARAZ MAYRA	1	5	81	1983-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221491	2012-09-18	2012-09-18	403051838	PEREZ CASILLAS JULIO ALBERTO	1	4	85	1981-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221492	2012-09-20	2012-09-20	VAGM620119	VAZQUEZ GARCIA MARIO	2	1	86	1962-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221493	2012-09-20	2012-09-20	30933033-1	ZARATE CHAVIRA ALEJANDRO DAVID	1	5	84	1993-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221494	2012-09-20	2012-09-20	GASJ880814	GARZON SANCHEZ JORGE ALBERTO	2	1	80	1988-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221495	2012-09-20	2012-09-20	304287131	LEMUS FLORES ALEJANDRA	1	1	80	1987-07-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221496	2012-09-20	2014-09-01	30722926-1	FUENTES GOMEZ JOSE ANTONIO	1	1	85	1991-04-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221497	2012-09-20	2012-09-20	308043972	AVILA ESPINOSA CAROLINA	1	2	78	1992-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221498	2012-09-20	2013-08-30	MADN571223	MATAMOROS DELGADO NORMA IRENE	3	2	66	1957-12-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221499	2012-09-20	2012-09-20	308113523	ROSAS RANGEL JOSE ROBERTO	1	1	82	1991-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221500	2012-09-20	2012-09-20	40909284	RAMIREZ GARCIA MIRIAM	1	4	79	1990-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221501	2012-09-20	2012-09-20	300587296	XELHUANTZI SANTILLAN RAFAEL IZCOATL	1	5	89	1984-12-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221502	2012-09-20	2012-09-20	9151296-7	ACOSTA CRUZ LUISA CORAL	1	2	84	1970-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221503	2012-09-20	2018-03-20	310222581	URIOSTE REYES GUILLERMO	1	2	84	1994-03-04	M	t	4	apellido p	apellido m	nombres	0	none	none	0
221504	2012-09-21	2012-09-21	309327806	YAÑEZ CRUZ CARLOS	1	2	81	1993-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221505	2012-09-21	2014-08-18	3071165213	LUNA SANCHEZ LUIS JOSEPH	1	4	84	1991-03-22	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221506	2012-09-21	2012-09-21	307187976	GUTIERREZ FLORES LUCIA BERENICE	1	2	84	1991-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221507	2012-09-21	2012-09-21	30701591-2	AREIZAGA ESPINOSA VANYA	1	1	85	1991-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221508	2012-09-21	2012-09-21	307056777	LOPEZ HERNANDEZ ARTURO	1	1	85	1991-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221509	2012-09-24	2012-09-24	410018345	CAUICH SEGOVIA GUILLERMO ISRAEL	1	4	90	1991-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221510	2012-09-24	2012-09-24	308238514	LOPEZ TORRES JESICA	1	2	89	1987-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221511	2012-09-24	2012-09-24	307313809	SANCHEZ TORRES MARIANA SUSANA	1	2	84	1991-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221512	2012-09-25	2012-09-25	308316470	MUÑOZ GONZALEZ LAURA MISHELLE	1	2	81	1992-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221513	2012-09-25	2012-09-25	302712489	GUZMAN CHAVEZ FERNANDO	1	1	90	1985-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221514	2012-09-25	2012-09-25	303194866	PEDROZA GARCIA JOSE ANTONIO	1	1	90	1988-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221515	2012-09-27	2012-09-27	30621935-1	CARRASCO ANDRADE EDUARDO ANDRES	1	5	81	1987-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221516	2012-09-27	2012-09-27	GUAA680821	GUTIERREZ ALEJANDRE AIDA	2	1	90	1968-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221517	2012-09-27	2012-09-27	FICJ550907	FIGUEROA CUEVAS JOAQUIN	2	1	89	1955-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221518	2012-09-27	2012-09-27	309539584	CHAPA IBARGUENGOITIA OSCAR	1	4	85	1992-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221519	2012-09-27	2012-09-27	310209955	OSORIO AGUILAR JORGE ERNESTO	1	1	82	1993-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221520	2012-09-27	2012-09-27	412070381	CARBALLIDO MORENO ARIANA MICHELLE	1	2	80	1992-03-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221521	2012-09-28	2012-09-28	411075637	ZARAGOZA FERNANDEZ FAUSTINO	1	1	82	1992-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221522	2012-09-28	2012-09-28	401085468	MARTZ DE LA VEGA HANS	1	1	79	1974-04-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221523	2012-09-28	2012-09-28	307576895	SOTO GARCIA JENNIFER VALERIA	1	2	84	1991-01-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221524	2012-09-28	2012-09-28	308106088	SANDOVAL SANCHEZ SARAI ASTRID	1	2	85	1992-11-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221525	2012-09-28	2015-10-26	308200818	PEREZ MORQUECHO LIZA GABRIELA	1	2	84	1992-02-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221526	2012-09-28	2012-09-28	306219234	CONTRERAS YTTESEN LIBIA YURITZI	1	1	84	1989-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221527	2012-09-28	2012-09-28	407006696	OVIEDO HERNANDEZ GUILLERMO	1	1	85	1987-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221528	2012-09-28	2013-05-29	GAMJ880805	GARCIA MENDIETA JAVIER	2	1	86	1988-08-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221529	2012-09-28	2012-09-28	509005272	DOMINGUEZ GABRIELA	1	1	82	1977-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221530	2012-09-28	2012-09-28	307108883	MENDOZA PEDROZA LAURA SELENE	1	1	80	1991-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221531	2012-10-02	2012-10-02	40609575-8	PINETE REYNAUD PAULA ANDREA	1	1	87	1986-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221532	2012-10-02	2012-10-02	307053855	GODINEZ VELAZQUEZ EDGAR	1	4	84	1991-02-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221533	2012-10-02	2012-10-02	305083511	BARRIOS ALVARADO CARLOS ISAAC	1	1	83	1989-08-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221534	2012-10-03	2012-10-03	31061273	RAMIREZ GIL ERNESTO ELEAZAR	1	1	80	1993-04-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221535	2012-10-03	2012-10-03	ROSM721128	RODRIGUEZ SALDAÑA MARTHA BEATRIZ	2	1	81	1972-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221536	2012-10-03	2015-02-05	COHF541224	CORTES HIDALGO FLORA	1	5	7	1954-12-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221537	2012-10-04	2012-10-04	412091937	GAMBOA ORTIZ GUADALUPE	1	1	80	1953-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221538	2012-10-04	2012-10-04	513016329	CARRILLO LOPEZ ALEJANDRA	1	1	78	1987-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221539	2012-10-04	2012-10-04	307527354	DEL CUETO MIER MARIANO	1	1	80	1990-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221540	2012-10-08	2012-10-08	303159632	CHAPERO SERRANO JAZMIN	1	5	87	1988-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221541	2012-10-11	2012-10-11	41207054-9	COVARRUBIAS DOMINGUEZ MELISSA	1	1	80	1993-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221542	2012-10-11	2014-11-14	304734935	AMADOR CORREA YOAB NORAY	1	1	82	1988-06-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221543	2012-10-11	2012-10-11	404088389	ROMERO ROMERO VICTOR MANUEL	1	1	85	1963-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221544	2012-10-12	2012-10-12	510000978	JARDINEZ PEREA FRANCISCO	1	1	7	1978-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221545	2012-10-15	2012-10-15	96329283	CASILLAS ISHIKAWA JUDITH IVONNE	1	7	81	1980-04-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221546	2012-10-15	2012-10-15	307233059	MEJIA VERA MARICRUZ	1	2	81	1990-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221547	2012-10-15	2015-09-29	SAPT610427	SCHWANKE PADILLA TOMAS ENRIQUE	2	4	86	1961-04-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221548	2012-10-15	2012-10-15	3063052278	PASOS TREJO ALAN MAURICIO	1	4	79	1990-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221549	2012-10-15	2012-10-15	30714728-0	GORDILLO PONCE CYNTHIA TERESA	1	1	79	1991-11-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221550	2012-10-15	2012-10-15	307128494	GARCIA CASTILLO NAYELI  ITZEL	1	1	80	1991-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221551	2012-10-15	2012-10-15	305142447	VAZQUEZ TOPETE SOFIA	1	2	85	1988-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221552	2012-10-15	2012-10-15	307542032	MARTINEZ ROBLES ALEJANDRA	1	2	78	1991-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221553	2012-10-16	2012-10-16	506231117	MARTINEZ MUNIVE MARIA BERENICE	1	5	78	1990-04-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221554	2012-10-16	2012-10-16	512008808	AGUILAR ARTEAGA OSCAR	1	1	84	1981-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221555	2012-10-18	2016-02-08	773490113	ARAGONES SUAREZ PABLO	1	2	79	1995-05-28	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221556	2012-10-18	2012-10-18	310051455	HERNANDEZ HERNANDEZ BRENDA	1	2	79	1994-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221557	2012-10-18	2012-10-18	RELP871020	REYES LUNA PAOLA CAROLINA	2	1	85	1987-10-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221558	2012-10-19	2012-10-19	411010067	RODRIGUEZ LINARES JULIAN	1	1	80	1992-12-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221559	2012-10-22	2012-10-22	RASL730825	RAMIREZ SALAS LINARES LUIS OCTAVIO	2	1	85	1973-08-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221560	2012-10-22	2012-10-22	308012529	ARANDA SERRANO ELIZABETH	1	5	80	1992-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221561	2012-10-22	2018-08-23	406064147	VARGAS LUCIANO JOSE ANTONIO	1	2	90	1987-02-23	M	t	2	apellido p	apellido m	nombres	0	none	none	0
221562	2012-10-24	2012-10-24	307615770	DE LA CERDA FUENTES JULIO CESAR	1	7	80	1991-07-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221563	2012-10-24	2018-02-27	310107954	JIMENEZ MEDINA MICHELLE LISETTE	1	1	84	1994-03-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221564	2012-10-24	2016-11-24	95283980	CHAVARRIA FERNANDEZ RICARDO	1	1	69	1978-12-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221565	2012-10-24	2012-10-24	40804170	GUERRERO DE LA TORRE FERNANDO	1	1	90	1988-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221566	2012-10-24	2012-10-24	8917763-9	ESPINOSA GONZALEZ MARIBEL	1	1	84	1968-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221567	2012-10-25	2014-08-26	308024439	CID AYALA HERIBERTO	1	3	80	1992-08-18	M	f	4	apellido p	apellido m	nombres	0	none	none	0
221568	2012-10-26	2012-10-26	308314524	JUAREZ RUIZ KARLA IVONNE	1	3	82	1992-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221569	2012-10-26	2012-10-26	307292074	VILCHIS GONZALEZ ANA LAURA	1	2	79	1991-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221570	2012-10-26	2012-10-26	410072743	VALDEZ VIVANCO GERARDO	1	2	79	1991-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221571	2012-10-29	2012-10-29	SARJ500824	SANCHEZ RUIZ JESUS	2	1	82	1950-08-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221572	2012-10-29	2012-10-29	308329742	VILLAGOMEZ COVARRUBIAS LIZBETH	1	1	84	1992-01-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221573	2012-10-29	2012-10-29	308045179	BONILLA CORREA ESTHELA ALISON	1	1	79	1987-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221574	2012-10-29	2012-10-29	307035884	GONZALEZ GARRIDO VICTOR JAVIER	1	6	85	1990-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221575	2012-10-30	2012-10-30	LOGP811220	LORENZANA GUTIERREZ PABLO ANTONIO	2	1	85	1981-12-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221576	2012-10-30	2015-02-12	9925326-8	PACHECO LEMUS LIDIA BERENICE	1	3	82	1982-11-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221577	2012-10-30	2012-10-30	4115076	MEDINA DIAZ JUAN MANUEL	1	4	85	1992-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221578	2012-11-07	2012-11-07	305503659	MONTES SANTANA NAYELI	1	3	82	1989-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221579	2012-11-07	2012-11-07	308113248	RODRIGUEZ CALDERON KAREN PAMELA	1	1	81	1992-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221580	2012-11-07	2012-11-07	512001232	ALTAMIRANO TORRES JUAN CARLOS	1	1	81	1985-07-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221581	2012-11-07	2012-11-07	309043054	AGUIRRE MORO LAURA MARIANA	1	1	81	1993-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221582	2012-11-07	2012-11-07	309213949	NAVARRETE BELTRAN DANIEL	1	4	84	1993-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221583	2012-11-07	2018-03-14	309079419	GARCIA AVILES ISRAEL	1	3	84	1992-03-10	M	t	2	apellido p	apellido m	nombres	0	none	none	0
221584	2012-11-08	2012-11-08	307204796	MARQUEZ CADENA MIGUEL ADRIAN	1	7	90	1992-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221585	2012-11-08	2012-11-08	307225593	MARIANO TORRES MARCO ANTONIO	1	2	84	1988-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221586	2012-11-08	2012-11-08	95197630	RIVERA MENDOZA CLAUDIA TANIA	1	1	84	1979-03-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221587	2012-11-09	2012-11-09	411103914	DIAZ OLVERA MARCOS JAVIER	1	5	83	1990-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221588	2012-11-12	2013-10-16	107000607	CAMPOS CANO JOCELYN	1	4	85	1994-07-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221589	2012-11-12	2012-11-12	310197298	PARADA ORTEGA DANIEL ALEJANDRO	1	2	85	1994-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221590	2012-11-12	2012-11-12	30712207-6	RIVERA LOPEZ MARIO IVAN	1	1	82	1990-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221591	2012-11-12	2012-11-12	512007791	GARCIA LOPEZ DE LLERGO CARLA	1	2	85	1987-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221592	2012-11-13	2013-10-21	99268170	ROJAS ROJAS EDY	1	3	82	1982-07-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221593	2012-11-14	2015-03-13	304560183	GONZALEZ  VIZCAINO JONATHAN ARIEL	1	1	84	1987-06-16	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221594	2012-11-14	2012-11-14	310049135	FLORES VILLAVICENCIO JULIO CESAR	1	1	85	1994-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221595	2012-11-15	2015-02-19	409055023	OSORIO GUZMAN MIGUEL ANTONIO	1	3	84	1990-10-26	M	f	3	apellido p	apellido m	nombres	0	none	none	0
221596	2012-11-15	2012-11-15	306198681	ROMERO GOMEZ PAULINA	1	4	82	1990-06-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221597	2012-11-16	2012-11-16	507307778	YEPEZ RODRIGUEZ ISIS MARIANA	1	1	84	1991-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221598	2012-11-20	2012-11-20	411015378	DINORIN CALDERON HUGO	1	1	90	1992-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221599	2012-11-21	2013-05-31	30613011	CRUZ MENDOZA  LORENA	1	7	84	1990-07-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
221600	2012-11-23	2012-11-23	407092200	CAMACHO BELTRAN ANAHID	1	3	80	1987-10-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221601	2012-11-26	2012-11-26	308241240	MARTINEZ RAMOS GERARDO EUGENIO	1	4	79	1991-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
221602	2012-11-27	2012-11-27	305015631	LUNA ELIZALDE MARIA	1	3	84	1989-10-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
221603	2012-11-27	2014-03-11	304051450	SERRANO ARELLANO ANTONIO DE JESUS	1	2	85	1988-07-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
221604	2012-11-28	2012-11-28	408095865	OVIEDO FERRER OCTAVIO ALONSO	1	1	80	1986-10-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
230990	2013-01-28	2013-01-28	409113392	ESCAMILLA MAYA GONZALO	1	3	82	1969-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
230991	2013-01-28	2014-02-04	309306171	RIVERA JUAREZ JESSICA JENEDITH	1	4	80	1993-01-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
230992	2013-01-28	2013-01-28	MOCA751026	MORGADO CASTILLO ANGELICA	1	6	150	1975-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
230993	2013-01-28	2016-02-03	305337869	GUERRERO ESTRADA ZOAR ELIZABETH	1	7	89	1990-01-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
230994	2013-01-28	2013-01-28	307118123	MORALES PERALES NAYELY	1	7	85	1991-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
230995	2013-01-28	2015-01-29	309120418	RODRIGUEZ LEYVA LUIS FERNANDO	1	5	85	1993-09-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
230996	2013-01-28	2013-01-28	405046049	LAZCANO RUIZ JESSIE	1	4	80	1986-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
230997	2013-01-28	2013-01-28	41304909-6	MEZA VELASCO MIRIAM	1	1	80	1976-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
230998	2013-01-28	2013-01-28	308015496	DURAN DE LA CRUZ ANDREA	1	1	79	1991-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
230999	2013-01-28	2018-03-23	SUNR880129	SUAREZ NAJERA RAFAEL GUILLERMO	2	1	85	1988-02-29	M	t	3	apellido p	apellido m	nombres	0	none	none	0
231000	2013-01-28	2014-08-22	410067154	JURADO GARCIA CARLOS ARTURO	1	4	78	1991-11-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231001	2013-01-29	2013-01-29	HEOO890927	HERNANDEZ OTELO OMAR ALEJANDRO	3	6	77	1989-09-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231002	2013-01-29	2013-01-29	30521912-1	SOLORIO RUIZ JESUS OSVALDO	1	1	78	1989-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231003	2013-01-29	2013-01-29	309023386	ESCAMILLA GUEVARA RAUL OMAR	1	1	85	1983-01-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231004	2013-01-29	2015-03-19	KASS751207	KAWASAKI SUBIAS SAYURI	1	5	7	1975-12-07	F	f	5	apellido p	apellido m	nombres	0	none	none	0
231005	2013-01-29	2014-10-07	310326160	SOTO VARGAS RODRIGO EDUARDO	1	1	85	1994-03-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231006	2013-01-29	2013-01-29	308194160	MARTINEZ JAIMES KARLA LIZBETH	1	1	80	1992-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231007	2013-01-29	2015-08-19	410005853	BENITEZ RENTERIA ALBERTO SIGFRIDO	1	2	86	1991-03-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231008	2013-01-29	2013-01-29	4100000353	MORA GALVAN JESSICA AIDEE	1	2	86	1991-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231009	2013-01-29	2013-01-29	99163752	JIMENEZ MUÑOZ ROCIO	1	2	80	1983-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231010	2013-01-29	2013-08-28	RIPS561030	RIOS PALACIOS  SILVIA ROSA CONCEPCION	3	3	46	1956-10-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231011	2013-01-30	2013-01-30	307004723	BAZUA  LOBATO RODRIGO	1	2	86	1991-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231012	2013-01-30	2013-01-30	306586675	COTA ROBLES RUBEN ANATOLIO	1	6	85	1990-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231013	2013-01-30	2013-01-30	AAPR710914	AVALOS PEREZ ROSAURA	2	5	76	1991-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231014	2013-01-30	2013-01-30	310203551	NIETO DAVILA ANDREA	1	4	78	1994-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231015	2013-01-30	2014-02-04	310001694	DINER BATUN DANIEL	1	4	85	1993-12-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231016	2013-01-30	2013-01-30	41001927-0	ANASZKIEWICZ TENANGO ADELA ALEJANDRA	1	4	84	1985-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231017	2013-01-31	2014-02-24	RUGM640521	RUEDA GUTIERREZ MOISES EUGENIO	2	2	85	1964-05-21	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231018	2013-01-31	2013-01-31	310122546	PABLO TOLENTINO ISAIAS	1	1	80	1994-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231019	2013-01-31	2013-01-31	513452572	VITERI SANTOS JOSE MANUEL	1	1	83	1981-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231020	2013-01-31	2013-01-31	306135235	ANTONIO CHAVEZ LUIS ALBERTO	1	7	85	1990-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231021	2013-01-31	2015-02-19	ROAO810313	ROMERO AROCHE OSCAR	1	7	85	1981-03-13	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231022	2013-01-31	2013-01-31	307080547	GONZALEZ NIETO ANDREA YOTZIL	1	3	84	1990-08-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231023	2013-01-31	2013-01-31	413104852	VELAZQUEZ GONZALEZ OLGA MESILEMIT	1	1	84	1989-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231024	2013-01-31	2013-01-31	408092492	RAMIREZ NATAREN NALLELY LUZ MARIA	1	1	84	1983-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231025	2013-02-01	2013-02-01	308054271	BALMACEDA ACEVEDO DANIEL ERNESTO	1	1	85	1991-10-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231026	2013-02-01	2014-02-28	302547049	MONTAÑO CASTILLO HUGO ENRIQUE	1	4	84	1985-12-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231027	2013-02-01	2013-08-13	308046777	CASTILLO BARRERA LUZ GABRIELA	1	1	85	1992-02-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231028	2013-02-01	2015-09-11	303574600	RODRIGUEZ LAGUNA ELISSA BELEN	1	3	84	1987-08-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231029	2013-02-01	2013-10-14	30503777-2	ARZATE BELTRAN HECTOR JAIR	1	5	83	1989-05-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231030	2013-02-01	2013-08-19	309019985	ESPINO MARTINEZ ITZEL	1	1	81	1993-05-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231031	2013-02-01	2013-02-01	409006465	GALINA MATA ALEJANDRO	1	2	79	1990-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231032	2013-02-01	2013-02-01	308301269	SANCHEZ MARTINEZ ALEJANDRA	1	2	84	1991-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231033	2013-02-01	2013-02-01	309013000	AGUIRRE RAYO FREDY	1	1	81	1993-01-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231034	2013-02-01	2014-04-11	309008150	BALBUENA PONCE MARIANA DANIELA	1	1	81	1993-08-01	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231035	2013-02-01	2013-02-01	94106987	PERALTA RODRIGUEZ RAUL	1	1	83	1978-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231036	2013-02-01	2013-02-01	307037981	HERNANDEZ VAZQUEZ SAMUEL	1	2	84	1991-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231037	2013-02-01	2013-02-01	307060785	ACOSTA DAVILA JUAN MANUEL	1	2	79	1990-05-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231038	2013-02-01	2013-02-01	512015570	SOLIS CARMONA PAULINA	1	1	98	1987-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231039	2013-02-01	2013-02-01	410065789	ARAGON CRUZ ODUAD	1	2	85	1990-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231040	2013-02-05	2016-03-15	308055151	LOPEZ ORTIZ ABIGAIL ALICIA	1	3	84	1992-09-19	F	f	4	apellido p	apellido m	nombres	0	none	none	0
231041	2013-02-05	2018-05-07	310209807	NOGUEIRA MARMOLEJO CARLOS RAFAEL	1	1	82	1985-12-06	M	t	11	apellido p	apellido m	nombres	0	none	none	0
231042	2013-02-05	2013-02-05	406087204	HURTADO ROMERO AARON	1	1	84	1986-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231043	2013-02-05	2013-02-05	30672572-2	BARRIOS BAUTISTA ABRAHAM NOE	1	4	90	1989-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231044	2013-02-05	2013-02-05	309140184	GARCIA SANTIAGO DIANA LAURA	1	1	85	1993-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231045	2013-02-05	2013-08-27	303739905-4	MARTINEZ OSORNO MARLENE	1	3	82	1987-07-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231046	2013-02-05	2013-02-05	GICA810918	GIL CASAS ALAN URIEL	1	2	7	1981-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231047	2013-02-05	2013-02-05	412004618	OLIVARES VILLALPANDO EDGAR	1	1	85	1987-12-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231048	2013-02-05	2013-02-05	308608393	CARRANZA PASTEN MONICA E.	1	4	85	1992-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231049	2013-02-05	2013-02-05	410092660	POBLETE LANDERO ALONSO	1	1	85	1991-01-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231050	2013-02-05	2013-02-05	310121941	RODRIGUEZ BEREA DAVID HAZAEL	1	4	84	1994-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231051	2013-02-05	2013-08-08	410116582	DIAZ SILVA JOSE FRANCISCO	1	2	84	1965-03-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231052	2013-02-06	2014-09-02	410036482	CABRERA ESTRADA MARIA DEL ROSARIO	1	3	89	1987-10-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231053	2013-02-06	2013-02-06	408089450	BAÑUELOS CEDANO MARCELA ANGOLA	1	7	79	1981-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231054	2013-02-06	2013-02-06	304246937	RODRIGUEZ CORTES MARIA DE LOS ANGELES	1	1	85	1988-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231055	2013-02-06	2013-02-06	309325390	TREJO ASHLY NATALIA	1	2	84	1992-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231056	2013-02-06	2013-02-06	AAVM791212	ALVAREZ VALDEZ MARIA MERCEDES	3	1	51	1979-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231057	2013-02-06	2014-10-24	307667195	RUIZ HERNANDEZ VALERIA	1	2	84	1991-09-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231058	2013-02-06	2014-09-12	413003487	MARTINEZ VAZQUEZ MARLENEE	1	6	83	1988-08-25	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231059	2013-02-06	2013-02-06	3020910	MOLINA RUIZ LISNET XATZIRI	1	1	81	1986-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231060	2013-02-06	2013-02-06	40206120-9	HERNANDEZ CRUZ GRISELDA BERENICE	1	3	95	1983-03-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231061	2013-02-06	2013-02-06	412123511	RUIZ SOTOMAYOR BERENICE	1	5	81	1984-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231062	2013-02-06	2014-08-25	300202753	LEONARDO DIAZ ROBERTO	1	1	85	1984-09-18	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231063	2013-02-06	2013-02-06	310208374	MONROY CEDILLO FARID YEGIEL	1	4	85	1993-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231064	2013-02-06	2013-02-06	309188814	GOMEZ FLORES JESSICA AMERICA	1	2	84	1993-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231065	2013-02-07	2013-02-07	307072902	FRANCO SILVA ADRIANA	1	1	80	1991-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231066	2013-02-07	2013-02-07	8156499-0	BRITO BRITO ROSA MARIA	1	3	82	1961-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231067	2013-02-07	2013-02-07	307044770	RAMIREZ AGUILAR ALBERTO	1	1	83	1991-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231068	2013-02-07	2013-02-07	309000123	ALCANTARA MANJARREZ MARIA GUADALUPE	1	1	83	1993-04-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231069	2013-02-07	2013-02-07	307092379	GONZALEZ AVALOS KATIA IXCHEL STEPHANIE	1	4	90	1991-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231070	2013-02-07	2013-02-07	308013667	BAÑUELOS FUENTES CECILIA	1	5	80	1992-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231071	2013-02-07	2016-08-09	410082992	SANCHEZ MONROY JUAN	1	1	82	1954-05-06	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231072	2013-02-07	2013-02-07	309216634	ROSAS CHACON ANA ERIKA	1	1	82	1993-01-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231073	2013-02-08	2013-02-08	306901801-3	GERONIMO HERNANDEZ THANIA KAREN	1	2	80	1990-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231074	2013-02-08	2013-02-08	306045164	CASILLAS GONZALEZ BERTHA PRISCILA	1	2	83	1990-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231075	2013-02-08	2013-02-08	309176398	LEON ROJAS HECTOR EMANUEL	1	1	83	1993-10-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231076	2013-02-08	2013-02-08	309055635	DE LA PEÑA CHAVEZ LUIS ALBERTO	1	4	83	1993-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231077	2013-02-08	2013-02-08	307519245	LASSALA LOPEZ VALLEJO DIEGO	1	2	86	1990-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231078	2013-02-08	2014-03-06	305328399	GUTIERREZ SIMOTA MARIANA	1	1	79	1989-06-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231079	2013-02-08	2013-02-08	407527979	ORTEGA HUERTA SHANTAL MELINA	1	2	78	1988-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231080	2013-02-08	2013-02-08	41101491	LARIOS VAZQUEZ ANDREA GUADALUPE	1	1	83	1992-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231081	2013-02-08	2013-02-08	309727828	MONCAYO ORTEGA PAOLA ARIADNE	1	2	82	1992-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231082	2013-02-08	2015-09-28	513008959	MOLINA SANCHEZ AURORA	1	1	82	1977-08-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231083	2013-02-08	2013-02-08	407050950	VEGA CABRERA VICTOR TOMAS	1	5	80	1984-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231084	2013-02-08	2013-02-08	CUML890303	CRUZ MARTINEZ LUIS ROBERTO	2	2	79	1989-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231085	2013-02-08	2013-02-08	30810868	ZENIL CRUZ ALEJANDRA	1	6	79	1992-10-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231086	2013-02-11	2013-10-09	306285093	SORIANO ALVAREZ BERENICE	1	2	80	1990-09-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231087	2013-02-11	2013-02-11	30623237-2	RANGEL GOMEZ VERONICA ARODY	1	2	84	1990-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231088	2013-02-11	2013-02-11	512009257	LANDA REYES VLADIMIR	1	2	78	1980-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231089	2013-02-11	2013-02-11	309031765	GUTIERREZ LOPEZ DALIA MARGARITA	1	5	84	1993-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231090	2013-02-11	2013-09-24	307128920	QUIJAS HERNANDEZ NAHUM	1	2	85	1991-01-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231091	2013-02-11	2013-02-11	307304876	MUÑOZ SANCEN MARGARITA MARIA	1	2	79	1991-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231092	2013-02-11	2013-02-11	30111595-9	DE LA GARZA GARCIA JORGE ALFREDO	1	4	87	1985-08-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231093	2013-02-11	2013-02-11	302590698	ESPINOSA GONZALEZ RODRIGO	1	4	83	1986-01-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231094	2013-02-11	2013-02-11	MAGG790922	MARTINEZ GIL MARIA GUADALUPE	2	1	108	1979-09-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231095	2013-02-12	2013-02-12	FOGL840121	FLORES GARCIA LILIANA	2	2	85	1984-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231096	2013-02-12	2013-02-12	3082602190	ROMERO JAIMES NELLY MARIBEL	1	4	85	1991-12-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231097	2013-02-12	2016-05-02	308615577	VALENCIA GOUJON GABRIEL DARIO	1	2	85	1991-12-20	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231098	2013-02-12	2015-02-19	40907541	NAVA RAMIREZ ALEJANDRO	1	1	85	1986-02-17	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231099	2013-02-12	2013-02-12	9010184-9	ABOU SANCHEZ ALINEE NATALIA	1	1	81	1974-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231100	2013-02-12	2013-08-29	309205799	SANCHEZ RAMIREZ GLORIA CECILIA	1	6	81	1992-12-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231101	2013-02-12	2013-02-12	308285927	SANDOVAL SANCHEZ KARLA ANDREA	1	1	90	1991-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231102	2013-02-12	2013-02-12	408082530	MUGUERZA MEDINA DIEGO	1	1	90	1983-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231103	2013-02-12	2013-09-10	308244643	MENDOZA MORALES ERICK JAIME	1	3	82	1992-04-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231104	2013-02-13	2018-04-03	307056076	HERNANDEZ MARTINEZ JUAN ANTONIO	1	1	85	1990-10-23	M	t	6	apellido p	apellido m	nombres	0	none	none	0
231105	2013-02-13	2016-09-12	MAMA790301	MARTINEZ MARTINEZ ANA BERTHA VERONICA	2	3	83	1979-03-01	F	f	5	apellido p	apellido m	nombres	0	none	none	0
231106	2013-02-13	2016-02-17	309281649	MORENO RAMIREZ FRANCISCO	1	3	84	1993-06-18	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231107	2013-02-13	2013-02-13	307209791	MARTINEZ DELGADO GABRIELA	1	3	82	1991-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231108	2013-02-13	2013-02-13	405031285	SOLIS BERISTAIN CHARBEL	1	5	113	1986-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231109	2013-02-13	2013-02-13	412119637	ROA BARRIOS JESUS ARTURO	1	1	82	1981-11-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231110	2013-02-13	2013-02-13	3082850037	SILVA MEDRANIO SARAI	1	7	89	1992-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231111	2013-02-13	2013-02-13	505450278	AMARO CAVADA MARIA PAZ	1	2	84	1971-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231112	2013-02-13	2013-02-13	307061407	BACA GRANADOS ALEJANDRA PAULINA	1	7	84	1990-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231113	2013-02-13	2013-02-13	307074652	FUENTES GARCIA ONASIS HUMBERTO	1	1	85	1989-05-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231114	2013-02-13	2013-02-13	307022701	ESPINOSA BASURTO DANIEL	1	2	84	1990-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231115	2013-02-14	2013-02-14	307235565	GARCIA CRUZ YESENIA ASUNCION	1	2	80	1991-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231116	2013-02-14	2013-02-14	713227061	VELASQUEZ ACOSTA NELSON FELIPE	1	2	78	1988-06-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231117	2013-02-14	2013-09-05	30910777	MARTINEZ VALLEJO KAREEN	1	1	81	1993-10-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231118	2013-02-14	2013-02-14	MOMP620629	MORENO MARTINEZ PEDRO JESUS	1	1	7	1962-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231119	2013-02-14	2013-02-14	310035440	GOMEZ MEJIA VICTOR DANIEL	1	4	85	1994-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231120	2013-02-14	2013-02-14	30624331-0	HUERTA HERNANDEZ KAROL	1	2	78	1990-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231121	2013-02-14	2014-02-17	512016120	GARCIA CORTES MONICA YOSELIN	1	1	85	1985-12-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231122	2013-02-14	2013-02-14	307200523	SUMAYA GUERRERO ROBERTO	1	1	84	1991-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231123	2013-02-14	2014-02-13	40600103-8	AGUILAR TADEO JULIO ADRIAN	2	1	85	1987-05-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231124	2013-02-15	2013-02-15	MAGJ760206	MARTINEZ GONZALEZ JUAN CARLOS	2	1	82	1976-02-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231125	2013-02-15	2013-02-15	410095067	MENDEZ HERNANDEZ ITZEL ESTEFANIA	1	1	83	1991-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231126	2013-02-15	2017-08-24	304197138	REYES DEL ANGEL MARCO ANTONIO	1	6	89	1987-12-13	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231127	2013-02-15	2013-02-15	GOMR750903	GOMEZ MACEDO ROLANDO	2	1	79	1975-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231128	2013-02-15	2015-02-06	09531662-6	ROMERO DIAZ JOSE RODRIGO	1	1	79	1978-05-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231129	2013-02-15	2013-02-15	30875425-6	ALCALDE FRANCO DAVID ISAAC	1	4	90	1991-07-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231130	2013-02-15	2013-02-15	308303127	VEGA DE LEON ESTEBAN	1	2	90	1992-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231131	2013-02-15	2013-02-15	310205067	SANCHEZ CASTILLEJOS LEOBARDO	1	1	85	1993-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231132	2013-02-15	2013-02-15	412035047	SORIANO VAZQUEZ LESLY	1	1	81	1992-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231133	2013-02-15	2013-02-15	301039169	CONTRERAS GARCIA ADRIANA	1	3	84	1985-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231134	2013-02-15	2013-02-15	307298485	BECERRIL MORENO CARLOS ARTURO	1	1	83	1990-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231135	2013-02-15	2013-02-15	31017111-1	JUAREZ GARCIA JOSE IGNACIO	1	1	81	1994-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231136	2013-02-15	2013-02-15	CACJ791125	CARMONA CAMACHO JEANETTE	3	1	97	1979-11-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231137	2013-02-15	2013-02-15	308041239	IGLESIAS MENENDEZ ALFREDO	1	1	81	1992-07-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231138	2013-02-18	2013-02-18	9700019-0	LOPEZ LOPEZ JORGE EDUARDO JOSE EMILIANO	1	1	84	1994-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231139	2013-02-18	2014-03-21	3062244692	RAMOS GOMEZ OSCAR RUBELIO	1	4	80	1990-01-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231140	2013-02-18	2013-02-18	308614886	PEREZ AGUILAR JULIO CESAR	1	1	85	1992-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231141	2013-02-18	2014-02-10	307310114	SAUCEDO ZAMARRIPA ANDREA	1	3	80	1991-08-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231142	2013-02-18	2013-02-18	310200684	LOPEZ LOPEZ TERESA DE JESUS	1	1	81	1974-03-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231143	2013-02-19	2013-02-19	304048559	GONZALEZ RANGEL LORE LEIN	1	3	84	1989-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231144	2013-02-19	2013-02-19	30860677-7	MARROQUIN CARAVANTES XRYSW SUSANA	1	3	84	1992-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231145	2013-02-19	2014-02-26	93510873	MATAMOROS MONTERRUBIO ESTELA	1	1	82	1974-08-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231146	2013-02-19	2013-02-19	308566118	HERNANDEZ FERNANDEZ LUCIEN	1	4	82	1992-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231147	2013-02-19	2013-02-19	303086925	SANCHEZ CAMIRUAGA ALAN DANIEL	1	3	84	1987-06-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231148	2013-02-19	2013-02-19	309280561	TAPIA PEREA JUAN DIEGO	1	3	84	1993-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231149	2013-02-19	2013-02-19	513022142	BARRERA GARCIA AVE	1	5	84	1980-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231150	2013-02-19	2013-02-19	305686284	SANTILLAN DELGADILLO SILVANA	1	4	83	1989-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231151	2013-02-19	2013-02-19	310001814	DOLORES ROSAS ADALIA	1	1	84	1994-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231152	2013-02-20	2013-02-20	613228077	CLAVIJO MURCIA ESTEFANIA	1	2	78	1991-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231153	2013-02-20	2013-02-20	512005168	ARZATE ILLANES JOSE MIGUEL	1	1	85	1983-09-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231154	2013-02-20	2013-02-20	613228043	PIÑEROS TORRES JUAN DAVID	1	2	78	1991-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231155	2013-02-20	2013-02-20	9040553-2	GALVAN TEJADA NADESHDA COSETTE	1	2	101	1974-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231156	2013-02-20	2015-02-24	31093465	GARCIA LAZARO CAROLINA JANET	1	1	84	1994-09-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231157	2013-02-20	2013-08-26	3075546675	DOMINGUEZ GOMEZ JESUS FRANCISCO	1	1	81	1991-02-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231158	2013-02-20	2015-08-27	84294595	LIMA CASTILLO ISAAC FELIPE	1	1	85	1968-12-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231159	2013-02-20	2016-03-15	3008285281	GONZALEZ ALVAREZ ANALI	1	3	84	1992-11-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231160	2013-02-20	2013-02-20	411000459	HERNANDEZ PEREZ RICARDO DE JESUS	1	3	78	1992-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231161	2013-02-20	2013-02-20	412048223	DIAZ FLORES AURA LIBERTAD	1	3	84	1985-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231162	2013-02-20	2013-02-20	30755674	SANCHEZ LEONEL IVAN	1	1	85	1991-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231163	2013-02-20	2013-02-20	413002731	GUTIERREZ CASTILLO ERNESTO ALFONSO	1	2	84	1984-12-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231164	2013-02-21	2013-02-21	308687369	CORTES GONZALEZ ADRIANA	1	2	89	1992-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231165	2013-02-21	2016-08-18	411000806	CASTRO FLORES MARIO RODRIGO	1	2	84	1991-01-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231166	2013-02-21	2013-02-21	411070010	MATUS MENDOZA GIL FARITH	1	1	83	1992-03-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231167	2013-02-21	2013-02-21	30625228-2	HOLLANDS TORRES OLEG LARIZZA	1	4	73	1989-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231168	2013-02-21	2013-02-21	306043600	DIAZ HERNANDEZ MAGALI	1	7	79	1990-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231169	2013-02-21	2013-02-21	308155536	TORRES LOBATO MITZI	1	7	80	1992-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231170	2013-02-21	2013-02-21	409076655	MALDONADO MONTESINOS ARIANA KRISTELL	1	1	80	1989-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231171	2013-02-21	2013-02-21	510018829	RANGEL CARDENAS JESUS ANTONIO	1	1	114	1985-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231172	2013-02-21	2013-09-30	306184563	RUIZ GUTIERREZ OMAR	1	4	83	1990-07-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231173	2013-02-21	2013-02-21	305630940	ALARCON HERNANDEZ EDUARDO SEBASTIAN	1	4	90	1989-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231174	2013-02-21	2013-02-21	309109192	ANTONIO GARCIA ABIGAHIL	1	1	81	1993-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231175	2013-02-21	2013-02-21	412045428	CAMARGO ACEVEDO LEON FABRICIO	1	3	84	1989-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231176	2013-02-21	2013-02-21	309331656	YAÑEZ CRUZ HILDA CECILIA	1	1	81	1993-10-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231177	2013-02-21	2013-02-21	LOIJ470911	LOPEZ ISLAS JACINTA ESTHER	1	6	7	1947-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231178	2013-02-22	2013-02-22	308181111	HERNANDEZ VAZQUEZ CRISTINA	1	3	84	1992-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231179	2013-02-22	2013-02-22	307162968	TREJO CUEVAS DIANA	1	2	81	1991-10-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231180	2013-02-22	2013-02-22	411490313	ARMENDAREZ TABARES ADRIANA	1	2	90	1992-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231181	2013-02-22	2013-02-22	306107812	FIBELA PAREDES LAURA STEFANIA	1	5	84	1989-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231182	2013-02-22	2013-02-22	302295740	GOMEZ JIMENEZ ADRIANA	1	3	84	1986-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231183	2013-02-25	2013-02-25	310005568	LOPEZ CASTILLO ALFREDO ANTONIO	1	4	79	1994-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231184	2013-02-25	2013-02-25	86321008	NAVARRO CHAVARRIA LUIS ENRIQUE	1	1	82	1970-09-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231185	2013-02-25	2013-02-25	3042043-1	ORTEGA SUAREZ LILIANA	1	1	81	1987-12-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231186	2013-02-25	2014-03-26	8827199-2	PORRAS IBARRA NORA LIDIA	1	1	80	1972-08-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231187	2013-02-25	2013-02-25	413046947	VELASCO ZUÑIGA MAURICIO	1	1	85	1994-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231188	2013-02-26	2013-02-26	303048116	GONZALEZ TENORIO DIANA	1	5	85	1987-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231189	2013-02-26	2013-11-13	106003026	MARTINEZ MORALES IRIS ESMERALDA	1	2	80	1993-07-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231190	2013-02-27	2014-09-02	308152731	SANTAMARIA GARCIA ALEJANDRA ESTEFANIA	1	3	82	1992-03-09	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231191	2013-02-27	2013-02-27	304200108	HIPOLITO HERNANDEZ JORGE	1	5	85	1988-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231192	2013-02-27	2013-02-27	307237301	MEJIA CIPRIANO IVONNE	1	1	81	1989-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231193	2013-02-28	2013-02-28	307268118	MORA  CHAVEZ ALAN ENRIQUE	1	4	82	1991-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231194	2013-02-28	2013-02-28	TOOG560329	TORRES OROPEZA GLORIA ROCIO	3	1	61	1956-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231195	2013-02-28	2013-02-28	308727038	ROSALES CARREON TAMARA IRENE	1	2	84	1992-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231196	2013-02-28	2013-02-28	41175345	TOPETE MAZA RODRIGO	1	3	82	1991-08-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231197	2013-02-28	2013-02-28	308239748	ORTA ORTA SARA ELIZABETH	1	3	84	1992-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231198	2013-03-01	2013-09-19	307005775	DIAZ GARCIA JORGE ARMANDO	1	2	80	1990-10-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231199	2013-03-01	2013-03-01	308238693	LOPEZ CASTILLO VIRIDIANA MARIA	1	2	80	1992-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231200	2013-03-01	2013-03-01	309267526	SANCHEZ ALCANTARA JESUS ESTEBAN	1	1	79	1993-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231201	2013-03-04	2013-03-04	413017268	REBOLLO HERNANDEZ ROBERTO	1	2	79	1994-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231202	2013-03-04	2013-03-04	307280572	ROJANO CESPEDES PABLO GERARDO	1	1	83	1991-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231203	2013-03-04	2014-08-04	307216061	ORTEGA GARCIA CARLOS ALBERTO	1	5	85	1992-01-20	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231204	2013-03-04	2015-01-28	41300294-7	MARTINEZ HERNANDEZ ALBERTO GABINO	1	2	83	1994-03-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231205	2013-03-05	2013-03-05	30607917-3	GINES SANCHEZ CAROLINA NIEVES	1	2	73	1990-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231206	2013-03-05	2013-03-05	306242617	MASSE MIRANDA LETICIA STEPHANY	1	4	80	1990-05-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231207	2013-03-06	2013-03-06	9126097-4	HUERTA REYES YADIRA AIDEE	1	3	82	1975-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231208	2013-03-06	2013-03-06	95281522	BEZARES BUENROSTRO HECTOR EDUARDO	1	1	80	1988-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231209	2013-03-06	2013-03-06	310081928	GONZALEZ TREJO MIGUEL ANGEL	1	1	79	1993-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231210	2013-03-06	2013-03-06	410009459	BALLINAS INDILI RICARDO	1	3	90	1988-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231211	2013-03-07	2014-02-18	GOGF851128	GONZALEZ GALLARDO MARIA FERNANDA	2	2	82	1985-11-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231212	2013-03-07	2016-02-09	90540055	DE LA TEJA REYES GUILLERMO	1	2	82	1952-08-13	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231213	2013-03-07	2013-03-07	304053306	CASTORENA CASTORENA ALMA VERONICA	1	1	78	1988-08-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231214	2013-03-08	2014-01-29	306114074	NAJERA CORONA MARIO	1	2	84	1990-08-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231215	2013-03-08	2013-03-08	308072022	CERVANTES ARANA VICTOR HUGO	1	1	90	1992-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231216	2013-03-08	2013-03-08	305248611	PEREZ NAVA DAVID ANTONIO	1	3	84	1989-08-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231217	2013-03-08	2013-03-08	412065448	GUADARRAMA ARANDA URIEL	1	2	86	1993-02-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231218	2013-03-11	2013-03-11	306051683	GARCIA SANCHEZ CLAUDIA CAROLINA	1	6	79	1990-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231219	2013-03-12	2017-08-28	308262250	MONDRAGON BASURTO HUGO CESAR	1	1	85	1990-12-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231220	2013-03-12	2014-08-06	412070374	RUIZ HERNANDEZ ANGELICA	1	1	81	1993-03-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231221	2013-03-13	2013-03-13	301014560	PICAZO JUAREZ GIOVANNI	1	1	97	1985-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231222	2013-03-13	2013-03-13	307297402	ZUÑIGA OLIVOS ALIVETH	1	3	82	1991-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231223	2013-03-13	2013-03-13	309220116	GONZALEZ CEDILLO CAROLINA	1	4	86	1992-10-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231224	2013-03-14	2013-03-14	303044558	SANCHEZ CRUZ DAISY JANETT	1	1	83	1988-04-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231225	2013-03-14	2013-03-14	ROSG860929	RODRIGUEZ SOTO GIOVANNA GABRIELA	1	3	89	1986-09-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231226	2013-03-14	2013-03-14	306295302	PALOMINO HERNANDEZ RAFAEL ESTEBAN	1	1	85	1989-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231227	2013-03-15	2013-03-15	OAPS790219	ORTA PORRAS SANDRA IVONNE	2	2	73	1979-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231228	2013-03-15	2013-03-15	41094784	GUTIERREZ AREVALO FERNANDO	1	4	85	1991-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231229	2013-03-15	2013-03-15	31010072-8	GONZALEZ MARTINEZ ANALUZ	1	1	84	1994-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231230	2013-03-15	2018-08-22	310072135	VELAZQUEZ MARTINEZ MIRIAM	1	1	85	1994-10-09	F	t	2	apellido p	apellido m	nombres	0	none	none	0
231231	2013-03-15	2013-03-15	302161966	LUCIO ESPINO PATRICIA DANIELA	1	2	82	1987-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231232	2013-03-19	2013-03-19	307051514	BECERRIL ORTIZ FAUSTO ALBERTO	1	1	85	1991-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231233	2013-03-19	2014-02-05	406005768	MEJIA VILET JOSE RAMON	1	6	84	1976-11-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231234	2013-03-19	2013-03-19	30715231-2	ROJAS GONZALEZ YADIRA	1	5	80	1991-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231235	2013-03-19	2013-03-19	41308166-9	GARCIA GONZALEZ JUAN MANUEL	1	4	84	1990-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231236	2013-03-20	2013-03-20	EIAD890715	ESPINOZA ANGELES DIANA ELENA	2	1	85	1989-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231237	2013-03-20	2013-03-20	9811178-1	SANCHEZ LOPEZ YURITZI DE LA PAZ	1	4	84	1982-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231238	2013-03-20	2013-03-20	307197883	MORENO JAIME OSCAR DANIEL	1	4	79	1991-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231239	2013-03-20	2013-03-20	307227968	GALINDO ANGULO RICARDO	1	1	85	1991-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231240	2013-04-01	2013-04-01	511010486	LARA GALINDO WENDY FABIOLA	1	1	84	1980-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231241	2013-04-01	2013-04-01	409079601	ANDRADE HERNANDEZ EMMA BELEM	1	1	90	1989-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231242	2013-04-01	2013-04-01	413033046	ZUÑIGA REYES DANTE	1	3	83	1995-09-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231243	2013-04-02	2015-09-24	303046552	VILLA AVALOS JOSE LUIS	1	3	84	1987-11-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231244	2013-04-02	2013-04-02	308051380	GONZALEZ GALVAN DIANA	1	2	80	1992-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231245	2013-04-02	2013-04-02	307048747	CERON RAMALES DEJANIRA ILANIT	1	2	78	1991-03-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231246	2013-04-03	2013-04-03	SALA750731	SANCHEZ LOPEZ ANA PAOLA	1	6	7	1973-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231247	2013-04-03	2013-04-03	305016432	PEREZ RIVERA MARCO ANTONIO	1	1	84	1986-09-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231248	2013-04-04	2016-04-04	310735858	CARRILLO MINCHACA MONSERRAT ALEJANDRA	1	4	84	1994-02-08	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231249	2013-04-04	2013-04-04	511015474	RUIZ FRAGOSO RODOLFO	1	1	84	1985-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231250	2013-04-04	2013-04-04	412002322	LARA CASTAÑEDA ELDER ARNULFO	1	5	78	1993-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231251	2013-04-05	2013-04-05	411017602	VERGARA GONZALEZ JUAN MANUEL	1	1	85	1992-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231252	2013-04-05	2013-04-05	306027404	HERNANDEZ MEDINA STEPHANY	1	3	85	1989-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231253	2013-04-05	2013-04-05	408094795	MENDEZ RODRIGUEZ LUIS MARTIN	1	5	85	1989-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231254	2013-04-05	2017-08-29	307193940	MARTINEZ VALDES BETEL	1	4	89	1990-11-20	F	f	5	apellido p	apellido m	nombres	0	none	none	0
231255	2013-04-08	2014-03-20	GABK770630	GARCIA BUENDIA KARINA	2	1	79	1977-06-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231256	2013-04-08	2013-04-08	305305471	ARCOS REYES FRANCISCO JAVIER	1	1	85	1984-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231257	2013-04-08	2013-04-08	410030046	GONZALEZ SALGADO JHONATAN	1	5	78	1991-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231258	2013-04-09	2013-04-09	9124101-6	CRUZ ARANDA JULIO	1	2	82	1975-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231259	2013-04-10	2013-04-10	30726643-7	PEÑA MARTINEZ POLETE MONSERRATH	1	1	85	1991-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231260	2013-04-10	2013-04-10	30805230-1	GUIZAR AGREDANO OSCAR SAIM	1	1	87	1992-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231261	2013-04-10	2013-04-10	86084800	COSS Y SALAS FLOR SELENE GUADALUPE	1	2	84	1970-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231262	2013-04-10	2013-10-14	309056230	GRANADOS FUNES CRISTIAN	1	5	81	1993-07-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231263	2013-04-10	2015-08-18	30932321-7	SANDOVAL CRUZ PEDRO ALBERTO	1	1	82	1993-10-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231264	2013-04-10	2014-02-27	307232155	JUSEPPE BAEZ INGRID	1	4	81	1990-11-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231265	2013-04-10	2013-04-10	308555503	CARDENAS PATIÑO ANDREA JESSICA	1	2	86	1991-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231266	2013-04-10	2013-04-10	96138481	DURAN VALDEZ GERARDO	1	1	85	1980-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231267	2013-04-11	2013-04-11	307143268	ROSAS RIOS DANIELA	1	2	90	1991-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231268	2013-04-11	2013-04-11	411082945	PONCE NAVA ARAIZA ANGELICA ARACELI	1	1	85	1992-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231269	2013-04-12	2013-04-12	97379858	GARCIA RIVERA GUADALUPE GRISELDA	1	3	94	1982-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231270	2013-04-12	2013-04-12	41011692-2	PIEDRAS ROS MARIA DEL PILAR	1	1	84	1946-03-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231271	2013-04-12	2013-04-12	307283621	ROMERO GUEVARA REBECA JUDITH	1	4	84	1991-08-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231272	2013-04-12	2013-04-12	410080515	MORALES FONSECA LUCIA GRISELL	1	3	80	1988-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231273	2013-04-12	2015-02-19	307020518	BERDEJO MIGRANAS DANIEL	1	3	80	1991-07-30	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231274	2013-04-15	2013-04-15	512026604	SARMIENTO CORDERO MARIZA ARACELI	1	1	79	1975-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231275	2013-04-15	2016-08-25	307133179	VAZQUEZ MILLAN JAVIER	1	1	84	1990-11-08	M	f	5	apellido p	apellido m	nombres	0	none	none	0
231276	2013-04-17	2016-08-11	307525415	MONDRAGON VAZQUEZ CARLOS OMAR	1	7	85	1991-01-12	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231277	2013-04-17	2014-09-04	30920366-1	VALDIVIA DIAZ STEPHANIA	1	2	78	1993-08-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231278	2013-04-17	2013-04-17	310117421	RIVERA MARTINEZ SAULO LEONARDO	1	6	85	1994-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231279	2013-04-17	2013-04-17	310083245	GARCIA MARTINEZ ELIZABET	1	1	85	1994-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231280	2013-04-17	2013-04-17	310267337	ROMERO GUEVARA CLAUDIA BEATRIZ	1	1	78	1994-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231281	2013-04-17	2013-04-17	4110097627	CABALLERO HERNANDEZ JACINTA SIOMARA	1	2	83	1990-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231282	2013-04-17	2014-02-06	30657679	CADENA TORRES CHRISTIAN IVAN	1	4	84	1989-07-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231283	2013-04-18	2013-04-18	308286577	CHACON SILVA INGRID YUNUEN	1	1	78	1991-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231284	2013-04-19	2015-04-16	306056138	HERNANDEZ PARADA FERNANDO IVAN	1	3	78	1990-11-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231285	2013-04-19	2013-04-19	411070436	MUÑOZ VENCES HECTOR AUGUSTO	1	7	79	1991-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231286	2013-04-22	2013-04-22	305127123	GONZALEZ DORANTES MAYRA	1	3	80	1989-01-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231287	2013-04-22	2013-04-22	30921009	MORA MUÑOZ ARELI GUADALUPE	1	1	84	1992-12-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231288	2013-04-22	2013-04-22	310145392	MORA MUÑOZ DIEGO ANGEL	1	2	84	1994-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231289	2013-04-22	2013-04-22	412026670	SANCHEZ ARIAS QUINATZIN BENJAMIN	1	4	82	1993-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231290	2013-04-23	2013-04-23	411011239	OLEA GOMEZ MARESA ANAI	1	4	80	1992-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231291	2013-04-25	2013-04-25	309051046	CHAVEZ RAMIREZ GUILLERMO ANTHONY	1	6	81	1992-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231292	2013-04-26	2013-04-26	306034190	GOMEZ FLORES VALERIA MICHELLE	1	2	84	1988-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231293	2013-04-26	2013-04-26	407017689	OSORIO RAMIREZ CLARA ALEYDA	1	1	79	1988-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231294	2013-04-26	2013-04-26	307211523	OLALDE ESTRADA ISAI	1	1	79	1991-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231295	2013-04-26	2015-08-14	LEHM700907	DE LEON HAM MARCELA	3	3	104	1970-09-07	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231296	2013-04-26	2013-04-26	FEFR810611	FENERO FANLO RAQUEL	1	1	79	1984-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231297	2013-04-29	2013-04-29	409038932	VAZQUEZ SALDAÑA BEATRIZ	1	1	84	1962-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231298	2013-04-29	2014-08-05	309265584	SAULES ROJAS SOFIA	1	1	79	1992-11-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231299	2013-04-29	2014-01-29	308271610	GIL LARA INGRID	1	5	80	1992-07-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231300	2013-04-30	2013-04-30	307521132	QUIROZ PEREZ YANINE	1	1	80	1991-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231301	2013-04-30	2013-04-30	310018074	CRUZALEY HERNANDEZ ZIHANYA DAFNE	1	1	81	1994-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231302	2013-04-30	2013-04-30	309098463	TOSCANO HERNANDEZ FRANCISCO JAVIER	1	3	80	1993-08-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231303	2013-05-02	2015-09-21	30700871-4	GOMEZ MARTINEZ ITZEL MONTSERRAT	1	1	90	1991-06-21	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231304	2013-05-02	2013-05-02	411052197	GERONIMO MARTINEZ MONTSERRAT	1	1	81	1992-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231305	2013-05-02	2013-05-02	30821670-3	CHAVEZ AVILA LAURA	1	3	81	1992-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231306	2013-05-02	2013-05-02	30324408-8	HARO MORALES DAVID MITZIO	1	2	80	1988-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231307	2013-05-02	2013-05-02	30805591	CASTREJON ATONAL JORGE	1	1	85	1992-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231308	2013-05-02	2013-05-02	AEJA781110	ARCEO JUAREZ ALONSO RODRIGO	2	1	86	1978-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231309	2013-05-06	2013-05-06	307017222	CABALLERO LEYVA EMMANUEL	1	2	85	1991-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231310	2013-05-07	2014-10-20	309048561	ALTAMIRANO JIMENEZ ALONSO	1	1	79	1993-05-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231311	2013-05-08	2013-05-08	30011298-6	PAREDES ACOSTA AIVAR	1	5	84	1984-04-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231312	2013-05-09	2013-05-09	512029369	ESCAMILLA AGUILAR DAVID	1	1	95	1976-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231313	2013-05-14	2013-05-14	409001855	HERNANDEZ HERREJON PAULO VICTOR	1	4	79	1985-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231314	2013-05-14	2013-05-14	308049053	ALVA ESCALANTE JUAN	1	3	85	1992-10-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231315	2013-05-14	2013-05-14	GUAR760330	GUZMAN ALVAREZ RODRIGO	2	2	86	1976-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231316	2013-05-16	2013-05-16	NUFA821020	NUÑEZ FLORES ALVARO	2	1	85	1982-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231317	2013-05-16	2013-05-16	401028313	REYES ALVA KARLA ALICIA	1	3	81	1983-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231318	2013-05-17	2013-05-17	RAAF759522	RAMAS ARAUZ FRANCISCO ERNESTO	2	2	84	1975-05-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231319	2013-05-17	2013-05-17	RUTA750203	RUIZ TORRES ARACELI ANELIA	2	1	84	1975-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231320	2013-05-17	2013-05-17	409096273	CARRILLO RICCI OMAR SALVADOR	1	6	84	1987-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231321	2013-05-20	2013-05-20	306252763	HERNANDEZ PERALTA KAREN	1	1	84	1990-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231322	2013-05-20	2013-05-20	AETA820507	ARTEAGA RICCI TANYA ITZEL	2	1	85	1982-05-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231323	2013-05-21	2013-05-21	GAGH800413	GARCIA GUERRA HANNA LESLYE	2	2	85	1980-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231324	2013-05-21	2015-03-20	302133301	HERNANDEZ HUERTA LAURA MONICA	1	1	84	1986-05-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231325	2013-05-21	2017-01-30	308204878	TREJO HERNANDEZ RODRIGO ANTONIO	1	7	85	1992-04-09	M	f	5	apellido p	apellido m	nombres	0	none	none	0
231326	2013-05-21	2014-08-21	99233853	ORDUÑO BUCIO RODRIGO	1	1	73	1983-05-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231327	2013-05-22	2016-08-09	309529945	MORALES CAMILLI SILVANA	1	3	79	1993-08-06	F	f	4	apellido p	apellido m	nombres	0	none	none	0
231328	2013-05-22	2013-05-22	41127272	MORALES  RODRIGUEZ MARIANA	1	3	76	1986-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231329	2013-05-24	2013-05-24	JUNL880202	JUAREZ MARTINEZ LUZ MARIANA	2	5	83	1988-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231330	2013-05-24	2013-05-24	306297368	SAN JUAN CONTRERAS TANYA OLIVIA	1	1	82	1990-06-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231331	2013-05-24	2013-05-24	300339051	CRUZ CRUZ ISARELI	1	7	79	1992-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231332	2013-05-24	2013-05-24	309187305	CORONA ALVIDREZ MARIANA GUILLERMINA	1	1	80	1987-11-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231333	2013-05-29	2013-05-29	405037050	CASTILLO MALDONADO ELISA	1	3	80	1981-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231334	2013-08-05	2014-02-06	4100031005	RENTERIA DE JESUS ARELI ESMERALDA	1	6	83	1991-11-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231335	2013-08-05	2013-08-05	410026320	GONZALEZ BERNAL ELEONORA	1	4	84	1991-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231336	2013-08-05	2013-08-05	309135265	GALINDO SANTILLAN CECILIA ISABEL	1	1	84	1990-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231337	2013-08-05	2013-08-05	413079765	PONCIANO OJEDA RODRIGO	1	4	84	1994-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231338	2013-08-05	2016-02-02	307115263	CRUZ RANGEL GABRIEL	1	1	90	1991-09-22	M	f	5	apellido p	apellido m	nombres	0	none	none	0
231339	2013-08-05	2013-08-05	41204484-7	GARCIA HURTADO MARTHA PAOLA	1	4	84	1992-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231340	2013-08-05	2013-08-05	FANA820611	FAUCHER NATHALIE	1	7	7	1982-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231341	2013-08-06	2013-08-06	308023969	CASTELLANOS AGUIRRE JESUS HORACIO	1	4	85	1992-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231342	2013-08-06	2013-08-06	308712009	VENDRAMIN ALEGRE DANIELA	1	5	78	1991-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231343	2013-08-06	2013-08-06	SAGI880212	SALGADO GARCIA IVAN	2	4	84	1988-02-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231344	2013-08-06	2015-03-05	41304500-5	CASAS RODRIGUEZ DANIEL MISAEL	1	3	89	1992-10-17	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231345	2013-08-06	2014-04-23	304033104	ROJAS MENDEZ ALEJANDRO	1	4	84	1988-05-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231346	2013-08-06	2014-02-06	309275903	LIRA GONZALEZ EDNA NASHELLY	1	2	84	1993-05-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231347	2013-08-06	2015-02-20	306566208	GRAF VON SCHWERIN REA ALEJANDRO RALF U.	1	1	83	1989-09-18	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231348	2013-08-06	2014-08-28	307223764	PEÑA VAZQUEZ JOSE GABINO	1	1	85	1988-12-10	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231349	2013-08-06	2016-09-23	31006465	AYALA CADENA LUIS ANGEL	1	7	85	1994-01-24	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231350	2013-08-06	2014-02-06	FEGN760224	FERNANDEZ GRAJALES NUBIA LIZBETH MARINA	2	4	72	1976-08-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231351	2013-08-06	2014-09-02	305015875	JIMENEZ HERNANDEZ HANIA	1	2	84	1988-10-17	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231352	2013-08-06	2014-02-06	307272092	ZUÑIGA AZUARA JESUS HUMBERTO	1	2	84	1991-10-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231353	2013-08-06	2015-10-27	41089944	VALENCIA OSEGUERA TZAZIL	1	5	76	1991-09-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231354	2013-08-07	2013-08-07	3062032222	HERNANDEZ VENEGAS ITZEL VIRIDIANA	1	7	8	1990-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231355	2013-08-07	2013-08-07	301206125	PERAL GARIBAY JOSE OMAR	1	2	84	1985-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231356	2013-08-07	2013-08-07	310333894	SANCHEZ CRUZ TERESITA DEL NIÑO JESUS	1	4	85	1994-04-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231357	2013-08-07	2015-05-27	310045333	CORTES FERNANDEZ ITZEL	1	5	87	1994-01-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231358	2013-08-07	2018-02-22	30830707-2	MONDRAGON VAZQUEZ SAMUEL	1	2	78	1992-01-03	M	f	5	apellido p	apellido m	nombres	0	none	none	0
231359	2013-08-07	2013-08-07	408044245	MUGUERZA MEDINA PABLO	1	1	90	1988-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231360	2013-08-07	2013-08-07	308206281	VALADEZ OLVERA ANDREA FABIOLA	1	1	90	1992-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231361	2013-08-07	2013-08-07	40704019-1	DELGADO GOMEZ ALAN DANIEL	1	4	80	1988-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231362	2013-08-08	2014-11-04	412055249	GONZALEZ DOMINGUEZ FABIOLA	1	2	85	1993-05-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231363	2013-08-08	2013-08-08	308590665	BURELO RODRIGUEZ KARLA MERCEDES	1	4	90	1992-01-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231364	2013-08-08	2013-08-08	412024085	MONTIEL SALADO TONATIUH	1	2	81	1993-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231365	2013-08-08	2013-08-08	303070119	CARBAJAL BECERRIL ELVIA	1	1	85	1986-09-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231366	2013-08-08	2013-08-08	306308176	MARTINEZ CRUZ SINUHE	1	3	85	1990-06-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231367	2013-08-08	2013-08-08	309120700	RUIZ JUAREZ GABRIELA	1	5	90	1992-10-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231368	2013-08-08	2013-08-08	305310307	MARTINEZ TORRES CLAUDIA BIBIANA	1	5	85	1989-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231369	2013-08-08	2014-03-03	408005111	CAMP TALAVERA CARLOS	1	4	84	1989-05-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231370	2013-08-08	2013-08-08	PECF831210	PEREZ CARBAJAL FRANCISCO	2	2	79	1983-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231371	2013-08-08	2014-02-26	412065273	GUZMAN VALLE JESUS	1	4	87	1987-02-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231372	2013-08-08	2013-08-08	309240772	MEDINA CORTINA EDNA MERARI	1	1	81	1993-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231373	2013-08-08	2013-08-08	9933975-9	ZARZA MANDUJANO FLOR DE MARIA	1	2	80	1983-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231374	2013-08-08	2015-09-04	304214415	FLORES ESPINO JULIO CESAR	1	1	83	1988-08-31	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231375	2013-08-09	2013-08-09	309632733	MARTIN VILLAR SANDRA VERONICA	1	4	84	1991-12-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231376	2013-08-09	2013-08-09	304123263	MORALES BAZA EMMA GABRIELA	1	2	84	1988-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231377	2013-08-09	2013-08-09	308298990	SITO HERNANDEZ CHAYIN	1	5	80	1992-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231378	2013-08-09	2013-08-09	301785086	SPENCER AGUILAR MARJA ALCIONE	1	2	84	1985-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231379	2013-08-09	2013-08-09	411073097	VILLAGRANA PEREZ AMADA MONSERRAT	1	5	76	1992-06-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231380	2013-08-09	2013-08-09	41172904	LABRA MONTES JAZMIN	1	3	82	1992-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231381	2013-08-09	2013-08-09	41172564	TORRES TORRES EDNA YUZI	1	1	90	1992-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231382	2013-08-09	2013-08-09	FORL630414	FLORES RODRIGUEZ LILIA	3	1	5	1963-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231383	2013-08-12	2013-08-12	304161560	VELASQUEZ HERNANDEZ MIRIAM DE JESUS	1	1	114	1988-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231384	2013-08-12	2014-08-20	413080253	GARCIA LAZARO ELIZABETH	1	1	76	1992-11-01	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231385	2013-08-12	2013-08-12	308260823	GARCIA GOMEZ JOSE MARCOS	1	4	79	1992-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231386	2013-08-12	2013-08-12	308133763	MORENO FRANCO SAMANTHA	1	1	90	1992-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231387	2013-08-12	2013-08-12	412038220	GOMEZ TREJO EMILSE SELENE	1	7	76	1988-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231388	2013-08-12	2013-08-12	309236788	PICAZO AGUILAR CLAUDIA	1	1	84	1993-12-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231389	2013-08-12	2013-08-12	30217149-5	TOVAR JAIME VIOLETA	1	2	80	1986-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231390	2013-08-12	2013-08-12	309000848	BALTAZAR RAMIREZ AMAIRANI ESTEFANIA	1	1	81	1993-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231391	2013-08-12	2017-09-12	408091866	SERENO LEON NAICHE GERONIMO	1	7	85	1988-01-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231392	2013-08-12	2013-08-12	307013516	DIAZ TRUJILLO BENJAMIN	1	7	85	1991-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231393	2013-08-13	2013-08-13	30807841-9	DE LA ROSA GUDIÑO ABISAI ISRAEL	1	1	85	1990-05-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231394	2013-08-13	2014-02-17	306309764	SERNA JIMENEZ DANIEL ISAAC	1	1	85	1990-03-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231395	2013-08-13	2013-08-13	41000321-3	DOMINGUEZ BERMUDEZ MARIA ESTHER	1	1	80	1955-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231396	2013-08-13	2013-08-13	512020822	AGUILAR CALDERON PABLO ALFONSO	1	1	82	1985-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231397	2013-08-13	2014-08-18	41101433	ALMANZA COLORADO KETZALZIN	1	1	80	1992-07-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231398	2013-08-13	2013-08-13	307113427	HERNANDEZ MAYA MARIO ALBERTO	1	2	78	1991-06-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231399	2013-08-13	2013-08-13	308179262	MARQUEZ GARCIA JESUS	1	4	85	1992-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231400	2013-08-13	2013-08-13	513003923	HERNANDEZ GARCIA VERONICA	1	1	84	1987-02-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231401	2013-08-14	2016-08-23	309209003	OREJEL HERNANDEZ PABLO GERARDO	1	3	81	1993-06-11	M	f	5	apellido p	apellido m	nombres	0	none	none	0
231402	2013-08-14	2014-03-12	305334363	LUGO MALDONADO IVAN	1	1	85	1988-10-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231403	2013-08-14	2013-08-14	EECR560630	ESTEVEZ CURBELO REYNALDO ELISEO	2	6	78	1953-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231404	2013-08-14	2013-08-14	306665961	GONZALEZ LOPEZ DIANA  BERENICE	1	2	89	1989-08-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231405	2013-08-14	2013-08-14	309207607	MENDEZ MIRANDA KARLA MONTSERRAT	1	1	81	1993-12-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231406	2013-08-14	2013-08-14	308314940	LOPEZ SANCHEZ FABIOLA	1	3	84	1991-11-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231407	2013-08-14	2013-08-14	305256438	RODRIGUEZ GIL GONZALEZ DAVID	1	2	75	1989-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231408	2013-08-14	2013-08-14	SAAL560124	SALAS CRUZ ALFONSO	2	1	5	1956-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231409	2013-08-14	2013-08-14	407093685	ZAMORA ZARAGOZA JORGE	1	1	90	1987-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231410	2013-08-14	2013-08-14	30202188-8	GODINEZ HUERTA ANA LAURA	1	1	80	1986-11-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231411	2013-08-14	2013-08-14	307693392	ULLOA LOPEZ DANIEL ALEJANDRO	1	5	80	1991-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231412	2013-08-14	2013-08-14	310027472	FERNANDEZ HERMIDA ROBERTO	1	2	85	1994-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231413	2013-08-14	2014-08-08	512450881	LEIVA MATEUS JAIRO EDUARDO	1	1	114	1982-03-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231414	2013-08-14	2014-03-03	308339594	VEGA TORREBLANCA SOFIA	1	4	78	1992-10-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231415	2013-08-14	2013-08-14	923299006	FLORES PERALTA HECTOR	1	1	81	1975-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231416	2013-08-15	2013-08-15	409034642	LOPEZ SANTIAGO MARIBEL	1	4	83	1990-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231417	2013-08-15	2014-02-27	309014399	CORDERO RAMIREZ STEPHANIE BERENICE	1	4	84	1993-08-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231418	2013-08-15	2013-08-15	308071324	ANTONIO ISLAS ROCIO	1	1	84	1991-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231419	2013-08-15	2015-03-09	308176962	ESCOBAR BARRERA DAYRA	1	2	85	1992-12-28	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231420	2013-08-15	2013-08-15	311292808	RODRIGUEZ CARRILLO PRISCILA	1	2	80	1995-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231421	2013-08-15	2013-08-15	412082553	RODRIGUEZ TORRES EDUARDO	1	2	84	1988-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231422	2013-08-15	2017-01-31	GOMA661117	GONZALEZ MILLAN ARTURO	2	2	77	1966-11-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231423	2013-08-16	2013-08-16	413101703	VALTIERRA MARTINEZ ERNESTO	1	1	150	1976-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231424	2013-08-16	2013-08-16	308213630	NAVA MARIN MIGUEL ANGEL	1	2	85	1992-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231425	2013-08-16	2015-08-10	305293415	VARGAS QUIROZ LUIS FELIPE	1	1	85	1990-02-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231426	2013-08-16	2013-08-16	309047399	ALVAREZ OCAMPO ALFREDO	1	4	85	1993-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231427	2013-08-16	2013-08-16	4100132009	GARCIA VEGA EFRATAH	1	4	90	1991-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231428	2013-08-20	2013-08-20	306263550	OROPEZA ANDRADE ROBERTO CARLOS	1	1	85	1990-02-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231429	2013-08-20	2013-08-20	309244024	ESQUIVEL SEGURA MARIA LUISA	1	3	82	1993-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231430	2013-08-20	2013-08-20	308247390	RAMIREZ MAYO XIMENA	1	4	78	1992-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231431	2013-08-20	2014-02-25	412145126	MANTILLA PEÑA FELIPE GENARO	1	7	78	1987-07-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231432	2013-08-20	2013-08-20	309185459	GUADARRAMA GAYTAN ANDREA ZELTZIN	1	2	84	1993-08-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231433	2013-08-20	2013-08-20	306659447	KALINOVA JELEZOVA MARIELA	1	2	90	1989-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231434	2013-08-20	2013-08-20	BADE421113	BACHE ORTEGA EMELY	2	1	90	1942-11-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231435	2013-08-20	2013-08-20	311593222	GARCIA REYES JESUS DANIEL	1	7	84	1995-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231436	2013-08-20	2013-08-20	305131753	VILLANUEVA MENDEZ EDUARDO	1	1	90	1989-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231437	2013-08-20	2013-08-20	308098855	MORALES MENDEZ ADRIANA	1	1	79	1991-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231438	2013-08-20	2013-08-20	310208910	MARTINEZ LIMON ANDRES ALAN	1	1	81	1994-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231439	2013-08-20	2013-08-20	309292135	GOMEZ PEREZ LUIS ANGEL	1	3	84	1993-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231440	2013-08-20	2013-08-20	31015021-1	HERNANDEZ RUESGA DIANA ANGELICA	1	5	84	1994-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231441	2013-08-20	2013-08-20	97152347	ANGEL RODRIGUEZ MARIA DE JESUS	1	1	84	1981-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231442	2013-08-20	2013-08-20	306282542	NAVA MIRELES ALEJANDRA	1	3	78	1990-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231443	2013-08-20	2013-08-20	PAHA730212	PASOS HERNANDEZ ANA LAURA	3	5	49	1973-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231444	2013-08-20	2013-08-20	310093114	BAUTISTA GALICIA SERGIO	1	1	85	1994-11-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231445	2013-08-20	2013-08-20	309328133	VALLE GONZALEZ HUGO ALBERTO	1	1	85	1993-04-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231446	2013-08-20	2013-08-20	308309076	LEON GARCIA CRISTOBAL ANTONIO	1	2	86	1993-04-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231447	2013-08-20	2013-08-20	513003916	COMPEAN ORTIZ YADIRA	1	1	84	1983-11-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231448	2013-08-20	2013-08-20	411021256	PEREZ DI CASTRO DIEGO KIN	1	4	84	1992-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231449	2013-08-20	2013-08-20	304134380	CORDOVA MATIAS REYNALDO	1	1	85	1988-07-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231450	2013-08-20	2013-08-20	307181060	HERNANDEZ FLORES ALEJANDRA XOCHITL	1	3	80	1991-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231451	2013-08-20	2014-10-21	303557777	GALINDO GONZALEZ ANTONIO ALEJANDRO	1	2	84	1987-06-17	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231452	2013-08-21	2013-08-21	773227800	PEREZ MARTINEZ LEONARDO	1	3	82	1961-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231453	2013-08-21	2013-08-21	308244681	LINARES GARCIA SALVADOR	1	1	85	1992-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231454	2013-08-21	2013-08-21	308252958	LOVACO RODRIGUEZ DANIELA JHOVANA	1	5	85	1992-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231455	2013-08-21	2015-06-01	51220101	MORALES GARCIA CESAR CRISPIN	1	7	86	1986-10-10	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231456	2013-08-21	2013-08-21	307182816	MENDOZA NAVARRETE ANDREA JIMENA	1	4	80	1991-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231457	2013-08-21	2013-08-21	41215119	MILAN MONTOYA BRITANIA SARAI	1	1	78	1990-04-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231458	2013-08-21	2013-08-21	409003787	GUTIERREZ BARRIOS ROSALIA	1	1	85	1989-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231459	2013-08-21	2013-08-21	304626324	CHINCHILLA CORNEJO EDUARDO DAVID	1	1	80	1988-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231460	2013-08-21	2013-08-21	307072603	CARCAMO SALAZAR NATZALLI	1	1	89	1991-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231461	2013-08-21	2014-08-29	9722136-2	CARRASCO JUAREZ LILIANA IVONNE	1	2	84	1982-02-20	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231462	2013-08-21	2013-08-21	413026312	SANCHEZ LABASTIDA JORGE LUIS	1	7	86	1994-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231463	2013-08-22	2014-08-22	88070805	OAXACA CEBALLOS BARBARA	1	1	75	1972-03-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231464	2013-08-22	2015-08-13	307315580	REYES ALDANA HUGO ENRIQUE	1	4	79	1990-04-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231465	2013-08-22	2013-08-22	404056099	ZOLETTO LUYANDO OSCAR	1	4	84	1989-10-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231466	2013-08-22	2013-08-22	MOAX881106	MORALES ALCANTAR XOCHITL	2	1	80	1988-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231467	2013-08-22	2013-08-22	307114187	ANDRADE CEVADA CLAUDIA	1	2	80	1991-03-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231468	2013-08-22	2013-08-22	411040901	ROQUE MAYE MIGUEL ANGEL	1	3	84	1990-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231469	2013-08-22	2013-08-22	309146289	GUIZAR GARCIA MIGUEL ANGEL	1	1	79	1993-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231470	2013-08-22	2016-05-25	309152552	GONZALEZ GUTIERREZ SILVIA MARA	1	1	81	1992-07-17	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231471	2013-08-22	2013-08-22	308234523	RAMIREZ ALVARADO VANIA MARIA	1	5	84	1991-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231472	2013-08-23	2013-08-23	310325527	TORRES SANCHEZ BELEN	1	1	86	1994-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231473	2013-08-23	2013-08-23	307142618	NEGRETE MARQUEZ JOSE ANTONIO	1	1	85	1991-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231474	2013-08-23	2015-03-04	402103109	GUTIERREZ SOTELO ALFREDO MARTIN	1	2	85	1983-03-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231475	2013-08-23	2013-08-23	309031679	GARCIA SANCHEZ MARIO OMAR	1	5	90	1993-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231476	2013-08-23	2013-08-23	413007674	BAUTISTA GOMEZ ALFONSO	1	5	76	1994-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231477	2013-08-23	2015-02-16	510022686	CESPEDES MARTINEZ VALDEMAR	1	3	82	1970-04-19	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231478	2013-08-23	2013-08-23	306242203	RAYAS CEDILLO JOSE LUIS	1	3	81	1984-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231479	2013-08-23	2013-08-23	308287000	GALICIA GALLARDO ARTURO	1	1	84	1992-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231480	2013-08-23	2013-08-23	30727176-5	SARABIA SAMANIEGO DAMARIS VANESSA	1	1	85	1991-05-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231481	2013-08-23	2013-08-23	412069965	ALVARADO BAUTISTA LUIS ALBERTO	1	2	81	1993-04-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231482	2013-08-23	2013-08-23	309147183	LIMON GUEVARA DIANA ITZEL	1	2	81	1993-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231483	2013-08-23	2013-08-23	513012974	MENDEZ PEREZ BELEM GUADALUPE	1	5	80	1985-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231484	2013-08-26	2015-09-18	300287374	LOPEZ PACHECO OMAR	1	4	84	1984-04-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231485	2013-08-26	2015-10-27	309143611	NAVARRETE GOMEZ ITZEL ERENDIRA	1	3	78	1993-04-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231486	2013-08-26	2013-08-26	30728321	PEDRO ANGELES ALEJANDRA	1	3	90	1991-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231487	2013-08-26	2013-08-26	308617179	ALARCON ROBLES JUAN CARLOS	1	2	89	1991-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231488	2013-08-26	2013-08-26	714031391	FERNANDEZ MOTTA LIZETH ANDREA	1	4	85	1991-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231489	2013-08-26	2013-08-26	714032883	QUICENO BRAVO JUAN CAMILO	1	4	85	1992-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231490	2013-08-26	2013-08-26	3095744489	MARTINEZ MARTINEZ ROMAN	1	1	84	1993-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231491	2013-08-26	2014-05-06	30815846-5	HERNANDEZ FLORES KAREN	1	1	84	1990-11-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231492	2013-08-26	2014-09-08	309013347	BAÑOS CORDERO ERICK RUBEN	1	7	78	1993-08-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231493	2013-08-26	2013-08-26	307284941	SOBERANES MAYA DANIEL FERDINAND	1	2	85	1991-08-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231494	2013-08-26	2013-08-26	309171726	PEREZ MENDOZA MARIA DE LA LUZ	1	1	78	1993-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231495	2013-08-26	2013-08-26	308191042	RODRIGUEZ ZUÑIGA SANDRA LUCIA	1	1	84	1992-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231496	2013-08-26	2015-09-11	OIHC800823	OLIVARES HERNANDEZ CLAUDIA LORENA	3	3	150	1980-08-23	F	f	5	apellido p	apellido m	nombres	0	none	none	0
231497	2013-08-26	2015-08-12	REGG620329	REGUERA GUTIERREZ GABRIELA	1	5	7	1962-03-29	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231498	2013-08-27	2017-03-29	304696631	CARRILLO LUCIA MIGUEL ANGEL	1	3	85	1988-02-15	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231499	2013-08-27	2017-09-05	106002627	LOPEZ LARA KARLA ALINE	1	1	85	1993-01-28	F	f	4	apellido p	apellido m	nombres	0	none	none	0
231500	2013-08-27	2013-08-27	407065178	CONTRERAS ORTEGA ANA LAURA	1	3	84	1986-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231501	2013-08-27	2013-08-27	97135775	SALES ORTEGA SALVADOR RODRIGO	1	3	84	1981-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231502	2013-08-27	2013-08-27	308608946	ALCARAZ VADILLO MONICA	1	5	85	1992-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231503	2013-08-27	2013-08-27	304569784	RODRIGUEZ ROSALES YESSICA ALINA	1	1	90	1988-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231504	2013-08-27	2013-08-27	309049874	FLORES HERNANDEZ LUIS ANGEL	1	1	81	1993-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231505	2013-08-27	2013-08-27	309313403	TELLEZ HERNANDEZ ILSE ABIGAIL	1	1	89	1990-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231506	2013-08-27	2013-08-27	714030982	PALACIO PINO KATHERINE LINEY	1	2	85	1994-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231507	2013-08-28	2014-03-13	412045521	VACA VAZQUEZ LUIS FRANCISCO	1	4	84	1985-01-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231508	2013-08-28	2013-08-28	311333495	RIOS GONZALEZ ALEXANDRA	1	3	90	1994-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231509	2013-08-28	2013-08-28	31082654	MONROY TOVAR ANA LAURA	1	1	89	1994-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231510	2013-08-28	2013-08-28	311289718	CANTU BERNAL CLAUDIA ITZEL	1	1	89	1995-10-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231511	2013-08-28	2013-08-28	MEGL920511	MENDOZA GONZALEZ LUIS ALBERTO	3	2	7	1992-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231512	2013-08-28	2013-08-28	508007187	ANGULO NORIEGA GISELE	1	5	78	1983-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231513	2013-08-28	2013-08-28	308054848	IRINEO FRANCO ESTEFANIA	1	1	85	1991-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231514	2013-08-28	2013-08-28	411015646	AGUILAR RAMOS THANIA KARINA	1	2	80	1990-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231515	2013-08-28	2013-08-28	106001750	ESCAREÑO MARTINEZ ALEXIS ALAN	1	2	84	1987-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231516	2013-08-28	2013-08-28	41312111-8	RODRIGUEZ ESTUDILLO LUCERITO	1	1	82	1986-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231517	2013-08-29	2013-08-29	308015018	AVILES ZEPEDA BOLIVAR	1	2	82	1992-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231518	2013-08-29	2013-08-29	306006352-5	ALVAREZ VEGA ANA PATRICIA	1	2	84	1990-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231519	2013-08-29	2014-08-27	309062565	CASTRO MARTINEZ JOSE LUIS	1	2	78	1992-07-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231520	2013-08-29	2014-08-29	308692941	PEREZ BLANCO AVILES IVAN	1	2	73	1992-09-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231521	2013-08-29	2013-08-29	9722925-8	NICOLAS HERNANDEZ HERIBERTO	1	3	80	1980-03-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231522	2013-08-30	2015-02-11	308339477	CAMACHO MARCOS CECILIA NOHEMI	1	5	85	1992-05-08	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231523	2013-08-30	2013-08-30	VEPS551111	VELAZQUEZ PARDO SILVIA MARIA DEL CARMEN	2	2	81	1955-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231524	2013-08-30	2014-09-29	308038163	GONZALEZ CARVAJAL MARTHA KAREN	1	1	85	1992-12-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231525	2013-08-30	2015-08-24	30821401-5	ROMERO SANTAMARIA JULIO ALBERTO	1	1	78	1992-06-08	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231526	2013-08-30	2013-08-30	311238785	GARCIA MENDIETA RODRIGO	1	7	78	1994-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231527	2013-08-30	2013-08-30	AALL600605	AYALA LARA LAURA ELENA	2	1	84	1960-06-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231528	2013-08-30	2014-03-25	411005076	MEDINA DIAZ JUAN MANUEL	1	1	85	1992-01-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231529	2013-08-30	2013-08-30	513014961	GARZA RODRIGUEZ IVONNE GUADALUPE	1	2	78	1983-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231530	2013-09-02	2013-09-02	308295425	PALOMINO CORTES ANDONI	1	1	81	1991-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231531	2013-09-02	2013-09-02	4050823971	FLORES PEREZ RICARDO DANTON	1	1	79	1986-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231532	2013-09-02	2013-09-02	84354552	PEREGRINA MUCIÑO GIL	1	1	85	1965-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231533	2013-09-02	2014-04-01	308076240	DIAZ BECERRA JOSUE	1	1	84	1991-03-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231534	2013-09-02	2013-09-02	413023782	CHINO DE LA CRUZ JOSE LUIS	1	2	89	1993-02-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231535	2013-09-03	2015-02-03	7428027-4	SANCHEZ ROBLES BENITO ANTONIO	1	6	83	1959-03-21	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231536	2013-09-03	2013-09-03	310172967	LUA BERNAL KARLA GISELA	1	4	82	1993-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231537	2013-09-03	2013-09-03	412016127	PLATA COLIN LETICIA	1	1	89	1966-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231538	2013-09-03	2013-09-03	GUMM870605	GUTIERREZ MESTAS MISRAIM	2	2	79	1987-06-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231539	2013-09-03	2013-09-03	EUGG920626	EGUIA GARZA GABRIEL ALEJANDRO	1	4	90	1992-06-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231540	2013-09-03	2013-09-03	31001278-0	BASTIEN OLVERA ALEJANDRO	1	1	84	1993-07-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231541	2013-09-03	2013-09-03	309105833	GOMEZ GARDUÑO NAYELI	1	4	90	1993-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231542	2013-09-04	2013-09-04	30801113	GUTIERREZ RUIZ JUAN CARLOS	1	1	80	1992-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231543	2013-09-04	2013-09-04	309126434	DAHER MORENO NORA ELENA	1	1	89	1993-08-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231544	2013-09-04	2015-08-17	308341962	REYES ISLAS VIRIDIANA CAROLINA	1	4	84	1993-09-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231545	2013-09-04	2013-09-04	400060983	PALOMEQUE JIMENEZ MANUEL	1	4	82	1981-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231546	2013-09-04	2013-09-04	MUSE900528	MUÑOZ SANCHEZ ERICK IVAN	1	1	99	1990-05-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231547	2013-09-04	2016-02-18	30618941-0	MARTINEZ ROMERO MARIA DEL ROSARIO	1	1	84	1990-11-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231548	2013-09-04	2013-09-04	509015811	LAURA GUARACHI LEONARDO RAMIRO	1	1	79	1987-08-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231549	2013-09-05	2014-04-22	301056164	HERNANDEZ ONOFRE GABRIEL	1	4	90	1985-03-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231550	2013-09-05	2013-09-05	31028016	SEMO BECHET ILYA	1	2	84	1992-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231551	2013-09-06	2013-09-06	309208680	PEREZ CASTAÑEDA ALMA LETICIA	1	1	90	1992-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231552	2013-09-06	2013-09-06	306151886	BENITEZ GUZMAN PALMIRA	1	1	78	1984-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231553	2013-09-06	2013-09-06	306768275	MARTIN HERNANDEZ ILSE MARIANA	1	2	83	1990-12-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231554	2013-09-06	2013-09-06	310228727	ENRIQUEZ DIAZ BRISA ANAYATZIN	1	1	80	1994-02-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231555	2013-09-06	2014-08-20	308049998	BECERRIL RAMIREZ FATIMA	1	3	7	1992-10-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231556	2013-09-06	2015-02-18	40205426-9	RODRIGUEZ MUÑOZ LEDO ALVARO STEPHAN	1	2	81	1981-03-25	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231557	2013-09-09	2013-09-09	309209230	PEÑA ALARCON GIOVANNA LIZEL	1	2	81	1993-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231558	2013-09-09	2013-09-09	GIHM780426	GHINIS HOZUMI MIKI SOFIA	1	7	8	1978-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231559	2013-09-09	2013-09-09	41309582-8	TAFOYA VARGAS JUAN SALVADOR	1	4	79	1994-01-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231560	2013-09-10	2013-09-10	302240513	ARANGO RODRIGUEZ CHIRSTIAN RAMON	1	5	150	1985-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231561	2013-09-10	2013-09-10	310172015	MORALES PEREZ YAMILE ALICIA	1	1	84	1994-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231562	2013-09-10	2013-09-10	407065563	RODRIGUEZ NOLASCO OSCAR	1	1	79	1987-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231563	2013-09-10	2013-09-10	413009915	MENDEZ DELGADO JOSE EDUARDO	1	4	79	1994-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231564	2013-09-10	2013-09-10	9433630-6	MEZA EGANTE ADOLFO	1	2	84	1977-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231565	2013-09-10	2015-09-17	309025241	AGUILAR ALTAMIRANO VALERIA	1	2	84	1993-07-20	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231566	2013-09-10	2013-09-10	30801063-5	GARCIA BLANCAS ARANTXA ELIZABETH	1	4	82	1991-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231567	2013-09-10	2016-02-22	513005862	OLVERA GRANADOS ZAIDA V.	1	4	84	1983-08-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231568	2013-09-11	2013-09-11	OIPA570705	OSTRIA PARTIDA HERLINDA	2	2	25	1957-07-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231569	2013-09-11	2013-09-11	LEFG580412	LEGARRETA FADRIQUE MA. GUADALUPE	3	1	32	1958-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231570	2013-09-11	2013-09-11	714003661	RENOVATO RIVERA REMMY	1	2	82	1991-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231571	2013-09-11	2013-09-11	306173666	ARREDONDO ELISEA ULISES DAINZU	1	1	83	1990-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231572	2013-09-12	2013-09-12	513005714	AVILES SAYAS JAVIER ORLANDO	1	4	85	1988-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231573	2013-09-12	2013-09-12	412062605	UREIRO CUETO GUADALUPE DEL CARMEN	1	1	88	1992-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231574	2013-09-12	2018-03-06	414028948	PIÑA MELENDEZ CAROLINA	1	3	84	1991-02-27	F	t	4	apellido p	apellido m	nombres	0	none	none	0
231575	2013-09-12	2015-02-17	300262445	VALLE GARCIA SUSANA ESTELA	1	1	84	1984-07-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231576	2013-09-12	2015-08-14	304295289	VAZQUEZ SILVA ANAID	1	1	83	1988-05-19	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231577	2013-09-12	2013-09-12	307042594	HERNANDEZ JIMENEZ THALIA OLIVIA	1	4	81	1990-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231578	2013-09-12	2013-09-12	407010556	ORTIZ GUADARRAMA MANUEL	1	1	85	1987-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231579	2013-09-12	2013-09-12	303162423	CASTILLO RENDON YASAHET ODELIT	1	1	85	1986-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231580	2013-09-13	2013-09-13	309103406	DOMINGUEZ CARBAJAL DAVID ERNESTO	1	5	84	1992-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231581	2013-09-13	2016-05-02	311169478	ARROYO PEREZ LORENA	1	2	84	1994-03-24	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231582	2013-09-17	2013-09-17	51401543	VICTORIA MARTINEZ CESAR	1	1	75	1987-05-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231583	2013-09-17	2013-09-17	310280554	MALDONADO ZAMORA ABRAHAM FRANCISCO	1	3	84	1993-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231584	2013-09-17	2013-09-17	304151323	IBARRA CASTILLO SOFIA	1	1	85	1987-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231585	2013-09-18	2014-05-08	412109304	LOPEZ ESPINDOLA MARIBEL	1	3	84	1975-03-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231586	2013-09-18	2013-09-18	309184005	QUINTANA ARELLANO DULCE MARIA	1	4	81	1992-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231587	2013-09-18	2013-09-18	30618415-4	REYES BARRON EDUARDO	1	1	83	1990-01-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231588	2013-09-19	2013-09-19	309255165	MARTINEZ OROZCO ALAN RICARDO	1	1	80	1992-09-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231589	2013-09-19	2013-09-19	309182386	JIMENEZ MONTES ALEJANDRO	1	1	80	1993-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231590	2013-09-19	2013-09-19	306138188	JIMENEZ RIOJA ULISES ALEJANDRO	1	1	85	1991-05-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231591	2013-09-19	2013-09-19	30725952	MERCADO MONROY GIOVANNI	1	1	90	1991-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231592	2013-09-20	2013-09-20	514351203	RIVERA PEREZ JOSE ERNESTO	1	1	78	1983-09-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231593	2013-09-20	2013-09-20	300155381	LOPEZ URIBE NATHALY SELENE	1	1	78	1984-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231594	2013-09-20	2013-09-20	513006948	RAMIREZ FERREIRO JESUS	1	2	84	1984-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231595	2013-09-20	2014-05-22	3042693-4	TELLEZ PEREZ ROXANA	1	1	90	1988-01-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231596	2013-09-23	2013-09-23	308315703	MARTINEZ SANCHEZ HIPOLITO FERNANDO	1	1	85	1991-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231597	2013-09-23	2013-09-23	513010592	DIAZ HERRERA PABLO RENE	1	5	90	1989-05-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231598	2013-09-24	2013-09-24	302854891	VEGA DE LA MORA LUIS ALBERTO	1	1	81	1986-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231599	2013-09-24	2013-09-24	307186168	CARRILLO SALGADO AUGUSTO FERNANDO	1	2	82	1990-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231600	2013-09-25	2015-08-17	311268272	TORRES PEÑALOZA JOSUE JAIR	1	1	85	1994-12-15	M	f	3	apellido p	apellido m	nombres	0	none	none	0
231601	2013-09-25	2013-09-25	408056412	SANDOVAL CAMACHO RICARDO JOSE	1	2	86	1988-08-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231602	2013-09-25	2013-09-25	309350411	IBARRA ESCOBEDO AMARANTA	1	1	84	1994-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231603	2013-09-25	2013-09-25	512450647	LAVERDE BARAJAS MIGUEL ANGEL	1	1	102	1985-09-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231604	2013-09-25	2014-03-28	307290104	VELEZ VASQUEZ SANDRA NOHEMI	1	5	84	1992-01-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231605	2013-09-25	2013-09-25	307017569	CASTRO TORRES RICARDO BALAM	1	5	84	1991-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231606	2013-09-26	2015-03-05	302072464	PEREZ RAMIREZ DANIEL	1	6	84	1986-06-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231607	2013-09-26	2013-09-26	306083947	FLORES TORRES EDUARDO IVAN	1	2	80	1990-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231608	2013-09-26	2013-09-26	306136957	CORONA CADENAS MARIO ALBERTO	1	1	85	1990-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231609	2013-09-26	2013-09-26	308155701	SORIANO RAMIREZ CLAUDIA RUTH	1	7	90	1992-08-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231610	2013-09-26	2014-05-30	304154317	ROMERO ARAGON RODOLFO JESUS	1	2	113	1988-06-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231611	2013-09-30	2013-09-30	8531532-3	ROJAS ORTIZ GABRIELA	1	2	76	1968-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231612	2013-09-30	2013-09-30	309161754	MEIXUEIRO ALVAREZ DAPHNE CAROLINA	1	4	85	1992-11-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231613	2013-10-01	2013-10-01	412031159	PALOMINO BECERRIL GUADALUPE GABRIELA	1	1	82	1969-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231614	2013-10-01	2013-10-01	411042266	ALANIS VARGAS FRANCISCO EMILIANO	1	5	78	1992-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231615	2013-10-01	2013-10-01	309016290	ENRIQUEZ VEGA MELISSA ARACELI	1	7	85	1993-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231616	2013-10-01	2013-10-01	306233733	SANCHEZ GOMEZ ROXANA MAYELA	1	1	84	1989-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231617	2013-10-01	2013-10-01	306222063	MARQUEZ ANDRADE ALFREDO	1	1	80	1990-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231618	2013-10-01	2013-10-01	408015475	OCHOA MANRIQUE ALETHIA ERANDI	1	3	84	1989-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231619	2013-10-01	2013-10-01	308183218	MORALES VILLEDA ALBERTO	1	6	81	1992-02-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231620	2013-10-01	2013-10-01	GOVM730330	GONZALEZ VERGARA MARIANNE	1	1	7	1973-03-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231621	2013-10-03	2013-10-03	NAPA780309	NAJERA PEREZ ALEJANDRO	3	1	84	1978-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231622	2013-10-03	2015-08-11	SOSA620216	SOLIS SOTO ANA JULIETA	3	1	150	1962-02-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231623	2013-10-03	2013-10-03	413078452	LOPEZ HERNANDEZ ANDRES	1	1	83	1992-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231624	2013-10-03	2013-10-03	1713476255	SILVA REINOSO ANAIS BELEN	1	1	81	1984-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231625	2013-10-03	2013-10-03	308246843	PORTILLO LICONA LAURA MONTSERRAT	1	1	84	1992-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231626	2013-10-03	2013-10-03	412117664	AVENDAÑO ELIGIO EDITH ESTEPHANY	1	5	76	1989-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231627	2013-10-03	2013-10-03	309000484	ASOMOZA PONCE JUAN CARLOS	1	1	85	1993-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231628	2013-10-03	2013-10-03	306583007	LOPEZ ALEMAN KAREN	1	1	80	1990-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231629	2013-10-03	2013-10-03	3055855723	RAMOS BUENO ARTURO	1	6	84	1988-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231630	2013-10-03	2015-08-21	308062452	CONTRERAS ALVAREZ ENRIQUE	1	7	76	1988-02-19	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231631	2013-10-03	2013-10-03	31006989-4	CALDERON EMIGDIO FERNANDO	1	7	85	1994-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231632	2013-10-04	2013-10-04	514010894	RODRIGUEZ REYES CRISTIAN EFRAIN	1	1	85	1987-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231633	2013-10-04	2013-10-04	311300165	PEREZ TORIBIO JENNIFER BEATRIZ	1	1	78	1995-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231634	2013-10-07	2013-10-07	CABS630813	CASTILLO BRENA MARIA SOLEDAD	3	1	7	1963-08-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231635	2013-10-07	2013-10-07	411020778	RAMOS HERRERA SOLEDAD	1	1	78	1992-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231636	2013-10-07	2015-10-08	QUIC700315	QUINTANA TERUEL CLAUDIA GUADALUPE	1	6	7	1970-03-15	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231637	2013-10-07	2013-10-07	30027723	ZARATE MIRAMONTES OSCAR SERGIO	1	1	84	1984-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231638	2013-10-07	2013-10-07	31114523-0	MORENO ARCINIEGA JOSUE	1	4	80	1994-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231639	2013-10-07	2013-10-07	309039046	BERTRAND MARES INGRID	1	1	85	1993-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231640	2013-10-07	2013-10-07	306084528	GARCIA BENAVIDEZ DAVID	1	1	79	1989-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231641	2013-10-07	2013-10-07	307526670	PRIETO DEHESA ALEJANDO	1	5	82	1991-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231642	2013-10-08	2013-10-08	307163192	TORRES MONDRAGON ITZAE ALEJANDRO	1	6	80	1991-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231643	2013-10-08	2013-10-08	306157912	MELENDEZ JIMENEZ FRANCISCO	1	1	78	1990-03-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231644	2013-10-08	2013-10-08	308035461	ENRIQUEZ ALCARAZ ANA IRIS	1	1	78	1992-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231645	2013-10-08	2013-10-08	308187412	HERNANDEZ AGUILAR MONICA	1	7	80	1992-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231646	2013-10-08	2013-10-08	TUTI880226	THUILLIER TIPHAINE	1	7	7	1988-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231647	2013-10-09	2013-10-09	309123938	MARTINEZ GUTIERREZ LILIA PRAXEDES	1	2	90	1993-03-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231648	2013-10-09	2013-10-09	307274429	MORALES ZUÑIGA VICTOR HUGO	1	6	82	1991-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231649	2013-10-11	2013-10-11	311242889	GUERRERO RODRIGUEZ BRYAN	1	1	84	1994-01-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231650	2013-10-11	2013-10-11	30130127-5	VALDEZ MORENO BEATRIZ	1	1	7	1985-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231651	2013-10-11	2013-10-11	305131100	TORRES NIETO MARIA DEL REFUGIO	1	1	90	1989-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231652	2013-10-11	2013-10-11	410054136	DEL CASTILLO CACHO GUILLERMO	1	1	85	1988-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231653	2013-10-11	2013-10-11	308008229	BERNABE GALVAN IGNACIO	1	4	78	1991-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231654	2013-10-11	2013-10-11	310223131	RAMIREZ DIAZ FRANCISCO DANIEL	1	7	78	1993-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231655	2013-10-11	2015-01-27	309223656	RAMIREZ DIAZ GUSTAVO MIGUEL	1	1	81	1992-09-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231656	2013-10-11	2013-10-11	30582129-2	MORALES LOYOLA SERGIO	1	1	82	1989-05-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231657	2013-10-14	2013-10-14	TWGH731027	TEJEDA GUERRERO HECTOR EDUARDO	1	1	77	1973-10-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231658	2013-10-14	2013-10-14	306154289	CARRILLO JUAREZ DAVID	1	4	90	1990-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231659	2013-10-14	2013-10-14	GAAE501222	GARIN AGUILAR MARIA EUGENIA	2	1	150	1950-12-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231660	2013-10-14	2013-10-14	307172435	HERNANDEZ GONZALEZ LEOBARDO	1	1	81	1989-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231661	2013-10-14	2014-10-09	414046641	YAÑEZ ALCANTAR RUBEN	1	1	84	1963-10-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231662	2013-10-15	2013-10-15	305303305	BUSTAMANTE FERNANDEZ JESUS EMMANUEL	1	1	84	1989-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231663	2013-10-15	2013-10-15	301125426	ENRIQUEZ GARCIA RODRIGO	1	1	85	1985-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231664	2013-10-15	2013-10-15	311268708	SIERRA ROMERO DAVID	1	7	85	1995-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231665	2013-10-15	2014-10-16	310284631	JAIMES MARTINEZ CRISTHIAN	1	1	79	1994-09-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231666	2013-10-16	2016-08-23	310016379	ALVAREZ REYES REBECA EUNICE	1	2	80	1994-12-29	F	f	3	apellido p	apellido m	nombres	0	none	none	0
231667	2013-10-16	2013-10-16	306232815	PINA ROSAS NAYELI JAZMIN	1	4	85	1990-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231668	2013-10-17	2015-10-27	414009578	OTA HERNANDEZ MITSUNORI DAVID	1	4	89	1994-01-27	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231669	2013-10-17	2013-10-17	409079089	FLORES CARDENAS NELLY MICHELLE	1	2	86	1989-12-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231670	2013-10-17	2013-10-17	307013413	DE LA O POZOS TANIA IVONNE	1	2	80	1990-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231671	2013-10-17	2013-10-17	308219993	RIOS CORDOVA ANA CRISTINA	1	1	80	1992-03-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231672	2013-10-17	2014-10-03	307179317	RIVERA SANCHEZ EMILY YOSELIN	1	3	80	1991-09-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231673	2013-10-17	2013-10-17	309091024	GUADARRAMA MARTINEZ LOURDES GABRIELA	1	1	81	1993-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231674	2013-10-17	2013-10-17	99315621	TOVAR GARCIA DIANA GUADALUPE	1	1	82	1983-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231675	2013-10-18	2013-10-18	714032072	BRENNAN PATRICK BOWEN	1	6	84	1993-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231676	2013-10-18	2013-10-18	303284695	TOVAR GUADARRAMA XOCHIPILLI	1	5	80	1987-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231677	2013-10-18	2013-10-18	311169382	AZPEITIA MAYA ALDO	1	4	90	1995-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231678	2013-10-18	2013-10-18	307043317	BONILLA BALDERAS VANESSA	1	5	79	1991-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231679	2013-10-18	2013-10-18	305209290	RICO JIMENEZ MARCO BENNY KOTEER	1	1	82	1989-08-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231680	2013-10-18	2013-10-18	41308898-1	PALACIOS LIMON LORENA	1	5	83	1989-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231681	2013-10-21	2014-11-14	411147196	TOVAR ESCORCIA EDER MOISES	1	1	80	1986-04-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231682	2013-10-21	2013-10-21	309272902	SEGOVIA PEREZ JUANA ALEJANDRA	1	3	85	1993-01-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231683	2013-10-21	2013-10-21	304245899	SANDOVAL LOPEZ ANGEL ALEJANDRO	1	1	82	1988-08-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231684	2013-10-21	2013-10-21	108000588	CORTES DEL PRADO JORGE ROBERTO	1	6	80	1995-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231685	2013-10-21	2013-10-21	308105809	ROCHA HERNANDEZ ALI MONSERRAT	1	2	90	1992-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231686	2013-10-23	2013-10-23	303283296	PELAEZ GOMEZ HECTOR MANUEL	1	1	83	1987-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231687	2013-10-24	2013-10-24	310326672	VALENCIA MARTINEZ KARLA	1	1	86	1993-11-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231688	2013-10-24	2013-10-24	41000393	ROCHA DEL CASTILLO MARIA JOSE	1	2	84	1990-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231689	2013-10-25	2014-05-20	309054281	HERNANDEZ MUÑOZ CESAR	1	2	90	1993-05-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231690	2013-10-25	2013-10-25	309677046	CRUZ VILLALBA PABLO	1	2	84	1993-02-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231691	2013-10-28	2013-10-28	301016399	AGUILAR GALICIA EDITH	1	1	86	1985-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231692	2013-10-28	2013-10-28	303234353	SOLANO TEMPLOS GISEL	1	1	101	1987-04-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231693	2013-10-29	2013-10-29	514351447	BARRAGAN LEON ANDREA NATALIA	1	2	84	1980-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231694	2013-10-29	2013-10-29	310279884	DELGADO PIMENTEL RICARDO	1	6	83	1992-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231695	2013-10-29	2013-10-29	409003639	NAVA ROSALES GILBERTO ANTONIO	1	1	84	1990-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231696	2013-10-29	2013-10-29	304245583	SERRANO ENSASTIGA EDUARDO	1	4	96	1988-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231697	2013-10-30	2013-10-30	307046035	CALDERON QUINTANA DIEGO	1	1	86	1991-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231698	2013-10-30	2015-08-14	307046042	CALDERON QUINTANA EDGAR	1	1	85	1991-02-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
231699	2013-10-31	2013-10-31	30608661-8	LARRUZ JIMENEZ MARTHA GEORGINA	1	2	80	1990-08-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231700	2013-10-31	2013-10-31	30629185-4	IBARRA ESCOBEDO SACBE ALFONSINA	1	6	89	1991-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231701	2013-10-31	2013-10-31	307145949	CALDERON ESPIRITU CARLOS ABRAHAM	1	1	79	1991-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231702	2013-11-04	2014-05-21	305036964	AVILES BORGES AGATA ARACELY	1	2	84	1989-03-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231703	2013-11-05	2013-11-05	307260095	OTERO GUZMAN VERONICA	1	1	84	1990-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231704	2013-11-05	2013-11-05	30726282-4	PEREZ CARDENAS AIDEE BERENICE	1	1	82	1990-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231705	2013-11-05	2013-11-05	307545167	OROZCO VILLEGAS ELSA LUCIA	1	4	84	1990-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231706	2013-11-06	2013-11-06	310191007	BUSTOS VAZQUEZ CINTHYA DAFNE	1	1	89	1993-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231707	2013-11-07	2013-11-07	304233823	MARTINEZ DE LA CRUZ GERARDO	1	5	84	1984-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231708	2013-11-08	2014-09-17	307252931	SANCHEZ SANCHEZ DULCE SANDRA	1	1	78	1991-06-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
231709	2013-11-11	2013-11-11	304502859	ARCE GONZALEZ ALAIDE MARINA	1	6	79	1988-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231710	2013-11-14	2013-11-14	GORH581104	GONZALEZ REZA HECTOR GERARDO	2	2	85	1958-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
231711	2013-11-15	2013-11-15	306059713	SEGURA MARTINEZ ANA LAURA	1	2	81	1990-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231712	2013-11-25	2013-11-25	407061802	FIGUEROA VILLANUEVA CATALINA	1	1	90	1987-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
231713	2013-11-28	2015-09-07	309006644	LUCAS RAMIREZ JOAN MANUEL	1	1	90	1993-06-25	M	f	4	apellido p	apellido m	nombres	0	none	none	0
231714	2013-11-28	2013-11-28	309008552	CASTRO HERNANDEZ ALEJANDRA DANAE	1	1	86	1993-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240825	2014-01-27	2014-01-27	306045949	DELGADO AGUILLON JESUS	1	2	85	1990-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240826	2014-01-27	2014-01-27	MALB671002	MATA LAMAS BEATRIZ	2	1	85	1967-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240827	2014-01-27	2014-01-27	30924011-2	LUNA OSUNA JURASSI	1	7	90	1992-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240828	2014-01-27	2014-01-27	310336493	VARGAS URBINA CELIA CARMEN	1	1	84	1994-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240829	2014-01-27	2018-04-26	308210718	INCLAN PRADO NANCY ABIGAIL	1	7	84	1991-09-12	F	t	3	apellido p	apellido m	nombres	0	none	none	0
240830	2014-01-27	2014-01-27	413002394	REGALADO FERNANDEZ LUIS ANDRES	1	1	81	1994-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240831	2014-01-27	2014-01-27	309606859	GOMEZ MONJARAS CESAR ALFREDO	1	1	81	1992-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240832	2014-01-27	2014-01-27	308059867	ARMENTA GARCIA LUZ ABRIL	1	5	84	1991-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240833	2014-01-27	2016-09-09	309039981	DE LA CRUZ TORRES JOAQUIN MANUEL	1	1	82	1993-05-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240834	2014-01-27	2014-01-27	305765831	TORRES GONZALEZ DANIEL	1	1	79	1988-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240835	2014-01-27	2014-01-27	408036605	GONZALEZ RAMIREZ IXCHEL SARAHI	1	5	101	1988-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240836	2014-01-27	2014-01-27	303002545	DEL OLMO GIL ANDRES	1	4	85	1987-12-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240837	2014-01-27	2014-01-27	307505969	CHAVEZ MARTINEZ YEMILE DEL SOCORRO	1	5	79	1991-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240838	2014-01-27	2014-01-27	410033865	CERDIO PEÑA ANTONIA MERCEDES	1	5	81	1990-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240839	2014-01-27	2014-01-27	309348634	ZEA HERNANDEZ CONCEPCION ELENA	1	1	80	1992-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240840	2014-01-27	2014-01-27	306690996	MUNGUIA RODRIGUEZ FERNANDO	1	5	83	1990-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240841	2014-01-27	2015-02-12	310205359	GOMEZ BALDERAS ISAAC	1	1	81	1993-12-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240842	2014-01-28	2014-11-18	308219735	RODRIGUEZ GAMIÑO RAUL ERNESTO	1	3	81	1992-08-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240843	2014-01-28	2014-01-28	30011010-2	HERNANDEZ AVILES DULCE ALINE	1	3	78	1988-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240844	2014-01-28	2014-01-28	98339471	BOOL RUIZ CARLOS ROBERTO	1	1	84	1982-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240845	2014-01-28	2015-09-21	305051398	HERNANDEZ ROJAS JOSE ALFONSO	1	7	90	1989-09-28	M	f	3	apellido p	apellido m	nombres	0	none	none	0
240846	2014-01-28	2014-01-28	VEGV830325	DE LA VEGA SHIOTA GONZALEZ VANIA	2	7	80	1983-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240847	2014-01-28	2015-02-04	414006041	CRESPO LOPEZ ALEJANDRO DAVID	1	4	85	1994-11-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240848	2014-01-28	2014-01-28	412007334	GUTIERREZ TREJO LUIS GERARDO	1	1	85	1990-12-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240849	2014-01-28	2014-01-28	307275787	RIOS CRUZ ABIGAIL	1	1	83	1991-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240850	2014-01-28	2014-01-28	304139299	GONZALEZ CASTRO JESSICA BELEN	1	1	79	1988-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240851	2014-01-28	2014-01-28	41212225-3	GONZALEZ PERALTA ERIC	1	1	81	1988-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240852	2014-01-28	2014-08-26	8220897-8	VELASCO SAN JUAN RICARDA ISABEL	1	1	84	1966-02-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240853	2014-01-28	2014-09-03	308038228	GUZMAN BECERRIL ISAAC	1	2	79	1992-07-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240854	2014-01-28	2016-02-16	309328353	VILCHIS GARCIA ARACELI	1	1	90	1993-08-27	F	f	3	apellido p	apellido m	nombres	0	none	none	0
240855	2014-01-28	2014-01-28	411010108	CUEVAS QUIÑONEZ SANTIAGO ALEJANDRO	1	4	82	1988-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240856	2014-01-28	2014-01-28	PALL501107	PARRAO Y LOPEZ LAURA ELENA	2	4	93	1950-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240857	2014-01-28	2014-01-28	414038446	MARTINEZ ALARCON JESUS	1	7	83	1982-04-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240858	2014-01-28	2014-01-28	310109659	ORTEGA LAZCANO LUIS ARTURO	1	5	84	1994-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240859	2014-01-28	2014-01-28	305123754	AVILES SUAREZ KARLA GEORGINA	1	1	90	1989-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240860	2014-01-29	2014-01-29	409068230	URIOSTEGUI FIGUEROA ILIAN CARMI	1	1	90	1992-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240861	2014-01-29	2014-01-29	308754706	LOPEZ GONZALEZ ANA LAURA	1	2	84	1991-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240862	2014-01-29	2015-08-21	302026395	RIVERA SUAREZ ILSE DARINKA	1	2	84	1986-05-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240863	2014-01-29	2014-01-29	305614777	HERNANDEZ SANTOS NESTOR	1	4	85	1988-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240864	2014-01-29	2014-01-29	310299141	RAMIREZ BAZAN CHRISTIAN ANTONIO	1	1	84	1994-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240865	2014-01-29	2014-01-29	41116210	PONCE PINEDA  ILIAN GIORDANO	1	4	90	1992-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240866	2014-01-29	2014-01-29	30831916-5	SANCHEZ JIMENEZ DANIEL OMAR	1	2	87	1992-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240867	2014-01-29	2014-01-29	30833652-4	HERNANDEZ SAN AGUSTIN SUSANA	1	1	87	1990-08-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240868	2014-01-29	2014-01-29	8526468-5	MEDINA GONZALEZ MARIA CONCEPCION	1	4	82	1969-12-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240869	2014-01-29	2014-01-29	411101721	JUAREZ VILLALBA MELISSA MARGARITA	1	1	83	1992-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240870	2014-01-29	2014-01-29	306141632	MARTINEZ HERNANDEZ JHOVANI	1	2	90	1991-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240871	2014-01-30	2014-01-30	308190753	TORRES ANAYA ITZEL CAROLINA	1	4	80	1992-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240872	2014-01-30	2014-01-30	513008911	MARTINEZ FRANCO IRAN	1	1	82	1980-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240873	2014-01-30	2014-01-30	300209680	SEVERIANO BADILLO ALFREDO	1	4	85	1987-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240874	2014-01-30	2014-01-30	309198264	JUAREZ CONTRERAS REBECA	1	1	79	1992-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240875	2014-01-30	2016-02-03	308225101	PINEDA ROMERO GABRIELA MONTSERRAT	1	4	90	1992-09-26	F	f	4	apellido p	apellido m	nombres	0	none	none	0
240876	2014-01-30	2014-01-30	51401662-1	GUZMAN ARIAS ANDREA PATRICIA	1	1	95	1983-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240877	2014-01-30	2015-08-10	310283249	YAÑEZ ROA BERENICE	1	2	86	1994-05-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240878	2014-01-30	2014-01-30	306305072	GUTIERREZ OSORNIO LUIS ARMIN	1	1	85	1989-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240879	2014-01-30	2014-01-30	308303555	VILLALOBOS DIAZ MARIO ALBERTO	1	4	79	1992-04-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240880	2014-01-30	2014-01-30	414001871	ESTRADA GORDILLO NOEL	1	1	90	1994-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240881	2014-01-30	2014-01-30	31063514	TRUJILLO FERNANDEZ JACQUELINE	1	5	80	1993-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240882	2014-01-30	2014-01-30	401060319	QUIROZ ESTRADA VERONICA	1	5	83	1983-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240883	2014-01-30	2016-11-09	307189516	MOTA MONTOYA MARGARITA ABIGAIL	1	4	84	1991-02-22	F	f	6	apellido p	apellido m	nombres	0	none	none	0
240884	2014-01-30	2014-01-30	309593401	BASULTO MEJIA JESSICA LORENA	1	3	88	1992-04-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240885	2014-01-30	2014-01-30	408008387	BARRUETA GALLARDO OMAR	1	1	85	1987-12-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240886	2014-01-30	2014-01-30	GAOA720316	GARZA ORTIZ ARIADNA	2	2	90	1972-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240887	2014-01-30	2015-08-20	593012455	OLIVEROS ESPINOSA RODOLFO GABRIEL	1	5	84	1983-04-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240888	2014-01-30	2014-01-30	411089243	KURY EGUIARTE DANIELA MICHELLE	1	3	78	1989-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240889	2014-01-30	2015-08-11	311343601	MARTINEZ TORRES FERNANDO ADOLFO	1	2	81	1994-03-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240890	2014-01-30	2014-01-30	79516336	GARCIA TORRES RENE	1	2	7	1953-09-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240891	2014-01-30	2014-01-30	307165550-5	LOPEZ LEON JOSE ANTONIO	1	7	73	1991-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240892	2014-01-30	2014-01-30	309263865	OLVERA ARROYO ESTRELLA CELESTE	1	1	84	1993-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240893	2014-01-30	2014-01-30	412001466	RAZ-GUZMAN MACEDO MIGUEL	1	4	79	1972-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240894	2014-01-31	2014-01-31	306641280	ALVAREZ PUTTZIS EFREN ABRAHAM	1	4	83	1990-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240895	2014-01-31	2016-10-18	311131040	MORALES RIVERA ANGELICA ASTRID	1	1	83	1994-12-15	F	f	4	apellido p	apellido m	nombres	0	none	none	0
240896	2014-01-31	2014-01-31	311181681	CAMPOS LOPEZ DIANA ELIZABETH	1	1	83	1995-10-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240897	2014-01-31	2014-01-31	310041397	MEDINA LOPEZ ADRIANA PAOLA	1	1	78	1994-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240898	2014-01-31	2014-01-31	308183562	PINEDA LUNA JESUS EDMUNDO	1	6	78	1992-05-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240899	2014-01-31	2014-01-31	310513397	FREYERMUTH CORONA MIGUEL ANGEL	1	4	90	1994-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240900	2014-01-31	2014-01-31	307168953	LOPEZ ROJANO CARLOS DANIEL	1	4	78	1991-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240901	2014-01-31	2014-01-31	308233203	ROMAN CUEVAS MELISSA AURORA	1	1	90	1991-09-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240902	2014-02-04	2014-08-08	310107411	GARCIA HERNANDEZ FRANCISCO JAVIER	1	1	85	1994-04-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240903	2014-02-04	2014-08-14	413119599	ROJAS BARCENAS ELSA ITZET	1	4	80	1993-04-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240904	2014-02-04	2014-08-25	308221354	GONZALEZ VILLALOBOS INGRID MAGALI	1	4	84	1992-12-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240905	2014-02-04	2014-02-04	310330958	VELASCO ORTIZ SABINA INAMI	1	1	90	1994-03-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240906	2014-02-04	2014-02-04	309004437	CRUZ HERNANDEZ ERANDIN VICTORIA	1	6	89	1993-10-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240907	2014-02-04	2014-02-04	308009109	ESPINOSA DELGADO CRISTHIAN EMMANUEL	1	4	85	1992-10-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240908	2014-02-04	2014-08-18	40805564-2	ORTEGA YAÑEZ ANDREA	1	7	7	1990-01-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240909	2014-02-04	2014-02-04	30730955-4	SEGURA CRUZ GUILLERMO ALBERTO	1	4	73	1991-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240910	2014-02-04	2014-02-04	309338318	VASQUEZ SERRANO ITZEL	1	1	90	1993-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240911	2014-02-04	2017-04-20	414076530	TREJO SOSA MINERVA	1	4	84	1988-03-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240912	2014-02-04	2014-02-04	303222222	MANDUJANO FLORES LAURA VIRGINIA	1	1	73	1987-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240913	2014-02-04	2015-02-16	414007196	VILLEGAS COBIX ANIEL DE JESUS	1	1	85	1995-03-25	M	f	3	apellido p	apellido m	nombres	0	none	none	0
240914	2014-02-04	2014-02-04	411090274	MARTINEZ JIMENEZ IVAN EMANUEL	1	1	90	1992-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240915	2014-02-04	2014-02-04	409019689	PEREZ PONCE SANDRA	1	1	86	1988-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240916	2014-02-04	2015-10-29	309101897	ARANA PEREZ VERONICA ELSY	1	3	84	1993-06-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240917	2014-02-04	2014-02-04	99583842	PALMA FLORES CARLOS	1	1	105	1980-05-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240918	2014-02-05	2014-02-05	30612103-8	ISLAS GARCIA NAYELI	1	1	85	1990-01-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240919	2014-02-05	2014-02-05	GONO840911	GOMEZ NERI OSCAR OCTAVIO	2	1	85	1984-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240920	2014-02-05	2014-02-05	FOCI850112	GONZALEZ CASTILLO IGNACIO DAVID	2	1	85	1985-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240921	2014-02-05	2014-08-11	413078153	CUAUTLE MARTINEZ OSCAR	1	3	82	1994-08-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240922	2014-02-05	2014-02-05	407012323	BARBOSA SANCHEZ JORGE TAVARE	1	5	80	1982-05-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240923	2014-02-05	2014-02-05	412051571	LEON VARGAS EDGAR	1	1	85	1990-09-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240924	2014-02-05	2014-02-05	308181300	HERNANDEZ VILLAGRANA KAREN ORLENE	1	1	90	1992-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240925	2014-02-06	2014-02-06	307255970	GONZALEZ SANTOS CARLA LETICIA	1	1	90	1991-11-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240926	2014-02-06	2014-02-06	307555995	PEREZ TREJO JAQUELINE	1	2	84	1991-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240927	2014-02-06	2016-08-22	85526705	RUIZ TOVAR LUIS RENE	1	2	84	1965-06-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240928	2014-02-06	2014-02-06	CUSD880912	CRUZ SANCHEZ DONAJI ELIZABETH	2	4	84	1988-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240929	2014-02-06	2014-02-06	9910743-9	GONZALEZ CHAVIRA DAVID	1	4	83	1978-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240930	2014-02-06	2014-02-06	307179575	DANIEL MARTINEZ NORMA ANGELICA	1	2	78	1991-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240931	2014-02-06	2014-02-06	307088512	DEL VILLAR ALCANTARA ERICK GABRIEL	1	2	82	1991-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240932	2014-02-06	2014-02-06	309325967	TORRES LEON EDUARDO	1	1	81	1993-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240933	2014-02-06	2014-02-06	406013059	ALEJANDRO GONZALEZ CARLOS ANTONIO	1	2	90	1987-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240934	2014-02-06	2014-02-06	413006653	FLORES ELJURE ISAAC	1	1	83	1994-10-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240935	2014-02-06	2014-02-06	CACM880215	CASTRO CRUZ MONICA DEL CARMEN	2	4	77	1988-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240936	2014-02-06	2014-02-06	30918954-3	GONZALEZ RUANO JESUS SALVADOR	1	3	79	1993-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240937	2014-02-06	2014-02-06	308022395	CRUZ GARCIA MARTHA ELVIA	1	3	78	1991-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240938	2014-02-06	2014-02-06	309216634	ROSAS CHACON ANA ERIKA	1	1	82	1990-01-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240939	2014-02-07	2014-02-07	311021253	CORTEZ CASTELLANOS YONATAN EDEN	1	4	84	1995-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240940	2014-02-07	2014-10-24	408093413	ROMAN SANCHEZ ALEJANDRO	1	3	79	1989-01-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240941	2014-02-07	2014-02-07	307506643	TREJO POO ALEJANDRA	1	4	79	1991-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240942	2014-02-07	2014-02-07	310017644	CANELA ABDALA CARLOS RODRIGO	1	1	85	1994-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240943	2014-02-07	2014-02-07	309105338	LOPEZ BAHENA ANDREA JAZMIN	1	3	79	1993-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240944	2014-02-07	2014-02-07	309231783	DE LA ROSA CARREON DANIELA SOFIA	1	6	85	1993-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240945	2014-02-07	2015-02-13	51300150-3	ARIAS Y CASTREJON PABLO SERGIO	1	3	84	1986-01-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240946	2014-02-07	2014-02-07	309007029	MONTIEL ROSALES JAVIER	1	1	85	1993-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240947	2014-02-07	2014-02-07	309032119	LOERA VILLEDA EUGENIA GABRIELA	1	4	85	1993-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240948	2014-02-10	2014-02-10	308241161	MORALES SAAVEDRA DANIELA	1	5	78	1992-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240949	2014-02-10	2014-02-10	308055216	LUNA VELAZQUEZ ERIK MICHEL	1	2	84	1992-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240950	2014-02-10	2016-08-22	308048623	CASTILLO GOMEZ DALIA	1	3	84	1992-12-22	F	f	3	apellido p	apellido m	nombres	0	none	none	0
240951	2014-02-10	2014-08-21	412058147	ZEPAHUA JIMENEZ JONATAN	1	4	85	1990-01-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240952	2014-02-10	2014-02-10	412082546	RAMIREZ CISNEROS MADAI	1	1	84	1993-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240953	2014-02-10	2014-02-10	313096791	MORALES ESTRADA ABRAHAM	1	4	80	1992-03-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240954	2014-02-10	2014-02-10	AUSR680617	ALQUICIRA SAHAGUN ROSA AURORA	3	1	70	1968-06-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240955	2014-02-10	2014-02-10	102004296	PLATA ALBA IVONNE	1	2	84	1989-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240956	2014-02-10	2014-09-22	310034481	CORTES MURILLO EMIR JAFET	1	5	79	1994-09-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240957	2014-02-10	2014-02-10	310266206	VELASCO FIGUEROA MONSERRAT EZBEIDY	1	2	79	1994-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240958	2014-02-10	2014-02-10	308013849	BARRIOS TORRES JEOVANY	1	7	85	1991-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240959	2014-02-10	2014-02-10	314004844	CANO CONDE JORGE LUIS	1	2	85	1987-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240960	2014-02-11	2014-02-11	310258276	PAZ RODRIGUEZ MARIA FERNANDA	1	7	80	1994-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240961	2014-02-11	2014-02-11	309137221	MARTINEZ PINEDA STEPHANI YAZMIN	1	1	84	1993-01-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240962	2014-02-11	2014-02-11	306125634	OSORIO YAÑEZ REBECA NAYELY	1	1	90	1990-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240963	2014-02-11	2014-02-11	309326342	SANCHEZ VACA NALLELY ESMERALDA	1	1	84	1993-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240964	2014-02-11	2014-02-11	307027342	AVILA GARCIA CESAR	1	1	78	1991-05-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240965	2014-02-11	2014-02-11	514351155	MANZANO HOYOS CRISTY JOHANNA	1	1	85	1985-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240966	2014-02-11	2014-02-11	SAMA900723	SANDOVAL MUÑOZ ANGELICA ISABEL	1	3	76	1990-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240967	2014-02-11	2014-02-11	307058104	GONZALEZ MORALES JOEL	1	2	85	1991-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240968	2014-02-11	2014-02-11	412002487	GARCIA VILLA MAYRA	1	1	85	1993-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240969	2014-02-12	2014-02-12	304827648	CEJA ROJAS THALIA MARIANA	1	5	89	1988-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240970	2014-02-12	2014-09-25	413025920	ESPONDA NIETO CARLOS FRANCISCO	1	3	84	1984-09-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240971	2014-02-12	2014-02-12	40401758-7	SILVA GRACIDA ELIZABETH	1	1	87	1986-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240972	2014-02-12	2014-02-12	80801621-1	AYALA GONZALEZ JUAN DE DIOS	1	1	79	1992-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240973	2014-02-12	2014-02-12	309009281	CRUZ RODRIGUEZ DAVID LEONARDO	1	1	79	1992-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240974	2014-02-12	2014-02-12	307076271	CASTILLO OLGUIN JORGE	1	2	82	1989-06-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240975	2014-02-12	2014-09-02	413053327	SALCEDO GARCIA MARTIN ULISES	1	3	81	1993-11-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240976	2014-02-12	2014-02-12	107003627	REYES RIVERA PATRICIA	1	4	81	1992-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240977	2014-02-14	2014-02-14	309076463	CHAVEZ REYES ANDREA MARIANA	1	1	89	1992-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240978	2014-02-14	2014-02-14	309226077	VEGA ROJAS CRISTINA	1	2	82	1993-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240979	2014-02-14	2014-02-14	306266685	MARTINEZ NUÑEZ LAURA MICHELLE	1	1	84	1990-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240980	2014-02-14	2014-02-14	CAPL801125	CHAVEZ PEREZ LUIS MANUEL	2	1	87	1980-11-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240981	2014-02-14	2014-02-14	30901182-4	HERRERA MARTINEZ LUIS FERNANDO	1	3	82	1992-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240982	2014-02-14	2014-02-14	412071821	CRUZ ESTEBAN SALVADOR	1	1	83	1993-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240983	2014-02-14	2014-02-14	310150390	MARTINEZ NAVA TERESA ANGELICA	1	4	84	1994-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240984	2014-02-14	2014-02-14	306183353	ORTIZ BARAJAS KARLA VERONICA	1	1	80	1990-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240985	2014-02-14	2014-02-14	414057957	ROLDAN VALENCIA ENRIQUE PROSPERO	1	3	84	1990-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240986	2014-02-14	2014-02-14	309031019	FARFAN PAREDES MARCOS	1	1	85	1993-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240987	2014-02-14	2014-02-14	307014063	FLORES GUTIERREZ VERONICA	1	5	85	1991-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240988	2014-02-14	2014-02-14	MACD820509	MATATAGUI CRUZ DANIEL	1	1	150	1982-05-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240989	2014-02-17	2014-02-17	30602326-2	MIRANDA ZARATE GUSTAVO	1	5	84	1987-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240990	2014-02-17	2014-02-17	HELJ710428	HERNANDEZ LEON MARIA DE JESUS	2	5	79	1971-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240991	2014-02-17	2014-02-17	305149484	ROMERO ESCALANTE VICTOR FERNANDO	1	1	82	1989-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240992	2014-02-17	2014-09-22	309267753	SANCHEZ LIRA MARIANA GABRIELA	1	7	78	1993-01-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240993	2014-02-17	2014-02-17	310005661	LABASTIDA GONZALEZ NICOLE ALEXIS	1	4	80	1994-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240994	2014-02-17	2014-02-17	308043068	OLIVOS LARA DANIEL	1	1	85	1992-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240995	2014-02-17	2014-02-17	GASA861212	GARCIA SAAVEDRA ALEJANDRO JOSE	3	1	7	1986-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
240996	2014-02-17	2014-02-17	99326023	SANCHEZ SEGURA TANIA ARGELIA	1	4	89	1984-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
240997	2014-02-17	2015-08-11	CAHD791025	CALDERON HERNANDEZ DALILAH	3	4	45	1979-10-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
240998	2014-02-17	2015-08-18	308012392	ANGULO ANGELES DANIEL ALEJANDRO	1	7	85	1991-01-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
240999	2014-02-17	2015-08-18	308032185	LOERA VILLEDA ADRIANA GUADALUPE	1	7	85	1992-04-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241000	2014-02-17	2014-02-17	86608394	SORIANO JIMENEZ OCTAVIA	1	1	89	1965-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241001	2014-02-18	2014-02-18	310651419	GABUTTI ALARCON LUIS	1	2	84	1994-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241002	2014-02-18	2014-02-18	304064791	GARCIA MENDIETA JAVIER	1	1	82	1988-08-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241003	2014-02-18	2014-02-18	406111454	QUIROZ LOPEZ EVELYN GUADALUPE	1	1	79	1987-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241004	2014-02-18	2014-02-18	307296663	VEGA SERVIN MARTHA REYNA	1	1	79	1992-05-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241005	2014-02-18	2014-02-18	MOGS901204	MORENO GARCIA JOSE SEALTIEL	1	7	8	1990-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241006	2014-02-18	2014-02-18	HEDA861225	HERNANDEZ DAMIAN ANA LILIA	2	3	79	1986-12-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241007	2014-02-18	2014-02-18	304107502	FLORES GOMEZ ELIZABETH KARINA	1	1	73	1988-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241008	2014-02-19	2014-02-19	307188856	HERNANDEZ SANCHEZ ENRIQUE	1	1	81	1991-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241009	2014-02-19	2014-02-19	CURD890924	DE LA CRUZ RAMIREZ DIANA LIZBETH	2	1	86	1989-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241010	2014-02-19	2014-10-28	512010458	GARCIA DOMINGUEZ MARICELA	1	1	90	1985-04-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241011	2014-02-19	2014-02-19	41207255-0	JIMENEZ CAMARILLO NOEL	1	1	83	1993-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241012	2014-02-19	2018-03-08	307510077	TURRENT CORTES JOANA SIRIANRIT	1	7	90	1990-10-25	F	t	4	apellido p	apellido m	nombres	0	none	none	0
241013	2014-02-19	2015-10-09	PEVA860627	PERALTA VERDIGUEL ALEXANDRA GUADALUPE	2	4	84	1986-06-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241014	2014-02-19	2014-02-19	308285075	SOSA EHNIS INGRID MARGARITA	1	4	73	1991-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241015	2014-02-19	2017-08-22	311308109	ISLAS CADENA GUSTAVO ADOLFO	1	2	80	1995-01-07	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241016	2014-02-19	2014-02-19	307212599	RUVALCABA RODRIGUEZ JOANNA MONTSERRAT	1	6	84	1991-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241017	2014-02-19	2014-02-19	300092945	ANDRADE CANALES ISRAEL	1	2	79	1985-03-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241018	2014-02-19	2014-02-19	SATN760116	SANCHEZ TORRES NORMA YANET	2	2	79	1976-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241019	2014-02-19	2017-09-12	LOSE750708	LOPEZ SANCHEZ ERICK JAVIER	2	2	79	1975-07-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241020	2014-02-20	2014-02-20	412000445	GRANADOS BAEZ MARISSA	1	2	79	1993-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241021	2014-02-20	2014-02-20	310062723	CELIS GONZALEZ DIANA CECILIA	1	1	81	1992-06-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241022	2014-02-21	2014-02-21	305109822	JUAREZ MANSILLA CARLOS LEONARDO	1	1	79	1988-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241023	2014-02-21	2014-02-21	309628206	BRITO LUVIANO ANA KAREN	1	2	90	1993-08-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241024	2014-02-21	2015-10-27	309145615	GARCIA ROJAS OSCAR ALEXIS	1	5	80	1993-09-15	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241025	2014-02-24	2014-02-24	307259882	PEREZ FLORES MIGUEL	1	1	79	1991-05-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241026	2014-02-24	2014-02-24	411078858	ALVAREZ MILLAN RASHID ALFREDO	1	1	85	1991-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241027	2014-02-24	2014-02-24	411071749	ORTEGA SOTO JESSICA	1	5	76	1992-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241028	2014-02-24	2014-02-24	412070965	GARCIA AYALA ESTEFANY	1	1	81	1993-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241029	2014-02-24	2014-02-24	PEAE890914	PEREZ AVALOS EDER ALAN	1	3	7	1989-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241030	2014-02-24	2015-06-01	306037610	ORANDAY MUÑOZ DANIEL	1	7	85	1990-08-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241031	2014-02-24	2014-02-24	407020377	MARTINEZ REYES MIGUEL ANGEL	1	1	85	1989-04-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241032	2014-02-25	2014-02-25	412031465	BENITEZ COLIN DIEGO	1	4	80	1987-04-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241033	2014-02-25	2016-08-19	308321203	SALAZAR GOMEZ MARIANA	1	3	78	1992-06-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241034	2014-02-25	2014-02-25	410061798	GUTIERREZ RUIZ GERMAN	1	4	78	1989-08-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241035	2014-02-25	2014-02-25	308041404	ANDRADE YEDRA CESAR ENRIQUE	1	3	88	1992-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241036	2014-02-25	2014-02-25	304074880	PEREZ BARCELO CYNTHIA TATY	1	1	84	1988-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241037	2014-02-25	2014-10-24	303848765	HERNANDEZ DIAZ HECTOR FERNANDO	1	5	84	1987-05-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241038	2014-02-26	2014-02-26	311035254	GOMEZ GORDILLO LEONEL	1	4	84	1995-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241039	2014-02-26	2014-02-26	309703161	SANCHEZ TAPIA JESSICA DENISSE	1	1	82	1993-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241040	2014-02-26	2014-02-26	512015570	SOLIS CARMONA PAULINA	1	1	79	1987-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241041	2014-02-26	2014-02-26	301782092	SANCHEZ CERVANTES ALEJANDRO	1	1	79	1985-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241042	2014-02-26	2014-02-26	409012776	LOPEZ GOMEZ EDGAR TEZCATZIN	1	4	85	1987-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241043	2014-02-26	2014-02-26	SUCC830811	SUAREZ DE LA CRUZ CARLOS DAVID	2	2	83	1983-08-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241044	2014-02-26	2014-02-26	311315541	SALGADO GILES JESUS HUMBERTO	1	1	85	1995-03-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241045	2014-02-26	2014-02-26	412044885	VALDES VILLASEÑOR EDWIN	1	3	84	1990-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241046	2014-02-27	2014-02-27	COOM790128	CORDOBA ORTUÑO MIGUEL ANGEL	1	1	79	1979-01-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241047	2014-02-27	2014-02-27	308303304	VIDAL OSTRIA JONATHAN DANIEL	1	4	81	1993-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241048	2014-02-27	2015-09-07	309111319	CASTRO SANCHEZ LEONARDO ABIGAIL	1	2	84	1993-04-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241049	2014-02-27	2017-02-03	310101684	CASAS BENITEZ RUBEN	1	1	88	1994-11-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241050	2014-02-27	2014-02-27	CAMF820201	CHAVEZ MAYA FERNANDO	2	1	87	1982-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241051	2014-02-27	2014-02-27	402110273	CERVANTES VALENCIA MARIA EUGENIA	1	1	87	1982-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241052	2014-02-28	2014-02-28	310158248	RODRIGUEZ CABRERA EDWIN XCHEL	1	1	86	1993-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241053	2014-02-28	2014-02-28	714006497	LEON ALCOCER EVA	1	1	81	1987-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241054	2014-02-28	2014-02-28	83093333	MOLINA CARREÑO JULIO	1	1	81	1969-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241055	2014-02-28	2014-02-28	304160312	SANDOVAL SILVA CLAUDIA TONANTZI	1	1	79	1989-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241056	2014-02-28	2014-02-28	311203248	RODRIGUEZ GARDUÑO XARENI	1	1	89	1995-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241057	2014-02-28	2014-02-28	310280987	MARAVILLA AUPART GABRIELA ALITZEL	1	1	84	1994-10-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241058	2014-03-03	2014-03-03	308273528	JUAREZ GONZALEZ EDUARDO	1	1	78	1990-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241059	2014-03-03	2014-03-03	306218880	CRUZ ESCARCEGA ALAN GERARDO	1	5	85	1990-05-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241060	2014-03-03	2016-10-21	310337524	VIDAL MENDOZA DIANA KAREN	1	5	84	1994-03-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241061	2014-03-03	2014-03-03	201420028	LOBATOS FERNANDEZ ARMIDA FALASHAS	1	3	82	1993-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241062	2014-03-03	2014-03-03	307155674	SANCHEZ LEONEL IVAN	1	1	85	1991-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241063	2014-03-03	2014-03-03	309003076	GUDIÑO ALVARADO JESUS RUBEN	1	7	84	1992-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241064	2014-03-03	2014-03-03	309289959	HERNANDEZ RODRIGUEZ ARELI ALICIA	1	4	79	1993-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241065	2014-03-03	2014-03-03	309072795	BOJORQUEZ COVARRUBIAS GIOVANNI DANIEL	1	1	83	1993-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241066	2014-03-03	2014-03-03	41279195	PEREZ VICTORIA SINUE PERSEO	1	4	80	1991-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241067	2014-03-04	2015-03-11	306039566	SANTIAGO REYES SERGIO ANTONIO	1	7	84	1989-05-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241068	2014-03-04	2014-03-04	30903267-6	AMAYA SALAZAR FERNANDA	1	1	80	1992-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241069	2014-03-04	2014-03-04	9828845-8	MORALES ESPINOZA ERIC GUADALUPE	1	1	90	1982-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241070	2014-03-04	2014-03-04	HERF830225	HERNANDEZ ROBLES FRANCISCO	1	1	7	1983-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241071	2014-03-04	2014-03-04	308071094	AGUILAR ZUÑIGA SHARON	1	1	79	1992-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241072	2014-03-04	2015-02-17	NABH561116	NAVARRO BARRANCO HORTENSIA	2	2	86	1956-11-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241073	2014-03-04	2014-03-04	308098532	MAYEN ESQUIVEL ARACELI ADRIANA	1	1	80	1991-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241074	2014-03-04	2014-03-04	413001892	MENDIVIL ROIZ MIGUEL ALBERTO	1	5	80	1994-01-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241075	2014-03-04	2014-03-04	300304385	CARDELAS GOMEZ GERARDO	1	2	113	1984-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241076	2014-03-05	2014-03-05	311191048	MURADAS SANDIN LUIS EDUARDO	1	4	78	1994-11-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241077	2014-03-05	2014-03-05	305345150	AYALA TREJO BRAULIO	1	7	80	1979-03-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241078	2014-03-05	2014-03-05	201420073	CELY SOLER ROXANA	1	2	82	1997-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241079	2014-03-05	2014-09-05	OIFE801124	ORTIZ FUENTES EDMUNDO RAFAEL	3	4	150	1980-11-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241080	2014-03-06	2014-03-06	30702470-5	BARRIENTOS ANAYA VERONICA GUADALUPE	1	2	80	1991-06-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241081	2014-03-06	2014-03-06	MAMM870830	MACIAS MEDINA MINERVA BERENICE	1	7	81	1987-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241082	2014-03-06	2014-09-09	307233626	BACA SANCHEZ DIANA ROCIO	1	1	84	1991-11-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241083	2014-03-06	2014-03-06	411081199	CHAVARRIA MARTINEZ ELVIA	1	1	80	1992-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241084	2014-03-06	2014-03-06	309049702	CHO LIM SO YUNG	1	1	80	1993-01-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241085	2014-03-06	2017-03-22	SAGJ890611	SANTIZO GALICIA JESSICA	2	1	79	1989-06-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241086	2014-03-06	2014-03-06	308184246	RUIZ REYES AYRTON DANIEL	1	1	81	1992-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241087	2014-03-10	2014-03-10	304170968	ALVARADO RIOS PAOLA ARACELI	1	1	79	1988-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241088	2014-03-10	2014-03-10	414009073	LOZANO MENDEZ KAREN	1	4	79	1993-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241089	2014-03-10	2014-03-10	305118189	NOGUEZ TINOCO ALMA TERESA	1	1	76	1989-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241090	2014-03-10	2014-03-10	307081661	GALINDO MARTINEZ ADAN	1	4	85	1990-04-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241091	2014-03-10	2014-03-10	304339865	GONZALEZ GAYTAN EDGAR JESUS	1	1	85	1988-06-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241092	2014-03-10	2014-03-10	51435311	CORREDOR GUTIERREZ IVONNE ALEXANDRA	1	1	85	1991-02-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241093	2014-03-10	2014-03-10	309343828	VILLANUEVA MENDOZA MIRIAM IRAI	1	1	78	1993-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241094	2014-03-10	2014-03-10	9806395-8	PEREZ LOPEZ ROMAN ARMANDO	1	7	80	1982-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241095	2014-03-10	2014-03-10	413131815	ORTIZ MONDRAGON JESUS EMMANUEL	1	3	82	1990-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241096	2014-03-10	2014-03-10	310035512	GUTIERREZ FELIPE PAOLA MONTSERRAT	1	1	78	1994-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241097	2014-03-10	2014-03-10	309319498	RAMIREZ BAZAN VALERIA	1	2	84	1993-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241098	2014-03-10	2014-03-10	98116975	JIMENEZ ZUÑIGA MARIA ALEJANDRA	1	1	93	1982-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241099	2014-03-10	2014-03-10	306263581	PEÑA DE LA PAZ ANDREA	1	1	78	1990-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241100	2014-03-10	2014-03-10	308610840	MATA ALBA DIEGO RAYMUNDO	1	2	84	1992-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241101	2014-03-10	2014-03-10	30202676-6	ORTEGA OROZCO MARLENE	1	1	89	1986-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241102	2014-03-10	2014-03-10	307126957	CONTRERAS LUNA JOSE DIEGO	1	3	78	1990-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241103	2014-03-10	2014-03-10	309014887	CARDENAS OCAMPO ADRIANA	1	4	84	1992-11-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241104	2014-03-10	2014-03-10	304639407	VIDAL SANCHEZ ANGELICA	1	6	80	1988-05-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241105	2014-03-10	2014-03-10	310019985	AGUSTIN LOVERA NANCY BEATRIZ	1	3	79	1994-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241106	2014-03-10	2014-03-10	VAFG530221	VALENCIA FLORES MARIA GLORIA	2	1	88	1953-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241107	2014-03-11	2014-03-11	302014109	SANCHEZ HERNANDEZ LETICIA	1	5	84	1986-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241108	2014-03-11	2014-03-11	306270459	HERNANDEZ GARCIA PATRICIA	1	2	83	1990-01-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241109	2014-03-11	2014-03-11	41131233	PADILLA PULIDO EMMANUEL	1	2	84	1987-09-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241110	2014-03-11	2014-03-11	SAPN620227	SANCHEZ PEÑA NORMA	3	1	86	1962-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241111	2014-03-11	2014-03-11	ROPA631206	ROBLES PEÑALOZA ALBERTO DOMINGO	3	1	150	1963-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241112	2014-03-11	2014-03-11	DOAP820323	DONJUAN AGUNDIS PERLA XOCHITL	3	1	150	1982-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241113	2014-03-11	2014-03-11	311153301	DEL MORAL CAÑEDO CESAR EMILIANO	1	4	78	1995-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241114	2014-03-12	2014-03-12	310234492	DE LA CRUZ DE LA CRUZ DARIO RODRIGO	1	1	90	1994-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241115	2014-03-12	2014-03-12	VIAE730904	VILLEGAS AGUILAR EVELYN	2	2	75	1973-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241116	2014-03-12	2014-03-12	311194458	REYES MORALES JESUS NEILL	1	1	85	1995-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241117	2014-03-12	2014-03-12	311125887	GUTIERREZ FELIPE KAREN GABRIELA	1	1	85	1995-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241118	2014-03-12	2014-03-12	30112514-6	CALDERON DE LOS RIOS AMERICA ALEJANDRA	1	1	80	1984-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241119	2014-03-13	2014-03-13	413003937	RAMIREZ RIVERA ALVARO FAUSTINO	1	4	85	1994-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241120	2014-03-13	2014-03-13	310289351	VAZQUEZ LUNA MAURICIO	1	1	85	1992-11-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241121	2014-03-13	2015-08-31	411016241	MUÑOZ HERNANDEZ SELENE SARAI	1	1	85	1991-10-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241122	2014-03-13	2014-03-13	304601464	JASSAN MARTINEZ BRENDA	1	1	84	1987-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241123	2014-03-14	2014-03-14	308256200	GUTIERREZ MAGAÑA SANDRA JAZMIN	1	2	85	1992-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241124	2014-03-14	2014-03-14	307523150	DE LUNA BERRONES ANTONIO	1	2	86	1990-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241125	2014-03-14	2018-08-29	304162907	BLANCAS ALVAREZ ANDY	1	1	85	1988-08-12	M	t	2	apellido p	apellido m	nombres	0	none	none	0
241126	2014-03-14	2015-02-17	309105376	LEYVA RAMIREZ ERICK EDDY	1	4	90	1993-11-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241127	2014-03-14	2014-03-14	96533886	CRUZ CARDENAS JULIO CESAR	1	1	115	1975-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241128	2014-03-18	2015-02-26	308000577	CANDAS VEGA RICARDO	1	4	79	1992-05-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241129	2014-03-18	2015-04-08	309032597	AYALA CALVA MARIANA SARAI	1	1	80	1993-03-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241130	2014-03-18	2014-03-18	311082193	SANTIBAÑEZ MENDEZ ADA	1	3	84	1994-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241131	2014-03-18	2014-03-18	309565183	GARCIA CALDERON PRISCILA	1	1	90	1993-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241132	2014-03-18	2014-03-18	303086949	SANCHEZ VELASCO ROBERTO	1	1	81	1987-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241133	2014-03-18	2014-03-18	9930224-9	SMITH ALFARO ALINE NAYELI	1	1	80	1983-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241134	2014-03-19	2014-03-19	410005389	REYES RODRIGUEZ CELESTE	1	4	85	1991-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241135	2014-03-19	2014-03-19	310192664	EPITACIO SIERRA ALEJANDRA	1	5	84	1994-12-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241136	2014-03-20	2014-03-20	108000416	CRUZ LOPEZ CLAUDIA	1	1	83	1995-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241137	2014-03-20	2016-02-19	414000960	REYES JUAREZ DIANA FATIMA	1	1	83	1994-09-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241138	2014-03-20	2014-03-20	311056367	ROCHA GUTIERREZ ABRAHAM	1	1	83	1995-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241139	2014-03-20	2014-03-20	310149895	LICEA ACEVEDO XOCHITL	1	5	80	1994-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241140	2014-03-21	2015-09-18	413089517	DOMINGUEZ MATEOS IRVING	1	3	80	1993-06-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241141	2014-03-21	2014-03-21	310049056	FUENTES ROMERO JESSICA EUNICE	1	5	80	1994-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241142	2014-03-25	2014-03-25	93188212	PEREZ FERNANDEZ MARLENE	1	1	85	1976-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241143	2014-03-25	2016-08-12	51001902	JACOME AVILES JOSE ANTONIO	1	3	82	1979-05-20	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241144	2014-03-26	2014-03-26	310008947	CORREA NIETO CORDOVA JUAN ALBERTO	1	1	82	1994-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241145	2014-03-26	2014-03-26	310330965	VELAZQUEZ GUERRERO KATYA ARACELI	1	2	80	1994-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241146	2014-03-26	2014-03-26	309339061	YESCAS MENDOZA ILSE VIRIDIANA	1	7	80	1992-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241147	2014-03-26	2014-03-26	94059333	SANCHEZ ALEJO MARCO ANTONIO	1	1	98	1978-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241148	2014-03-26	2014-03-26	310134086	SALCEDO HIDALGO ITZEL	1	5	78	1993-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241149	2014-03-26	2015-01-27	308051782	GARCIA FRANCO JULIETA	1	2	82	1991-12-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241150	2014-03-26	2015-04-07	506015403	GARCIA RAZO CESAR RICARDO	1	4	80	1974-10-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241151	2014-03-27	2014-03-27	311292808	RODRIGUEZ CARRILLO PRISCILA	1	2	80	1995-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241152	2014-03-27	2017-10-11	RORR620114	DE LA ROSA RAMIREZ RUTH	3	1	61	1962-01-14	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241153	2014-03-27	2014-03-27	310305301	SERRANO PIÑA ATZIN MONTSERRAT	1	5	80	1993-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241154	2014-03-27	2014-03-27	BOSL800904	BONILLA SANCHEZ JOSE LEONARDO	2	5	7	1980-08-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241155	2014-03-31	2015-01-26	9226579	GONZALEZ CHAVEZ RICARDO	1	1	83	1976-06-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241156	2014-03-31	2014-03-31	413089823	DOMINGUEZ ORDAZ YATZIN	1	2	84	1993-05-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241157	2014-03-31	2014-03-31	409088102	DORANTES ZUÑIGA RICARDO	1	7	85	1990-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241158	2014-03-31	2014-10-15	309114970	VELASCO PICHARDO MARIA BIAANNI	1	2	79	1992-10-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241159	2014-03-31	2014-03-31	412048742	MARTINEZ OLAVE ANA MIREYA	1	2	84	1964-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241160	2014-03-31	2015-04-13	41013289-6	GONZALEZ CRUZ FRANCISCO DANIEL	1	4	79	1990-09-06	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241161	2014-04-01	2014-04-01	410039678	MEJIA LEONIDES ERNESTO IGNACIO	1	1	85	1991-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241162	2014-04-01	2014-04-01	409014505	TEOFILO LOPEZ AURIEL	1	1	90	1989-09-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241163	2014-04-01	2016-02-25	305246222	PICON MEJIA FANNY THALIA	1	6	85	1989-04-19	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241164	2014-04-01	2014-04-01	31095610	HERNANDEZ AVILA KARLA	1	1	84	1994-12-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241165	2014-04-01	2014-04-01	411000631	DIAZ VILLA VICTOR RUBEN	1	1	81	1988-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241166	2014-04-03	2015-03-18	307199038	PONCE DE LEON MATA ESTEFANY	1	4	78	1991-05-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241167	2014-04-03	2014-04-03	513001565	DE LA ROSA ZAPATA AURORA REBECA	1	5	84	1983-04-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241168	2014-04-04	2014-04-04	311028393	CRUZ ALANIS TANIA PAMELA	1	1	78	1995-07-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241169	2014-04-04	2014-04-04	309025258	AGUILAR LOPEZ ANA MARLEN	1	6	84	1993-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241170	2014-04-04	2014-04-04	307005146	CORTES SAUCEDO PAOLA SHANTAL	1	1	84	1991-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241171	2014-04-04	2015-10-01	309017369	AVENDAÑO MATIAS NANCY	1	2	78	1992-11-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241172	2014-04-07	2014-04-07	305710563	GONZALEZ SANCHEZ  DANIEL SEBASTIAN	1	1	90	1987-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241173	2014-04-07	2014-04-07	512021142	GONZALEZ LOPEZ ANABEL YAZMIN	1	3	7	1981-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241174	2014-04-07	2014-04-07	309182740	JIMENEZ MARTINEZ KENIA CELESTE	1	1	81	1994-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241175	2014-04-07	2014-04-07	412076376	BECERRA SUAREZ EMMANUEL	1	5	81	1991-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241176	2014-04-07	2014-04-07	310679442	BALDERAS PLIEGO MARIANA	1	5	89	1994-12-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241177	2014-04-09	2014-04-09	301291165	DOMINGUEZ DELGADO YARENI ANNALIE	1	3	84	1984-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241178	2014-04-09	2014-04-09	75691756	RIOS SILVA ROSA MARIA	1	1	89	1954-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241179	2014-04-09	2014-04-09	510020448	CARRILLO FLORES ELISA	1	1	86	1982-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241180	2014-04-09	2014-04-09	TEJF910301	TENORIO JUAREZ FREDY	1	2	7	1991-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241181	2014-04-09	2014-04-09	OERM850723	ORTEGA RAMIREZ MIRIAM PATRICIA	2	1	79	1985-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241182	2014-04-09	2014-04-09	31039380	MONROY BERSOZA MARIO ULISES	1	5	84	1994-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241183	2014-04-09	2015-01-30	413040323	SALMERON BECERRA MANUEL IVAN	1	2	85	1993-02-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241184	2014-04-10	2015-02-10	308149957	ROBLEDO RODRIGUEZ MITZIN MELLALI	1	2	84	1992-07-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241185	2014-04-10	2014-04-10	309034144	DE LA ROSA OLIVARES SUEMY DINAY	1	1	76	1993-03-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241186	2014-04-21	2014-04-21	306318674	ROMO CASTAÑEDA ESTELA	1	6	80	1989-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241187	2014-04-21	2014-04-21	303287074	PAREDES SOTO MARIA PATRICIA	1	3	7	1987-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241188	2014-04-21	2014-04-21	309343873	VAZQUEZ HERNANDEZ LUIS ENRIQUE	1	7	83	1992-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241189	2014-04-22	2014-04-22	309161620	LOPEZ HERRERA ABRIL ITZEL	1	1	84	1993-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241190	2014-04-23	2015-01-27	309286996	NARVAEZ JUAREZ ISRAEL	1	7	85	1993-10-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241191	2014-04-23	2015-02-11	305078001	HERNANDEZ LOPEZ ILSE IVONNE	1	7	84	1989-05-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241192	2014-04-23	2014-04-23	309136853	MURILLO CARDENAS LARRY RODRIGO	1	2	82	1992-12-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241193	2014-04-23	2014-04-23	411074874	CAMAS AQUINO FABIAN	1	1	79	1992-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241194	2014-04-24	2014-04-24	410006276	SANCHEZ LADRON DE GUEVARA JUAN CARLOS	1	1	85	1990-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241195	2014-04-24	2014-04-24	310214960	PAZ SILVERIO NANCY GISELA	1	1	81	1994-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241196	2014-04-24	2014-04-24	413077376	GARCIA SALAZAR ODILON	1	1	82	1988-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241197	2014-04-25	2015-08-10	309178196	MARTINEZ CORREA LUIS ENRIQUE	1	1	85	1992-09-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241198	2014-04-25	2014-04-25	309235097	MACIAS HIDEROA MARIA FERNANDA	1	1	81	1993-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241199	2014-04-25	2014-04-25	305553971	GARCIA RENTERIA MARIA FERNANDA	1	3	82	1988-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241200	2014-04-28	2014-04-28	3082247084	RUIZ SANCHEZ ILSE BIRIDIANA	1	1	90	1992-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241201	2014-04-29	2014-04-29	HEMP700928	HERNANDEZ MARTINEZ PILAR	3	1	127	1970-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241202	2014-05-02	2014-05-02	78136403	HERNANDEZ RIVERA HUGO IGNACIO	1	1	80	1961-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241203	2014-05-05	2014-05-05	304014765	CRUZ HERNANDEZ ANA GABRIELA	1	3	84	1988-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241204	2014-05-06	2014-05-06	302148299	ROJO GARIBALDI BERENICE	1	2	95	1986-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241205	2014-05-06	2014-05-06	96432353	RAMIREZ DIAZ MARLENE CRISTINA	1	4	95	1977-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241206	2014-05-06	2016-08-29	AABV860808	ALVARADO BECERRIL VICTOR HUGO	2	1	79	1986-08-08	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241207	2014-05-06	2015-08-14	414056644	CHIQUETE ELIZALDE ANA FRANCIS	1	2	84	1993-11-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241208	2014-05-06	2014-05-06	307193201	LIMA GUTIERREZ CESAR FELIPE	1	2	78	1991-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241209	2014-05-06	2014-05-06	302080061	BAUTISTA SALVADOR OSWALDO	1	1	80	1985-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241210	2014-05-07	2018-02-23	308152250	SANCHEZ CAMPOS BRENDA VIRIDIANA	1	2	90	1993-01-28	F	f	4	apellido p	apellido m	nombres	0	none	none	0
241211	2014-05-08	2014-05-08	310008150	BARBA AYALA SERGIO CARLOS	1	5	78	1994-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241212	2014-05-08	2014-05-08	307581020	MARTINEZ QUIROZ ROCIO YVONNE	1	4	79	1991-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241213	2014-05-08	2016-02-03	307010089	ACEVEDO TONCHE IRVIN GERARDO	1	4	90	1991-04-30	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241214	2014-05-08	2014-05-08	308256334	GUZMAN RUIZ ARTURO	1	1	81	1992-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241215	2014-05-12	2014-05-12	97509758	QUEREJETA LOPEZ SANDRA MARIA DE JESUS	1	7	80	1977-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241216	2014-05-13	2014-05-13	307321011	RAMIREZ TOLENTINO HERMENEGILDO FRANCISCO	1	1	85	1987-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241217	2014-05-13	2015-08-31	410067958	DOLORES REYES GUILLERMO	1	1	85	1991-08-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241218	2014-05-13	2015-01-27	309213736	MORFIN MORALES MAURICIO ALEJANDRO	1	1	85	1993-01-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241219	2014-05-13	2014-05-13	94132878	ALDANA ACEVEDO JUAN DAVID	1	4	84	1978-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241220	2014-05-14	2016-02-08	305218595	RODRIGUEZ VALADEZ JESUS	1	1	73	1989-07-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241221	2014-05-16	2014-05-16	305290373	LEON LOPEZ NADIA STHEPANIE	1	3	84	1989-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241222	2014-05-16	2014-05-16	307650162	GARCIA COLORADO DANIEL JOSE	1	3	82	1991-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241223	2014-05-16	2014-05-16	308033072	BARRERA RAMON EDUARDO	1	4	73	1992-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241224	2014-05-19	2014-05-19	98086780	BELMAN RAMOS CARLOS MAURICIO	1	1	105	1981-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241225	2014-05-20	2014-05-20	412075843	CASTELLANOS VILLASEÑOR DANIELA	1	7	80	1992-05-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241226	2014-05-21	2014-05-21	HELC860331	HERNANDEZ LOPEZ CARLOS MIGUEL	1	1	7	1986-03-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241227	2014-05-22	2015-05-20	514005951	MIRANDA PEREZ ALMA CAROLINA	1	1	84	1980-11-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241228	2014-05-22	2014-05-22	305318303	GUERRERO DE LA VEGA JOEL ABRAHAM	1	1	85	1989-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241229	2014-05-22	2014-05-22	406050658	CONTRERAS CAMARGO LAURA LEONOR	1	1	89	1986-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241230	2014-05-23	2014-05-23	54029460	MOLINA GAONA CLARA ELENA	1	1	111	1936-03-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241231	2014-05-23	2014-05-23	307137706	OLVERA GARCIA ISRAEL	1	1	85	1991-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241232	2014-05-23	2014-05-23	308109371	VELAZQUEZ GONZALEZ JUDITH	1	2	81	1992-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241233	2014-05-26	2014-05-26	308296202	NAVARRO FLORES RAUL	1	1	89	1992-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241234	2014-05-26	2017-03-02	89169881	MEJIA ARANGURE ERENDIRA	1	1	90	1975-08-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241235	2014-05-28	2014-05-28	311036110	GONZALEZ FLORES DANIEL RICARDO	1	7	85	1995-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241236	2014-05-29	2014-05-29	OIGL870917	ORTIZ GARCIA LESLIE	2	5	87	1987-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241237	2014-06-04	2014-06-04	85217131	MARTINEZ TORRES JOSE ANGEL	1	3	83	1968-10-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241238	2014-06-04	2014-06-04	309626960	CORTES SANCHEZ CUAUHTEMOC EDUARDO	1	1	79	1992-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241239	2014-06-05	2014-06-05	407099845	CABRERA COVARRUBIAS GERARDO RODRIGO	1	2	85	1982-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241240	2014-06-05	2014-06-05	308285697	SANCHEZ CRUZ DANIELA	1	3	80	1991-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241241	2014-06-05	2014-06-05	103003467	LOPEZ ALEGRIA FRANCISCO ISAAC	1	4	85	1990-08-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241242	2014-08-04	2014-08-04	411080075	LOPEZ UBALDO ENRIQUE	1	1	85	1991-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241243	2014-08-04	2015-02-06	414034802	AMADOR SANCHEZ DANIEL	1	4	81	1994-02-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241244	2014-08-04	2014-08-04	310171355	LOPEZ LOBATO LINDA JOSSELYN	1	1	81	1992-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241245	2014-08-04	2016-10-03	310022604	DELGADO GARCIA ALAN EMMANUEL	1	1	84	1994-01-29	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241246	2014-08-05	2014-08-05	414007505	ABUXAPQUI DESQUENS NASSIM ELIAS	1	1	85	1994-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241247	2014-08-05	2014-08-05	307590370	MARTINEZ BENITEZ LAURA CRISTINA	1	4	82	1991-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241248	2014-08-05	2014-08-05	310609568	VALENCIA LEÑERO EVA MARINA	1	2	82	1993-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241249	2014-08-05	2014-08-05	308607918	MATUS YARCE JESUS CARLOS	1	2	86	1992-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241250	2014-08-05	2017-03-29	414039584	MATIAS GARCIA ELIAS EDILBERTO	1	1	85	1995-04-03	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241251	2014-08-06	2014-08-06	3085212850	BECERRA NUÑEZ MARIANA	1	2	84	1991-09-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241252	2014-08-06	2014-08-06	308342464	UBANDO ORTEGA RODRIGO JESUS	1	4	81	1991-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241253	2014-08-06	2014-08-06	97102342	MARQUEZ DORANTES MARIA DE JESUS	1	2	83	1981-06-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241254	2014-08-06	2015-08-11	308164044	GARCIA QUITZAMAN ARMANDO	1	1	79	1992-12-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241255	2014-08-06	2014-08-06	620151066	RINCON ZULUAGA JOAM MANUEL	1	1	85	1991-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241256	2014-08-07	2017-09-06	310203692	RODRIGUEZ TENORIO JOSE CARLOS	1	4	85	1994-04-30	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241257	2014-08-07	2014-08-07	407038424	COCA LUNA MARIA DEL CARMEN	1	1	83	1958-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241258	2014-08-07	2014-08-07	309187466	ESPINOSA VELAZQUEZ GUILLERMO DANIEL	1	1	86	1993-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241259	2014-08-07	2014-08-07	308175130	GARCIA GARCIA LAURA JANETHE	1	2	79	1992-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241260	2014-08-07	2018-03-21	312249788	JURADO RAMIREZ KAREN	1	7	85	1995-08-02	F	t	4	apellido p	apellido m	nombres	0	none	none	0
241261	2014-08-07	2014-08-07	308261246	GARCIA ZARCO PEDRO	1	1	85	1992-08-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241262	2014-08-08	2015-04-30	99264770	REYES RUIZ LAURA JOSEFINA	1	6	85	1983-11-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241263	2014-08-08	2014-08-08	309036368	HERNANDEZ JIMENEZ JENIFER LIZBET	1	4	79	1993-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241264	2014-08-08	2015-08-21	415077293	XOLO REBOLLO MAGNOLIA	1	1	85	1995-10-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241265	2014-08-08	2014-08-08	309192190	GUILLEN NEGRETE HEYLA KETZARIDE	1	7	84	1993-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241266	2014-08-08	2017-01-31	309278650	RAMIREZ ESTRADA JORGE IVAN	1	1	78	1993-07-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241267	2014-08-08	2014-08-08	307079200	GONZALEZ AYALA BELEN	1	3	80	1995-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241268	2014-08-08	2014-08-08	309215754	REYES MORENO EDUARDO	1	1	85	1993-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241269	2014-08-08	2014-08-08	309716567	PLIEGO PLIEGO DANIEL	1	4	85	1992-03-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241270	2014-08-08	2014-08-08	507013402	FLORES LUNA AGUSTIN	1	1	90	1981-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241271	2014-08-11	2014-08-11	311219724	RAMOS GAYOL ALIDA	1	5	81	1995-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241272	2014-08-11	2014-08-11	JASV711009	JACOBO SOTO VELIA MARGARITA	2	2	88	1971-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241273	2014-08-11	2014-08-11	310222615	VALLE MUÑOZ MABEL ALEJANDRA	1	1	84	1993-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241274	2014-08-11	2014-08-11	310106562	PACHECO ALTAMIRANO NOYELLI ITZEL	1	4	85	1994-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241275	2014-08-11	2014-08-11	310271156	LUCIO LOZADA ANGEL	1	1	78	1994-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241276	2014-08-11	2014-08-11	306663802	ENCISO IBAÑEZ MA. ITZEL ERIKA	1	7	90	1995-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241277	2014-08-11	2015-06-02	41168594	PAPAQUI NOTARIO ANDRES	1	4	79	1991-04-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241278	2014-08-11	2014-08-11	86147466	SALINAS GUTIERREZ JOSE LUIS	1	5	79	1970-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241279	2014-08-12	2014-08-12	411005674	LEYVA DIAZ EDGAR	1	1	90	1992-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241280	2014-08-12	2014-08-12	SEOC930303	SELVA OCHOA CARLOS FIDEL	2	4	79	1993-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241281	2014-08-12	2018-01-30	31125341	OLIVARES VILLALPANDO ANAMARIA GUADALUPE	1	1	84	1995-03-03	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241282	2014-08-12	2016-02-16	411011796	QUEZADA ESCAMILLA DIANA	1	2	84	1992-09-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241283	2014-08-12	2014-08-12	GOCA840402	GOMEZ CABRERA ALEJANDRA PATRICIA	2	1	25	1984-04-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241284	2014-08-12	2014-08-12	413046631	SANCHEZ SUAREZ LIDIA ANAHI	1	1	81	1994-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241285	2014-08-12	2014-08-12	308043013	MENDOZA MARTINEZ ELISA	1	4	78	1992-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241286	2014-08-12	2014-08-12	309273655	HERRERA GUTIERREZ BEATRIZ ADRIANA	1	1	90	1993-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241287	2014-08-12	2014-08-12	309277505	MATA PEZA DIANA JAEL	1	1	84	1993-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241288	2014-08-12	2014-08-12	310131700	SANTILLAN GUZMAN FERNANDO	1	3	85	1993-02-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241289	2014-08-12	2014-08-12	306002630	ESPINOZA ALONSO AARON ALBERTO	1	3	80	1989-10-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241290	2014-08-12	2014-08-12	310191179	BRAVO CASALES GABRIELA	1	1	80	1994-08-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241291	2014-08-13	2017-10-18	413089050	CEBADA FUENTES RICARDO	1	1	85	1994-06-03	M	f	5	apellido p	apellido m	nombres	0	none	none	0
241292	2014-08-13	2014-08-13	RAPA630908	RAMIREZ PARRALES MARIA DOLORES	2	1	79	1963-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241293	2014-08-13	2014-08-13	311317521	FLORES REGALADO ADRIANA GUADALUPE	1	1	90	1995-10-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241294	2014-08-13	2014-08-13	308037582	CHAVEZ GENIS ELIAS HUGO	1	6	85	1992-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241295	2014-08-13	2015-02-24	413013332	GARCIA REYES LUIS ALEXIS	1	1	79	1994-07-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241296	2014-08-13	2014-08-13	310027582	AROCHE AMEZCUA VICTOR ULISES	1	4	83	1994-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241297	2014-08-13	2015-03-20	308259249	MACIEL HERNANDEZ MARIBEL	1	1	80	1992-09-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241298	2014-08-13	2014-08-13	307162212	SERRANO CALDERA NUBIA	1	4	84	1990-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241299	2014-08-13	2014-08-13	DOMP810902	DOMINGUEZ MENESES PATRICIA	2	4	84	1981-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241300	2014-08-13	2014-08-13	307005483	CASTILLO ALFARO OMAR DANIEL	1	2	73	1991-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241301	2014-08-13	2014-08-13	30824074	MEJIA VILLAGARCIA MARIANA	1	3	84	1991-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241302	2014-08-13	2014-08-13	31163332	LUA BERNAL CLAUDIA	1	1	81	1974-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241303	2014-08-13	2014-08-13	309071157	COSS ALCANTAR GERARDO	1	1	85	1992-11-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241304	2014-08-13	2014-08-13	308328673	VALLES BARRERA LUIS DAVID	1	1	85	1992-02-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241305	2014-08-13	2016-02-23	306141461	RODRIGUEZ RUBIO JOVANY	1	1	90	1990-02-05	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241306	2014-08-13	2014-08-13	312269564	SANCHEZ SANCHEZ ALVARO	1	1	86	1996-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241307	2014-08-14	2016-08-23	305220664	PALACIOS MIRANDA ERICK JAIR	1	7	83	1989-08-20	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241308	2014-08-14	2014-08-14	308173301	CASTRO OROZCO ESTEFANY	1	1	80	1991-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241309	2014-08-14	2016-09-09	404044080	AGUILAR GARCIA RAQUEL	1	2	84	1984-05-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241310	2014-08-14	2014-08-14	308203338	ROCHA SORIANO GRECIA	1	3	82	1992-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241311	2014-08-14	2014-08-14	311258035	CABRERA SANCHEZ KARLA PAMELA	1	3	82	1994-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241312	2014-08-14	2014-08-14	310171386	LOPEZ VILLERS ANDREA LORENA	1	2	85	1993-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241313	2014-08-14	2014-08-14	308289114	ORTEGA TENORIO EDGAR	1	1	85	1992-03-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241314	2014-08-14	2015-10-12	403041756	PEDRAZA IBARRA RICARDO DAVID	1	3	84	1982-06-09	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241315	2014-08-14	2014-08-14	300163005	BIZARRO LOPEZ GIBRAN	1	3	81	1984-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241316	2014-08-14	2014-08-14	513026841	MARTINEZ VALENCIA ALEJANDRO	1	1	79	1988-10-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241317	2014-08-15	2014-08-15	TECI820216	TENORIO CRUZ IXCHEL	2	1	82	1982-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241318	2014-08-15	2016-08-10	307009065	GALVAN MONTERROSA MELISSA	1	3	79	1991-02-06	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241319	2014-08-15	2014-08-15	306203693	LOPEZ FLORES OMAR GUILLERMO	1	1	85	1990-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241320	2014-08-15	2014-08-15	311151974	CAMPOS RUIZ ILSE DANIELA	1	5	84	1995-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241321	2014-08-15	2017-04-25	410052998	BARROSO PEREZ ERIK	1	1	89	1986-06-20	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241322	2014-08-15	2014-08-15	311276178	FLORES LOPEZ GUADALUPE ISABEL	1	1	84	1995-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241323	2014-08-15	2014-08-15	414048872	RUIZ MARTINEZ OZIEL	1	1	78	1994-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241324	2014-08-15	2016-08-17	410003787	FLORES MARTINEZ KARLA	1	7	84	1989-02-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241325	2014-08-15	2014-08-15	BEGS561007	BERNAL GUTIERREZ SILVIA	2	1	63	1956-10-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241326	2014-08-15	2014-08-15	310050623	GUAJARDO BARRETO CESAR EDAHI	1	4	82	1993-08-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241327	2014-08-15	2014-08-15	412119486	GONZALEZ VAZQUEZ DAVID ABSALON	1	6	81	1984-12-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241328	2014-08-15	2014-08-15	311130737	CORTES PICAZO OFELIA	1	1	80	1995-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241329	2014-08-15	2014-08-15	308001608	ESQUIVEL TRUJILLO DANIEL	1	1	85	1992-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241330	2014-08-15	2014-08-15	309267344	SALAZAR MARTINEZ IRIS ORQUIDEA	1	4	90	1993-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241331	2014-08-15	2014-08-15	311286597	EGEA GUTIERREZ JOSE ANTONIO	1	4	83	1995-07-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241332	2014-08-15	2014-08-15	310152631	VASQUEZ SALAMANCA GUILLERMO ANTONIO	1	6	84	1994-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241333	2014-08-15	2015-08-28	RONN640706	ROMERO NAVA NATALIA	2	2	82	1964-07-06	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241334	2014-08-15	2014-08-15	413018179	RAMIREZ LONA NICTELAI	1	1	76	1991-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241335	2014-08-15	2014-08-15	308093386	MEDINA REYES MACIEL	1	3	80	1986-03-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241336	2014-08-18	2014-08-18	310215039	PINEDA ROMERO EDUARDO ADOLFO	1	6	82	1994-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241337	2014-08-18	2014-08-18	310007270	BRIONES GARCIA NATALIA	1	2	80	1993-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241338	2014-08-18	2014-08-18	308108927	RODRIGUEZ GUDIÑO OLYMPIA	1	7	85	1992-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241339	2014-08-18	2014-08-18	308250325	ARRIAGA CASTRO FRANCISCO RAUL	1	3	85	1992-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241340	2014-08-18	2014-08-18	305266493	RODRIGUEZ TAPIA DOLORES MALINAXOCHITL	1	7	82	1989-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241341	2014-08-18	2014-08-18	513452541	GONZALEZ MONTOYA WILLIAM	1	5	84	1976-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241342	2014-08-18	2014-08-18	308038778	AGUILERA VELAZQUEZ EDGAR	1	1	81	1991-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241343	2014-08-18	2016-10-19	310145756	MENDOZA BENITEZ CYNTHIA IVONNE	1	4	87	1993-12-23	F	f	4	apellido p	apellido m	nombres	0	none	none	0
241344	2014-08-18	2014-08-18	304295131	HERNANDEZ RIVERA EDGAR	1	1	85	1988-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241345	2014-08-18	2014-08-18	310056216	AGUIRRE ANAYA FRANCISCO HOMERO	1	2	80	1993-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241346	2014-08-18	2014-08-18	310099453	DIAZ DE LEON RIVERA MARIA STEPHANIE	1	2	80	1994-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241347	2014-08-18	2014-08-18	310294579	MENDEZ MORALES CECILIA	1	1	84	1993-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241348	2014-08-18	2014-08-18	95617727	ROSAS REYES VICTOR ELIAS	1	5	79	1971-09-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241349	2014-08-18	2014-08-18	514005889	LUNA MORALES LAURA GABRIELA	1	2	84	1988-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241350	2014-08-18	2014-08-18	514005906	SAMPIERI CABAL CESAR ARMIN	1	2	84	1984-01-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241351	2014-08-18	2018-08-28	308241491	MONTERDE VALERO BRYAN YAEL	1	1	7	1992-09-17	M	t	3	apellido p	apellido m	nombres	0	none	none	0
241352	2014-08-19	2014-08-19	308059331	AGUILAR PALMA INGRID	1	2	78	1990-09-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241353	2014-08-19	2014-08-19	308108549	ZAVALA CALDERON ALVARO	1	2	78	1992-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241354	2014-08-19	2014-08-19	308185281	GONZALEZ ALVAREZ ANALI	1	5	84	1991-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241355	2014-08-19	2014-08-19	311174074	HUITRON VEGA XIMENA ARLEN	1	1	84	1995-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241356	2014-08-19	2014-08-19	512011280	CHAVOLLA NAVARRO DIANA BEATRIZ	1	3	84	1966-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241357	2014-08-19	2014-08-19	406516165	PADILLA BAUTISTA JOAQUIN ALBERTO	1	7	89	1983-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241358	2014-08-19	2014-08-19	309101189	DE LA CRUZ HERNANDEZ JESSICA	1	2	80	1993-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241359	2014-08-19	2014-08-19	310140847	ORTEGA MUÑOZ MIGUEL ANGEL	1	2	82	1994-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241360	2014-08-19	2014-08-19	311171970	DIAZ TREJO LUIS FERNANDO	1	4	89	1994-07-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241361	2014-08-19	2014-08-19	308254945	DIAZ JUAREZ DANIEL	1	4	80	1991-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241362	2014-08-19	2014-08-19	308043893	ALVAREZ MALO MOLINA REBECA	1	4	80	1992-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241363	2014-08-19	2014-08-19	308262243	MENDOZA LUNA FRANCISCO DANIEL	1	4	80	1991-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241364	2014-08-19	2014-08-19	308253072	MORA DIAZ JOSE MARIA	1	1	85	1992-12-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241365	2014-08-19	2014-08-19	411022868	CORONA DE LA CRUZ CARMEN	1	1	81	1992-03-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241366	2014-08-19	2014-08-19	308111172	VILLARREAL CEDILLO OKARY LILIANA	1	1	81	1991-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241367	2014-08-19	2014-08-19	308103197	MUÑOZ ARRIETA EDUARDO ADRIAN	1	1	85	1992-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241368	2014-08-19	2014-08-19	311257014	CUAUHTEMOC GUTIERREZ BRENDA	1	1	78	1994-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241369	2014-08-19	2014-08-19	412028430	CORNELIO MAGALLANES ERIKA	1	5	81	1991-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241370	2014-08-19	2014-08-19	506470590	SAVOIA FRANCESCA	1	4	80	1974-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241371	2014-08-19	2015-09-29	312008510	MARTINEZ FICHTL ILIA	1	4	85	1996-01-20	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241372	2014-08-19	2016-10-03	31019000	ANAYA GUARNEROS JONATHAN ABIMAEL	1	5	85	1994-02-14	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241373	2014-08-20	2014-08-20	312624228	MARTINEZ SAN NICOLAS DANYA FERNANDA	1	4	82	1995-12-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241374	2014-08-20	2014-08-20	96322002	FUENTES LIZAOLA MAURICIO FERNANDO	1	4	81	1979-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241375	2014-08-20	2015-02-26	514004851	GARCIA CARREÑO JORGE ABRAHAM	1	1	85	1973-07-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241376	2014-08-20	2014-08-20	VAGR750323	VALDEZ GARZA ROSA DALIA	2	1	104	1975-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241377	2014-08-20	2014-08-20	95122957	ROMAN AYALA LISETTE GUADALUPE	1	1	82	1979-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241378	2014-08-20	2014-08-20	414156012	DIAZ POZADAS YOALI	1	1	83	1989-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241379	2014-08-20	2014-08-20	307098498	FUNES JUAREZ JESSICA ADRIANA	1	6	73	1991-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241380	2014-08-20	2014-08-20	309192695	LOPEZ ROA CARLOS	1	2	85	1993-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241381	2014-08-20	2014-08-20	512002624	MEJIA ZALDIVAR SANDRA	1	1	81	1987-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241382	2014-08-21	2014-08-21	310313348	ROJAS VELA CAROLINA	1	4	90	1994-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241383	2014-08-21	2015-08-14	307219392	MARTINEZ MIRANDA GIULIANA MAGALI	1	3	84	1990-12-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241384	2014-08-21	2014-08-21	201510050	GARCIA MONTERO ANGEL	1	2	82	1992-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241385	2014-08-21	2014-08-21	411022837	LIZARRAGA SALDIVAR ISABEL	1	3	84	1985-01-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241386	2014-08-21	2014-08-21	310116761	ROMERO ROMAN ROXANNA	1	2	84	1994-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241387	2014-08-21	2014-08-21	306152137	BRITO OLVERA MARIANA GRACIELA	1	1	84	1989-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241388	2014-08-21	2014-08-21	79501974	HERNANDEZ SANTIAGO ALVARO	1	1	78	1960-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241389	2014-08-21	2014-08-21	310293087	OSORIO LONDOÑO CAROLINA	1	1	89	1992-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241390	2014-08-21	2014-08-21	414080971	VALLEJO YAÑEZ ESTONIA	1	1	80	1991-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241391	2014-08-21	2014-08-21	514011664	GARCIA RAMIREZ ENRIQUE ALEJANDRO	1	2	82	1987-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241392	2014-08-21	2014-08-21	ALHE911018	ALVIZURI HERNANDEZ ELIAS	1	5	80	1991-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241393	2014-08-21	2014-08-21	310294995	OJEDA LEYVA AARON ISAAC	1	2	82	1994-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241394	2014-08-21	2014-08-21	412063860	GUILLERMO MONTIEL HANOI IVAN	1	1	89	1992-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241395	2014-08-21	2014-08-21	307274340	LUNA DIAZ JOSEPH DANIEL	1	1	85	1991-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241396	2014-08-21	2015-03-24	86258188	CALLES CABALLERO OLGA LINA	1	2	80	1970-09-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241397	2014-08-21	2015-10-08	413027034	ORTEGA CABRERA CRISTIAN OMAR	1	4	90	1994-02-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241398	2014-08-21	2014-08-21	99055842	CRUZ MONTERROSAS ZAMIRA	1	6	113	1983-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241399	2014-08-21	2014-08-21	413017055	LOPEZ MENDOZA ERICK OSWALDO	1	1	90	1993-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241400	2014-08-21	2014-08-21	310306559	RAMIREZ VASQUEZ JORGE ISAAC	1	4	90	1994-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241401	2014-08-25	2014-08-25	310687025	FLORES SANTILLAN CARMEN JAZMIN	1	1	81	1994-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241402	2014-08-25	2014-08-25	411047278	LOPEZ HERNANDEZ MARTHA LIZBETH	1	5	83	1992-01-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241403	2014-08-25	2014-08-25	514351258	GONZALEZ IDARRAGA CARLOS EDUARDO	1	1	99	1987-08-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241404	2014-08-25	2014-08-25	410002072	ABREU TORRES JAVIER	1	1	85	1990-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241405	2014-08-25	2014-08-25	304096419	MENDOZA BALLESTEROS SAMANTHA ANGELICA	1	1	78	1987-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241406	2014-08-25	2016-02-26	312317775	URIBE LOYOLA JOSE MIGUEL	1	4	86	1996-02-25	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241407	2014-08-25	2014-08-25	312052032	LOPEZ CHAVEZ VALERIA	1	1	85	1996-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241408	2014-08-25	2014-08-25	309329068	TORRES CASADO MARTHA JESSICA	1	4	83	1993-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241409	2014-08-25	2014-08-25	411024123	ZUÑIGA MARTINEZ ADRIAN	1	5	88	1992-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241410	2014-08-25	2014-08-25	311087837	ROJAS MORENO JONATHAN FRANCISCO	1	1	81	1995-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241411	2014-08-25	2014-08-25	31098044	SALGADO VALVERDE MIGUEL ANGEL	1	2	78	1994-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241412	2014-08-25	2017-03-28	309203537	VELAZQUEZ FERNANDEZ ALFREDO	1	4	85	1992-11-23	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241413	2014-08-25	2014-08-25	410054820	AGUIRRE MORALES GERARDO	1	1	82	1975-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241414	2014-08-26	2014-08-26	310023911	CABILDO BARRIENTOS ALAN	1	3	81	1994-07-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241415	2014-08-26	2014-08-26	308022663	FIGUEROA MAYA JANNETTE	1	3	80	1992-03-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241416	2014-08-26	2016-02-05	309187192	CRUZ GARCIA RAYMUNDO	1	4	85	1993-08-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241417	2014-08-26	2014-08-26	RURJ930510	RUIZ RAMIREZ JAVIER CRUZ	1	1	82	1993-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241418	2014-08-26	2014-08-26	312265384	MORALES HERNANDEZ DIANA GUADALUPE	1	2	79	1996-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241419	2014-08-26	2016-02-03	310339315	UGALDE MALDONADO PEDRO	1	4	85	1994-09-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241420	2014-08-26	2014-08-26	308102901	MUÑOZ ALQUICIRA MIGUEL ANGEL	1	2	86	1992-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241421	2014-08-26	2014-08-26	411052977	PEREZ LOPEZ ARELY	1	3	81	1989-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241422	2014-08-26	2014-08-26	308185793	CRUZ REYES VICTOR MANUEL	1	1	90	1992-09-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241423	2014-08-26	2014-08-26	309337799	VALENCIA MEDINA DIANA ITZEL	1	1	85	1993-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241424	2014-08-26	2014-08-26	410076693	URIBE LOYOLA  CONSUELO	1	4	78	1992-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241425	2014-08-26	2014-08-26	309192578	JIMENEZ RODRIGUEZ ANNA CRISTINA	1	1	78	1992-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241426	2014-08-26	2016-08-25	411025508	RAMIREZ FERNANDEZ IRAIS	1	4	76	1989-06-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241427	2014-08-26	2014-08-26	309019019	CHAPARRO SANCHEZ ALEJANDRA	1	7	86	1993-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241428	2014-08-26	2014-08-26	312278278	MARIN HERNANDEZ FABIAN	1	1	85	1996-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241429	2014-08-26	2014-08-26	309221106	PALILLERO GALINDO KARINA	1	3	84	1992-10-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241430	2014-08-26	2014-08-26	411011686	SERRANO TIRADO ZAYRA LIZETH	1	5	85	1992-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241431	2014-08-26	2014-08-26	413098771	PUGA ROJAS ANA FERNANDA	1	4	84	1994-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241432	2014-08-26	2015-08-13	311628845	LECUONA GOMEZ PABLO	1	4	90	1995-05-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241433	2014-08-26	2014-08-26	305192507	MORALES GODOY SANDIBET	1	1	89	1988-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241434	2014-08-26	2014-08-26	308316528	MIRANDA GUZMAN ADOLFO ENRIQUE	1	3	83	1992-08-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241435	2014-08-26	2014-08-26	308136094	OLVERA MARTINEZ SARAI ESTEFANY	1	2	80	1992-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241436	2014-08-26	2015-06-03	312028121	SAAVEDRA AGUIRRE LUIS JAVIER	1	4	79	1996-11-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241437	2014-08-26	2014-08-26	SANJ701217	SANDOVAL NAVARRETE JESUS ANTONIO	1	1	7	1970-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241438	2014-08-26	2014-08-26	414077458	TORRES GARCIA JESUS ISRAEL	1	7	79	1995-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241439	2014-08-26	2014-08-26	312003310	FERNANDEZ MENDEZ GRETA VIDAHI LUCERO	1	1	84	1996-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241440	2014-08-26	2014-08-26	GUBL790320	GUERRERO BETANCOURT LORENA DARCY	3	2	89	1979-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241441	2014-08-26	2014-08-26	412055830	PEREZ ARIZA DAVID ALEJANDRO	1	1	85	1993-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241442	2014-08-26	2014-08-26	413055778	LOPEZ PACHECO ALEJANDRA PILAR	1	2	90	1994-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241443	2014-08-26	2014-08-26	310506135	VARGAS DORANTES OSCAR DE JESUS	1	7	90	1993-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241444	2014-08-26	2015-08-12	306539839	MUÑOZ SANCHEZ JULIA ESTEFANIA	1	2	90	1990-05-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241445	2014-08-26	2014-08-26	308285037	SILVA MEDRANO SARAI	1	1	89	1992-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241446	2014-08-26	2014-08-26	309323619	SEGURA MARTINEZ ALEJANDRO	1	1	85	1993-06-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241447	2014-08-27	2014-08-27	309184184	NICIO CRUZ ERICKA MARGARITA	1	2	87	1993-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241448	2014-08-27	2014-08-27	310163679	SEGOVIA PONCELIS ITZAMARA MIDORI	1	1	90	1995-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241449	2014-08-27	2016-02-18	311084850	GARCIA CARRILLO KARINA	1	1	85	1995-01-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241450	2014-08-27	2014-08-27	309105015	HERNANDEZ AMADOR ALBERTO ELIHU	1	3	80	1992-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241451	2014-08-27	2014-08-27	308005651	GUERRERO CHAVEZ DIANA LUCIA	1	1	79	1992-02-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241452	2014-08-27	2014-08-27	105003119	PONCE PEREZ DANIELA BERENICE	1	2	90	1992-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241453	2014-08-27	2015-10-23	305245809	CONTRERAS GOMEZ PABLO	1	1	84	1989-08-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241454	2014-08-27	2018-08-23	312033208	ROMERO HERNANDEZ NAXHELI DENISE	1	1	89	1995-01-05	F	t	4	apellido p	apellido m	nombres	0	none	none	0
241455	2014-08-27	2014-08-27	307507042	POSADAS PAZ DIEGO	1	1	84	1991-04-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241456	2014-08-27	2014-08-27	309323884	SANCHEZ CASTILLO GLORIA IXCHEL	1	2	89	1993-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241457	2014-08-27	2014-08-27	307668628	MORENO ROSAS ITZEL	1	4	86	1990-09-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241458	2014-08-27	2014-08-27	311131253	MENDEZ JUAREZ SARAHI	1	2	90	1994-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241459	2014-08-27	2014-08-27	414067125	MARTINEZ GARCIA VICTOR MANUEL	1	1	85	1994-10-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241460	2014-08-27	2016-08-15	415065351	ROMERO VANEGAS MARIANA	1	4	79	1994-09-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241461	2014-08-27	2014-08-27	414050075	GOMEZ CABANILLAS EDGAR ANTONIO	1	4	80	1995-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241462	2014-08-28	2014-08-28	413097262	AVILA TORRES ENRIQUE	1	1	85	1990-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241463	2014-08-28	2014-08-28	308316119	MARIN LOPEZ RAQUEL	1	1	73	1992-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241464	2014-08-28	2014-08-28	307052504	DAVILA HERNANDEZ ALBERTO	1	1	76	1991-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241465	2014-08-28	2014-08-28	106001077	DE JULIAN UCEDA AMINA ATZIRY	1	1	89	1993-12-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241466	2014-08-28	2014-08-28	308044443	FLORES SANCHEZ GIOBANA	1	1	80	1992-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241467	2014-08-28	2014-08-28	308326710	VAZQUEZ GOMEZ ALAN SHAID	1	1	150	1992-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241468	2014-08-28	2014-08-28	413040945	CORTES CASTRO JOSE MARIA	1	6	80	1990-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241469	2014-08-28	2014-08-28	307036812	CRUZ RIVERA HECTOR DANIEL	1	1	85	1991-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241470	2014-08-28	2014-08-28	308198230	MAGAÑA ARELLANO ERNESTO QUETZALLI	1	1	85	1992-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241471	2014-08-28	2014-08-28	310187240	MAGDALENO GONZALEZ OSCAR	1	1	90	1994-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241472	2014-08-28	2014-08-28	415000224	AGUILAR RIOS INGEMAR DIDIER	1	2	86	1994-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241473	2014-08-28	2014-08-28	411088617	MORALES AGUILAR HECTOR EDOARDO	1	4	85	1992-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241474	2014-08-28	2014-08-28	310237709	MORALES WILSON KARIME REBECA	1	1	80	1994-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241475	2014-08-29	2014-08-29	310296449	PACHECO CRUZ AUREA CASANDRA	1	2	84	1995-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241476	2014-08-29	2014-08-29	305274131	NAVA MOCTEZUMA IRASEMA	1	5	79	1989-06-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241477	2014-08-29	2014-08-29	92189883	SANCHEZ VELA JOSE JUVENTINO	1	5	85	1977-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241478	2014-08-29	2014-08-29	SEPA590110	SILVA PORTILLO ANA LUISA	2	1	116	1959-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241479	2014-08-29	2014-08-29	412056277	RAMOS BAUTISTA ZULLY PALOMA	1	1	90	1992-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241480	2014-08-29	2014-08-29	413006495	GALVAN SOLANO JAVIER	1	1	85	1994-04-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241481	2014-08-29	2014-08-29	309241463	MERCADO DEL RIO INGRID	1	4	90	1992-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241482	2014-08-29	2014-08-29	305050092	GOMEZ REYNOSO CLAUDIA NATHALLI	1	1	90	1989-09-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241483	2014-08-29	2014-08-29	103004684	VEGA VALDES ADOLFO ALAN	1	3	81	1989-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241484	2014-08-29	2014-08-29	515046393	GASSER ADRIAN	1	1	73	1984-10-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241485	2014-08-29	2014-08-29	309121714	IBAÑEZ JIMENEZ RICARDO	1	1	78	1993-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241486	2014-08-29	2014-08-29	412040526	GOMEZPALACIOS SOLIS DILIA MARIA	1	1	81	1992-04-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241487	2014-08-29	2014-08-29	310340566	CASTILLO MORALES BENJAMIN	1	1	79	1994-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241488	2014-08-29	2014-08-29	414010901	ISLAS DE LOS SANTOS DIANA LILIA	1	1	78	1995-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241489	2014-08-29	2014-08-29	304170030	CAMACHO ESPINOZA JESUS ALEJANDRO	1	1	76	1988-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241490	2014-08-29	2015-03-02	309052139	GONZALEZ GUTIERREZ J. BENJAMIN	1	5	80	1993-08-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241491	2014-08-29	2014-08-29	413012751	GODOY JIMENEZ ALAN HAZEL	1	1	78	1993-04-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241492	2014-08-29	2014-08-29	412049842	BARRAZA MONTIEL GUILLERMO ALEJANDRO	1	1	85	1993-04-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241493	2014-09-01	2014-09-01	310049845	GARCIA MENDOZA KARINA JAZMIN	1	1	85	1994-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241494	2014-09-01	2014-09-01	311015021	SANCHEZ DIAZ JAIME JESUS	1	1	78	1994-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241495	2014-09-01	2014-09-01	95015800	RAMIREZ HERNANDEZ JUAN PABLO	1	1	83	1979-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241496	2014-09-02	2014-09-02	306305993	RAMIREZ ARANA YAEL	1	3	73	1990-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241497	2014-09-02	2014-09-02	TOOR831101	TORRES OCHOA RUBEN OMAR	2	1	85	1983-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241498	2014-09-02	2018-03-05	82377216	GOMEZ LEZAMA DANIEL	1	1	84	1964-02-01	M	t	5	apellido p	apellido m	nombres	0	none	none	0
241499	2014-09-02	2014-09-02	308200430	PEREZ VILLANUEVA FRANCISCO JAVIER	1	1	79	1992-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241500	2014-09-02	2014-09-02	310251284	MEDINA DIAZ KEVIN	1	1	84	1992-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241501	2014-09-02	2014-09-02	310296164	PONCE SORIA MARIO	1	1	85	1994-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241502	2014-09-02	2014-09-02	308103771	ZAVALA RUIZ JESUS ALEJANDRO	1	1	85	1992-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241503	2014-09-02	2014-09-02	307027531	AGUILAR RODRIGUEZ NAHOMY ANDREA	1	2	84	1991-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241504	2014-09-02	2014-09-02	414052945	BEJARANO GARCIA JESUS MANUEL	1	1	79	1994-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241505	2014-09-02	2014-09-02	512452438	APAZA PEREZ WILLY ALEJANDRO	1	1	85	1988-02-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241506	2014-09-02	2014-09-02	310267186	ROJAS RENDON REYNA ROSA LEONOR	1	1	89	1991-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241507	2014-09-02	2016-03-01	310010480	GUZMAN GUZMAN LARIZA ITZEL	1	2	80	1994-01-31	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241508	2014-09-02	2014-09-02	309056027	FLORES SANTIAGO NORMA ANGELICA	1	2	85	1992-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241509	2014-09-02	2014-09-02	715000814	ARREOLA HERNANDEZ ANA LAURA	1	2	80	1994-10-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241510	2014-09-03	2014-09-03	310177601	RAMIREZ DIAZ JOSEFINA	1	1	84	1993-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241511	2014-09-03	2014-09-03	413043142	MARTINEZ GARZON CARLOS ALBERTO	1	1	84	1990-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241512	2014-09-03	2014-09-03	308152171	RIVERO LOSOYA ALMA JAZMIN	1	1	90	1994-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241513	2014-09-03	2014-09-03	514008017	CHICO ACO MARIA CECILIA	1	2	7	1987-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241514	2014-09-03	2014-09-03	309245423	HERNANDEZ RUIZ CLAUDIA	1	5	84	1992-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241515	2014-09-03	2014-09-03	308319299	SANCHEZ LUGO SERGIO	1	3	84	1992-02-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241516	2014-09-03	2014-09-03	307104029	COLIN RAMIREZ PAOLA PAMELA	1	3	78	1991-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241517	2014-09-03	2014-09-03	306159686	GONZALEZ SANCHEZ YESICA	1	5	85	1990-09-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241518	2014-09-03	2014-09-03	307072919	CHARGOY GARCIA ADRIANA	1	3	80	1991-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241519	2014-09-03	2014-09-03	309026004	BEYART JUAREZ ANA DELERY	1	1	85	1993-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241520	2014-09-03	2014-09-03	310003007	CUREÑO MORA ANA PAULINA	1	7	78	1994-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241521	2014-09-03	2014-09-03	308275924	RENDON MENDOZA ROCIO	1	4	89	1990-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241522	2014-09-03	2014-09-03	512015336	RODRIGUEZ RIOS SEMATI PALMERA	1	1	84	1986-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241523	2014-09-03	2014-09-03	307107219	HERNANDEZ MARTINEZ LUIS JOEL	1	1	79	1991-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241524	2014-09-03	2014-09-03	310058667	BERNAL PEREZ ALMA BELEN	1	1	89	1993-03-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241525	2014-09-03	2014-09-03	412023758	BARBECHO MORA ANGELICA	1	1	81	1993-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241526	2014-09-03	2014-09-03	512452304	ALVAREZ MENDOZA MARIA FERNANDA	1	1	85	1986-09-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241527	2014-09-03	2014-09-03	412059948	VALDIVIA VELAZQUEZ MARTIN ULISES	1	2	86	1992-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241528	2014-09-03	2014-09-03	310210986	RODRIGUEZ LOPEZ ALMA GUADALUPE	1	6	90	1994-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241529	2014-09-03	2014-09-03	409010105	RAMOS PEREZ DANIEL	1	6	90	1990-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241530	2014-09-03	2014-09-03	413048673	HERNANDEZ MORALES VICTORIA ABRIL	1	6	90	1994-06-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241531	2014-09-03	2014-09-03	87181926	CRUZ VILLEGAS ENRIQUE	1	3	82	1971-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241532	2014-09-03	2014-09-03	GACF620718	GARCES CHAVEZ FELIPE	3	1	51	1962-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241533	2014-09-03	2014-09-03	305122262	FLORES ROMERO JENNIFER JOANNA	1	3	84	1990-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241534	2014-09-03	2015-08-18	310122742	PEREZ CRUZ ADRIAN SALVADOR	1	2	85	1994-06-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241535	2014-09-03	2014-09-03	307170039	MATEO GARCIA HECTOR	1	2	84	1991-03-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241536	2014-09-03	2014-09-03	310292740	MONROY MENDEZ VICTOR	1	1	79	1994-03-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241537	2014-09-04	2014-09-04	303227021	ROMERO DEL MORAL PILAR ARACELI	1	1	76	1987-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241538	2014-09-04	2014-09-04	106006003	TOTORICAGUENA RAYA JUAN CARLOS	1	1	90	1992-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241539	2014-09-04	2014-09-04	305222486	ALMARAZ BLANQUET ABIGAIL ALEJANDRA	1	1	79	1988-08-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241540	2014-09-04	2014-09-04	MAVI570411	MASCORRO VELARDE MARIA ISABEL	3	1	36	1957-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241541	2014-09-04	2015-08-31	311082131	SALAZAR CHAVARRIA PERLA SUSANA	1	1	84	1994-10-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241542	2014-09-04	2014-09-04	414062168	PEREZ CARREON KAREN YESSENIA	1	2	80	1994-07-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241543	2014-09-04	2014-09-04	310276467	MARTINEZ DIAZ ANAHI CITLALI	1	2	80	1994-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241544	2014-09-04	2014-09-04	310002024	GARCIA GUTIERREZ MIGUEL ANGEL	1	2	80	1993-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241545	2014-09-04	2014-09-04	309324410	SILVA GUZMAN TERESA	1	3	84	1993-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241546	2014-09-04	2016-09-26	31031470	SANCHEZ MARTINEZ JUAN ESTEBAN	1	1	85	1994-05-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241547	2014-09-04	2014-09-04	309061702	BECERRIL MONCAYO JORGE ABIRAM	1	4	79	1991-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241548	2014-09-05	2014-09-05	413047896	RAMIREZ MUÑOZ GERARDO	1	4	90	1993-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241549	2014-09-05	2014-09-05	311006166	MENDEZ TREJO GABRIELA MAGALI	1	2	84	1995-05-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241550	2014-09-05	2014-09-05	309308979	PEREZ MENDOZA ADOLFO	1	1	85	1993-05-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241551	2014-09-05	2014-09-05	409063613	CHAVEZ HERNANDEZ ELVA CAROLINA	1	1	90	1990-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241552	2014-09-05	2014-09-05	410054648	PEREZ SANCHEZ MARIO IGNACIO	1	5	78	1991-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241553	2014-09-05	2014-09-05	307684633	FIGUEROA MARTINEZ ARACELI	1	2	80	1991-07-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241554	2014-09-05	2014-09-05	309048279	CAAMAÑO TOLEDO PAMELA JOSELIN	1	1	80	1993-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241555	2014-09-05	2014-09-05	310099398	CHAPARRO GARCIA LUIS ROBERTO	1	1	85	1994-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241556	2014-09-05	2014-09-05	413082398	HERRERA LOPEZ ARMANDO	1	5	84	1973-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241557	2014-09-05	2014-09-05	311246818	MALDONADO ARZATE VANNIA GUADALUPE	1	1	86	1995-09-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241558	2014-09-05	2018-03-15	SACL640307	SAUCEDO CASTILLO LETICIA	3	2	63	1964-03-07	F	t	3	apellido p	apellido m	nombres	0	none	none	0
241559	2014-09-05	2014-09-05	514022475	LEON SANTIAGO MAYRA	1	1	90	1985-08-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241560	2014-09-05	2014-09-05	307198622	NEGRETE ORTIZ REBECA YAMILET	1	4	84	1991-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241561	2014-09-05	2014-09-05	303203900	MARIN VELAZQUEZ JUAN FRANCISCO	1	6	84	1987-02-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241562	2014-09-05	2015-03-13	413490'340	SOLIZ ANTEZANA JULIO CESAR	1	1	75	1989-06-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241563	2014-09-08	2014-09-08	EIAI680209	ESPINOLA ALVARADO IVAN RAMIRO	2	1	79	1968-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241564	2014-09-08	2014-09-08	83317132	FERNANDEZ RODRIGUEZ ELISA	1	1	80	1967-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241565	2014-09-08	2014-09-08	308050280	DIAZ OLIVARES VICTOR GABRIEL	1	4	79	1992-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241566	2014-09-08	2014-09-08	309015444	CRUZ CAMACHO JOSE FRANCISCO	1	4	79	1993-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241567	2014-09-08	2014-09-08	411051138	GONZALEZ CRUZ ANDREA JANET	1	1	83	1990-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241568	2014-09-08	2014-09-08	309008497	CALVA GARCIA GUILLERMO XCHELL	1	7	79	1993-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241569	2014-09-08	2014-09-08	411011655	GARDUÑO AGUILAR NATANAEL JESUA	1	5	85	1991-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241570	2014-09-08	2014-09-08	715030648	CALDERON VENEGAS WENDY PAOLA	1	1	76	1991-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241571	2014-09-08	2014-09-08	309127479	GONZALEZ VILLARREAL LILIANA NAZARET	1	7	80	1993-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241572	2014-09-08	2014-09-08	307523655	GARCES HARO RUBEN ALEJANDRO	1	5	90	1990-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241573	2014-09-08	2014-09-08	307125156	MARTINEZ GARCIA ARTURO	1	1	84	1991-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241574	2014-09-10	2014-09-10	308238679	LAZARO SANTANA ALEJANDRO	1	4	85	1992-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241575	2014-09-10	2016-02-04	309056072	GARCIA GALLARDO AMEYALLY VERONICA	1	1	85	1993-12-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241576	2014-09-10	2015-08-19	EAOE590713	ESPARZA OROZCO MA. EUGENIA	3	1	82	1955-07-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241577	2014-09-10	2014-09-10	311254082	NAVARRETE PEREZ JOSE ALBERTO	1	1	79	1995-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241578	2014-09-10	2014-09-10	508461954	LOPEZ VINASCO ANGELA MARIA	1	1	90	1983-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241579	2014-09-10	2014-09-10	310112426	ESCOBAR RITO XADANI SIMON	1	6	79	1994-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241580	2014-09-10	2017-02-15	310150723	MIRANDA CASTRO ANA KAREN	1	7	85	1994-08-19	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241581	2014-09-10	2015-04-24	73010001	ALATORRE RICO JAVIER	1	2	84	1957-10-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241582	2014-09-10	2015-08-11	SUGJ810224	SUAREZ GARCIA JESUS ALBERTO	2	6	83	1981-02-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241583	2014-09-10	2014-09-10	309000202	AMICONE CENTENO ADRIANA KAREN	1	3	83	1992-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241584	2014-09-10	2014-09-10	411036395	TAPIA CEDILLO VICTOR	1	1	85	1990-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241585	2014-09-10	2014-09-10	413036470	LOPEZ VELOZ FERNANDA NAYELI	1	1	80	1994-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241586	2014-09-10	2014-09-10	308218563	OLVERA MUÑOZ ANDREA	1	4	80	1992-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241587	2014-09-10	2014-09-10	308053803	GARCIA VELAZQUEZ ADINA LIZETH	1	1	89	1991-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241588	2014-09-10	2014-09-10	307324225	HERNANDEZ ZUÑIGA JUAN	1	1	81	1990-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241589	2014-09-10	2014-09-10	306580518	HEREDIA TREJO GEORGINA	1	4	84	1990-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241590	2014-09-10	2014-09-10	409030228	VALDIVIESO CONTRERAS DELIA ISABEL	1	1	80	1981-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241591	2014-09-11	2014-09-11	407039586	MARTINEZ PACHECO NALLELY	1	1	79	1986-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241592	2014-09-11	2014-09-11	310185442	GARCIA CASTILLO INGRID YAMILE	1	1	80	1993-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241593	2014-09-11	2015-08-10	308102640	RUIZ LERA ATZIN ESMERALDA	1	2	90	1995-01-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241594	2014-09-11	2014-09-11	511014817	HERMOSILLO GOMEZ JOSE ANGEL	1	4	79	1986-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241595	2014-09-11	2014-09-11	309116314	MARQUEZ GARCIA SAC NICTE BELEN	1	5	82	1993-10-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241596	2014-09-11	2014-09-11	620151074	BOLEA IONELA LARISA	1	1	85	1993-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241597	2014-09-11	2014-09-11	620151016	ARBOLEDA ZAPATA MAURICIO DE JESUS	1	1	85	1993-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241598	2014-09-11	2014-09-11	620151005	DIAZ MALDONADO JEAN PAUL	1	1	85	1992-07-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241599	2014-09-11	2014-09-11	309041342	BARANDA CRUZ OFELIA	1	2	89	1993-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241600	2014-09-11	2014-09-11	84278157	SALAZAR HERNANDEZ MARIELA	1	1	84	1968-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241601	2014-09-11	2015-03-18	308647068	GONZALEZ GUEVARA MARIA FERNANDA	1	4	90	1992-01-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241602	2014-09-11	2014-09-11	513015047	CRUZ PEREZ ALEJANDRO	1	7	84	1982-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241603	2014-09-12	2014-09-12	96202676	CONTRERAS LOPEZ LAURA DENISSE	1	2	88	1980-08-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241604	2014-09-12	2014-09-12	308267994	PEREZ VENEGAS DANIELA JOCELYN	1	1	78	1992-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241605	2014-09-12	2014-09-12	401062935	ALVARADO MARENCO JOSE LUIS	1	1	78	1982-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241606	2014-09-12	2016-11-07	31022694	PALACIOS SERRATO CARLOS ALBERTO	1	4	86	1994-03-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241607	2014-09-12	2014-09-12	90801532	MARTINEZ RIOS MARIANO EDUARDO	1	1	82	1957-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241608	2014-09-12	2017-09-14	311187315	GARCIA MARTINEZ GABRIEL	1	4	84	1995-04-16	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241609	2014-09-17	2014-09-17	HEVE850921	HERNANDEZ VELAZQUEZ ERIK ANTONIO	1	6	7	1985-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241610	2014-09-17	2017-08-18	312298975	MONROY ARELLANO TAISHA NICOLETTE	1	2	83	1996-07-19	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241611	2014-09-17	2014-09-17	414011025	URRUTIA ANGUIANO JONATHAN ALEXIS	1	4	79	1995-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241612	2014-09-17	2014-09-17	403070356	BUSTOS BRITO CELIA	1	1	90	1990-03-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241613	2014-09-17	2014-09-17	303319933	RODRIGUEZ OSNAYA ANA BELEN	1	3	84	1987-11-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241614	2014-09-18	2014-09-18	302233559	LOPEZ PERDOMO MIGUEL GUILLERMO	1	1	85	1986-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241615	2014-09-18	2014-09-18	310188515	OCHOA GUERRERO ERIKA DENISSE	1	7	84	1994-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241616	2014-09-18	2014-09-18	309044563	ALVAREZ RUANOVA KARLA LILIANA	1	5	84	1993-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241617	2014-09-18	2014-09-18	97169796	CEDILLO ACEVEDO DEYANIRA ARACELI	1	5	7	1976-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241618	2014-09-18	2014-09-18	305054161	HERNANDEZ ESCOBEDO CRISTIAN	1	1	85	1992-04-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241619	2014-09-18	2014-09-18	309137166	LUNA GUERRA CARLOS	1	4	85	1993-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241620	2014-09-18	2014-09-18	309134608	GOMEZ ZAMUDIO RICARDO	1	1	79	1993-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241621	2014-09-19	2014-09-19	310217741	LARA ANGELINO CLAUDIO RENE	1	2	80	1994-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241622	2014-09-19	2016-02-03	309119724	TOBON LEZAMA ARACELI	1	6	90	1993-08-21	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241623	2014-09-19	2014-09-19	310298278	PAREDES JIMENEZ MIGUEL ANGEL	1	6	90	1995-01-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241624	2014-09-19	2014-09-19	308669192	VELAZQUEZ FLORES IVONNE	1	5	80	1991-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241625	2014-09-19	2014-09-19	309207267	MARIN ZUÑIGA BRENDA DANIELA	1	5	80	1993-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241626	2014-09-22	2014-09-22	312012133	REZA PEREZ CLAUDIA BRISA	1	3	78	1996-04-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241627	2014-09-22	2014-09-22	310139923	PARAMO ECHEVERRIA JOSE AUGUSTO	1	4	87	1994-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241628	2014-09-22	2014-09-22	107000509	GARCIA RACILLA MARISA	1	5	82	1994-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241629	2014-09-22	2014-09-22	HEMM610526	HERNANDEZ MARTINEZ MIRNA DOLORES	3	1	90	1961-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241630	2014-09-22	2014-09-22	308253436	PAZ BARRAGAN YAZMIN	1	6	80	1991-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241631	2014-09-22	2014-09-22	413003195	GALICIA CALDERON OSVALDO	1	5	85	1992-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241632	2014-09-22	2014-09-22	309269496	SANCHEZ ROJAS LUIS MANUEL	1	2	82	1993-02-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241633	2014-09-22	2015-04-07	410061679	ORTIZ CARRILLO MARCO ANTONIO	1	1	84	1984-06-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241634	2014-09-22	2014-09-22	309330848	ZUÑIGA ORTEGA CARLOS ANTONIO	1	4	83	1993-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241635	2014-09-22	2016-03-30	311066793	ANAYA RUBIO ROBERTO PABLO	1	1	84	1995-03-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241636	2014-09-22	2014-09-22	308021192	CORREA VARGAS GUADALUPE YESSICA	1	5	90	1992-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241637	2014-09-22	2014-09-22	310054205	GARCIA RODRIGUEZ EMMANUEL RAFAEL	1	4	85	1994-06-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241638	2014-09-23	2014-09-23	310338459	VAZQUEZ QUINTANA PAULINA	1	3	79	1994-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241639	2014-09-23	2014-09-23	LOSI940523	LOUREIRO STOIANOV IVAN	1	4	90	1994-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241640	2014-09-23	2015-09-01	309045488	CERON ESCALANTE SERGIO IVAN	1	4	90	1993-08-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241641	2014-09-23	2015-08-11	310334781	VAZQUEZ RIVEROL YAHIR EDUARDO	1	4	85	1994-03-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241642	2014-09-23	2014-09-23	98004469	SANCHEZ BONILLA ALFREDO	1	2	84	1985-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241643	2014-09-23	2014-09-23	309202028	RUIZ MARRON JIMENA	1	2	84	1992-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241644	2014-09-24	2016-04-13	412053908	DELGADO SANDOVAL ADRIANA	1	1	85	1993-09-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241645	2014-09-24	2014-09-24	GUNP791014	GUTIERREZ NEIRA CAROLINA	1	1	98	1979-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241646	2014-09-24	2014-09-24	CUMG810125	CRUZ MORENO GERARDO AHMED	3	1	66	1981-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241647	2014-09-24	2014-09-24	312346856	CORTES MARTINEZ AUGUSTO	1	2	82	1992-08-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241648	2014-09-25	2014-09-25	310138819	MEDINA FLORES GERARDO RODRIGO	1	1	80	1994-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241649	2014-09-25	2014-09-25	311044030	VALADEZ GARCIA ERICK	1	1	81	1995-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241650	2014-09-25	2014-09-25	304084292	CABALLERO MENESES JONATHAN AZAEL	1	5	89	1988-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241651	2014-09-29	2014-09-29	308107542	SALAS BARRENA CITTALI	1	2	79	1992-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241652	2014-09-29	2014-09-29	310175607	MORENO VALDIVIA MARIELA	1	4	86	1994-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241653	2014-09-29	2014-09-29	3111290031	CHAVEZ JIMENEZ STEPHANY MICHELLE	1	1	84	1995-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241654	2014-09-29	2014-09-29	306240632	SOLIS SORIANO ROSALBA	1	6	85	1990-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241655	2014-09-29	2014-09-29	304193109	VALENCIA ISLAS TERESA	1	1	84	1988-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241656	2014-09-29	2014-09-29	81040214	ACOSTA CORDOVA ROSALINDA	1	1	76	1965-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241657	2014-09-29	2014-09-29	310017912	CABALLERO MUÑOZ MARTHA ALEJANDRA	1	1	90	1994-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241658	2014-09-29	2014-09-29	310335974	UGARTE HERNANDEZ ENRIQUE	1	1	85	1994-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241659	2014-09-29	2014-09-29	303054991	RIVERA GARCIA LAURA NATALY	1	1	95	1987-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241660	2014-09-29	2014-09-29	FILE730412	FRIAS LOPEZ EDGAR VLADIMIR	2	1	52	1973-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241661	2014-09-29	2014-09-29	3111300043	AMEZCUA SALGADO ILIAN SHUNASHI	1	4	79	1995-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241662	2014-09-29	2014-09-29	414046737	MORALES ESCALANTE FRANCISCO JAVIER	1	4	79	1995-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241663	2014-09-29	2014-09-29	HESM680525	HERNANDEZ SOLIS JOSE MANUEL	2	1	5	1968-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241664	2014-09-30	2014-09-30	CUDR660302	CRUZ DURAN RAMIRO	2	3	79	1966-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241665	2014-09-30	2014-09-30	312104076	FLORES BONILLA JONATAN EMMANUEL	1	4	79	1996-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241666	2014-09-30	2014-09-30	310195593	PIÑA ANAYA ADRIANA GUADALUPE	1	1	90	1993-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241667	2014-09-30	2014-09-30	303088699	LUNA VARELA XOCHITL ISABEL	1	5	7	1988-03-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241668	2014-09-30	2014-09-30	307039363	ESPINOSA GUZMAN MAGALI LIZETH	1	1	80	1991-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241669	2014-09-30	2016-10-21	308259029	MAYORAL SERRANO ADRIANA STEPHANIE	1	7	84	1992-05-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241670	2014-10-01	2014-10-01	414083817	ALDULCI RAMIREZ NADIA BELEM	1	1	84	1995-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241671	2014-10-01	2015-08-19	30703145	CASTRO GOMEZ LISETTE	1	6	85	1991-02-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241672	2014-10-01	2014-10-01	308073146	AGUIRRE LOPEZ BRENDA JACQUELINE	1	4	90	1992-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241673	2014-10-01	2014-10-01	413092717	ALZAGA ALCANTARA STEPHANIE SOFIA	1	1	76	1993-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241674	2014-10-02	2014-10-02	407102468	HERNANDEZ CARBAJAL JORGE ISABEL	1	1	80	1987-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241675	2014-10-02	2014-10-02	301000033	GODINEZ RODRIGUEZ MELISSA	1	2	80	1981-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241676	2014-10-02	2016-08-22	310317236	TRAPALA CHAVEZ CARLOS	1	4	82	1994-01-19	M	f	3	apellido p	apellido m	nombres	0	none	none	0
241677	2014-10-02	2014-10-02	308108233	SAMANO CRUZ LEONARDO ABRAHAM	1	4	90	1992-07-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241678	2014-10-02	2014-10-02	310224365	TELLEZ FLORES DANIELA	1	1	89	1994-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241679	2014-10-02	2014-10-02	FIGN881108	FICACHI GARCIA NORMA PATRICIA	1	5	87	1988-11-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241680	2014-10-03	2014-10-03	309013086	ARMENDARIZ JUAREZ KARLA MARIANA	1	6	90	1992-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241681	2014-10-03	2014-10-03	309346173	CABRERA GARCIA RUTH	1	5	78	1989-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241682	2014-10-03	2014-10-03	308046423	CERVANTES CARMONA RICARDO ALFONSO	1	3	78	1992-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241683	2014-10-03	2014-10-03	301075417	LICEA PINZON JAIME ARTURO	1	1	79	1984-04-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241684	2014-10-03	2014-10-03	415027157	AGUILERA ROSALES ROSALINDA AGUSTINA	1	1	85	1996-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241685	2014-10-03	2014-10-03	415071174	MORALES GUZMAN SIDDHARTHA EMMANUEL	1	4	79	1996-10-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241686	2014-10-03	2014-10-03	312318026	ZAMUDIO TORRES TANIA VERONICA	1	2	79	1996-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241687	2014-10-06	2014-10-06	308746958	ROMERO FAZ STEPHANIE	1	7	81	1992-08-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241688	2014-10-06	2014-10-06	307137672	NAVARRETE ROSAS ANA LUCIA	1	2	84	1991-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241689	2014-10-07	2014-10-07	307161624	SANCHEZ JERONIMO OSVALDO	1	3	90	1992-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241690	2014-10-07	2015-10-15	309012168	IBARGUENGOITIA MEJIA JENNIFER PAMELA	1	1	84	1992-09-21	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241691	2014-10-07	2014-10-07	306088447	PASCOE HERNANDEZ FERNANDA	1	2	90	1990-03-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241692	2014-10-07	2014-10-07	309072654	AVALOS DE LEON HERIBERTO	1	2	85	1993-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241693	2014-10-08	2014-10-08	312009782	MENDEZ VAZQUEZ RICARDO ISRAEL	1	4	84	1996-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241694	2014-10-08	2014-10-08	514016755	FUENTES MEJIA NORMA LIDIA	1	2	85	1987-06-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241695	2014-10-08	2014-10-08	310209871	TIRADO SANCHEZ MOISES	1	1	85	1994-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241696	2014-10-08	2014-10-08	409073386	CONTRERAS CORTES CESAR AUGUSTO	1	2	90	1990-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241697	2014-10-08	2014-10-08	309169987	MARTINEZ SANTIAGO AKETZALI NATIVIDAD	1	4	83	1993-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241698	2014-10-08	2014-10-08	414064430	GARCIA AGUIRRE RUTH PAOLA	1	1	81	1987-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241699	2014-10-09	2014-10-09	305140209	MEJIA BUENFIL PILAR	1	6	73	1989-11-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241700	2014-10-09	2014-10-09	310328164	TRILLANES SALAS TAHIRI	1	1	78	1994-06-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241701	2014-10-09	2014-10-09	RAML670513	RAMIREZ MARTINEZ LYDIA	2	2	79	1967-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241702	2014-10-09	2014-10-09	302124628	SOLANO MURILLO MONICA	1	4	5	1985-12-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241703	2014-10-09	2014-10-09	511015034	MONTES JIMENEZ SANDRA LUCIA	1	4	84	1983-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241704	2014-10-09	2014-10-09	FEGM710526	FERNANDEZ GARCIA JOSE MARTIN EFRAIN	2	1	51	1971-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241705	2014-10-09	2014-10-09	413045809	BARRETO BECERRIL ALBERTO ORLANDO	1	4	84	1987-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241706	2014-10-09	2014-10-09	41185960	MEDINA RIOJA GRECIA	1	2	79	1991-05-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241707	2014-10-10	2014-10-10	311036873	LOZANO ARRIAGA DALIA ALEJANDRA	1	1	86	1994-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241708	2014-10-10	2015-08-20	310124870	MALDONADO GARCIA MAURICIO	1	1	89	1994-06-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241709	2014-10-10	2014-10-10	310316301	SANCHEZ CORTES LUIS DAVID	1	5	84	1994-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241710	2014-10-10	2015-04-15	309064239	CADENA SANDOVAL ELIZABETH	1	3	84	1993-07-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241711	2014-10-13	2014-10-13	309016692	ANGELES AGUILLON IRVIN FERMIN	1	6	79	1993-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241712	2014-10-13	2014-10-13	308726732	MEDINA RIOJA RAUL	1	4	86	1992-11-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241713	2014-10-13	2014-10-13	310237235	JIMENEZ GONZALEZ LUIS GUILLERMO	1	1	85	1993-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241714	2014-10-13	2014-10-13	RINM820708	RIVERA NAVARRO MARISELA	3	1	25	1982-07-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241715	2014-10-13	2014-10-13	513005013	MENDEZ HERNANDEZ JOSE ABRAHAM	1	1	84	1986-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241716	2014-10-13	2014-10-13	311293661	CRUZ REYES URIEL	1	1	85	1995-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241717	2014-10-13	2014-10-13	620151041	VITE VILLEGAS OSCAR	1	1	85	1993-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241718	2014-10-13	2014-10-13	99582814	MENDOZA TORRES KARINA GRISSEL	1	4	84	1978-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241719	2014-10-14	2014-10-14	308157688	TONIX ORDUÑA XOCHITL	1	1	88	1992-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241720	2014-10-14	2014-10-14	308332832	ZAMORANO RODRIGUEZ DAVID IGNACIO	1	1	83	1991-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241721	2014-10-14	2014-10-14	412057700	BELTRAN ROSALES JAIME ESTEBAN	1	6	85	1993-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241722	2014-10-15	2014-10-15	RARL610927	RAMIREZ RUIZ LETICIA	3	2	54	1961-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241723	2014-10-15	2014-10-15	ZELR490218	ZEPEDA LEE ROCIO BERENICE	2	1	90	1949-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241724	2014-10-15	2014-10-15	308267530	PERALTA VITE DIANA ROSARIO	1	6	79	1992-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241725	2014-10-15	2014-10-15	90150744	VALDES LOPEZ MARIA ELENA	1	1	81	1974-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241726	2014-10-15	2014-10-15	308023983	CONTRERAS NORIEGA CARLOS ALBERTO	1	1	85	1992-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241727	2014-10-15	2014-10-15	310143769	FUENTES MEJIA MONSERRAT	1	4	79	1994-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241728	2014-10-15	2014-10-15	309086875	FUENTES SEGURA BRUNO ALBERTO	1	4	84	1993-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241729	2014-10-15	2014-10-15	415100506	SANCHEZ CALIXTO BEATRIZ	1	1	82	1993-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241730	2014-10-15	2014-10-15	309283304	LOPEZ GALVEZ JACQUELINE	1	1	86	1993-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241731	2014-10-15	2014-10-15	406110866	VILLANUEVA VALDEZ KAREN SUSANA	1	1	81	1977-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241732	2014-10-15	2014-10-15	301328809	LEYTE CHAVEZ KARINA	1	1	84	1985-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241733	2014-10-15	2014-10-15	310154044	PEREZ PONTON JOSE ANTONIO	1	1	85	1994-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241734	2014-10-16	2014-10-16	309018153	COLIN PADILLA VERONICA GUADALUPE	1	6	80	1993-09-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241735	2014-10-16	2014-10-16	309344344	VAZQUEZ ARANZA CARLOS LUIS	1	1	83	1993-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241736	2014-10-16	2014-10-16	309208721	PICASO FLORES ALMA ESTHER	1	6	78	1993-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241737	2014-10-16	2014-10-16	310306102	VALDEZ ALBARRAN EDGAR	1	1	82	1993-11-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241738	2014-10-17	2014-10-17	309212533	MOLINA PEREZ LUISA YURITZIN	1	6	84	1992-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241739	2014-10-17	2017-04-25	310237675	MIGUEL SUAREZ MARIANA EDITH	1	1	90	1994-04-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241740	2014-10-20	2014-10-20	412084492	CASTAÑEDA MUÑOZ JUAN CESAR	1	7	84	1986-06-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241741	2014-10-20	2014-10-20	JADK780602	JARA DURAN K. ALETHYA	2	6	83	1978-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241742	2014-10-20	2014-10-20	312046893	RIOS GALLEGOS ALMA DELIA	1	1	82	1996-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241743	2014-10-21	2014-10-21	303231053	MANTEROLA MORALES ANA MARIA	1	1	90	1987-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241744	2014-10-21	2016-09-19	311125801	GARCIA MARTINEZ MARICELA	1	5	84	1995-01-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241745	2014-10-21	2014-10-21	311260135	GARCIA URIBE ANDREA SELENA	1	2	82	1995-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241746	2014-10-21	2014-10-21	9960351	GARZA AVILA MARIANA	1	1	84	1978-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241747	2014-10-22	2017-02-03	312145886	SAN AGUSTIN TAVERA ARELI ARLETH	1	7	82	1996-10-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241748	2014-10-24	2017-02-08	310085397	HERNANDEZ FLORES PEDRO ANTONIO	1	1	73	1990-01-24	M	f	4	apellido p	apellido m	nombres	0	none	none	0
241749	2014-10-24	2014-10-24	310045577	CORREA CRUZ JOSE LUIS	1	1	85	1993-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241750	2014-10-24	2014-10-24	410017623	FLORES LARA ANGEL	1	3	78	1991-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241751	2014-10-24	2015-08-26	414048810	XOCHIHUA TLECUITL TONATIUH	1	4	89	1994-10-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241752	2014-10-27	2014-10-27	310142322	GUTIERREZ TAPIA EDUARDO	1	2	84	1993-09-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241753	2014-10-27	2014-10-27	310019806	ACEVES RODRIGUEZ SHARON ANDREA	1	2	80	1993-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241754	2014-10-27	2015-10-15	512451613	ZAGACETA SARMIENTO MARIBEL	1	3	84	1969-06-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241755	2014-10-27	2016-02-09	411051499	ORTA CORONA IRWIN ERNESTO	1	1	81	1990-01-31	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241756	2014-10-27	2014-10-27	308063648	AGUILAR CABRERA EDER CARLOS	1	4	82	1992-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241757	2014-10-27	2014-10-27	307261827	MUCIÑO MURILLO IRLANDA GERALDINE	1	1	90	1991-03-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241758	2014-10-27	2014-10-27	306293528	MARTINEZ PAREDES NORMA ARELI	1	1	90	1990-10-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241759	2014-10-29	2016-03-16	AACY830323	ALVA CASTAÑEDA YEW	2	6	85	1983-03-23	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241760	2014-10-29	2017-02-14	308081097	GONZALEZ SANCHEZ CARLOS ANTONIO	1	1	79	1991-12-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241761	2014-10-29	2015-08-11	310031473	HERMIDA ROSALES DIANA PATRICIA	1	1	80	1994-08-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241762	2014-10-29	2014-10-29	107003830	RODRIGUEZ PEREZ IRIS GABRIELA	1	1	85	1994-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241763	2014-10-29	2014-10-29	307301778	YEPEZ RODRIGUEZ ISIS MARIANA	1	3	84	1991-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241764	2014-10-29	2014-10-29	307282198	ROJAS GARDUÑO GUILLERMO	1	1	85	1991-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241765	2014-10-29	2014-10-29	311323973	VELASCO CALDERON JOSE CARLOS	1	4	90	1990-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241766	2014-10-29	2014-10-29	304191198	PACHECO CERON RODRIGO JAVIER	1	1	85	1988-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241767	2014-10-29	2016-02-09	513452730	HOLGUIN GALLEGO FERNANDO JOSE	1	1	90	1976-11-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241768	2014-10-30	2014-10-30	310214881	PEREZ CARREON ILEANE ABRIL	1	4	85	1994-03-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241769	2014-10-30	2014-10-30	310047124	DAVALOS VAZQUEZ KARLA	1	4	84	1994-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241770	2014-10-31	2014-10-31	312005928	HERNANDEZ MATA JORGE HUGO	1	1	85	1995-12-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241771	2014-10-31	2014-10-31	308254983	FLORES SALDIVAR ALEJANDRA	1	1	85	1992-05-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241772	2014-10-31	2014-10-31	308222526	HERNANDEZ HERNANDEZ GERARDO	1	1	85	1992-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241773	2014-10-31	2014-10-31	515013472	ESTRADA AVILA ALEJANDRA KARINA	1	4	90	1991-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241774	2014-11-03	2014-11-03	510020840	GUTIERREZ CABRERA ANA ERIKA	1	1	90	1981-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241775	2014-11-03	2015-08-19	308195875	VIVEROS TORRES CARLOS EDUARDO	1	7	84	1992-02-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
241776	2014-11-03	2014-11-03	407529588	LUNA GONZALEZ MARIA DE LOS ANGELES	1	1	82	1988-08-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241777	2014-11-04	2014-11-04	312257086	MARTINEZ HERNANDEZ ALONDRA GUADALUPE	1	1	82	1994-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241778	2014-11-04	2014-11-04	310121312	SANTANA CARRASCO LETICIA DENISSE	1	3	78	1994-03-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241779	2014-11-04	2014-11-04	400030245	MEZA MARQUEZ ENRIQUE	1	1	82	1980-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241780	2014-11-04	2014-11-04	105004116	PEREZ SOTO DULCE ATENEA	1	2	80	1992-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241781	2014-11-07	2014-11-07	312103880	CRUZ RANGEL CESAR ALDO	1	1	82	1995-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241782	2014-11-07	2016-02-23	413017347	AMEZCUA MONTIEL ABRIL	1	1	79	1993-06-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241783	2014-11-07	2014-11-07	307235235	FERRER ALARCON SANDRA KAREN	1	1	82	1991-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241784	2014-11-07	2014-11-07	415022839	RAMIREZ JIMENEZ IZTLI AXEL	1	1	82	1994-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241785	2014-11-07	2014-11-07	310006871	ALVAREZ BARTOLO DIANA	1	6	89	1994-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241786	2014-11-07	2014-11-07	301086015	PEREZ CELIS FERNANDO	1	3	84	1983-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241787	2014-11-07	2014-11-07	415120643	FUENTES MEJIA SALVADOR	1	1	85	1996-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241788	2014-11-10	2014-11-10	308050273	DIAZ DIAZ SANDRA GUADALUPE	1	1	80	1991-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241789	2014-11-10	2014-11-10	305325831	NAVA SARABIA TLAHUILI	1	3	84	1989-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241790	2014-11-10	2014-11-10	305262653	HERNANDEZ HERNANDEZ DIEGO IVAN	1	1	85	1989-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241791	2014-11-10	2014-11-10	312024659	MENCHACA HERNANDEZ OLGA NEITH	1	1	82	1996-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241792	2014-11-10	2014-11-10	309150895	QUIROZ RUIZ JESUS LEONARDO	1	2	80	1992-08-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241793	2014-11-12	2014-11-12	303517603	RAMIREZ GALICIA LORENA VANESSA	1	1	80	1986-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241794	2014-11-12	2014-11-12	312007441	LORANCA MOLINA GABRIELA	1	1	82	1996-07-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241795	2014-11-12	2018-05-09	311100989	TENORIO GUTIERREZ DIEGO XHAIL	1	3	84	1995-02-28	M	t	3	apellido p	apellido m	nombres	0	none	none	0
241796	2014-11-13	2015-06-08	310228710	DORANTES MARTINEZ GRACIELA ITZAYANA	1	3	80	1993-11-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241797	2014-11-13	2014-11-13	310184108	EXPOSITO MONDRAGON EDDER	1	4	85	1994-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241798	2014-11-13	2014-11-13	312060471	URBINA OJEDA CLAUDIA JEANETTE	1	1	82	1995-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241799	2014-11-13	2014-11-13	312158251	RIVAS ADAN BRENDA LIZET	1	1	82	1996-07-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241800	2014-11-13	2014-11-13	415103600	ORDOÑEZ GUEVARA MYRIAM PAOLA	1	1	82	1995-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241801	2014-11-13	2014-11-13	312093749	ZAMORANO GARCIA JOSELIN NAIROBI	1	1	82	1996-02-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241802	2014-11-14	2014-11-14	300217988	RODRIGUEZ GUDIÑO CHRISTOPHER	1	4	86	1983-04-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241803	2014-11-14	2014-11-14	415027205	GARCIA ARRIETA DIEGO HUMBERTO	1	1	82	1994-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241804	2014-11-14	2014-11-14	309056261	GALICIA MARTINEZ JUAN DANIEL	1	1	82	1993-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241805	2014-11-14	2014-11-14	312162331	DAVALOS GUZMAN JESSICA	1	1	82	1995-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241806	2014-11-14	2014-11-14	JUAE890416	JUAREZ ARROYO ELSI IDELI	2	1	90	1989-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241807	2014-11-14	2014-11-14	41019428	MIRON ENRIQUEZ AQUILES JOSE MANUEL	1	7	84	1976-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241808	2014-11-14	2014-11-14	510009469	SANCHEZ VASQUEZ LORENZO	1	2	97	1985-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241809	2014-11-18	2015-08-28	408110185	MENDOZA GUTIERREZ JAMILA SHADJEALOM	1	4	80	1989-03-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
241810	2014-11-18	2014-11-18	307244815	ORELLANA BARBOSA ALEJANDRA	1	1	79	1989-12-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241811	2014-11-24	2014-11-24	312064840	PACHECO ANTONIO ALEJANDRA	1	7	86	1996-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241812	2014-11-24	2016-09-29	310146193	ORTEGA ROCHA ELIZABETH MICHEL	1	2	79	1993-08-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
241813	2014-11-27	2014-11-27	312231105	AGUILAR GARCIA VERONICA MARGARITA	1	1	80	1996-08-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241814	2014-11-27	2014-11-27	LLLLL	NOMBRE APATERNO AMATERNO	1	1	80	1982-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241815	2014-12-01	2014-12-01	301210573	MARTINEZ MONTERO ASENET	1	1	80	1987-05-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
241816	2014-12-02	2014-12-02	308104297	QUEVEDO NAVARRO MITZIU ALBERTO	1	2	80	1991-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
241817	2014-12-04	2014-12-04	312007953	LOPEZ MARTINEZ ERIK FERNANDO	1	4	86	1996-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250924	2015-01-23	2018-08-09	AIBD841004	ARVIZO BARRAGAN DIEGO IVAN	2	1	83	1984-10-04	M	t	3	apellido p	apellido m	nombres	0	none	none	0
250925	2015-01-26	2015-01-26	309149046	MEJIA CALVO IGNACIO	1	1	90	1993-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250926	2015-01-26	2015-01-26	312219411	LOBATO RUIZ DANIELA	1	1	89	1996-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250927	2015-01-26	2015-08-14	99142931	IZAZAGA QUIROZ VERONICA	1	1	85	1981-09-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
250928	2015-01-26	2015-01-26	310053882	FRANCO LOPEZ OSCAR EDUARDO	1	4	90	1994-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250929	2015-01-26	2015-01-26	405077904	GARCIA GONZALEZ GUADALUPE	1	1	85	1986-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250930	2015-01-26	2015-01-26	309159300	ARRIETA SANTIAGO LILENY	1	1	86	1992-03-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250931	2015-01-26	2017-08-11	310348160	SALINAS HERNANDEZ ANDREA	2	1	85	1994-06-27	F	f	3	apellido p	apellido m	nombres	0	none	none	0
250932	2015-01-26	2015-01-26	309067649	GUERRERO CORONA DIEGO	1	4	90	1993-05-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250933	2015-01-27	2015-01-27	310229717	FRANCO DIAZ BRENDA MARGARITA	1	1	90	1994-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250934	2015-01-27	2015-01-27	515047156	TRIANA GALEANO VIVIAN PAOLA	1	1	85	1988-08-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250935	2015-01-27	2015-01-27	410020256	SORIANO GARCIA JOSE ANTONIO	1	1	85	1989-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250936	2015-01-27	2015-08-19	310348160	SANCHEZ CRUZ SANDRA PILAR	1	1	85	1994-06-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
250937	2015-01-27	2015-01-27	514002998	CHABLE CORTEZ ADRIANA ISABEL	1	1	90	1988-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250938	2015-01-27	2016-02-11	AGOJ920103	AGUILA OCHOA JUAN CARLOS	1	4	81	1992-01-03	M	f	3	apellido p	apellido m	nombres	0	none	none	0
250939	2015-01-27	2017-02-15	3121333058	CHAGOYA MORALES RICARDO BALAM	1	2	85	1996-11-28	M	f	3	apellido p	apellido m	nombres	0	none	none	0
250940	2015-01-27	2015-01-27	311169973	BLAZ CARRILLO LUZ MARIANA	1	4	79	1995-10-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250941	2015-01-27	2016-10-19	310043243	CASTRO HERNANDEZ DANIEL	1	3	82	1994-06-27	M	f	3	apellido p	apellido m	nombres	0	none	none	0
250942	2015-01-27	2015-10-09	311151314	CARRERA GOMEZ JOSE OSVALDO	1	1	81	1995-07-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
250943	2015-01-27	2015-01-27	31026365	ROMO AGUILAR FATIMA	1	4	78	1994-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250944	2015-01-27	2015-01-27	413083539	CAZARES VAZQUEZ EUS JONATHAN	1	1	83	1994-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250945	2015-01-27	2015-01-27	103000727	HERNANDEZ BERNAL DIEGO	1	1	80	1990-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250946	2015-01-27	2015-01-27	308303122	VEGA DE LEON ESTEBAN	1	1	90	1992-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250947	2015-01-27	2015-01-27	310123608	LADRON DE GUEVARA LOPEZ EDUARDO	1	1	85	1994-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250948	2015-01-27	2015-01-27	307292706	VAZQUEZ MORAN DIANA	1	2	80	1991-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250949	2015-01-28	2015-01-28	TARJ910508	TRAPALA REYNA JONATHAN	2	1	90	1991-05-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250950	2015-01-28	2015-01-28	311207617	AGUILAR LICONA MARCO ANTONIO	1	7	85	1995-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250951	2015-01-28	2015-01-28	412053771	ZAVALA CRUZ CUAUHTEMOC	1	1	90	1992-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250952	2015-01-28	2015-01-28	OIMC651122	OVIEDO MENDIOLA MARIA CECILIA	1	1	7	1965-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250953	2015-01-28	2015-01-28	312676674	VARGAS SOSA MAURICIO EMILIO	1	4	89	1994-11-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250954	2015-01-28	2015-01-28	402076159	GONZALEZ GUZMAN JUAN FIDEL	1	1	82	1982-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250955	2015-01-28	2017-03-23	310100766	GARCIA ROMERO JOSE IVAN	1	3	80	1994-12-03	M	f	4	apellido p	apellido m	nombres	0	none	none	0
250956	2015-01-28	2016-09-23	414001709	TORRES PEREZ MIGUEL SALVADOR	1	1	90	1995-01-13	M	f	4	apellido p	apellido m	nombres	0	none	none	0
250957	2015-01-28	2015-01-28	308101368	ZENIL CRUZ ALEJANDRA	1	6	79	1992-10-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250958	2015-01-28	2015-01-28	308036901	AUSTRIA MARTINEZ YARA ITZEL	1	5	80	1992-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250959	2015-01-28	2015-01-28	307215772	MANJARREZ HERNANDEZ ESTEFANY BERENICE	1	2	74	1991-05-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250960	2015-01-29	2015-01-29	310276175	MORENO NAVA DIANA	1	1	90	1994-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250961	2015-01-29	2015-01-29	311064098	GALICIA ROJAS BRENDA	1	1	83	1995-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250962	2015-01-29	2015-01-29	310111326	ESPINOZA PEREZ LUIS DAVID	1	1	90	1994-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250963	2015-01-29	2015-09-18	414068177	PEREZ GOMEZ JORGE ALBERTO	1	1	85	1995-01-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
250964	2015-01-29	2015-01-29	PAPA910509	PADILLA PALAFOX ADELAIDO ANDREY	1	1	84	1991-05-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250965	2015-01-29	2015-01-29	309187659	CHAVEZ CASARRUBIAS ITZEL	1	1	90	1993-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250966	2015-01-29	2015-01-29	309073156	CERVANTES RUIZ ANA KAREN	1	2	78	1992-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250967	2015-01-29	2016-02-03	310195108	MONDRAGON HERNANDEZ AIMEE	1	2	90	1993-12-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
250968	2015-01-29	2015-01-29	GORJ510210	GONZALEZ ROBLEDO JOAQUIN	1	6	7	1951-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250969	2015-01-30	2015-01-30	80336280	MARTINEZ ENRIQUEZ NATIVIDAD	1	6	7	1964-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250970	2015-01-30	2015-01-30	413078005	DELGADO RODRIGUEZ KAREN JANETH	1	1	80	1994-05-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250971	2015-01-30	2015-01-30	311058495	BENITEZ REYES SANDRA ANGELICA	1	3	90	1995-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250972	2015-01-30	2015-01-30	311132054	MARQUEZ AVILES RAUL	1	1	90	1995-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250973	2015-01-30	2017-09-07	311033171	ALCANTARA TORRES MARIANA YOLOTZIN	1	4	79	1995-09-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
250974	2015-01-30	2015-01-30	310136262	XOCHIPA FLORES BRAYAN	1	5	81	1994-06-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250975	2015-01-30	2015-01-30	414046081	FLORES MARCIAL ESMERALDA	1	2	82	1991-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250976	2015-01-30	2015-01-30	308181609	LUNA OLVERA ALAN MARTIN	1	7	85	1992-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250977	2015-01-30	2015-01-30	309207731	MARIN PEREZ SANDRA	1	5	84	1993-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250978	2015-01-30	2015-01-30	310113241	GARCIA ROBLES ISRAEL	1	4	85	1994-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250979	2015-01-30	2015-01-30	310290571	VARGAS HERNANDEZ AIDEE SAMANTHA	1	4	90	1994-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250980	2015-01-30	2015-01-30	415705257	CRUZ CORTES ALVARO DANIEL	1	1	79	1996-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250981	2015-01-30	2015-01-30	312343226	OSORNIO CALDERON JONATHAN JAIR	1	2	84	1995-03-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250982	2015-01-30	2015-01-30	414136982	LOZANO MARSCH TANIA MARINA	1	4	84	1992-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250983	2015-01-30	2015-01-30	103005856	HUERTA MORENO FRE	1	5	84	1990-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250984	2015-02-03	2015-02-03	311318054	BECERRIL RENDON SAUL ALEJANDRO	1	4	85	1995-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250985	2015-02-03	2015-02-03	310279970	LOPEZ ORTEGA CARMEN HAIDE	1	4	85	1994-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250986	2015-02-03	2015-02-03	308319385	TROCHE GONZALEZ EDGAR DANIEL	1	7	90	1992-09-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250987	2015-02-03	2016-03-28	310189282	PICHU BARRAZA LIZBETH	1	1	81	1994-05-25	F	f	3	apellido p	apellido m	nombres	0	none	none	0
250988	2015-02-03	2015-02-03	514022994	VILLANUEVA SANCHEZ LUIS FELIPE	1	1	90	1990-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250989	2015-02-03	2015-02-03	308251913	GONZALEZ GARZON ALEJANDRA	1	7	90	1992-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250990	2015-02-03	2015-02-03	310679916	SANCHEZ CECEÑA JIMENA	1	2	80	1994-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250991	2015-02-03	2015-02-03	31019556	MIRANDA NUÑEZ KRISTHY VIOLETA	1	2	80	1994-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250992	2015-02-03	2015-02-03	414056462	MALDONADO GODOY MIGUEL EMILIO	1	1	85	1995-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250993	2015-02-03	2015-02-03	413049876	PEREZ SARABIA VICTOR MANUEL	1	4	85	1993-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250994	2015-02-03	2015-02-03	311004959	HARFUCH DIAZ BARRIGA MANUEL	1	1	85	1995-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250995	2015-02-03	2015-02-03	MALR741228	MARTINEZ LOPEZ ROSALBA	2	1	85	1974-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250996	2015-02-03	2015-02-03	4110085455	TINAJERO DELGADO VERONICA	1	1	90	1991-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
250997	2015-02-03	2015-08-11	312090205	URIBE TAPIA LAURA ANGELICA	1	1	81	1996-08-08	F	f	2	apellido p	apellido m	nombres	0	none	none	0
250998	2015-02-03	2015-02-03	92269097	GARCIA BOTELLO NOE IVAN	1	1	84	1976-02-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
250999	2015-02-03	2015-02-03	309259943	RAMIREZ BAUTISTA MARCO ANTONIO	1	1	85	1993-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251000	2015-02-03	2015-08-17	312301024	PATRICIO FAJARDO YAIR ALBERTO	1	2	85	1996-01-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251001	2015-02-03	2015-02-03	308273937	MOTA PADILLA GABRIELA ALEJANDRA	1	1	85	1992-07-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251002	2015-02-03	2015-02-03	309108700	NAVARRO GARCIA THANIA GUADALUPE	1	1	85	1993-08-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251003	2015-02-03	2015-08-17	412005237	VAZQUEZ LOPEZ ANDRES	1	7	85	1993-07-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251004	2015-02-05	2015-02-05	411049478	ARIAS VELAZQUEZ GILBERTO	1	1	83	1992-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251005	2015-02-05	2015-02-05	312323244	MALDONDO ELIZONDO LUIS SANTIAGO	1	6	82	1990-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251006	2015-02-05	2015-02-05	310002639	BAEZA TICORRAL CAROL FERNANDA	1	1	80	1994-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251007	2015-02-05	2015-02-05	305584331	DE LA CUEVA ESCANDON GUILLERMO ANTONIO	1	1	85	1988-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251008	2015-02-05	2015-08-13	415050511	OLGUIN GOMEZ DIANA ALEJANDRA	1	5	84	1996-06-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251009	2015-02-05	2015-02-05	309693082	RODRIGUEZ MONDRAGON SEBASTIAN	1	3	82	1992-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251010	2015-02-05	2018-03-16	307106762	GONZALEZ MARTINEZ ARMANDO	1	1	90	1991-10-28	M	t	2	apellido p	apellido m	nombres	0	none	none	0
251011	2015-02-05	2016-08-31	304086265	CASTILLO ZAMORA VICTOR MANUEL	1	1	79	1988-05-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251012	2015-02-05	2015-02-05	105002019	MARTINEZ PEREZ NADIA	1	1	79	1992-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251013	2015-02-05	2015-02-05	306065206	ALVAREZ FIERRO JOZET ALFREDO	1	1	84	1990-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251014	2015-02-05	2015-02-05	414031014	RIOS RODRIGUEZ MARIO YUSEL	1	1	83	1993-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251015	2015-02-05	2015-02-05	312177171	NORZAGARAY MARQUEZ CARLOS ALFREDO	1	1	85	1996-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251016	2015-02-05	2015-02-05	309127620	PEREZ CERON MARCOS RAFAEL	1	1	85	1993-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251017	2015-02-05	2015-02-05	307085339	HERNANDEZ BERBER LIDIA CITLALI	1	5	78	1986-11-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251018	2015-02-05	2015-02-05	306198605	RAMOS VELAZQUEZ LUIS DANIEL	1	4	90	1991-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251019	2015-02-05	2018-03-16	312192347	ESTRELLA MENDEZ JULIO ALEJANDRO	1	4	84	1996-03-30	M	t	5	apellido p	apellido m	nombres	0	none	none	0
251020	2015-02-05	2017-08-18	309250782	MORALES FIESCO ALMA ROSA	1	7	85	1993-01-11	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251021	2015-02-05	2015-02-05	VEDA500301	VELASQUEZ OLIVA ANDRES	1	6	7	1950-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251022	2015-02-05	2015-02-05	307126823	CONTRERAS DE MATA YOVANNI	1	1	82	1991-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251023	2015-02-05	2017-10-27	309233093	BETANCOURT NAVARRETE CARLOS ANDRES	1	1	85	1993-07-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251024	2015-02-05	2015-10-02	411037914	ORTA MENDEZ Y SANCHEZ ITZEL	1	1	90	1991-02-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251025	2015-02-05	2015-02-05	311114052	GOMEZ ORTIZ ROBERTO DANIEL	1	1	78	1995-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251026	2015-02-05	2015-02-05	31113550	CORONEL RODRIGUEZ ALMA	1	1	85	1995-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251027	2015-02-05	2015-02-05	415101699	HURTADO ULLOA HECTOR LEONARDO	1	1	79	1991-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251028	2015-02-05	2015-02-05	310234117	OLVERA LOPEZ ELIZABETH JAZMIN	1	1	85	1994-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251029	2015-02-05	2015-02-05	309086923	GONZALEZ DANIS DIANA SOFIA	1	1	84	1992-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251030	2015-02-06	2015-02-06	411133377	RODRIGUEZ YAÑEZ LILIAN EDITH	1	1	84	1980-06-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251031	2015-02-06	2015-02-06	312214351	GUADARRAMA MEDINA YARAVI	1	3	89	1996-07-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251032	2015-02-06	2015-02-06	310043786	ALONSO BASTOS DANIEL ALEJANDRO	1	1	85	1994-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251033	2015-02-06	2015-02-06	MIHJ890422	MILLAN HERNANDEZ JESSICA MICHELLE	3	5	60	1989-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251034	2015-02-06	2015-02-06	414007378	PAZZI MANZANO EFREN	1	1	85	1994-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251035	2015-02-06	2015-02-06	515002881	CERVANTES PAUL KARLA	1	1	78	1989-11-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251036	2015-02-06	2015-02-06	95079318	CORONADO RUIZ RAUL	1	1	78	1978-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251037	2015-02-06	2018-03-13	RUMB820729	RUVALCABA MONTOYA BRENDA LILIANA	3	3	150	1982-07-29	F	t	6	apellido p	apellido m	nombres	0	none	none	0
251038	2015-02-09	2015-02-09	413024260	MORALES MEDINA SAMANTHA KAREN	1	3	78	1993-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251039	2015-02-09	2015-08-12	310008603	COQUIS ROMERO CHRISTOPHER	1	1	85	1993-10-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251040	2015-02-09	2015-02-09	310009566	ESPINOSA IBARRA MONICA PAMELA	1	4	90	1994-04-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251041	2015-02-09	2015-02-09	307055244	HERNANDEZ SANTILLAN ZAIRA CELINA	1	1	80	1990-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251042	2015-02-09	2015-08-19	3111172386	GUADARRAMA ACEVEDO MONICA CITLALLI	1	1	90	1995-08-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251043	2015-02-09	2015-02-09	312112507	REYES SANTOS JOSE CARLOS	1	7	85	1996-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251044	2015-02-09	2015-02-09	87380710	ELIZONDO GARDUÑO KARINA	1	5	84	1970-08-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251045	2015-02-09	2015-02-09	300214406	SALUD RAMIREZ VICTOR MANUEL	1	4	82	1983-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251046	2015-02-09	2015-02-09	309327727	URIOSTEGUI COHUO DILSY YANELI	1	1	73	1993-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251047	2015-02-09	2015-02-09	412009022	VILLEGAS ORNELAS FRANCISCO ESAU	1	5	90	1994-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251048	2015-02-09	2018-03-02	302098682	RAMIREZ VARONA EDER MAURICIO	1	1	90	1986-10-05	M	t	3	apellido p	apellido m	nombres	0	none	none	0
251049	2015-02-09	2016-02-04	312273187	CHAVARIN MIRANDA ZAIRA AZUCENA	1	1	84	1996-01-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251050	2015-02-09	2015-08-21	409001642	CASADO HERNANDEZ JOSE CRUZ	1	1	85	1981-04-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251051	2015-02-09	2015-02-09	309020095	FLORES MAZUCA GWENDOLYN ANAIS	1	1	86	1992-12-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251052	2015-02-09	2015-02-09	312676722	VELASQUEZ BOGGERO MONTSERRAT	1	3	80	1995-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251053	2015-02-09	2016-02-03	310159221	ROLDAN PORTAL ANGELICA	1	6	90	1994-11-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251054	2015-02-09	2018-05-09	310090625	CONTRERAS RESENDIZ BRIAN	1	2	85	1994-02-13	M	t	5	apellido p	apellido m	nombres	0	none	none	0
251055	2015-02-09	2015-02-09	309130820	VARGAS BLANCO OSVALDO NAUM	1	5	84	1993-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251056	2015-02-09	2015-02-09	CAMD900826	CALDERON MOSQUEDA DIEGO	1	5	7	1990-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251057	2015-02-09	2015-02-09	307222705	MARCIAL BAZALDUA NANCY GABRIELA	1	1	90	1990-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251058	2015-02-09	2015-02-09	310315184	SANCHEZ ALVAREZ MONSSERRAT	1	5	80	1994-01-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251059	2015-02-09	2015-10-26	309195799	JUAREZ PANIAGUA DANIEL	1	2	80	1992-11-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251060	2015-02-09	2015-02-09	309233749	CRESPO ESTRELLA JUDITH ITZEL	1	6	90	1993-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251061	2015-02-09	2015-02-09	311332553	ROSALES GOMEZ EFREN ALDAIR	1	2	85	1994-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251062	2015-02-09	2015-02-09	310020655	ARAUJO SANCHEZ ANDREA	1	5	82	1994-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251063	2015-02-09	2015-02-09	414052907	MORAN TUZ JAIME MIGUEL	1	1	79	1995-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251064	2015-02-09	2015-02-09	311106833	GUTIERREZ LOPEZ JAVIER JOAN	1	2	85	1995-02-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251065	2015-02-09	2015-02-09	415054485	AGUILAR DIAZ EDGAR MIGUEL	1	1	85	1996-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251066	2015-02-09	2015-02-09	303298108	TELLEZ JIMENEZ OLIVIA	1	2	79	1987-01-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251067	2015-02-09	2015-02-09	310007191	BARRERA HERNANDEZ DIANA GUADALUPE	1	4	85	1994-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251068	2015-02-09	2015-02-09	310077439	ESCAMILLA SERRANO LESLIE GEORGINA	1	3	78	1993-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251069	2015-02-09	2015-02-09	308044412	CABRERA RUIZ NANCY MIRIAM	1	1	82	1991-12-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251070	2015-02-09	2015-02-09	305180981	MARTINEZ ARREOLA MARIA GUADALUPE	1	1	85	1990-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251071	2015-02-10	2015-02-10	309063627	BASTIDA COLIN ERNESTO ALEJANDRO	1	4	90	1993-01-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251072	2015-02-10	2015-02-10	312285108	BERMUDEZ TORRES MARCOS ALBERTO	1	7	84	1996-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251073	2015-02-10	2018-08-16	312056078	MANRIQUE BENCES TOPACIO MALINALI	1	1	85	1995-12-19	F	t	3	apellido p	apellido m	nombres	0	none	none	0
251074	2015-02-10	2015-02-10	407045660	TELIS ALVAREZ JAVIER ULISES	1	7	85	1983-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251075	2015-02-10	2015-02-10	306099667	BUENDIA AGUILAR SAULO	1	7	90	1990-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251076	2015-02-10	2015-09-07	309284703	REYES LOPEZ IRVING IVAN	1	1	85	1993-11-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251077	2015-02-10	2015-10-21	311176229	OROZCO SASIAN MARIANA	1	5	80	1994-06-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251078	2015-02-10	2015-02-10	302195002	SOLIS ANGUIANO LUIS GERARDO	1	5	73	1992-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251079	2015-02-10	2015-02-10	308130944	LORETO GARCIA DIANA	1	3	84	1992-07-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251080	2015-02-10	2016-08-16	303027254	LOPEZ HERNANDEZ HUGUETTE ALEJANDRA	1	6	84	1987-05-08	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251081	2015-02-10	2015-02-10	310043951	ANTONIO JASSO EVELIN JACQUELINE	1	2	80	1994-12-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251082	2015-02-10	2015-08-25	303244703	MORALES PALACIOS ANDRES	1	1	85	1987-11-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251083	2015-02-10	2015-02-10	310746614	RANGEL OLIVA MARIANA ZARAHI	1	1	80	1994-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251084	2015-02-10	2015-02-10	309082004	GUTIERREZ VIEYRA ANGELES BRITANI	1	1	80	1992-01-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251085	2015-02-10	2015-02-10	309220422	LOZANO ALCANTARA MIGUEL ANGEL	1	1	84	1993-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251086	2015-02-10	2015-02-10	311176762	OCAMPO RANGEL CARLA MARIEL	1	7	84	1995-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251087	2015-02-10	2015-02-10	307105208	GARCIA ORDAZ JULIO YAMIR	1	1	85	1991-07-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251088	2015-02-10	2015-02-10	310008480	CORTES VICENTE CAROLINA PERLA	1	1	80	1993-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251089	2015-02-11	2015-02-11	311594341	MEDINA GARCIA JORGE ENRIQUE	1	4	85	1994-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251090	2015-02-11	2015-02-11	310072238	VILLANUEVA MACIAS JOSE	1	1	90	1993-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251091	2015-02-11	2015-02-11	414044276	MASSIMI CERVANTES DIEGO	1	2	84	1994-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251092	2015-02-11	2015-02-11	3100059530	BERMUDEZ MIRELES JUANITA	1	1	82	1993-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251093	2015-02-11	2015-08-14	309036777	ALVAREZ ROMERO BRENDA PATRICIA	1	1	85	1993-01-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251094	2015-02-11	2015-02-11	305128401	MARTINEZ DIAZ VICTOR ALEJANDRO	1	6	81	1988-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251095	2015-02-11	2015-02-11	310022965	DUARTE ANGLES JOSE LUIS	1	5	80	1994-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251096	2015-02-11	2015-08-26	312090683	VELAZQUEZ VAZQUEZ MONTSERRAT REGINA	1	2	89	1996-01-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251097	2015-02-12	2015-02-12	VAGR520426	UGALDE GONZALEZ ROSALBA	2	6	150	1952-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251098	2015-02-12	2015-02-12	307179733	DIAZ SALAZAR JESSICA	1	3	89	1991-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251099	2015-02-12	2015-02-12	309125482	CAMARENA HERNANDEZ ANAHI	1	5	79	1992-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251100	2015-02-12	2015-02-12	311090556	JURADO ALVAREZ HUMBERTO	1	1	84	1995-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251101	2015-02-12	2015-02-12	310724339	FUGAROLAS GOMEZ WALTER GERARDO	1	2	90	1993-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251102	2015-02-12	2016-10-03	JAPN901217	JACQUES PEÑA NAYELLI BERENICE	1	7	7	1990-12-17	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251103	2015-02-12	2015-02-12	91593937	LEAL VELAZQUEZ ROSAURA	1	5	78	1972-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251104	2015-02-12	2015-02-12	309344124	ZUÑIGA CASTELLANOS FRANCISCO MANUEL	1	4	85	1993-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251105	2015-02-12	2015-02-12	310251844	MONDRAGON GARCIA JULIO CESAR	1	5	84	1994-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251106	2015-02-12	2015-02-12	308289365	OLIVARES YAÑEZ ALEJANDRA	1	1	81	1992-03-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251107	2015-02-12	2015-02-12	309213358	MENDEZ HERNANDEZ TAMARA	1	1	80	1993-06-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251108	2015-02-12	2015-02-12	309241016	MORALES GUERRERO CARLOS	1	1	86	1993-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251109	2015-02-12	2015-02-12	309188209	ESCORCIA PEREZ ISAURA SANDRA	1	2	82	1993-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251110	2015-02-12	2015-02-12	412051928	OCHOA ROMERO LILIA	1	4	85	1992-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251111	2015-02-12	2015-02-12	311192337	ORTIZ LOYOLA CASTAÑEDA ANDRE	1	2	81	1996-06-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251112	2015-02-12	2015-02-12	308001653	FRANCO SANTILLAN ALEJANDRO	1	2	81	1992-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251113	2015-02-13	2015-02-13	310117988	LUNA BASTIDA ERIKA FERNANDA	1	7	87	1994-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251114	2015-02-13	2015-02-13	SAAR800702	SANCHEZ AGUILERA MARIA DEL RAYO	2	1	84	1980-07-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251115	2015-02-13	2015-02-13	311295139	JUAN LOPEZ MIGUEL ANGEL	1	1	85	1995-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251116	2015-02-13	2015-02-13	514024967	VILLARREAL RUVALCABA MARTA	1	4	82	1971-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251117	2015-02-13	2015-02-13	309319247	SANCHEZ PEREZ IVAN	1	1	81	1993-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251118	2015-02-13	2015-02-13	515002180	TORICES CARRANCO MARIA DEL PILAR	1	1	81	1978-10-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251119	2015-02-13	2015-02-13	514010368	LOYA GUERRERO ADRIANA DIOCELINE	1	2	82	1986-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251120	2015-02-13	2015-10-02	300031249	PIZANO MEDINA NELY VERONICA	1	1	82	1984-01-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251121	2015-02-16	2017-10-09	413012397	MIRANDA OLVERA JOSE LUIS	1	1	79	1992-12-24	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251122	2015-02-16	2015-02-16	310000343	BERNAL CEDILLO EMILIANO JESUS	1	3	80	1994-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251123	2015-02-16	2015-02-16	312042785	JACINTO FRANCISCO LUIS EDUARDO	1	7	90	1996-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251124	2015-02-16	2015-02-16	310110491	OLGUIN GARCIA ALMA PATRICIA	1	1	89	1994-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251125	2015-02-16	2015-02-16	87387197	BECERRA HERNANDEZ FLORENCIA	1	1	84	1969-07-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251126	2015-02-16	2015-02-16	CUMC930807	CUAHUTENCOS MEZA CYNTHIA	1	1	78	1993-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251127	2015-02-16	2015-02-16	411004141	RAMIREZ VEGA ALAN ENRIQUE	1	1	90	1992-04-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251128	2015-02-16	2015-02-16	AIGM790602	AMILPAS GARCIA MONICA SUSANA	2	4	80	1979-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251129	2015-02-16	2015-02-16	310301073	OLVERA MACIEL MIGUEL ANGEL	1	2	84	1994-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251130	2015-02-16	2015-02-16	312333814	CISNEROS NOLASCO DALIA	1	1	81	1996-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251131	2015-02-16	2015-02-16	307632658	ROMERO CRUZ ALONSO	1	4	78	1990-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251132	2015-02-16	2015-02-16	411008321	GUTIERREZ HERNANDEZ ERIKA IVETTE	1	4	78	1991-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251133	2015-02-16	2015-02-16	310327507	SALINAS SALINAS ALEJANDRA	1	1	89	1994-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251134	2015-02-16	2015-08-19	309233172	BUSTAMANTE VALDEZ JACQUELYN MONTSERRAT	1	3	82	1994-01-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251135	2015-02-17	2015-02-17	307561354	GUTIERREZ OLGUIN GABRIELA	1	7	79	1990-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251136	2015-02-17	2015-02-17	307063841	CARRILLO SANCHEZ CINTHYA BARBARA	1	1	85	1990-07-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251137	2015-02-17	2015-02-17	413043960	RODRIGUEZ ZARAGOZA DIANA LAURA	1	1	85	1994-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251138	2015-02-17	2015-02-17	410091371	BOTELLO RUEDA JORGE ADRIAN	1	1	90	1989-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251139	2015-02-17	2015-02-17	JUMP810211	JURADO PINEDA MAYVERENA	2	1	85	1981-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251140	2015-02-17	2015-02-17	414060676	MENDEZ MORENO ITA	1	7	84	1990-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251141	2015-02-17	2015-02-17	411098892	URIBE ESPEJEL ALMA LILIANA	1	1	78	1991-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251142	2015-02-17	2015-02-17	412002559	CRUZ VENEGAS NOEL ALBERTO	1	1	79	1993-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251143	2015-02-17	2015-02-17	303040866	ROSSAINZ RODRIGUEZ OMAR MOISES	1	5	84	1986-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251144	2015-02-17	2015-02-17	310228741	ESPEJEL VALENTIN MARIA FERNANDA	1	3	80	1994-03-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251145	2015-02-17	2015-02-17	414014583	RAMIREZ VAZQUEZ VIRIDIANA	1	1	80	1995-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251146	2015-02-17	2015-02-17	411088765	ISAAC MARTINEZ MIGUEL	1	1	85	1988-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251147	2015-02-17	2015-09-17	304286726	GUADALUPE MARTINEZ JAVIER	1	3	84	1988-08-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251148	2015-02-18	2015-02-18	303112033	CHAVEZ AGUILAR ELIZABETH YAZMIN	1	1	84	1987-09-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251149	2015-02-18	2015-09-02	412046384	GARCIA TORIBIO DENIA ISHTAR	1	1	84	1992-11-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251150	2015-02-18	2015-09-11	31011160	GRANADOS FLORES LUCERO ANAHY	1	3	80	1994-01-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251151	2015-02-18	2015-02-18	311284191	SERRANO CRUZ IRVING ALBERTO	1	1	83	1995-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251152	2015-02-18	2016-04-14	410023958	AULIS GARCIA ROSA ELIDETH	1	1	85	1991-05-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251153	2015-02-18	2016-09-14	415073288	GONZALEZ CHAVEZ CELSO RAFAEL	1	1	80	1996-06-04	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251154	2015-02-18	2017-04-21	308213472	PEÑA DE LA PAZ ENRIQUE	1	1	85	1992-08-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251155	2015-02-19	2015-02-19	309282194	GONZALEZ BLANCO VICTOR ENRIQUE	1	1	90	1993-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251156	2015-02-19	2015-02-19	311102787	AVELAR CORREA RODRIGO ELIAS	1	6	80	1995-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251157	2015-02-19	2015-02-19	307041281	FLORES AVILA OSCAR IVAN	1	7	85	1991-08-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251158	2015-02-19	2015-02-19	HERR720524	HERNANDEZ RODRIGUEZ ROCIO ANGELICA	3	2	150	1972-05-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251159	2015-02-19	2015-02-19	415024204	GASTELLOU PERALTA GISELLE AZUCENA	1	2	79	1995-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251160	2015-02-19	2015-02-19	EABM881224	ESTRADA BALTAZAR MARTIN JESUS	1	5	88	1988-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251161	2015-02-19	2015-02-19	312346935	RODRIGUEZ URIBE DIEGO EDUARDO	1	2	80	1995-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251162	2015-02-19	2015-02-19	AACY870427	ALVAREZ CONTRERAS YARELY MONSERRAT	2	7	85	1987-04-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251163	2015-02-19	2015-02-19	415007247	LOPEZ PACHECO URIEL	1	2	80	1990-05-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251164	2015-02-19	2015-02-19	411011466	RAMOS MORALES ALBERTO	1	1	79	1991-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251165	2015-02-19	2015-02-19	ROVR690123	ROSALES VILLEGAS RAYMUNDO	3	1	88	1969-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251166	2015-02-20	2015-08-26	310049496	GARCIA HINOJOSA CINTHIA	1	4	78	1994-05-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251167	2015-02-20	2017-08-09	415046998	ZARCO LEON ERIKA MONSERRAT	1	1	81	1996-02-08	F	f	5	apellido p	apellido m	nombres	0	none	none	0
251168	2015-02-20	2015-02-20	310347675	NOCELO ZAZUETA MARCO ANTONIO	1	4	83	1994-05-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251169	2015-02-20	2015-02-20	302787708	JURADO CASTAÑEDA EMILIANO	1	1	88	1986-08-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251170	2015-02-20	2015-02-20	402110424	CASTILLO PEREZ NORA ENRIQUETA	1	1	88	1975-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251171	2015-02-20	2015-02-20	411079123	OLVERA ORIVAS ELSA MARIA	1	1	82	1992-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251172	2015-02-23	2015-02-23	410023532	JURADO CAMACHO PEDRO ALFONSO	1	1	86	1991-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251173	2015-02-23	2017-02-08	310228253	TRAPALA NAVA GABRIELA	1	2	85	1993-11-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251174	2015-02-23	2015-02-23	306044911	OROPEZA GONZALEZ LUIS AARON	1	1	86	1988-12-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251175	2015-02-23	2015-02-23	309168911	MARQUEZ FLORES LUCERO LIZETH	1	1	86	1993-09-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251176	2015-02-23	2015-02-23	308071087	AGUILAR ZUÑIGA GIBRAN	1	4	79	1992-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251177	2015-02-23	2015-02-23	AUSB620611	AGUILAR SANCHEZ BERTHA	2	1	81	1962-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251178	2015-02-23	2015-02-23	308271483	JIMENEZ GARCIA MARTIN	1	7	79	1991-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251179	2015-02-23	2015-02-23	310262796	ROMO GONZALEZ ANDREA GUADALUPE	1	2	89	1994-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251180	2015-02-23	2015-02-23	307327068	MAYORGA VERGARA ALVARO JOSE	1	1	90	1991-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251181	2015-02-23	2015-02-23	310599489	GUTIERREZ RODRIGUEZ DANIELA	1	5	80	1993-12-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251182	2015-02-23	2015-02-23	307090038	AQUINO DEL ANGEL JOSE ALBERTO	1	1	85	1991-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251183	2015-02-23	2015-02-23	309131126	VILLASEÑOR SAUCEDO RODRIGO	1	1	85	1993-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251184	2015-02-23	2015-02-23	415146397	RAMIREZ GUDIÑO MIGUEL	1	1	83	1988-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251185	2015-02-23	2015-02-23	310237369	LANDA VERA GABRIEL	1	1	85	1993-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251186	2015-02-24	2016-02-02	413079497	OSORIO MORALES JESUS ARTEMIO	1	6	90	1993-11-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251187	2015-02-24	2015-02-24	308022845	ESCAMILLA LEINES ELSY ANAHI	1	1	82	1992-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251188	2015-02-24	2015-02-24	309044329	ESTRADA LUNA NESTOR	1	1	85	1993-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251189	2015-02-24	2015-02-24	308181166	HERNANDEZ ROSALES DULCE CAROLINA	1	2	79	1992-08-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251190	2015-02-24	2015-02-24	310071437	AVIÑA MILPAS IRWIN RAUL	1	1	85	1994-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251191	2015-02-24	2015-02-24	405083655	BELMARES FERNANDEZ MICHEL	1	2	78	1986-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251192	2015-02-24	2015-02-24	310212959	MEDINA GARCIA ARTURO	1	2	85	1994-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251193	2015-02-24	2015-02-24	412118647	SUCHKOVA IANA ALEXANDROVNA	1	1	7	1974-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251194	2015-02-25	2017-03-13	414092624	TURANZAS CHIMALPOPOCA PAULINO DE JESUS	1	1	81	1989-11-16	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251195	2015-02-25	2015-02-25	306243949	JUAREZ REBOLLO DULCE CAROLINA	1	3	73	1990-06-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251196	2015-02-25	2015-02-25	311182085	DEVORA GARCIA BRANDON EMMANUEL	1	1	79	1995-10-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251197	2015-02-25	2015-02-25	514016243	NAVA GALINDO ERICK	1	4	84	1985-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251198	2015-02-25	2015-02-25	309342333	ZAPATERO JACINTO EDGAR ALAM	1	2	87	1993-09-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251199	2015-02-25	2015-02-25	310240150	CABRERA PERALTA SEBASTIAN DARIEN	1	1	79	1994-04-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251200	2015-02-25	2015-02-25	504025129	MIRANDA GAMBOA JOSE ZYNHUE	1	1	85	1988-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251201	2015-02-25	2015-02-25	414065767	MENCHACA SIERRA MADIAN SINAI	1	6	82	1995-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251202	2015-02-25	2015-02-25	310017493	CASTRO YAÑEZ NICOLAS ALEJANDRO	1	3	85	1994-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251203	2015-02-25	2017-03-01	409017104	PONCE GARCIA GLORIA	1	1	94	1982-11-20	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251204	2015-02-25	2015-02-25	309262765	MORALES GONZALEZ BEATRIZ	1	1	82	1993-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251205	2015-02-25	2015-02-25	411001810	CURIEL NAJAR MAURICIO	1	1	82	1974-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251206	2015-02-25	2015-02-25	302522550	CORONA OJEDA GUSTAVO	1	1	113	1986-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251207	2015-02-26	2015-02-26	312106898	MARQUEZ ROJAS JESUS	1	4	83	1996-03-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251208	2015-02-26	2015-02-26	307166337	JIMENEZ LIRA NIDIA EDITH	1	3	78	1991-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251209	2015-02-26	2015-02-26	310334107	ZENDEJAS AYALA JOSE MARTIN	1	4	84	1995-06-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251210	2015-02-26	2015-02-26	311286786	FLORES FRAGOSO KRYSTEL BERENICE	1	3	81	1995-06-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251211	2015-02-26	2018-02-27	312111384	MEDEL SANCHEZ MARIA ISABEL	1	1	90	1996-08-08	F	f	4	apellido p	apellido m	nombres	0	none	none	0
251212	2015-02-26	2018-08-07	415124696	PEREZ MORALES ISRAEL	1	1	84	1995-09-14	M	t	4	apellido p	apellido m	nombres	0	none	none	0
251213	2015-02-26	2015-02-26	BAOS740202	BAZAN ORTEGA SERGIO	2	1	82	1974-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251214	2015-02-26	2015-02-26	302075252	GONZALEZ TELLEZ ROBERTO CARLOS	1	3	82	1986-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251215	2015-02-26	2015-02-26	307186948	DELGADO MEJIA ARELI	1	7	84	1990-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251216	2015-02-26	2016-04-20	305313229	ROCHA BUENDIA ANTONIO	1	1	84	1995-04-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251217	2015-02-27	2015-02-27	413047487	GARCIA CERVANTES JOSE HUMBERTO	1	2	84	1993-05-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251218	2015-02-27	2015-02-27	415022262	ALVAREZ RENDON JANETTH ANTONIETA	1	2	83	1996-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251219	2015-02-27	2015-02-27	43002648	VIELMA HERNANDEZ ERICK	1	2	85	1992-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251220	2015-02-27	2015-02-27	309068581	HERNANDEZ REYES JULIO CESAR	1	5	85	1993-07-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251221	2015-02-27	2015-02-27	309193238	MALDONADO RUIZ ANDREA KARINA	1	5	80	1993-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251222	2015-02-27	2015-02-27	311207198	VENEGAS MONTOYA OSCAR URIEL	1	4	85	1995-05-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251223	2015-02-27	2015-02-27	306202270	CORONA MENEZ KAREN PAOLA	1	1	80	1990-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251224	2015-02-27	2015-02-27	310257970	NUÑEZ MARTINEZ KAREN PATRICIA	1	5	84	1994-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251225	2015-02-27	2015-02-27	413049247	MALDONADO ALONSO PABLO MISAEL	1	4	79	1994-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251226	2015-02-27	2015-02-27	MOMN801003	MONTIEL MARIANO NORMA ANGELICA	3	2	150	1980-10-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251227	2015-03-02	2015-03-02	412037144	RIVERA PINEDA BRENDA ANGELICA	1	1	81	1987-01-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251228	2015-03-02	2015-03-02	83214220	DUARTE BARRERA MARTHA LETICIA	1	6	80	1967-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251229	2015-03-02	2015-03-02	304140323	JIMENEZ GONZALEZ CARLOS ALEJANDRO	1	4	82	1988-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251230	2015-03-02	2018-02-08	311283053	LARA LOPEZ MARTHA LETICIA	1	7	85	1995-03-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251231	2015-03-02	2015-03-02	312331440	SANTOS VARGAS MONICA	1	1	80	1996-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251232	2015-03-02	2015-03-02	304155060	RAMIREZ PALMA MARIO RODOLFO	1	1	85	1988-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251233	2015-03-02	2015-03-02	310297037	PIMENTEL BOLIVAR ARELI MIREYA	1	5	80	1994-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251234	2015-03-02	2015-03-02	307229986	GAMA CARRILLO JORGE DE JESUS	1	1	83	1991-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251235	2015-03-02	2015-03-02	300177824	PEÑA TRINIDAD DIANA GABRIELA	1	1	80	1984-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251236	2015-03-02	2015-03-02	309076504	ESCOBEDO CASTILLO CARLOS MERARI	1	1	84	1989-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251237	2015-03-02	2015-03-02	309199618	ROSAS NAVA CARLOS ALFONSO	1	7	85	1993-07-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251238	2015-03-02	2015-03-02	GURI880331	GUADARRAMA RAMIREZ ISIS LIZZETH	1	6	7	1988-03-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251239	2015-03-02	2015-03-02	309180571	GARCIA CASAS EDGAR	1	1	86	1993-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251240	2015-03-03	2015-03-03	411039891	CORTES MONTESINOS ARIANA	1	2	7	1988-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251241	2015-03-03	2015-03-03	310213066	MADRIGAL MUNGUIA PAMELA	1	3	87	1994-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251242	2015-03-03	2015-03-03	311151156	BECERRIL JIMENEZ AQUETZALI KAORI	1	7	78	1995-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251243	2015-03-03	2015-03-03	308195387	VILLASANA HERRERA ALI KEVIN	1	3	90	1992-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251244	2015-03-03	2015-03-03	310163576	SANCHEZ ROJAS IVAN	1	4	78	1992-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251245	2015-03-03	2015-03-03	309283184	HERNANDEZ LUNA MARIA GUADALUPE	1	2	79	1993-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251246	2015-03-03	2016-08-29	311328961	PEREZ AQUINO ABRAHAM ESAU	1	1	85	1994-11-28	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251247	2015-03-03	2015-03-03	307307828	TZINTZUN SALAS RAFAEL	1	3	85	1990-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251248	2015-03-03	2015-03-03	AASA881110	ALVARADO SANCHEZ ANAHI	2	1	79	1988-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251249	2015-03-03	2015-03-03	LOPJ820126	LOPEZ PATIÑO IVAN	2	1	79	1982-01-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251250	2015-03-03	2015-03-03	415059758	CABALLERO GARCIA ALAN RODRIGO	1	7	81	1996-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251251	2015-03-03	2015-03-03	308244289	MARQUINA OJEDA LUED	1	1	80	1992-10-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251252	2015-03-04	2015-03-04	DINP860115	DI BELLA NAVA PASCUAL	1	3	79	1986-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251253	2015-03-04	2015-03-04	310328621	VAZQUEZ LUNA BERNARDO	1	4	85	1993-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251254	2015-03-04	2015-03-04	301043249	SALAZAR MENA DAVID ZAIN	1	2	89	1995-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251255	2015-03-04	2015-03-04	300327191	AGUILERA LOPEZ JOSE	1	1	85	1985-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251256	2015-03-04	2015-03-04	306572083	JUAREZ RODRIGUEZ NAYELI AMELIA	1	1	84	1988-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251257	2015-03-04	2015-03-04	TOVD831217	TORRES VELAZQUEZ DIANA ISELA	3	1	49	1983-12-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251258	2015-03-04	2015-03-04	305321493	MATEHUALA SANCHEZ MAURICIO TLACAELEL	1	4	75	1989-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251259	2015-03-04	2015-03-04	309051998	GACHUZ ROJAS MAURICIO	1	3	90	1993-07-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251260	2015-03-04	2015-03-04	411096214	AHEDO SANCHEZ JESUS VLADIMIR	1	1	90	1992-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251261	2015-03-04	2015-03-04	415028130	AGUILAR ENRIQUEZ PAUL SEBASTIAN	1	7	85	1994-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251262	2015-03-04	2016-02-05	414039694	PEREZ NAVARRO MARIA YESICA	1	2	85	1994-07-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251263	2015-03-05	2015-03-05	412003879	CRUZ RODRIGUEZ RAFAEL	1	1	79	1992-09-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251264	2015-03-05	2015-03-05	311322990	SOBREVILLA QUITON NAIRA EMILIA	1	4	78	1994-10-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251265	2015-03-05	2015-03-05	312235907	AYALA HERNANDEZ CINTHYA YAEL	1	2	89	1996-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251266	2015-03-05	2015-03-05	311112553	SEGOVIANO CORREA STEFHANY	1	7	90	1995-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251267	2015-03-05	2015-03-05	ROHY801017	ROMERO HERRERA YETZI JIMENA	2	3	83	1980-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251268	2015-03-05	2015-03-05	309052531	GARCIA VAZQUEZ CARLOS EDUARDO	1	4	85	1993-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251269	2015-03-05	2015-03-05	413052021	DIAZ PASCUAL GAELIA EURYDICE	1	3	84	1994-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251270	2015-03-06	2015-03-06	309049472	BARRETO BAUTISTA ITZEL	1	3	78	1993-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251271	2015-03-06	2015-03-06	308531303	VARGAS COLMENERO MARIELA BERENICE	1	3	84	1992-10-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251272	2015-03-06	2015-03-06	310016135	ALVAREZ RENDON  MARTHA ANGELICA	1	4	82	1994-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251273	2015-03-06	2015-09-08	312256089	MORALES PINEDA NITZHUI DANIELA	1	2	84	1994-09-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251274	2015-03-06	2017-08-08	310317339	TAVERA MOLINA DANKO SAUL	1	1	85	1994-07-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251275	2015-03-06	2015-03-06	510019534	OVALLE MAGALLANES BERENICE	1	3	90	1986-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251276	2015-03-06	2015-10-09	414001754	SOLIS GARZA LAURA	1	4	87	1995-03-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251277	2015-03-09	2015-03-09	309252580	MARTINEZ RAMIREZ ALEXIS	1	3	89	1993-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251278	2015-03-09	2018-04-02	310085184	HERNANDEZ YAXI DANIEL	1	3	85	1993-08-06	M	t	2	apellido p	apellido m	nombres	0	none	none	0
251279	2015-03-09	2015-03-09	302101456	GARCIA AGUILAR JOSE LUIS	1	1	78	1986-12-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251280	2015-03-09	2015-03-09	304190359	PEREZ ZUÑIGA MISAEL GIOVANI	1	1	114	1988-04-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251281	2015-03-09	2015-03-09	309116534	MARIN MIRANDA JORGE	1	4	80	1993-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251282	2015-03-10	2015-09-17	310303053	REYES ALVAREZ DIANA ISABEL	1	5	90	1994-01-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251283	2015-03-10	2015-03-10	311181014	ARTEAGA OCAMPO LUDWING DONOVAN	1	2	84	1993-02-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251284	2015-03-10	2015-03-10	312274225	ESQUIVEL GUERRERO NEFTALI	1	1	85	1996-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251285	2015-03-10	2015-03-10	304674129	GUTIERREZ MENDOZA VERONICA DEL ROCIO	1	1	90	1987-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251286	2015-03-10	2015-03-10	309036430	HORTA RINCON NANCY GUADALUPE	1	1	81	1993-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251287	2015-03-10	2015-03-10	312210126	ALTAMIRANO CABELLO ALEX	1	1	85	1996-06-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251288	2015-03-10	2015-03-10	414078682	ALVARADO SANCHEZ ULISES DAVID	1	1	85	1993-06-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251289	2015-03-10	2015-03-10	310218700	MARTINEZ RIVAS MARIA XIMENA	1	2	81	1993-12-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251290	2015-03-10	2015-03-10	308337064	SALAS ANTONIO LUIS FELIPE	1	3	80	1991-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251291	2015-03-10	2015-03-10	413101583	REYES MORENO LUCIA	1	4	83	1993-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251292	2015-03-10	2015-03-10	308250394	BAUTISTA CRUZ DANIEL	1	1	85	1992-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251293	2015-03-10	2015-03-10	311171255	DUARTE QUIROGA FERNANDA	1	1	79	1995-08-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251294	2015-03-10	2015-03-10	GACP650404	GARCIA CORTES MARIA PATRICIA	3	1	49	1965-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251295	2015-03-10	2015-03-10	409017757	CALLEJAS LANDAVERDE ANGELA LETICIA	1	5	87	1989-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251296	2015-03-11	2015-03-11	311172991	GOMEZ RODELA KARINA VERONICA	1	7	80	1995-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251297	2015-03-11	2015-03-11	AUNA740613	AGUILAR NAVARRO ANTONIETA ISABEL	2	2	92	1979-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251298	2015-03-12	2015-03-12	310079158	GARCIA DE JESUS ITZEL VANESSA	1	5	84	1992-11-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251299	2015-03-12	2015-03-12	309237345	GARNICA GOMEZ LORENA ANDREA	1	1	79	1993-03-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251300	2015-03-12	2015-03-12	308183098	MOLINA MARTINEZ KARLA ROXANA	1	1	82	1991-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251301	2015-03-12	2015-03-12	308325366	SANCHEZ GONZALEZ GABRIELA GRISEL	1	1	82	1992-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251302	2015-03-12	2015-03-12	309282967	HERNANDEZ HERNANDEZ BERNARDO	1	4	85	1993-05-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251303	2015-03-12	2017-02-28	HEGL640102	HERNANDEZ GOMEZ LIDIA HUGUETTE	2	1	80	1964-01-02	F	f	4	apellido p	apellido m	nombres	0	none	none	0
251304	2015-03-12	2015-03-12	308021707	CONTRERAS GARCIA JOAN MANUEL	1	4	84	1992-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251305	2015-03-12	2015-03-12	308089536	LEVY LOKIER SAMUEL	1	5	85	1990-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251306	2015-03-12	2015-03-12	309145048	ROSAS CASTRO DANIELA ALEJANDRA	1	1	88	1993-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251307	2015-03-12	2015-03-12	312103385	CASTILLO RAMOS JESUS DAVID	1	1	81	1996-04-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251308	2015-03-12	2015-03-12	308064449	CARRANZA CRUZ JUDITH ANA	1	1	82	1991-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251309	2015-03-12	2015-03-12	309170444	MANCERA AGUERO JHASUA IVAN	1	4	85	1993-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251310	2015-03-13	2015-03-13	98005480	MORA GARDUÑO IRENE	1	2	82	1984-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251311	2015-03-13	2015-03-13	303063162	SANCHEZ MACOSSAY JESUS DAVID	1	3	84	1987-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251312	2015-03-13	2015-03-13	514007096	RUIZ MARTINEZ HERLINDA	1	1	84	1983-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251313	2015-03-13	2015-03-13	408100560	GALVAN CELIS VALERIA	1	2	75	1983-03-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251314	2015-03-13	2016-10-07	312051963	LOPEZ PEREZ MIGUEL ANGEL	1	3	85	1996-08-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251315	2015-03-13	2015-03-13	307049713	AGUILAR MAYA GABRIELA	1	1	90	1991-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251316	2015-03-13	2015-03-13	311052338	ARZALUZ LUNA ZAIRA	1	1	89	1995-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251317	2015-03-17	2015-03-17	415145950	VARGAS REYES MARIO ALBERTO	1	2	76	1992-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251318	2015-03-17	2015-03-17	RESS570824	REYES SALINAS SILVIA	2	2	90	1957-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251319	2015-03-17	2015-03-17	408002079	PORRAS CAMARENA SALVADOR	1	1	80	1972-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251320	2015-03-17	2015-03-17	411076593	GOROSTIETA LUGO ALEJANDRO	1	1	90	1990-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251321	2015-03-17	2015-03-17	515024128	MAZA DOMINGUEZ JOSE GUSTAVO	1	1	114	1992-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251322	2015-03-18	2015-10-07	309028503	CARDENAS HERNANDEZ ROBERTO ADRIAN	1	1	83	1993-03-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251323	2015-03-18	2015-03-18	3052292308	HARO BENITEZ MARIELA GUADALUPE	1	6	85	1988-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251324	2015-03-18	2015-03-18	415142100	ORTIGOSA LOPEZ MANUEL	1	1	83	1981-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251325	2015-03-19	2015-03-19	513014693	GAUCIN NEVAREZ SAIDRA LETICIA DEL ROCIO	1	1	82	1988-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251326	2015-03-19	2015-09-24	106001723	ARRIAGA MARTINEZ DANIELA ARELI	1	1	90	1993-02-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251327	2015-03-19	2015-03-19	310302575	RUIZ RIOS JAVIER	1	1	90	1994-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251328	2015-03-19	2015-03-19	304229798	SANCHEZ BELLO MONICA	1	1	80	1988-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251329	2015-03-19	2015-03-19	312232793	CRESPO RAMIREZ FRANCISCO ALEJANDRO	1	1	83	1996-02-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251330	2015-03-19	2015-03-19	415156826	GOMEZ DE ANDA ADRIANA ELVIA	1	4	76	1963-01-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251331	2015-03-19	2015-03-19	311050028	CATANA RAMIREZ JAZMIN	1	4	85	1995-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251332	2015-03-20	2015-03-20	41304356	GUZMAN BONILLA VANIA	1	3	84	1994-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251333	2015-03-20	2015-03-20	31062469	TOMAS MENDEZ WENDY LIZETH	1	3	84	1994-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251334	2015-03-20	2016-02-26	306236693	SANCHEZ AREVALO CESAR ALEJANDRO	1	3	79	1990-07-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251335	2015-03-20	2015-03-20	514023953	SANCHEZ MARTINEZ RODRIGO	1	2	82	1980-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251336	2015-03-20	2015-03-20	107006752	LOBATO GARAYOA ALAN	1	5	80	1994-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251337	2015-03-20	2015-03-20	309310323	PEREZ LUCIO EDSON RICARDO	1	1	82	1993-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251338	2015-03-20	2015-03-20	312354893	RUIZ TRONCOSO GUADALUPE	1	4	81	1996-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251339	2015-03-20	2015-03-20	409082193	MANRIQUEZ GONZALEZ NOE	1	1	85	1987-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251340	2015-03-23	2015-03-23	312297332	GOMEZ RUBIO COLVERT	1	1	85	1996-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251341	2015-03-23	2015-03-23	310235327	GOMEZ DE LA CRUZ BALDOMERO	1	3	82	1993-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251342	2015-03-23	2015-03-23	306140910	NUÑEZ MAGADAN JOSE ALBERTO	1	1	79	1989-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251343	2015-03-23	2015-03-23	514351540	FERNANDEZ DE CASTRO MARTINEZ GONZALO	1	1	84	1983-02-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251344	2015-03-24	2015-03-24	AEGM780119	AHEDO GARCIA MARIO RICARDO	2	2	83	1978-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251345	2015-03-24	2015-03-24	309142982	ORTUÑO BARRAGAN ADRIANA	1	1	90	1992-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251346	2015-03-24	2017-09-13	410076727	ALFARO VICTORIA LOPEZ ALBERTO	1	2	90	1989-05-03	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251347	2015-03-25	2015-03-25	309187790	FERNANDEZ VILCHIS MAURICIO	1	4	84	1992-10-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251348	2015-03-25	2015-03-25	301327039	VEGA FACIO SONIA VANESSA	1	1	81	1984-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251349	2015-03-26	2015-03-26	312072193	ORTIZ BRINGAS MARIO ALBERTO	1	7	85	1995-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251350	2015-03-26	2017-11-07	309191887	NAVA AREVALO LUIS ANGEL	1	3	85	1993-12-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251351	2015-03-26	2015-03-26	311032514	SANCHEZ ZARAGOZA DIANA BELEN	1	1	87	1995-04-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251352	2015-03-26	2015-03-26	311288656	NAVARRO MARQUEZ ARTURO	1	1	85	1995-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251353	2015-03-26	2018-08-14	310546665	CHAVEZ PEREZ LEONARDO NAZZER ADOLFO	1	3	82	1994-03-29	M	t	4	apellido p	apellido m	nombres	0	none	none	0
251354	2015-04-06	2015-04-06	310326892	VELAZQUEZ GARCIA CARLOS EDUARDO	1	4	84	1994-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251355	2015-04-06	2015-04-06	309033130	BENITEZ JURADO CLAUDIA LIZBETH	1	2	84	1993-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251356	2015-04-06	2015-04-06	413001706	CERVANTES JIMENEZ AURA CAROLINA	1	5	76	1991-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251357	2015-04-06	2015-04-06	309002811	GUZMAN NAMBO MONTSERRAT	1	1	82	1993-10-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251358	2015-04-06	2015-04-06	308047097	CASTILLO SALCEDO JULIAN	1	2	84	1992-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251359	2015-04-06	2018-08-14	415076148	ROCHA TERAN SUSANA	1	4	84	1995-06-26	F	t	2	apellido p	apellido m	nombres	0	none	none	0
251360	2015-04-06	2015-04-06	311245457	LEAL RODRIGUEZ MICHEL	1	2	81	1994-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251361	2015-04-07	2015-04-07	413026271	REYES MACIAS RODRIGO	1	4	86	1994-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251362	2015-04-07	2017-10-03	309049915	DAVILA ALVARADO MOISES	1	1	79	1992-11-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251363	2015-04-07	2015-04-07	312121882	ROBLES HERNANDEZ JONATHAN SIU LOONG	1	4	85	1996-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251364	2015-04-07	2015-04-07	310183967	CHAVEZ FUENTES SERGIO RODRIGO	1	4	84	1994-06-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251365	2015-04-07	2018-04-04	312142579	ABREGO ALCANTARA LUIS ALEJANDRO	1	3	80	1995-10-15	M	t	4	apellido p	apellido m	nombres	0	none	none	0
251366	2015-04-08	2016-02-09	414100826	GUIZAR JIMENEZ MIGUEL ANGEL	1	1	83	1994-05-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251367	2015-04-08	2015-04-08	301062592	MONROY MEDEL ADRIANA	1	1	7	1985-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251368	2015-04-08	2015-04-08	308305803	ENRIQUEZ NAVA DAVID ARTURO	1	2	89	1992-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251369	2015-04-08	2015-04-08	312278670	MONTSERRAT LAM JIMENA	1	4	84	1995-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251370	2015-04-09	2015-04-09	745036293	HANSEN MUÑOZ ALEJANDRA PAOLA	1	5	84	1976-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251371	2015-04-09	2015-04-09	DICE480921	DIAZ CERON ENRIQUE OCTAVIO	2	4	85	1948-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251372	2015-04-13	2015-04-13	309201887	ROMERO MENDEZ ALLAN JESUS	1	1	90	1993-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251373	2015-04-13	2015-04-13	309334585	ZAPIEN MORALES LUIS FRANCISCO	1	1	90	1993-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251374	2015-04-13	2015-04-13	307230319	GUZMAN CASTAÑEDA TIZAUA	1	1	87	1990-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251375	2015-04-13	2015-04-13	305307781	MAYEN SANCHEZ ARMANDO	1	1	85	1990-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251376	2015-04-13	2016-02-23	413080813	RAYA RIOS ARELI VIRIDIANA	1	6	80	1993-05-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251377	2015-04-13	2016-02-08	311132858	PALAFOX HERNANDEZ ALDO FEDERICO	1	2	84	1995-04-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251378	2015-04-13	2015-04-13	311202014	SANCHEZ MANCILLA ROSA GUADALUPE	1	1	89	1995-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251379	2015-04-13	2015-04-13	308031645	GUERRERO CORREA NICTE BETSAVE	1	1	90	1992-12-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251380	2015-04-13	2015-04-13	93658012	PEREZ CASTILLO KARLA	1	1	90	1974-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251381	2015-04-13	2015-04-13	309200268	NICOLAS HERNANDEZ CARLOS IVAN	1	4	85	1992-09-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251382	2015-04-13	2015-04-13	312144573	PEREZ ARRIETA IRVIN JEREMY	1	1	85	1996-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251383	2015-04-13	2015-04-13	307122502	OLVERA GARCIA ALEJANDRO	1	1	85	1990-03-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251384	2015-04-14	2015-04-14	411096537	TORIJA MEDRANO IVONNE	1	1	79	1992-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251385	2015-04-14	2015-04-14	411001872	TOVAR DORANTES MARIA DE JESUS	1	1	87	1992-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251386	2015-04-14	2015-04-14	307150978	REBOLLEDO SOTO YULI	1	4	79	1991-09-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251387	2015-04-14	2015-04-14	108001169	SERRANO FLORES EDGAR ALEJANDRO	1	1	80	1995-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251388	2015-04-14	2016-11-18	311146581	QUINTANA ARELLANO LETICIA	1	4	80	1994-09-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251389	2015-04-14	2016-08-08	312182007	ALVAREZ SORIANO ALBERTO	1	4	83	1995-12-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251390	2015-04-15	2015-04-15	308314256	LOPEZ CABRERA PABLO	1	1	89	1991-02-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251391	2015-04-15	2015-04-15	99176639	LLANO JALIL EGMAMY	1	1	84	1983-10-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251392	2015-04-15	2015-04-15	514013912	PEREZ HERNANDEZ YOLINLIZTLI	1	2	80	1991-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251393	2015-04-15	2017-02-14	303001665	CARMONA CONTRERAS VALENTINA MARISOL	1	1	80	1987-02-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251394	2015-04-15	2015-04-15	305288273	CUEVAS BRAVO ANA ISABEL YURIRIA	1	1	84	1989-02-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251395	2015-04-15	2015-04-15	MEHP901115	MERINO HERNANDEZ PATRICIA LIZETH	3	1	1	1990-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251396	2015-04-16	2015-04-16	99035822	BAEZ ROMERO RENATA	1	1	84	1983-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251397	2015-04-16	2015-04-16	310077879	DE GANTE CEDEÑO ISRAEL AARON	1	1	89	1991-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251398	2015-04-16	2015-04-16	GOLJ780111	GOMEZ LIRA JUAN MANUEL	2	1	83	1978-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251399	2015-04-20	2015-04-20	309023405	CHAVOLLA RODRIGUEZ DIEGO SAUL	1	2	82	1993-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251400	2015-04-20	2015-04-20	309214647	PARDIÑO SALOME GIOVANNA GUADALUPE	1	2	79	1993-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251401	2015-04-20	2015-04-20	309152617	ORTEGA LOPEZ ROGELIO	1	1	80	1992-07-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251402	2015-04-20	2015-04-20	310133261	ROSARIO MARTINEZ ALFONSO	1	1	79	1994-05-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251403	2015-04-20	2015-04-20	309029414	DURAN SANCHEZ MITZI DANIELA	1	1	86	1993-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251404	2015-04-20	2015-04-20	309060327	BUSTAMANTE VERTIZ RODOLFO	1	2	80	1992-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251405	2015-04-20	2015-04-20	305280600	VELAZQUEZ AVENDAÑO NORMA MARIA	1	1	90	1989-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251406	2015-04-21	2015-04-21	310149792	LUIS HERNANDEZ YESSICA YAMEL	1	2	89	1994-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251407	2015-04-21	2015-04-21	308046014	BERNAL RUIZ JUAN CARLOS	1	1	83	1991-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251408	2015-04-21	2015-04-21	305747145	PRADA SERVIN MONSERRAT	1	1	89	1988-03-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251409	2015-04-21	2015-04-21	300319068	GONZALEZ PEREZ GEMA LILIANA	1	1	80	1984-06-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251410	2015-04-21	2017-03-21	309074586	CHOMBO PEREZ GRECIA KARINA	1	1	85	1992-04-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251411	2015-04-21	2015-04-21	514021533	PULIDO ALMARAZ LINDA STEPHANY	1	2	81	1990-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251412	2015-04-23	2015-04-23	98265640	MONTESINOS SANTOS LILIANA	1	1	90	1983-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251413	2015-04-23	2015-04-23	415078544	GONZALEZ DIAZ ELIAS ABRAHAM	1	4	84	1988-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251414	2015-04-24	2015-04-24	96217052	GONZALEZ MORALES ERIKA ADRIANA	1	2	78	1980-06-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251415	2015-04-24	2015-04-24	308146310	RAMOS MEJIA ANGELICA SOFIA	1	1	90	1992-08-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251416	2015-04-27	2015-04-27	3082267028	MARTINEZ QUEZADA GABRIELA	1	7	81	1992-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251417	2015-04-28	2015-04-28	308030064	AGUADO CASTREJON KARINA	1	1	90	1992-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251418	2015-04-29	2015-04-29	SALH860213	SANCHEZ LOPEZ HUGO ENRIQUE	2	4	84	1986-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251419	2015-04-29	2015-04-29	300129593	VAZQUEZ VILLEGAS ORLANDO MARTIN	1	1	80	1984-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251420	2015-05-04	2015-05-04	412034765	ESPARZA NAVA VICTOR ARTURO	1	5	83	1993-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251421	2015-05-04	2015-05-04	309036272	GONZALEZ GUTIERREZ CESAR GUILLERMO	1	1	90	1993-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251422	2015-05-05	2015-05-05	96208276	LOPEZ CRUZ ROGELIO	1	1	83	1980-08-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251423	2015-05-05	2015-05-05	3071022984	ARRIOLA CALZADA MARIA LUISA	1	4	80	1991-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251424	2015-05-06	2015-05-06	31068849	MACORRA HERNANDEZ ALAN GABRIEL	1	1	85	1994-04-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251425	2015-05-06	2015-05-06	309197803	GARCIA ARZATE EDUARD ALEXANDER	1	2	85	1993-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251426	2015-05-06	2015-05-06	310000604	CARRASCO LEDESMA JOSE DANIEL	1	2	82	1994-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251427	2015-05-06	2016-02-29	311661178	CAMACHO TELLEZ LISBETH	1	2	82	1993-09-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251428	2015-05-06	2015-05-06	414105979	RODRIGUEZ JIMENEZ JAVIER	1	7	80	1986-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251429	2015-05-11	2015-05-11	309342261	VELAZQUEZ CERDA LUIS JAVIER	1	1	79	1993-08-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251430	2015-05-11	2015-05-11	VERG790210	DE LA VEGA RIVERA GENARO	2	2	77	1979-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251431	2015-05-11	2015-05-11	306218017	ARENAS NORIA YAZMIN	1	2	90	1990-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251432	2015-05-12	2015-05-12	312032988	RINCON RIVERA CARLOS	1	4	86	1996-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251433	2015-05-12	2015-05-12	SAOL451045	SALDIVAR Y OSORIO LILIANA VIRGINIA R.	2	5	90	1945-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251434	2015-05-13	2015-05-13	311523056	WAGNER PEREZ BRENDA	1	4	84	1993-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251435	2015-05-18	2015-05-18	515016181	PONCE PACHECO MARIO ALBERTO	1	1	113	1988-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251436	2015-05-19	2016-08-09	309161424	LEDESMA ZALDIVAR GIULIANNA AMELIA	1	1	85	1992-10-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251437	2015-05-20	2015-05-20	309303974	ORTEGA TREJO JUAN ANTONIO	1	4	90	1993-01-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251438	2015-05-20	2015-05-20	411009476	NOGUEZ TREJO JUAN RAMON	1	4	85	1989-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251439	2015-05-22	2015-05-22	306159363	GUTIERREZ RUIZ ALAN	1	1	113	1990-07-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251440	2015-05-26	2018-08-28	303548180	BALTIERRA MENA LEONARDO HUMBERTO	1	2	85	1987-10-25	M	t	3	apellido p	apellido m	nombres	0	none	none	0
251441	2015-05-26	2015-05-26	304271522	BARRERA LOBATO NANCY	1	2	80	1988-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251442	2015-05-26	2015-05-26	66011804	JURADO ARELLANO ARACELI MARIA DE JESUS	1	1	83	1950-06-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251443	2015-05-26	2015-05-26	405007130	CAMACHO MATA DAVID	1	1	80	1984-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251444	2015-05-27	2015-05-27	SACJ810324	SALAZAR CONTRERAS JULIETA RUT	2	2	79	1981-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251445	2015-05-28	2015-05-28	ZUMP880211	ZUÑIGA PEREZ MIGUEL ANGEL	2	3	90	1988-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251446	2015-05-28	2015-05-28	MACF890816	MARQUEZ CORREO FRANCISO JAVIER	2	1	85	1989-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251447	2015-05-29	2015-05-29	309240600	MENDEZ RAMIREZ MARIA DE LOURDES	1	5	90	1993-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251448	2015-05-29	2015-05-29	310294177	RANGEL AGUILAR ERICK ALEJANDRO	1	2	86	1994-09-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251449	2015-06-01	2015-06-01	309349291	BEGUE PEREZ ISAAC JONATAN	1	2	84	1993-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251450	2015-06-05	2018-02-08	OOMM560209	OROPEZA MURILLO MARTHA PATRICIA	2	1	88	1956-02-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251451	2015-06-09	2016-08-15	312214911	GOMEZ MARTINEZ TANIA ALEJANDRA	1	2	90	1996-08-01	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251452	2015-08-10	2015-08-10	308016345	AGUILAR AUSTRIA SILJA	1	1	85	1992-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251453	2015-08-10	2015-08-10	311170911	CONTRERAS ESPINOSA LAURA MARIANA	1	1	90	1995-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251454	2015-08-10	2015-08-10	511010541	ORONA ORTIZ ALEJANDRA	1	1	90	1985-08-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251455	2015-08-10	2015-08-10	310044587	BRAVO RIVERO KEVIN BARUSH	1	4	82	1994-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251456	2015-08-10	2015-08-10	516017480	VICTOR RODRIGUEZ ALFONSO IVAN	1	4	85	1991-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251457	2015-08-10	2015-08-10	312352806	TRUJILLO JIMENEZ LUIS ENRIQUE	1	4	85	1995-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251458	2015-08-10	2015-08-10	313030475	NAVARRO GUILLEN MARIO ISAAC	1	1	89	1996-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251459	2015-08-10	2018-08-16	311106194	FLORES FLORES ARIEL AKZAYACATL	1	2	82	1995-01-06	M	t	2	apellido p	apellido m	nombres	0	none	none	0
251460	2015-08-10	2015-08-10	311019878	AGUILAR REYES ALEJANDRA	1	1	85	1994-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251461	2015-08-10	2016-02-16	311519828	LUNA PEREZ ERIKA	1	1	79	1995-09-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251462	2015-08-10	2015-08-10	313094098	SANCHEZ RODRIGUEZ EMILIO	1	1	81	1992-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251463	2015-08-11	2016-11-17	413125295	SEVILLA ALVAREZ SILVIA	1	1	82	1969-10-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251464	2015-08-11	2016-04-13	309165020	JURADO LUNA EDER IVAN	1	3	85	1993-05-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251465	2015-08-11	2015-08-11	312596848	VAZQUEZ RIBERA CARMEN	1	2	79	1996-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251466	2015-08-11	2015-08-11	309159489	CASTELLANOS TORRES NELIDARUTH	1	1	82	1992-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251467	2015-08-11	2016-02-16	414070404	MORENO GOMEZ MIGUEL ANGEL	1	3	78	1994-02-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251468	2015-08-11	2015-08-11	313089112	LOPEZ MUÑIZ ANDREA NATALIA	1	1	89	1997-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251469	2015-08-11	2015-08-11	311023927	ROSAS RAMIREZ ANDRES	1	2	80	1995-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251470	2015-08-11	2015-08-11	413046686	SABINO DUARTE TANIA YUSELY	1	1	84	1992-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251471	2015-08-11	2015-08-11	OEGG831227	OLVERA GARCIA GUSTAVO	2	1	90	1983-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251472	2015-08-11	2015-08-11	310219549	MENDOZA VALDEZ JOSE MANUEL	1	4	85	1993-12-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251473	2015-08-11	2015-08-11	310157447	RENDON CHAVEZ DAVID ISMAEL	1	1	84	1993-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251474	2015-08-11	2015-08-11	413121266	MARTINEZ CELIS DIAZ CESAR	1	2	84	1994-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251475	2015-08-11	2015-08-11	311236585	SANCHEZ HERNANDEZ DANIEL	1	4	90	1995-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251476	2015-08-11	2015-08-11	303193216	MANUEL DUEÑAS NORMA ARACELI	1	2	84	1987-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251477	2015-08-11	2018-05-09	313263156	LOPEZ ANTERO MARCELA LIZETH	1	3	89	1997-06-19	F	t	3	apellido p	apellido m	nombres	0	none	none	0
251478	2015-08-11	2015-08-11	311173390	GARCIA LIRA LUZ MARIA	1	2	78	1995-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251479	2015-08-11	2015-08-11	415068383	HERRERA HERNANDEZ VIOLETA ANGELICA	1	2	129	1985-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251480	2015-08-11	2015-08-11	306265217	REYNA NOLASCO IRVING ENRIQUE	1	4	79	1990-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251481	2015-08-11	2015-08-11	AAGD780916	ALVARADO GOMEZ DULCE MARIA	3	4	70	1978-09-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251482	2015-08-12	2015-08-12	99150277	HERNANDEZ MARTINEZ YULI	1	1	78	1983-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251483	2015-08-12	2015-08-12	311023109	PINEDA ANZUREZ JUAN MANUEL	1	2	84	1995-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251484	2015-08-12	2016-02-12	313118207	RANGEL MONTES DAVID	1	4	82	1996-06-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251485	2015-08-12	2016-08-19	312105578	GONZALEZ MORENO KARINA GUADALUPE	1	2	85	1995-12-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251486	2015-08-12	2018-08-14	313305582	OSORIO HERNANDEZ JORGE ALBERTO	1	4	83	1997-02-21	M	t	2	apellido p	apellido m	nombres	0	none	none	0
251487	2015-08-12	2015-08-12	413004707	MENDOZA TOLEDO GILBERTO	1	1	85	1994-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251488	2015-08-12	2015-08-12	311167474	HURTADO PLIEGO ANA	1	1	84	1994-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251489	2015-08-12	2018-08-07	311288687	PALLARES PEREZ ADRIAN VALERIO	1	2	82	1995-03-04	M	t	4	apellido p	apellido m	nombres	0	none	none	0
251490	2015-08-12	2015-08-12	415033585	HERNANDEZ CHAVEZ LUIS GERARDO	1	1	79	1996-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251491	2015-08-12	2015-08-12	312282846	STRAFFON SANCHEZ ANDREA DEL PILAR	1	1	87	1996-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251492	2015-08-12	2015-08-12	308179695	CHAVEZ LOPEZ ERICK BERNARDO	1	1	83	1992-01-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251493	2015-08-12	2015-08-12	404015743	GUERRERO VALDEZ ADOLFO	1	1	84	1982-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251494	2015-08-12	2015-08-12	312306555	ARENAS NAVARRO ANDRES	1	1	79	1996-02-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251495	2015-08-12	2015-08-12	311293953	CASTILLO GONZALEZ ALEXIS	1	4	85	1995-01-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251496	2015-08-12	2015-08-12	306165942	QUIROA CORNEJO IRMA DALIA	1	5	78	1989-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251497	2015-08-12	2016-04-29	511019537	LOPEZ MORENO EVERARDO	1	1	114	1985-10-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251498	2015-08-13	2015-08-13	311322031	RESENDIZ MEJIA IRVING IVAN	1	3	84	1995-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251499	2015-08-13	2015-08-13	310044570	BRAVO AHUMADA MELVIN EMMANUEL	1	1	85	1994-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251500	2015-08-13	2015-08-13	89163274	VILLANUEVA MARTINEZ MARIA DE LOURDES I.	1	1	75	1972-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251501	2015-08-13	2015-08-13	516011732	SUAREZ BARAJAS LIZETH TATIANA	1	1	82	1991-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251502	2015-08-13	2016-02-15	412040210	GONZALEZ BROC GERARDO	1	4	83	1993-08-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251503	2015-08-14	2015-08-14	311182640	GRACIDA ALARCON JULIAN	1	4	90	1995-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251504	2015-08-14	2015-08-14	515010464	MONTES MAXIMO ENRIQUE EDUARDO	1	4	85	1978-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251505	2015-08-14	2015-08-14	313259887	TORRENTERA ESTRADA DANIELA VERENISSE	1	1	89	1997-03-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251506	2015-08-14	2015-08-14	313150760	TLAYECA MARTINEZ ANDREA YETLANATZIC	1	1	89	1996-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251507	2015-08-14	2015-08-14	416490349	SEO MINCHANG	1	7	86	1995-02-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251508	2015-08-14	2018-02-01	313144363	RUIZ BORJA AXEL NASIR	1	7	86	1997-02-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251509	2015-08-14	2015-08-14	GAAN820626	GALVAN AGUILAR NANCY ARACELI	2	2	84	1982-06-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251510	2015-08-14	2015-08-14	414631272	AGUILAR SANCHEZ ISVI RENE	1	7	79	1994-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251511	2015-08-14	2015-08-14	311009112	MORALES ACOSTA ARTURO	1	1	84	1994-12-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251512	2015-08-14	2015-08-14	308115273	ORTIZ ALVAREZ ANGELICA MONSERRAT	1	2	79	1992-04-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251513	2015-08-14	2015-08-14	414012572	LOPEZ HERNANDEZ LIDICE PAOLA	1	7	84	1995-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251514	2015-08-14	2015-08-14	308252721	LOPEZ VALDEZ MARIANA	1	7	79	1991-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251515	2015-08-14	2015-08-14	310046213	ALVAREZ GARCIA CASANDRA DEYANIRA	1	1	84	1993-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251516	2015-08-14	2015-08-14	309093994	GASCA ROJAS BOGAR ALEJANDRO	1	2	84	1993-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251517	2015-08-14	2015-08-14	OIMR780615	ORTIZ MORALES RODOLFO GERARDO	2	1	80	1978-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251518	2015-08-14	2015-08-14	CACR781112	CALLEJA CASTILLO RENATO CARLOS	2	2	113	1978-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251519	2015-08-14	2015-08-14	311242487	JURADO DELGADILLO MAYTE LIZBETH	1	4	90	1993-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251520	2015-08-14	2017-08-30	310097291	DE LA CRUZ SOLIS SILVERIO	1	1	85	1993-12-10	M	f	4	apellido p	apellido m	nombres	0	none	none	0
251521	2015-08-14	2015-08-14	309170176	MARTINEZ ZAMUDIO CLAUDIA IVONNE	1	1	85	1993-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251522	2015-08-14	2015-08-14	414051113	CERVANTES VERGARA BRENDA GISELA	1	6	90	1994-01-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251523	2015-08-14	2018-02-22	311282104	GOMEZ BECERRIL DIEGO OMAR	1	2	85	1995-01-03	M	f	5	apellido p	apellido m	nombres	0	none	none	0
251524	2015-08-14	2015-08-14	406070915	FLORES CELIS KARLA	1	1	86	1987-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251525	2015-08-14	2015-08-14	LIDS451207	LICEA DURAN SERGIO	2	2	95	1945-12-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251526	2015-08-14	2015-08-14	309014588	CAMACHO ROMERO DIANA CARELI	1	3	85	1993-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251527	2015-08-14	2015-08-14	308068667	HUERTA COLOSIA DAVID FERNANDO	1	4	90	1992-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251528	2015-08-14	2015-08-14	416061916	SANTIAGO BAUTISTA MARLEEN ESTEFANI	1	2	89	1995-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251529	2015-08-14	2015-08-14	412043046	MARROQUIN MARTINEZ JOSE ALFONSO	1	1	80	1975-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251530	2015-08-14	2015-08-14	412001789	DIAZ TREJO BERTHA IRIS	1	2	81	1993-07-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251531	2015-08-14	2015-08-14	516491143	OLAYA LOPEZ DIEGO FELIPE	1	1	82	1991-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251532	2015-08-14	2015-08-14	308057021	ALPIZAR JUAREZ CINTHIA	1	1	80	1991-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251533	2015-08-14	2018-01-31	309151995	PEREZ VELAZQUEZ FRANCISCO	1	1	89	1990-10-13	M	f	5	apellido p	apellido m	nombres	0	none	none	0
251534	2015-08-14	2016-03-03	404107543	LUCIO TEJEDA SOFIA	1	3	84	1967-09-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251535	2015-08-17	2015-08-17	409528587	BARROSO LUCERO ALMA RUBI	1	1	7	1989-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251536	2015-08-17	2015-08-17	31081939	ROSAS NIEVA SAMANTA GUADALUPE	1	1	80	1994-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251537	2015-08-17	2015-08-17	41336786	QUIJAS DE LARA JULIO	1	5	85	1994-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251538	2015-08-17	2015-08-17	311249273	MOLINA RODRIGUEZ BRAYAN	1	4	86	1995-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251539	2015-08-17	2015-08-17	312346423	ROCHA ALVAREZ SARAHI GRACIELA	1	1	89	1995-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251540	2015-08-17	2015-08-17	312318442	BUSTAMANTE VELASCO ESTEFANNI SHIOMARA	1	1	89	1996-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251541	2015-08-17	2015-08-17	415099860	RENGGLI JUAREZ DOMINIK EMMANUEL	1	6	85	1995-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251542	2015-08-17	2016-08-19	312136646	VIRUEGA ORTIZ LEONARDO	1	4	85	1995-11-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251543	2015-08-17	2015-08-17	306262766	MUÑOZ GONZALEZ SOFIA VIANEY	1	1	73	1990-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251544	2015-08-17	2015-08-17	402104694	YUDICO ALCANTARA NANCY PAULINA	1	1	82	1983-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251545	2015-08-17	2015-08-17	510008369	BAYLON CARDIEL JORGE LUIS	1	1	5	1986-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251546	2015-08-17	2016-08-22	515490353	SILVA SOTO DIEGO ANDRE	1	3	85	1991-08-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251547	2015-08-17	2016-02-25	515009299	MARTINEZ GALARZA IX CHEL	1	1	89	1980-12-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251548	2015-08-17	2015-08-17	310030861	FLORES SALAZAR EDWING	1	4	85	1994-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251549	2015-08-17	2015-08-17	308136582	RIVERA PASTELIN JUAN CARLOS	1	1	85	1992-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251550	2015-08-17	2017-01-31	309276670	MONROY MARQUEZ ALFREDO	1	2	84	1993-06-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251551	2015-08-18	2015-08-18	309286721	OSORNIO MALDONADO ALLAN RICARDO	1	1	90	1993-09-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251552	2015-08-18	2015-08-18	413003009	HERNANDEZ NERI PATRICIA ALEJANDRA	1	1	90	1993-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251553	2015-08-18	2015-08-18	976052618	GIL ZENTENO LIDIA MARIA	1	1	86	1983-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251554	2015-08-18	2015-08-18	311129689	ARELLANO MARTINEZ DIEGO ISAAC	1	3	79	1995-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251555	2015-08-18	2015-08-18	312270069	VALENZUELA MOSQUEDA JORGE ALBERTO	1	1	80	1996-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251556	2015-08-18	2015-08-18	401034260	RAMOS MARTINEZ LUCERO	1	2	84	1981-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251557	2015-08-18	2015-08-18	415052034	MATIAS GARCIA EDILBERTO DAVID	1	1	83	1996-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251558	2015-08-18	2015-08-18	415014469	PAZOS RODRIGUEZ DARIO	1	1	83	1996-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251559	2015-08-18	2015-08-18	308342206	REYNA SALAZAR FRANCISCO	1	5	83	1992-04-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251560	2015-08-18	2015-08-18	309050434	ESTRADA SANCHEZ WANDRA ELIZABETH	1	1	76	1993-07-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251561	2015-08-18	2015-08-18	311092794	FLORES REGALADO DIEGO FERNANDO	1	2	85	1995-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251562	2015-08-18	2015-08-18	PEML910829	PEDRO MENDEZ JOSE LUIS	2	4	79	1991-08-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251563	2015-08-18	2015-08-18	305141127	RONQUILLO VALDEZ JOEL IVAN	1	4	79	1988-09-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251564	2015-08-18	2015-08-18	310242556	IBARRA SOSA KARIMM	1	1	90	1991-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251565	2015-08-18	2018-05-30	413490151	THOUVARD MARIE NICOLE	1	8	84	1993-08-27	F	t	2	apellido p	apellido m	nombres	0	none	none	0
251566	2015-08-18	2015-08-18	414029316	CRUZ MARTINEZ LUIS FERNANDO	1	1	90	1992-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251567	2015-08-18	2015-08-18	311132360	NAVARRO OSORIO AMANDA	1	1	90	1995-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251568	2015-08-18	2015-08-18	410006939	RAMIREZ MAZA BRENDA MARCELA	1	5	84	1990-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251569	2015-08-18	2015-08-18	306329258	VICENTEÑO LEON ALAN IRVING	1	5	86	1990-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251570	2015-08-18	2015-08-18	305124153	ARGUELLES CASTILLO CINTHIA NAYELI	1	2	86	1989-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251571	2015-08-18	2016-02-18	311261754	HERRERA DE LA CUEVA NAOMI XIMENA	1	2	79	1994-08-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251572	2015-08-18	2015-08-18	106004511	SOTOMAYOR SUAREZ EDGAR ANTONIO	1	1	85	1993-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251573	2015-08-18	2015-08-18	309071004	CASTILLO LOPEZ MICHAEL ANGELO	1	1	85	1992-10-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251574	2015-08-18	2015-08-18	311257399	CESAR LOPEZ ANDREA	1	6	84	1995-04-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251575	2015-08-18	2017-08-07	310322430	TREJO CALZADA JULIO ERNESTO	1	1	83	1994-10-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251576	2015-08-18	2015-08-18	310071080	ARELLANO MARTINEZ FABIAN ARTURO	1	1	83	1994-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251577	2015-08-18	2015-08-18	408490032	JARAMILLO REINOSO GABRIELA A.	1	1	82	1989-09-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251578	2015-08-18	2015-08-18	415019897	BOTELLO RUEDA JORGE IVAN	1	1	79	1994-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251579	2015-08-18	2015-08-18	311332209	RUELAS BECERRIL GABRIEL	1	1	85	1994-08-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251580	2015-08-18	2015-08-18	515013427	CASTILLO OLIVARES CARLOS IVAN	1	1	85	1992-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251581	2015-08-18	2015-08-18	515016064	BRITO ORTIZ DANIEL	1	1	101	1991-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251582	2015-08-19	2015-08-19	IAMJ871110	IBARGUENGOITIA MEJIA JESSICA PAOLA	3	2	7	1987-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251583	2015-08-19	2016-08-15	CALK880510	CASTILLO LOPEZ KARELY STEPHANIE	3	1	34	1988-05-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251584	2015-08-19	2015-08-19	106001778	ARROYO TENA GABRIELA MICHEL	1	2	76	1993-06-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251585	2015-08-20	2015-08-20	309120487	RUVALCABA ALVAREZ JORGE RUBEN	1	3	79	1993-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251586	2015-08-20	2015-08-20	310257815	MORALES TORRES MARIO ROGELIO	1	7	85	1994-07-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251587	2015-08-20	2015-08-20	413026594	RAMIREZ CASTILLO NILDRE ABRIL	1	2	90	1994-05-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251588	2015-08-20	2015-08-20	AODE761013	ALONSO DOMINGUEZ EDUARDO	2	2	82	1976-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251589	2015-08-20	2015-08-20	414002854	OREA LANDEROS PABLO	1	2	82	1994-04-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251590	2015-08-20	2015-08-20	313139949	MARTINEZ PALMA VANESSA JOSELIN	1	1	89	1996-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251591	2015-08-20	2015-08-20	514020763	GUTIERREZ CARRERA VALERIA	1	2	81	1985-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251592	2015-08-20	2015-08-20	107000152	BENITEZ CORDOBA ANDREA ALEJANDRA	1	2	82	1993-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251593	2015-08-20	2015-08-20	309329147	URBINA MELENDEZ DARIO	1	4	85	1992-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251594	2015-08-20	2015-08-20	304148484	FLORES NAVA ENRIQUE DANIEL	1	2	84	1988-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251595	2015-08-20	2015-08-20	201610056	MORENO MARQUEZ WENDY DEL CARMEN	1	1	82	1993-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251596	2015-08-20	2015-08-20	412145195	LUNA CARO NAYELY	1	1	82	1988-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251597	2015-08-20	2015-08-20	413062701	BUSTAMANTE HERNANDEZ KAREN DANIELA	1	3	84	1993-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251598	2015-08-20	2015-08-20	312018537	MANUEL ROBLES LUIS ENRIQUE	1	1	82	1995-01-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251599	2015-08-20	2015-08-20	303030994	PAREDES TRUJILLO KARLA GABRIELA	1	1	89	1996-10-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251600	2015-08-20	2015-08-20	311700596	ABARCA MERLIN DANIELA MELISSA	1	4	90	1995-06-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251601	2015-08-20	2015-08-20	311173022	GUADARRAMA AGUILAR DANIEL	1	1	85	1994-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251602	2015-08-20	2015-08-20	311132683	OSORIO GALICIA SAUL	1	1	79	1995-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251603	2015-08-20	2015-08-20	311316562	CADENA GALICIA MAYTE	1	2	89	1994-12-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251604	2015-08-20	2015-08-20	914003954	HERNANDEZ PAZ LUZ ELENA	1	4	85	1995-05-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251605	2015-08-20	2015-08-20	97266118	RAMIREZ GONZALEZ ADRIANA	1	1	79	1981-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251606	2015-08-20	2015-08-20	413121259	HERRERA GARCIA BRENDA NELLY	1	2	80	1994-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251607	2015-08-20	2016-02-23	414045084	TORRES AGUIRRE HANNAH LIZETH	1	1	85	1995-05-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251608	2015-08-20	2015-08-20	308290279	RUIZ VELASCO GONZALEZ MARTHA MARIA	1	3	78	1992-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251609	2015-08-20	2015-08-20	515047091	FIGUEROA GUANCHE DUNIA	1	1	101	1988-05-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251610	2015-08-20	2015-08-20	310185181	GOMEZ MEJIA ENRIQUE	1	1	81	1995-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251611	2015-08-20	2015-08-20	305114370	MARTINEZ GONZALEZ JOSE ANTONIO	1	1	85	1988-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251612	2015-08-20	2015-08-20	308047310	CRUZ ANGELES JOSE YABIN	1	1	83	1992-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251613	2015-08-20	2015-08-20	515006377	VASQUEZ MARTINEZ HONORIO	1	2	103	1989-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251614	2015-08-20	2015-08-20	306134616	LORENZO VALDES SUYMAR	1	6	7	1989-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251615	2015-08-20	2015-08-20	307039291	FABILA MUÑOZ KHARLA GABRIELA	1	1	82	1991-01-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251616	2015-08-20	2015-08-20	311148561	DE JESUS CELESTINO LUZ ARELI	1	2	82	1995-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251617	2015-08-20	2015-08-20	99163116	JIMENEZ ESCALONA JESUS	1	1	80	1975-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251618	2015-08-20	2015-08-20	302068308	MEDINA GALLO CESAR EDUARDO	1	1	84	1987-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251619	2015-08-20	2015-08-20	99256197	OSORIO GOMEZ OCTAVIO	1	1	82	1982-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251620	2015-08-20	2015-08-20	414035421	GUARNEROS ROJAS VERONICA JOCELYN	1	4	84	1994-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251621	2015-08-20	2015-08-20	308324857	SALAS ANDRADE DIEGO	1	2	85	1991-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251622	2015-08-20	2015-08-20	309562890	GONZALEZ SANCHEZ EDUARDO RODRIGO	1	4	80	1992-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251623	2015-08-21	2015-08-21	514025830	CID CASTRO CAROLINA	1	4	97	1994-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251624	2015-08-21	2015-08-21	309045814	BRAVO VELASCO BRENDA ESTHER	1	2	90	1992-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251625	2015-08-21	2015-08-21	313214866	SANCHEZ GUTIERREZ ALEJANDRO ALTAIR	1	5	89	1997-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251626	2015-08-21	2015-08-21	309318958	TREJO MADRIGAL FERNANDO	1	1	84	1993-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251627	2015-08-21	2015-08-21	312346595	RODRIGUEZ RUIZ DAVID ALONSO	1	4	85	1995-06-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251628	2015-08-21	2015-08-21	307665270	GARCIA NAVARRETE LUIS ARMANDO	1	4	85	1989-08-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251629	2015-08-21	2015-08-21	301027210	LUVIANO ROSALES IRENE	1	3	78	1985-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251630	2015-08-21	2015-08-21	307010388	AMAYA REYES MIGUEL ANGEL	1	5	79	1991-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251631	2015-08-21	2017-08-15	313123236	CARMONA CORDOVA FERNANDO	1	2	85	1997-08-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251632	2015-08-21	2018-08-13	313037508	CRUZ ROQUE DIANA LAURA	1	1	85	1997-05-23	F	t	3	apellido p	apellido m	nombres	0	none	none	0
251633	2015-08-21	2016-08-23	312110370	GLAZ MATA PAUL ANTONI	1	1	90	1995-10-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251634	2015-08-24	2015-08-24	310211206	CHAMORRO CRUZ GUADALUPE	1	4	90	1993-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251635	2015-08-24	2015-08-24	309241913	NAJERA CHAVEZ PEDRO JESUS	1	1	85	1992-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251636	2015-08-24	2015-08-24	309085627	CAMPOS RODRIGUEZ TANIA	1	1	90	1993-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251637	2015-08-24	2016-08-11	313302842	LINARES GARCIA TANIA ANGELICA	1	4	81	1996-03-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251638	2015-08-24	2015-08-24	312249025	JIMENEZ SANDOVAL SUSANA ALEJANDRA	1	7	84	1995-01-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251639	2015-08-24	2015-08-24	515046689	SCHIAVO CHIOVARO BENEDETTO	1	1	79	1987-11-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251640	2015-08-24	2016-11-07	308265165	GRANADOS TORRES CARLOS ULISES	1	5	84	1992-05-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251641	2015-08-24	2015-08-24	313319040	BARRERA VELAZQUEZ DIEGO ALBERTO	1	1	85	1997-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251642	2015-08-24	2015-08-24	203005055	MIRANDA PUENTES MA. GUADALUPE	1	1	74	1974-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251643	2015-08-24	2017-05-22	307230670	GARCIA MAGALLON DANIEL	1	2	80	1991-08-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251644	2015-08-24	2015-08-24	310030359	CASTRO ORTEGA ANGEL JESUS	1	3	85	1994-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251645	2015-08-24	2015-08-24	306192421	MAYER SANCHEZ MARCO ANTONIO	1	1	82	1990-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251646	2015-08-24	2015-08-24	307014063	FLORES GUTIERREZ VERONICA	1	5	85	1993-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251647	2015-08-24	2015-08-24	307228628	GARCIA HERNANDEZ BRENDA VIANEY	1	1	79	1991-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251648	2015-08-25	2015-08-25	312594473	HERNANDEZ REYES LUIS DANIEL	1	4	78	1995-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251649	2015-08-25	2015-08-25	312315795	PEÑA HERNANDEZ THALIA ALONDRA	1	4	78	1996-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251650	2015-08-25	2015-08-25	310320429	SOLIS TEJEDA ERNESTO DAVID	1	4	90	1993-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251651	2015-08-25	2015-08-25	311117912	QUEVEDO MENDEZ MARIO ALBERTO	1	4	83	1993-10-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251652	2015-08-25	2015-08-25	406060912	MORENO BARRALES ERIKA GISELA	1	2	80	1987-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251653	2015-08-25	2015-08-25	312039860	MARTINEZ MACIAS EMILIO LAURENCIO	1	4	86	1995-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251654	2015-08-25	2015-08-25	401061471	FLORES LOBATON CLAUDA	1	4	84	1973-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251655	2015-08-25	2015-08-25	416081228	RODRIGUEZ PADILLA MARCO ANTONIO	1	5	85	1996-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251656	2015-08-25	2017-08-18	310300746	QUEZADA FERREIRA ALEJANDRA STEPHANIE	1	5	82	1994-01-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251657	2015-08-25	2015-08-25	306245163	ROSAS AVENDAÑO JULIO CESAR	1	1	78	1990-01-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251658	2015-08-25	2015-08-25	PEPR851216	PEREZ PEREZ MARIA DEL ROCIO	2	3	82	1985-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251659	2015-08-25	2018-08-08	414029165	LOPEZ ROJAS CARLOS ANTONIO	1	4	80	1994-06-09	M	t	4	apellido p	apellido m	nombres	0	none	none	0
251660	2015-08-25	2015-08-25	415141828	LOPEZ MATEO MARIA JOSE	1	4	84	1996-07-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251661	2015-08-25	2015-08-25	415050250	MORALES ORTEGA GUSTAVO EDUARDO	1	2	84	1994-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251662	2015-08-25	2015-08-25	307251044	PASTOR VALDEZ NANCY VIRGINIA	1	1	81	1991-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251663	2015-08-25	2015-08-25	309520478	RUIZ REYES DIANA CAROLINA	1	7	90	1992-12-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251664	2015-08-25	2015-08-25	412017832	GUDIÑO NEGRETE MANUEL	1	6	90	1991-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251665	2015-08-25	2017-02-09	309202695	TELLEZ FELGUERES DANIEL	1	4	85	1992-01-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251666	2015-08-25	2016-08-26	416032354	ARAUJO GUZMAN EDVIN URIEL	1	1	85	1986-08-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251667	2015-08-25	2015-08-25	309212423	MUÑOZ ROMAN JESUS EDUARDO	1	2	84	1993-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251668	2015-08-25	2015-08-25	312315908	ORTEGA ITURBE GERARDO JAVIER	1	1	89	1996-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251669	2015-08-25	2015-08-25	FEGC630525	FERNANDEZ GARCIA MARIA DEL CARMEN	2	1	79	1963-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251670	2015-08-25	2015-08-25	308175178	GUTIERREZ ORDAZ RUBEN	1	1	90	1992-06-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251671	2015-08-25	2017-09-04	414002706	AMARO PACHECO EDUARDO	1	1	90	1995-02-09	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251672	2015-08-25	2015-08-25	308133536	LLANOS REYES ANDREA CELESTE	1	1	90	1992-06-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251673	2015-08-25	2015-08-25	309022855	CABALLERO REYES ANA SILVIA	1	4	80	1993-05-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251674	2015-08-25	2018-02-21	312049265	OCHOA GONZALEZ MARIA FERNANDA	1	2	89	1995-06-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251675	2015-08-25	2015-08-25	304344837	PRECIADO RAMIREZ ELIZABETH IVONNE	1	1	85	1988-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251676	2015-08-25	2015-08-25	JIMC641122	JIMENEZ MARQUEZ MARIA DEL CARMEN	2	3	83	1964-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251677	2015-08-25	2015-08-25	310109130	MARTINEZ HERNANDEZ FERNANDO	1	7	90	1994-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251678	2015-08-25	2015-08-25	413091930	RAMIREZ RODRIGUEZ DANIELA	1	2	84	1992-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251679	2015-08-25	2015-08-25	312547675	CHAVEZ ORTIZ BRENDA ALEJANDRA	1	1	83	1996-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251680	2015-08-25	2015-08-25	312062987	MORALES RIVERA GERARDO AXEL	1	1	84	1996-03-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251681	2015-08-25	2016-08-11	312071990	MARTINEZ DOMINGUEZ BRAYAN JAVIER	1	2	84	1996-02-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251682	2015-08-25	2015-08-25	414026724	CALDERON ESCUTIA EDUARDO	1	4	85	1995-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251683	2015-08-26	2015-08-26	309212210	GONZALEZ RUBIO MENDOZA ANDREA	1	5	73	1993-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251684	2015-08-26	2015-08-26	PAMN730818	PACHECO MARTINEZ NANCY JACQUELINE	2	1	85	1973-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251685	2015-08-26	2016-03-07	310201681	NIETO FUENTES ABRIL	1	5	82	1993-10-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251686	2015-08-26	2017-08-21	416024702	BETAN SANTILLAN ANA CRISTINA	1	4	85	1997-07-24	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251687	2015-08-26	2015-08-26	412084162	SANCHEZ GONZALEZ OSCAR AGUSTIN	1	2	84	1990-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251688	2015-08-27	2015-08-27	ROVE831203	ROBLES VALDEZ FATIMA GUADALUPE	1	1	96	1983-12-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251689	2015-08-27	2015-08-27	312312471	ALVARADO INFANTE FERNANDA MONSERRAT	1	1	78	1996-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251690	2015-08-27	2016-08-25	312010665	PERALTA FLORES JARED ALEJANDRO	1	5	78	1996-09-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251691	2015-08-27	2016-03-01	MARL840417	MAYA RODRIGUEZ LINDA MARLENNE	2	1	87	1984-04-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251692	2015-08-27	2015-08-27	510011947	JUAREZ CORTES MARTHA TRINIDAD	1	1	83	1982-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251693	2015-08-27	2015-08-27	310195146	MORA CAMPUZANO EDGAR ARMANDO	1	4	85	1994-07-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251694	2015-08-27	2015-08-27	311004753	HERNANDEZ MARTINEZ ANGEL ISRAEL	1	2	78	1995-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251695	2015-08-27	2015-08-27	309201296	RUIZ ARRIAGA ROSHNI	1	4	80	1992-12-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251696	2015-08-27	2015-08-27	308338511	ALARCON FLORES YAZMIN BERENICE	1	4	80	1991-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251697	2015-08-27	2015-08-27	514025603	TRENADO URIBE MIRIAM BLANCA	1	1	90	1990-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251698	2015-08-27	2016-09-05	416058864	VARGAS HERNANDEZ QUETZAL ULISES ORION	1	4	85	1987-02-26	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251699	2015-08-27	2015-08-27	308317893	CARRETERO JACINTO IVAN	1	1	85	1992-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251700	2015-08-27	2015-08-27	312031974	MORALES ZAMORA JOSUE IVAN	1	1	83	1996-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251701	2015-08-27	2015-08-27	415063814	RODRIGUEZ MONROY JOAQUIN	1	1	83	1996-09-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251702	2015-08-27	2015-08-27	310262590	SAULES ROJAS DAVID	1	1	79	1993-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251703	2015-08-27	2015-08-27	HEME871227	HERNANDEZ MORALES ERICK ONOFFRE	1	2	85	1987-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251704	2015-08-27	2015-08-27	313269464	ROLDAN GARCIA JESSICA LEONOR	1	1	89	1997-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251705	2015-08-27	2015-08-27	CUAI890923	CRUZ AGUILAR IVAN AARON	2	2	83	1989-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251706	2015-08-27	2015-08-27	310253800	MUÑOZ SANCHEZ ARIADNA GUADALUPE	1	3	82	1992-09-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251707	2015-08-27	2015-08-27	310135519	VALENCIA VALDERRAMA ANDREA GUADALUPE	1	1	90	1994-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251708	2015-08-27	2015-08-27	31056268	ROJAS SANCHEZ ALINE	1	1	90	1993-05-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251709	2015-08-27	2017-01-31	413008293	CORREA RANCAÑO CARLOS IGNACIO	1	7	89	1986-09-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251710	2015-08-27	2015-08-27	413086547	VEGA ALCOCER EKATHERINA	1	7	90	1994-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251711	2015-08-27	2015-08-27	311209831	HERNANDEZ DURAN KATIA LUCERO	1	3	84	1995-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251712	2015-08-27	2015-08-27	307148706	HERNANDEZ PEREZ INGRID DAMARA	1	3	78	1991-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251713	2015-08-28	2015-08-28	308258390	MORENO HURTADO BRENDA IVETH	1	4	99	1991-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251714	2015-08-28	2015-08-28	312077370	BECERRA CAMACHO LUZ ABRIL	1	2	84	1995-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251715	2015-08-28	2017-08-11	309529763	ESPINOSA RUSSI IVAN EDAI	1	2	80	1992-11-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251716	2015-08-28	2015-08-28	303164221	BERMUDEZ GARCIA EVA PATRICIA	1	5	90	1987-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251717	2015-08-28	2015-08-28	309133230	VELASCO CASAS CARLOS EDUARDO	1	4	85	1992-11-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251718	2015-08-28	2015-08-28	ROAC721205	RODRIGUEZ AGUILAR MARIA DEL CARMEN	2	4	81	1972-12-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251719	2015-08-28	2016-03-31	413122971	JIMENEZ SEGOVIA KARINA WENDOLYN	1	1	84	1984-03-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251720	2015-08-28	2015-08-28	311688427	GODOY ORTEGA JOSE ANGEL	1	5	78	1995-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251721	2015-08-28	2015-08-28	AUHA890130	AGUILAR HERNANDEZ ARELY BELEN	3	1	86	1989-01-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251722	2015-08-28	2015-08-28	313123872	CRUZ GUTIERREZ JENNIFER	1	1	85	1997-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251723	2015-08-28	2015-08-28	416092455	PEREGRINO LIMA VIOLETA ESTHER	1	1	85	1996-05-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251724	2015-08-28	2015-08-28	312040547	ALVAREZ VALDEZ MITZI AYLIN	1	4	78	1996-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251725	2015-08-28	2016-08-29	415087100	FLOTA NOVELO MIGUEL ANGEL	1	5	78	1991-11-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251726	2015-08-28	2015-08-28	310164281	TORRES CAMAS YUNUEN	1	2	82	1992-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251727	2015-08-28	2015-08-28	310012773	BASTIDA LUNA JOSE ROBERTO	1	4	79	1994-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251728	2015-08-28	2018-02-23	310238476	MENDEZ ACOLTZI GABRIELA	1	1	85	1994-04-08	F	f	4	apellido p	apellido m	nombres	0	none	none	0
251729	2015-08-28	2015-08-28	307158280	RIVAS JASSO ISAAC MICHEL	1	2	83	1991-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251730	2015-08-28	2015-08-28	414003772	VAZQUEZ BAUTISTA ANA KAREN	1	1	79	1995-01-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251731	2015-08-28	2015-08-28	313262173	GUTIERREZ CASTILLO OSCAR	1	1	85	1997-05-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251732	2015-08-28	2015-08-28	313314382	CASTRO YAÑEZ LAURA PAULINA	1	2	78	1997-03-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251733	2015-08-28	2015-08-28	312351658	SESMA CISNEROS ARTURO	1	1	85	1995-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251734	2015-08-28	2015-08-28	310025928	CABRERA GOMEZ JULIO CESAR	1	4	84	1994-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251735	2015-08-28	2015-08-28	105003195	RODRIGUEZ BRIBIESCA ISAAC	1	1	85	1992-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251736	2015-08-28	2015-08-28	414042090	GARCIA TORRES RAUL JAIR	1	2	84	1995-01-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251737	2015-08-28	2015-08-28	310131308	ROSAS RAMOS CARLOS JONAS	1	7	81	1994-01-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251738	2015-08-28	2015-08-28	310275271	RUIZ SILVA ALEXIA	1	5	84	1994-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251739	2015-08-28	2015-08-28	416027624	SOLIS SANCHEZ GONZALO	1	2	84	1994-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251740	2015-08-31	2015-08-31	310061135	CONDE MARTINEZ RUBI	1	5	84	1994-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251741	2015-08-31	2015-08-31	313524781	VEGA GARZA ALFONSO	1	2	85	1996-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251742	2015-08-31	2015-08-31	411093419	PRIETO TRUJILLO ERICK	1	4	83	1992-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251743	2015-08-31	2015-08-31	311074651	CAMPOS ESPINOSA ADRIANA	1	1	90	1995-08-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251744	2015-08-31	2015-08-31	413032173	CISNEROS VIDALES LEYDALI	1	1	76	1993-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251745	2015-08-31	2016-10-03	91176570	ALFARO MUÑOZ DANIEL	1	3	82	1975-09-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251746	2015-08-31	2015-08-31	311179086	SANABRIA LOTZIN VIRIDIANA SOFIA	1	1	79	1995-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251747	2015-08-31	2015-08-31	416004476	LOTZIN MARBAN ESTELA	1	1	84	1971-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251748	2015-08-31	2015-08-31	104000964	ROGEL HERNANDEZ VICTOR DAVID	1	4	85	1991-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251749	2015-08-31	2016-09-30	415016188	BARRERA YAM LUIS ENRIQUE	1	1	83	1995-10-31	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251750	2015-08-31	2015-08-31	308039115	BARRAGAN MONTES PATRICIO YOLTIC	1	4	82	1992-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251751	2015-08-31	2015-08-31	412080810	SILVA RODRIGUEZ DAVID	1	1	83	1992-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251752	2015-08-31	2015-08-31	303098245	SALGADO CASTRO ITZEL	1	1	84	1987-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251753	2015-08-31	2015-08-31	310006321	ALEMAN PONCE DE LEON DIEGO	1	1	90	1993-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251754	2015-08-31	2015-08-31	312025742	PEREZ VILLALOBOS FRANCISCO	1	3	90	1996-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251755	2015-08-31	2015-08-31	308140539	VILLAFUERTE OLVERA JENNYFER	1	4	82	1991-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251756	2015-08-31	2015-08-31	311286999	CABRERA CARRILLO AIDE	1	3	85	1995-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251757	2015-08-31	2016-03-02	413074801	PONCE LOPEZ BRENDA ADRIANA	1	3	82	1993-09-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251758	2015-08-31	2015-08-31	413058717	MUNDO PERALTA MIGUEL IVAN	1	2	80	1985-05-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251759	2015-08-31	2015-08-31	311038729	LOPEZ SANCHEZ KARLA STEPHANY	1	1	85	1995-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251760	2015-08-31	2016-08-08	309145660	GUTIERREZ GARCIA ESTEBAN	1	1	79	1993-07-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251761	2015-08-31	2015-08-31	415072944	RUIZ RAMOS ALFONSO	1	1	85	1996-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251762	2015-08-31	2015-08-31	310273473	OLALDE RAMIREZ GPE. SARAHI	1	4	90	1994-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251763	2015-08-31	2015-08-31	310088893	ESQUEDA GARCIA ALFONSO	1	7	90	1994-08-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251764	2015-08-31	2015-08-31	307099550	GUEVARA ANGELES DAVID	1	4	84	1991-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251765	2015-08-31	2015-08-31	515011674	GUTIERREZ RAMIREZ MARIA LUISA	1	1	82	1988-09-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251766	2015-09-01	2015-09-01	VIDM930724	VILCHIS DOMINGUEZ MIGUEL ALONSO	2	1	79	1993-07-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251767	2015-09-01	2015-09-01	312047340	RUBIOL GARCIA ADAN MIGUEL	1	1	79	1996-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251768	2015-09-01	2015-09-01	311136999	CASTILLO GARCIA GABRIELA	1	1	85	1995-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251769	2015-09-01	2015-09-01	415117216	ROJAS FLORES JOSUE	1	1	85	1995-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251770	2015-09-01	2015-09-01	310676465	ALATORRE CORONADO MARIA FERNANDA	1	2	85	1994-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251771	2015-09-01	2015-09-01	310099491	ESPINOZA MEDINA STEPHANIE	1	3	86	1994-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251772	2015-09-01	2015-09-01	310031071	GONZALEZ LOPEZ JUAN IGNACIO	1	1	86	1994-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251773	2015-09-01	2015-09-01	309257248	MARTINEZ ZARATE ELIZABETH	1	1	90	1992-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251774	2015-09-01	2015-09-01	515023262	MARTINEZ CRUZ IGNACIA	1	1	82	1987-06-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251775	2015-09-01	2015-09-01	306086979	MUÑOZ ORTIZ LILIANA	1	1	82	1990-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251776	2015-09-01	2015-09-01	303216671	LAGUNA MENDOZA AZAREEL ABIGAIL	1	2	84	1987-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251777	2015-09-01	2015-09-01	302167418	SUASTE CALDERON OSIRIS ALEJANDRA	1	2	7	1986-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251778	2015-09-01	2015-09-01	309103451	ESPINAL GARCIA CARLOS EDUARDO	1	1	75	1993-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251779	2015-09-01	2015-09-01	JUGB890705	JUAREZ GARCIA BENITO	2	3	79	1989-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251780	2015-09-01	2015-09-01	312329129	OLGUIN LEYVA MARLENET	1	1	86	1996-12-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251781	2015-09-01	2015-09-01	309672591	AVELINO VIEYRA NANCY IVETTE	1	6	80	1993-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251782	2015-09-01	2015-09-01	312268505	ROSAS HERNANDEZ ITZEL	1	6	90	1996-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251783	2015-09-01	2015-09-01	92252026	PANIAGUA LOPEZ ALAN	1	6	82	1976-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251784	2015-09-01	2015-09-01	308049503	AVALOS SANCHEZ LIZBETH	1	1	88	1992-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251785	2015-09-01	2015-09-01	311184871	CRUZ SANTIAGO ILIANA	1	1	81	1995-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251786	2015-09-02	2015-09-02	308284717	RUIZ OCAÑA TANIA ANAID	1	5	78	1992-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251787	2015-09-02	2015-09-02	413081621	FUENTES CELIS LAURA CAROLINA	1	1	82	1993-01-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251788	2015-09-02	2015-09-02	416068001	DAVILA GARCIA ROCIO REBECA	1	4	84	1997-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251789	2015-09-02	2015-09-02	310135351	ZAMUDIO PEREZ JOSE OMAR	1	4	90	1994-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251790	2015-09-02	2015-09-02	307323369	VIDAL CASIMIRO FRANCO	1	4	83	1983-01-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251791	2015-09-02	2015-09-02	99012485	AGUILAR LOPEZ FERNANDO	1	1	82	1982-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251792	2015-09-02	2015-09-02	309195146	HERNANDEZ AGUILAR RAFAEL	1	1	84	1993-04-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251793	2015-09-02	2015-09-02	308255375	GARCIA CORTES FERNANDO	1	1	79	1992-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251794	2015-09-02	2015-09-02	415077860	JIMENEZ SANCHEZ DANIEL	1	2	84	1994-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251795	2015-09-02	2015-09-02	300013618	GARCIA GOMEZ RUTH ELENA	1	1	89	1984-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251796	2015-09-03	2015-09-03	306311503	RANGEL FLORES SARA GABRIELA	1	1	89	1989-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251797	2015-09-03	2015-09-03	310677039	TOLEDO NAVARRETE MARIANO	1	4	85	1993-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251798	2015-09-03	2015-09-03	310227407	SANTILLANA DE LA CONCHA CESAR EDUARDO	1	1	82	1994-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251799	2015-09-03	2015-09-03	300219243	PERALTA BLANCO ROSA MARTHA	1	1	84	1984-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251800	2015-09-03	2015-09-03	402050522	GUERRERO VARELA SANDRA	1	6	82	1992-03-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251801	2015-09-03	2017-04-17	310234894	GONZALEZ SUBIAS ANA YAREN AMAIRANY	1	2	80	1994-12-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251802	2015-09-03	2015-09-03	305068510	DIEGO GUERRA CHRISTIAN OCTAVIO	1	5	80	1989-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251803	2015-09-03	2015-09-03	312255831	MARQUEZ CADENA IVAN ALEJANDRO	1	4	78	1995-10-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251804	2015-09-03	2015-09-03	303272911	GONZALEZ GONZALEZ MIRIAM	1	2	82	1987-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251805	2015-09-03	2015-09-03	307228398	GUERRERO FLORES YOSAFAT	1	1	82	1991-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251806	2015-09-03	2015-09-03	311043442	TREJO SANDOVAL ANGEL XAVIER	1	1	85	1995-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251807	2015-09-03	2015-09-03	99247775	NAVA BOLAÑOS ANGELA	1	1	150	1984-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251808	2015-09-03	2015-09-03	310278849	ORDAZ GARCIA SANDRA BEATRIZ	1	1	90	1994-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251809	2015-09-03	2015-09-03	414002122	LOPEZ PORTILLO PURATA MELISSA	1	5	79	1993-10-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251810	2015-09-03	2015-09-03	HEVS850512	HERNANDEZ VARGAS SALVADOR GUADALUPE	2	1	90	1985-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251811	2015-09-03	2015-09-03	516015376	RODRIGUEZ MADRIGAL JOSE ALBERTO	1	1	95	1988-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251812	2015-09-03	2015-09-03	105005120	QUIROZ MORAN NYDIA VICTORIA	1	1	85	1992-07-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251813	2015-09-03	2015-09-03	305519311	GARCIA SILVA IRLENDY INGRID	1	1	82	1989-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251814	2015-09-03	2015-09-03	308188000	ANTONIO GUTIERREZ LETICIA	1	1	90	1992-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251815	2015-09-03	2015-09-03	GAOV750203	GARCES OLVERA VERONICA	1	2	7	1975-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251816	2015-09-03	2015-09-03	415141488	SANCHEZ REYES ARTURO IVAN	1	3	82	1992-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251817	2015-09-03	2015-09-03	313260155	VAZQUEZ MALAGA MIGUEL ANGEL	1	1	83	1997-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251818	2015-09-04	2015-09-04	309265168	RAMIREZ RAMIREZ TAMARA	1	7	85	1993-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251819	2015-09-04	2015-09-04	308050826	CHAVEZ RESENDIZ EDGAR YAIR	1	1	85	1992-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251820	2015-09-04	2015-09-04	310337562	VARGAS GALICIA YESSICA NOEMI	1	1	79	1994-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251821	2015-09-04	2015-09-04	415117948	GUZMAN FERNANDEZ ANDREA	1	1	89	1995-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251822	2015-09-04	2015-09-04	308049864	BECERRIL DOMINGUEZ IXCHEL QUETZALLI	1	1	85	1991-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251823	2015-09-04	2015-09-04	310534008	SALCEDO ESTEVA ANA	1	2	89	1993-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251824	2015-09-04	2015-09-04	311634280	GARDUÑO SANCHEZ ANGEL	1	2	89	1995-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251825	2015-09-04	2015-09-04	312306005	URRIETA FIERRO BRENDA	1	1	82	1996-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251826	2015-09-04	2015-09-04	414007055	BERNABE CRUZ MARCOS ERNESTO	1	1	85	1995-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251827	2015-09-04	2015-09-04	103005674	MARTINEZ DIEZ BARROSO JOSE ANTONIO	1	1	84	1990-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251828	2015-09-07	2015-09-07	310033109	DIAZ GARCIA LUIS LEONARDO	1	4	89	1994-03-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251829	2015-09-07	2015-09-07	412002528	DURAN GUTIERREZ ALEJANDRO GEOVANI	1	1	85	1991-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251830	2015-09-07	2015-09-07	307051167	ALVARADO SIERRA ALONDRA	1	3	80	1991-04-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251831	2015-09-07	2015-09-07	309134718	GUADLUPE HERNANDEZ JULIO CESAR	1	2	82	1993-06-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251832	2015-09-07	2017-09-04	311172685	GARCIA MAYNEZ CONTRERAS GUILLERMO A.	1	1	80	1992-07-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251833	2015-09-07	2015-09-07	309070636	BARBOSA MORALES ALBERTO	1	4	85	1993-04-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251834	2015-09-07	2015-09-07	309011714	HERNANDEZ RIOS ESTEFANIA	1	2	81	1993-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251835	2015-09-08	2016-04-12	305262907	FERNANDEZ AULIS MARIA FERNANDA	1	1	90	1989-06-15	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251836	2015-09-08	2017-08-22	312126980	BRAVO RESENDIZ AURA DANIELA	1	7	82	1996-08-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251837	2015-09-08	2015-09-08	310132927	SERRATO MAGAÑA KARLA DENNISE	1	1	82	1994-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251838	2015-09-08	2015-09-08	512013916	RAMOS MARTINEZ IVAN EMMANUEL	1	1	86	1988-06-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251839	2015-09-08	2015-09-08	309195892	LOPEZ SANCHEZ DANIELA MERCEDES	1	1	80	1993-09-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251840	2015-09-08	2015-09-08	310033783	ACEVEDO GUZMAN JULIO CESAR	1	1	83	1994-06-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251841	2015-09-08	2017-03-07	309217064	RAMIREZ CORCHADO MA. FERNANDA	1	7	79	1992-09-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251842	2015-09-08	2015-09-08	313119015	SOLANO AVELAR LUIS FERNANDO	1	4	85	1997-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251843	2015-09-08	2015-09-08	414028759	GONZALEZ GONZALEZ CARLOS	1	1	83	1995-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251844	2015-09-08	2015-09-08	310105527	HERNANDEZ JUAREZ DAVID	1	1	85	1994-04-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251845	2015-09-08	2017-03-28	310152363	VARGAS MIRANDA MARIA DE GUADALUPE	1	1	85	1994-02-28	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251846	2015-09-08	2015-09-08	508006726	CORNEJO ARENAS OSCAR GREGORIO	1	2	82	1977-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251847	2015-09-08	2015-09-08	716033264	QUINTERO DIAZ MISAEL ANDRES	1	1	84	1994-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251848	2015-09-08	2018-04-12	GOGV710702	GOMEZ GUTIERREZ VINICIO ANTONIO	2	2	79	1971-07-02	M	t	3	apellido p	apellido m	nombres	0	none	none	0
251849	2015-09-08	2015-09-08	309315373	TALAVERA TESNA ESTELA	1	1	80	1993-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251850	2015-09-08	2016-09-05	MOSA540214	MORENO SUAREZ MARIA AMPARO	2	1	74	1954-02-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251851	2015-09-08	2015-09-08	LLLLL	NOMBRE APATERNO AMATERNO	1	1	999	1982-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251852	2015-09-09	2015-09-09	URDC931112	URBINA DE LIRA CARLOS DANIEL	1	4	78	1993-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251853	2015-09-09	2015-09-09	JIPM811022	JIMENEZ PONCE MIRIAM	1	2	7	1981-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251854	2015-09-09	2015-09-09	AALS800804	ALVARADO LOPEZ SANDRA	2	2	79	1980-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251855	2015-09-09	2015-09-09	311294039	CRUZ MARTINEZ ALMA JAZMIN	1	5	84	1990-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251856	2015-09-09	2015-09-09	311308491	LOPEZ REYES ABDIAS	1	3	85	1995-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251857	2015-09-09	2015-09-09	310233567	MORENO MEJIA GISSELLA	1	5	84	1994-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251858	2015-09-09	2015-09-09	310109628	MORALES PALACIOS DANIEL	1	1	150	1994-06-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251859	2015-09-09	2015-09-09	312084097	CORDERO AMEZCUA BRENDA PAMELA	1	1	89	1994-11-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251860	2015-09-09	2015-09-09	JIVP820531	JIMENEZ VIVAS PEDRO	2	4	80	1982-05-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251861	2015-09-09	2017-08-10	311209305	DE LA CRUZ SOLIS LIDIA LILIANA	1	1	80	1993-06-20	F	f	3	apellido p	apellido m	nombres	0	none	none	0
251862	2015-09-09	2015-09-09	309010267	ESCOBAR CORNEJO LAURA ANGELICA	1	1	90	1993-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251863	2015-09-09	2015-09-09	515013379	BARRON MARTINEZ JULIA BEATRIZ	1	1	89	1989-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251864	2015-09-09	2015-09-09	310222732	VARGAS ESPINOSA MIGUEL ANGEL	1	1	85	1994-07-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251865	2015-09-09	2015-09-09	309240198	LOPEZ PEÑAFIEL KARLA VIRIDIANA	1	1	84	1993-06-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251866	2015-09-09	2015-09-09	307322685	ROLDAN RIZO KATYA FERNANDA	1	1	79	1991-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251867	2015-09-10	2016-08-16	ROVV870620	RODRIGUEZ VERGARA VLADIMIR	3	7	60	1987-06-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251868	2015-09-10	2015-09-10	515048593	GUIMARAIS BERMEJO MAYRENE OBDULIA	1	1	95	1976-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251869	2015-09-10	2015-09-10	514353386	ZUÑIGA RIOS ADAN	1	1	95	1970-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251870	2015-09-10	2015-09-10	309330635	VIGNATI VILCHIS PATRICIA	1	1	80	1993-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251871	2015-09-10	2015-09-10	306239766	RAMIREZ ORTIZ ZULEYKA GEOVANNA	1	1	88	1990-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251872	2015-09-10	2015-09-10	416071380	SANDOVAL ARREOLA OSCAR DANIEL	1	1	90	1997-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251873	2015-09-10	2015-09-10	309504126	CRUZ CONTRERAS CECILIA	1	1	89	1993-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251874	2015-09-10	2015-09-10	91281104	ROSAS GARCIA AMADOR ULISES	1	7	73	1975-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251875	2015-09-10	2015-09-10	412111260	SANCHEZ MORA SERGIO	1	1	81	1993-06-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251876	2015-09-11	2015-09-11	309144704	RUBIO ALONSO ENRIQUE	1	1	90	1993-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251877	2015-09-11	2015-09-11	412045851	VALDES GUADARRAMA ANDROS URIEL	1	7	84	1986-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251878	2015-09-11	2015-09-11	312296995	GONZALEZ GONZALEZ DIANA LAURA	1	1	86	1996-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251879	2015-09-11	2015-09-11	31040676	CORDOVA RAMIREZ ANDREA ELENA	1	5	89	1991-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251880	2015-09-11	2015-09-11	GOGD930824	GURRIA GARCIA DANIELLA	1	5	7	1993-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251881	2015-09-11	2015-09-11	309037499	ESCAMILLA CORONA BETZABE MAGALI	1	7	73	1993-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251882	2015-09-11	2015-09-11	311093533	DENICIA DELGADILLO JAQUELINE	1	2	82	1995-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251883	2015-09-11	2015-09-11	MAOI601113	MARINA OTHON MA. ISABEL	1	3	7	1960-11-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251884	2015-09-14	2015-09-14	310148513	GOMEZ GONZALEZ ERICK XOCOYOTZIN	1	1	83	1994-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251885	2015-09-14	2015-09-14	313338953	LOPEZ PIÑA STEPHANIE GPE.	1	1	89	1997-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251886	2015-09-14	2015-09-14	306289345	BASURTO VILLALOBOS KENIA	1	4	78	1989-09-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251887	2015-09-14	2017-03-22	311047251	HERNANDEZ GAMA JOALY	1	1	80	1993-09-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251888	2015-09-14	2015-09-14	414063567	RODRIGUEZ BELLO EDITH	1	5	88	1994-06-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251889	2015-09-14	2015-09-14	414055142	ULLOA LONA NOEMI	1	1	84	1983-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251890	2015-09-14	2015-09-14	312002233	CARRILLO PELAES JESUS ALFREDO	1	1	85	1995-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251891	2015-09-14	2015-09-14	309144704	RUBIO ALONSO ENRIQUE	1	1	90	1993-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251892	2015-09-14	2015-09-14	308065398	CORDERO PALACIOS MARIA GUADALUPE	1	1	85	1991-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251893	2015-09-14	2015-09-14	310211158	RODRIGUEZ MARTINEZ KAREN AMEYALLY	1	1	79	1994-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251894	2015-09-14	2015-09-14	304338818	PERCASTRE GOMEZ AARON MISAEL	1	4	83	1988-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251895	2015-09-14	2015-09-14	411070388	HERNANDEZ PRIETO LUIS ENRIQUE	1	1	85	1993-06-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251896	2015-09-14	2017-08-22	313265545	FRAGOSO LOPEZ SELENE	1	3	84	1997-08-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251897	2015-09-14	2015-09-14	310106926	GOMEZ SANDOVAL SAMANTHA	1	1	84	1994-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251898	2015-09-14	2015-09-14	308153604	RUIZ CRUZ JOSE ANTONIO	1	1	85	1992-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251899	2015-09-14	2015-09-14	305096065	AGUILAR HERRERA JOSE ANTONIO	1	2	83	1988-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251900	2015-09-14	2015-09-14	311100013	ROMERO MOTA ITAYETZI ELIZABETH	1	1	79	1995-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251901	2015-09-17	2015-09-17	302739367	SANCHEZ HERRERA ANGELICA	1	1	88	1986-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251902	2015-09-17	2015-09-17	311179653	TORRES NIETO MA. DE LOS ANGELES	1	4	84	1995-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251903	2015-09-17	2015-09-17	311147186	ROMERO MORALES YAZU ITZEL	1	1	90	1995-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251904	2015-09-17	2015-09-17	305277091	GARCIA CABELLO KARLA NATIVIDAD	1	1	95	1988-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251905	2015-09-17	2015-09-17	GOCS740907	GONZALEZ CORTES SANDRA	3	1	67	1974-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251906	2015-09-17	2015-09-17	309199340	ALVAREZ ALVAREZ JAZMIN	1	4	73	1993-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251907	2015-09-17	2015-09-17	304295849	RAMIREZ VARONA MARCO ANTONIO	1	1	84	1988-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251908	2015-09-17	2015-09-17	309072269	ALONSO GORDON JULIO CESAR	1	7	85	1992-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251909	2015-09-17	2015-09-17	305113823	MARTINEZ ABURTO ANGELICA	1	3	84	1989-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251910	2015-09-17	2015-09-17	411042510	YAÑEZ HERNANDEZ JOSE EDUARDO	1	3	84	1991-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251911	2015-09-17	2015-09-17	310346757	CARRAZCO CARDENAS ZAORI GABRIELA	1	1	89	1994-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251912	2015-09-17	2015-09-17	414014837	SANTOS MONTOYA CLAUDIA DENISSE	1	1	78	1995-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251913	2015-09-18	2015-09-18	LLLLL	NOMBRE APATERNO AMATERNO	1	1	999	1982-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251914	2015-09-18	2015-09-18	512027515	ORTEGA VARGAS SAMUEL	1	4	87	1987-05-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251915	2015-09-18	2015-09-18	310308838	ROMERO BUJANOS MIGUEL ANGEL	1	1	89	1994-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251916	2015-09-18	2017-01-31	310327150	SARABIA LUNA ALISON BRENDA	1	1	90	1993-05-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251917	2015-09-18	2015-09-18	414007110	VASQUEZ GARCIA PALEMON	1	1	79	1992-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251918	2015-09-18	2015-09-18	304115159	ROSALES RUIZ DENISSE	1	1	86	1993-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251919	2015-09-21	2015-09-21	310339690	VARGAS MARTINEZ REBECA	1	5	84	1994-01-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251920	2015-09-21	2015-09-21	412150423	ORTIZ REYES VERONICA PATRICIA	1	1	74	1973-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251921	2015-09-21	2015-09-21	310102760	AREVALO ORTIZ RAUL FERNANDO	1	1	85	1994-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251922	2015-09-21	2015-09-21	309175054	GOMEZ VIEYRA JORGE	1	2	85	1993-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251923	2015-09-21	2015-09-21	410056453	MARTINEZ GONZALEZ JASPE URIEL	1	7	79	1990-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251924	2015-09-21	2015-09-21	309051194	GARCIA MEZA DIEGO	1	1	85	1993-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251925	2015-09-21	2015-09-21	309106603	HERNANDEZ LOPEZ ALBERTO	1	1	85	1993-06-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251926	2015-09-22	2015-09-22	RUKM871117	RUIZ KUBLI MARIEL	2	1	90	1987-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251927	2015-09-22	2018-02-15	313019032	CASTAÑON MORA GUSTAVO	1	1	85	1996-10-04	M	f	5	apellido p	apellido m	nombres	0	none	none	0
251928	2015-09-22	2015-09-22	412146109	HUERTA RIVERA HILDA ARACELI	1	1	74	1976-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251929	2015-09-22	2015-09-22	78449226	MORGADO RIOS MARIA PATRICIA	1	1	80	1962-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251930	2015-09-22	2015-09-22	307204002	RAMIREZ RAMIREZ JOSE EFRAIN	1	1	85	1991-01-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251931	2015-09-22	2015-09-22	FAVE780713	FRANCO VARGAS ERNESTO	2	4	83	1978-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251932	2015-09-22	2015-09-22	309098054	SOLANO AVELAR KARLA ESTHER	1	4	85	1993-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251933	2015-09-23	2015-09-23	308001763	DOMINGUEZ PEREA MARIA DEL CARMEN	1	5	78	1992-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251934	2015-09-23	2015-09-23	412082113	TOVAR RODRIGUEZ MICHEL	1	4	80	1992-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251935	2015-09-23	2015-09-23	308204445	PALACIOS MIRANDA CRISTIAN	1	1	85	1992-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251936	2015-09-23	2015-09-23	311245244	LOPEZ DE SANTIAGO HECTOR FRANCISCO	1	1	85	1991-05-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251937	2015-09-23	2015-09-23	413031279	SANCHEZ JIMENEZ HECTOR RICARDO	1	4	84	1990-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251938	2015-09-23	2015-09-23	310017503	CATAÑO HERNANDEZ FRANCISCO RICARDO	1	4	90	1994-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251939	2015-09-23	2015-09-23	312003917	DINORIN ORTA JAVIER ANDRES	1	4	82	1996-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251940	2015-09-23	2015-09-23	310015042	CHAVEZ MEZA ELISA MARGARITA	1	5	84	1993-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251941	2015-09-23	2015-09-23	309058492	ANDRACA ZAZOCOTECO FRANCISCO JAVIER	1	1	80	1993-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251942	2015-09-23	2015-09-23	312204174	LUGO MAYA BRIANDA YULISSA	1	2	81	1997-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251943	2015-09-23	2015-09-23	310191076	BALDERAS CABRERA MAGALI	1	3	80	1994-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251944	2015-09-23	2015-09-23	308006548	MEDINA LUGO ANGELICA	1	1	85	1990-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251945	2015-09-23	2015-09-23	307207113	QUIROZ LOZANO SARAHY	1	5	84	1991-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251946	2015-09-23	2015-09-23	414020076	SALAS GODINEZ ALMA GABRIELA	1	1	84	1984-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251947	2015-09-23	2015-09-23	310306645	RAMIREZ ANTONIO NALLELY	1	7	86	1994-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251948	2015-09-23	2015-09-23	309070258	ABREGO BLANCAS OMAR EDSIEL	1	1	85	1993-04-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251949	2015-09-24	2015-09-24	310048255	BECERRIL TREJO MARIANA	1	3	78	1993-10-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251950	2015-09-24	2015-09-24	413078476	SOLIS VICENTE FLORENEIDA	1	1	82	1993-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251951	2015-09-24	2015-09-24	415080503	SANCHEZ BENEDICTO ESTEBAN	1	2	82	1996-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251952	2015-09-24	2015-09-24	311260111	GARCIA RUEDA EUGENIA IDALIA	1	6	84	1995-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251953	2015-09-24	2015-09-24	310324575	TEXIS CERVANTES TONATIHU	1	5	78	1994-12-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251954	2015-09-24	2016-04-25	310556314	ORDAZ NUÑEZ MARYCARMEN ANDREA	1	7	84	1994-07-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251955	2015-09-24	2015-09-24	311159860	GOMEZ JACOME ADRIAN	1	1	79	1993-02-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251956	2015-09-24	2015-09-24	310198910	LARA CONTRERAS JESSICA KARINA	1	3	80	1993-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251957	2015-09-25	2015-09-25	309068811	LOPEZ SANTANA ELIZABET ANAHID	1	3	79	1993-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251958	2015-09-25	2015-09-25	311532784	MARTINEZ SOSA SANTIAGO	1	7	90	1994-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251959	2015-09-25	2015-09-25	311217861	GARCIA DE LA ROSA SANDRA SOFIA DEL C.	1	1	78	1995-09-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251960	2015-09-25	2015-09-25	516017332	ROMAN HERNANDEZ UBALDO	1	1	150	1982-08-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251961	2015-09-25	2015-09-25	308212846	PEREZ RIOS RAMYELLI JOSAFAT	1	5	81	1991-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251962	2015-09-25	2015-09-25	407066728	GARCIA ACEVES TANIA ESTEFANIA	1	1	80	1986-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251963	2015-09-29	2015-09-29	309229669	TORRES HERRERA MARIANA	1	1	84	1993-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251964	2015-09-29	2018-02-09	306180266	REYES MENDEZ LILIANA	1	1	85	1991-04-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251965	2015-09-29	2015-09-29	312631512	SANTIAGO REYNA NORMA	1	1	78	1995-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251966	2015-09-29	2015-09-29	306613429	MARTINEZ HERNANDEZ MARIA GUADALUPE	1	1	150	1990-10-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251967	2015-09-29	2015-09-29	415015514	TORRES CERVANTES CESAR RAFAEL	1	1	75	1990-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251968	2015-09-29	2016-09-05	PEPE870120	PEÑALOZA PAZOS EMILIANO	1	5	7	1987-01-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251969	2015-09-29	2015-09-29	308114207	SANCHEZ VAZQUEZ YADIRA TONANTZIN	1	1	85	1992-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251970	2015-09-29	2015-09-29	310738354	SANCHEZ ARMENTA ANDREA FERNANDA	1	4	90	1994-05-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251971	2015-09-29	2015-09-29	311031957	MARIN NAJERA TANIA NICTE-HA	1	1	90	1995-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251972	2015-09-29	2015-09-29	312224017	CARRERA MARIN WENDY SELENE	1	1	81	1996-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251973	2015-09-29	2018-02-06	107004899	SALDAÑA SANTAMARIA JORGE PABLO	1	4	84	1993-06-29	M	f	3	apellido p	apellido m	nombres	0	none	none	0
251974	2015-09-29	2015-09-29	MIEL550620	MIRON ESQUIVEL JOSE LUIS	2	7	78	1955-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251975	2015-09-29	2015-09-29	414005453	SILVA ARRREDONDO VICTOR SINUHE	1	4	83	1994-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251976	2015-09-29	2015-09-29	310200770	LANDGRAVE BARBOSA RUBI MARIANA	1	2	84	1993-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251977	2015-09-30	2015-09-30	414037377	RODRIGUEZ LOPEZ DULCE ANA KAREN	1	1	78	1992-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251978	2015-09-30	2016-09-12	EOSJ691227	ESCOBAR SANCHEZ JUANA ELIA	2	3	85	1969-12-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
251979	2015-09-30	2015-09-30	311158265	ENRIQUEZ CORTES ARELI	1	1	78	1994-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251980	2015-09-30	2015-09-30	309000790	BAUTISTA MIXCOATL ADRIANA VALENTINA	1	1	84	1992-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251981	2015-09-30	2017-12-05	414003985	GOMEZ MARTINEZ JESSICA	1	1	79	1995-04-04	F	f	4	apellido p	apellido m	nombres	0	none	none	0
251982	2015-10-01	2015-10-01	413079734	FERNANDEZ SANCHEZ LOURDES AURORA	1	1	85	1994-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251983	2015-10-01	2015-10-01	309023182	CASTRO RENDON ETHELGINA	1	4	83	1993-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251984	2015-10-01	2015-10-01	303224972	SANABRIA JERONIMO OLAF JORGE	1	1	81	1986-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251985	2015-10-01	2015-10-01	311031940	MARIN NAJERA STEPHANY NICTE-HA	1	1	79	1995-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251986	2015-10-02	2015-10-02	311081426	SANCHEZ CELIS DIEGO RUBEN	1	1	81	1995-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251987	2015-10-02	2015-10-02	311015179	SOSA GALLEGOS PALOMA LIZBETH	1	1	84	1995-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251988	2015-10-02	2015-10-02	312025230	PEÑAFLOR SANTIAGO KARLA STEFFI	1	2	81	1996-06-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251989	2015-10-02	2015-10-02	309009243	CERVANTES RAMIREZ ALEJANDRA	1	4	88	1993-11-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251990	2015-10-05	2015-10-05	414001895	MONTAÑO LOPEZ JOSE DE JESUS	1	1	90	1995-07-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251991	2015-10-05	2015-10-05	310285638	GUZMAN ALTAMIRANO MICHELLE	1	3	84	1995-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251992	2015-10-05	2015-10-05	716002378	PEREZ DIAZ PERLA JUDITH	1	1	90	1994-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251993	2015-10-05	2015-10-05	311274404	CASTRO RENDON VIRGILIO	1	1	85	1994-11-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251994	2015-10-06	2015-10-06	310102117	GARCIA BASILIO JESUS ADRIAN	1	1	86	1994-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251995	2015-10-06	2015-10-06	300008782	JUAREZ HERNANDEZ SERGIO	1	3	85	1984-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
251996	2015-10-06	2015-10-06	MOML861217	MORALES MUÑOZ LAURA IRENE	1	5	7	1986-12-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251997	2015-10-06	2015-10-06	309057000	ANTONIO OLIVERA MARIA DEL CARMEN	1	5	84	1992-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
251998	2015-10-06	2017-08-11	309278234	PULIDO URRUTIA JESUS	1	2	85	1993-03-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
251999	2015-10-06	2015-10-06	312121868	RIVAS CAMPOS LIZETH PAMELA	1	1	89	1996-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252000	2015-10-06	2015-10-06	312118125	GARCIA LOPEZ ANGEL BRIAN BENJAMIN	1	5	78	1996-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252001	2015-10-06	2015-10-06	308229594	ORTEGA BRINGAS CECILIA ANDREA	1	5	79	1992-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252002	2015-10-07	2016-04-27	311016138	VERGARA HERNANDEZ CARLOS ALBERTO	1	5	82	1995-02-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
252003	2015-10-07	2017-04-24	411035013	RAMIREZ QUINTERO CESAR ALBERTO	1	7	80	1988-09-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
252004	2015-10-08	2015-10-08	PEMS580219	PERALTA MIRADA SUSANA DIANA	2	4	90	1982-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252005	2015-10-08	2015-10-08	312351720	TORRES TELLES EDER	1	4	90	1995-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252006	2015-10-12	2015-10-12	400048158	CIGARROA VAZQUEZ PERLA ADRIANA	1	2	86	1980-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252007	2015-10-12	2015-10-12	306622793	HERNANDEZ CASTREJON ARIADNA	1	2	86	1990-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252008	2015-10-12	2015-10-12	309012436	ALMARAZ GUTIERREZ ABIGAIL VIRIDIANA	1	5	80	1992-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252009	2015-10-12	2015-10-12	411030922	GUZMAN SILVA CLAUDIA	1	1	84	1976-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252010	2015-10-12	2015-10-12	312069113	FRANCO TAPIA HECTOR FABIAN	1	2	79	1996-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252011	2015-10-12	2015-10-12	313176218	SOTO ROSAS JENNIFER GUADALUPE	1	7	86	1997-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252012	2015-10-13	2015-10-13	LEBE630110	DE LEON BALBUENA ENRIQUE ANDRES	3	5	58	1963-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252013	2015-10-13	2015-10-13	312295125	CERVANTES HERNANDEZ JUAN ESAU	1	4	79	1996-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252014	2015-10-14	2018-04-12	312047694	MARTINEZ CHAVEZ ARMANDO JAVIER	1	7	90	1995-11-14	M	t	2	apellido p	apellido m	nombres	0	none	none	0
252015	2015-10-14	2015-10-14	312020211	VITE RUIZ JOSE NICOLAS	1	7	90	1995-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252016	2015-10-14	2015-10-14	310735267	DURAN CALZADA JAVIER	1	1	85	1994-10-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252017	2015-10-15	2015-10-15	LLLLL	NOMBRE APATERNO AMATERNO	1	1	999	1982-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252018	2015-10-16	2015-10-16	412115787	BENITEZ CARREON ANETE JOCELINE	1	5	90	1991-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252019	2015-10-16	2015-10-16	414064148	VELAZQUILLO GUTIERREZ DANIEL M.	1	5	84	1994-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252020	2015-10-16	2015-10-16	98062779	LOA ZAVALA MARIA ROSA	1	4	84	1982-08-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252021	2015-10-16	2015-10-16	309335018	VALENCIA GONZALEZ JAZMIN ADRIANA	1	2	85	1993-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252022	2015-10-16	2015-10-16	308082063	GONZALEZ SALAS DANIELA ESTEFANIA	1	1	80	1990-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252023	2015-10-16	2018-03-06	311300914	REYES MINOR ALDO DAVID	1	1	85	1995-09-08	M	t	2	apellido p	apellido m	nombres	0	none	none	0
252024	2015-10-20	2015-10-20	104000799	NIETO SILVA MARIANO ATZIN	1	3	84	1991-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252025	2015-10-20	2015-10-20	308077553	FERNANDEZ RIVERA RAMIRO	1	2	81	1988-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252026	2015-10-20	2015-10-20	414008179	MARTINEZ PEREZ KENNY ARNOLD	1	5	74	1993-05-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252027	2015-10-20	2015-10-20	108004531	SANTILLAN CARVANTES ERNESTO	1	1	85	1995-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252028	2015-10-20	2015-10-20	SAPF800712	SANCHEZ PUIG MARIA FERNANDA	2	1	79	1980-07-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252029	2015-10-20	2015-10-20	311113062	ARTEAGA CACERES ANA KAREN	1	5	82	1994-12-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252030	2015-10-20	2015-10-20	310056601	ARMAS PEREZ ANALY	1	1	82	1992-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252031	2015-10-20	2015-10-20	312109473	REYES VALENCIA ISIS ABIGAIL	1	1	82	1995-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252032	2015-10-20	2015-10-20	411032768	CORTES SUAREZ EDGAR	1	1	79	1992-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252033	2015-10-21	2015-10-21	414005398	MARTINEZ BONILLA RUBEN	1	1	83	1994-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252034	2015-10-21	2015-10-21	308324039	SOLIS MEZA EDUARDO	1	1	79	1992-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252035	2015-10-21	2015-10-21	309304043	QUEZADA RUIZ EDGAR	1	5	79	1993-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252036	2015-10-22	2015-10-22	312061928	VERA TORRES YASMIN	1	4	84	1996-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252037	2015-10-23	2015-10-23	GUHD501108	GUTIERREZ Y HERNANDEZ DAVID	3	5	91	1950-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252038	2015-10-23	2015-10-23	309268406	SALMERON RAMIREZ FERNANDO DAVID	1	5	80	1993-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252039	2015-10-23	2015-10-23	913078483	BARRIOZ OSORIO JOSE CARLOS	1	1	79	1994-03-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252040	2015-10-23	2015-10-23	311219140	LOPEZ CORTES KATIA PAULINA	1	1	79	1995-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252041	2015-10-23	2015-10-23	98137882	CASTILLO VELASCO ELVA ADRIANA	1	3	84	1983-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252042	2015-10-23	2015-10-23	308277942	VELARDE NOGUEZ PABLO	1	2	79	1991-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252043	2015-10-23	2015-10-23	309048310	CANDIDO CASTILLO GLORIA ANDREA	1	5	80	1992-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252044	2015-10-26	2015-10-26	308200571	PEREZ ENCISO DIANA REBECA	1	3	84	1992-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252045	2015-10-27	2016-09-07	AAJM870721	ALCANTARA JUAREZ MANUEL	2	1	79	1987-07-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
252046	2015-10-28	2016-09-20	TIHN930406	TRINIDAD HERNANDEZ NORMA VERONICA	2	1	79	1993-04-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
252047	2015-10-28	2015-10-28	309222172	MONTENEGRO MATURANO TANNIA DEL ROCIO	1	1	81	1993-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252048	2015-10-29	2015-10-29	411018678	GARCIA LOPEZ LAURA	1	1	84	1964-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252049	2015-11-03	2015-11-03	309051840	GONZALEZ OROZCO GUILLERMO	1	4	79	1992-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252050	2015-11-03	2015-11-03	414140622	LOPEZ LEGORRETA ALEJANDRA BERENICE	1	2	80	1993-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252051	2015-11-03	2015-11-03	87355307	REYES TABLEROS GILBERTO EMILIO	1	3	84	1971-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252052	2015-11-04	2015-11-04	311231470	ROJAS HERNANDEZ GUSTAVO ANGEL	1	5	80	1994-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252053	2015-11-05	2015-11-05	304234844	PICENO HERNANDEZ MONICA	1	1	84	1988-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252054	2015-11-06	2016-08-17	CABY800813	CASTILLO BARRAGAN YURI FABIOLA	3	2	60	1980-08-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
252055	2015-11-10	2015-11-10	308076422	DAMAZO HERNANDEZ ANGEL ARMANDO	1	1	79	1992-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252056	2015-11-10	2015-11-10	416126301	LAZO ELIZALDE ESTEFANY	1	2	84	1990-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252057	2015-11-10	2015-11-10	416077966	LOPEZ MENDOZA AGUEDA LIZBETH	1	2	84	1993-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252058	2015-11-11	2015-11-11	412043204	RAMIREZ ROJAS JORGE LUIS	1	1	81	1992-09-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252059	2015-11-11	2015-11-11	307079602	GARCIA HERNANDEZ RODRIGO ADRIAN	1	1	80	1990-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252060	2015-11-13	2015-11-13	311123759	ALVARADO ORTIZ IVAN ARTURO	1	1	83	1995-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252061	2015-11-13	2015-11-13	405114067	CARO BORRERO ANGELA PIEDAD	1	1	95	1985-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252062	2015-11-13	2015-11-13	309263391	MARTINEZ SALAZAR ALEJANDRO	1	2	85	1993-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252063	2015-11-13	2015-11-13	309327442	ZEPEDA BOLAÑOS VALERIA	1	2	85	1993-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252064	2015-11-18	2015-11-18	31068997	MENDOZA RUIZ NAYELI	1	1	86	1994-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252065	2015-11-18	2015-11-18	412145346	DOMINGO MARTINEZ JOSUE ELIZALDE	1	1	75	1991-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252066	2015-11-20	2015-11-20	RUCM780820	RUIZ CORTEZ MARLENE DEL ROCIO	2	1	150	1978-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252067	2015-11-20	2015-11-20	308290248	ROSAS REYES SARA FABIOLA	1	3	84	1991-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252068	2015-11-20	2015-11-20	308276983	SEBASTIAN ARELLANO JOEL	1	2	86	1992-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252069	2015-11-20	2015-11-20	311101845	VAZQUEZ TELLEZ LILAN SILVIA	1	1	84	1995-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
252070	2015-11-23	2015-11-23	311137970	ESCUTIA GARCIA DANIEL	1	2	83	1995-09-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252071	2015-11-24	2015-11-24	93070508	TOVAR TAPIA GERARDO	1	1	113	1977-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252072	2015-11-24	2015-11-24	411026426	LOPEZ FLORES SERGIO ENRIQUE	1	2	85	1992-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
252073	2015-11-24	2015-11-24	415128601	SANCHEZ CRUZ AARON	1	2	85	1996-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260743	2016-01-27	2018-08-14	GACD830826	GARCIA CONDE DANIELA	2	1	90	1983-08-26	F	t	3	apellido p	apellido m	nombres	0	none	none	0
260744	2016-01-27	2016-08-12	415042354	MALVAEZ AGUAYO LAURA ASTRID	1	2	82	1996-12-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260745	2016-01-27	2016-01-27	307292311	VILLEGAS GARCIA VIOLETA PRISCILA	1	2	85	1990-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260746	2016-02-02	2017-08-10	313116186	ORTIZ FIGUEROA MARIA FERNANDA	1	1	85	1997-06-09	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260747	2016-02-02	2016-02-02	312323574	MARTINEZ ROMERO CAMILA	1	7	80	1996-09-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260748	2016-02-02	2016-02-02	307249566	RANGEL GARCIA MARTIN	1	1	90	1991-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260749	2016-02-02	2016-08-09	413031255	REYES SALAZAR ANGELINA	1	5	76	1989-07-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260750	2016-02-02	2016-02-02	516006772	HERNANDEZ HERNANDEZ LILIANA	1	1	81	1988-09-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260751	2016-02-02	2016-08-10	311016822	CONTRERAS PINEDA PAOLA DONAJI	1	1	90	1995-06-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260752	2016-02-02	2016-02-02	415023678	IBARRA CANTU CARLOS ALBERTO	1	1	85	1996-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260753	2016-02-02	2016-02-02	516492999	SAAVEDRA MALDONADO DANIEL	1	7	85	1987-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260754	2016-02-02	2016-02-02	308281149	SANTIAGO GARDUÑO VIOLETA	1	1	79	1992-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260755	2016-02-02	2016-02-02	311277742	HUIDOBRO ZAVALETA ASHLY ABIGAIL	1	2	90	1995-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260756	2016-02-03	2016-02-03	312113137	SANTIAGO DIAZ GERARDO	1	6	78	1996-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260757	2016-02-03	2018-03-05	313126110	TENORIO MOLINA JOSE HUMBERTO	1	7	84	1997-05-27	M	t	4	apellido p	apellido m	nombres	0	none	none	0
260758	2016-02-03	2017-02-01	313037508	CRUZ ROQUE DIANA LAURA	1	1	85	1997-05-23	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260759	2016-02-03	2016-02-03	311169382	AZPEITIA MAYA ALDO	1	4	90	1995-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260760	2016-02-03	2016-02-03	305037772	ARZATE BELTRAN HECTOR JAIR	1	5	83	1989-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260761	2016-02-03	2016-08-11	310037932	BARRON TINAJERO JULIO ARTURO	1	6	83	1994-05-04	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260762	2016-02-03	2017-10-10	309130662	VALDEZ FERNANDEZ BERTHA YLIANA	1	2	79	1994-01-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260763	2016-02-03	2016-08-10	72675302	CASTILLO HERNANDEZ OSCAR	1	1	80	1953-09-10	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260764	2016-02-03	2016-02-03	306297856	VILCHIS LUGO BERENICE	1	1	90	1990-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260765	2016-02-03	2016-02-03	311321333	RIVERA JAIME ARACELI	1	4	85	1994-10-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260766	2016-02-03	2016-09-13	403072518	FERNANDEZ DE GORTARI ELI ANTONIO ALONSO	1	1	90	1982-11-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260767	2016-02-03	2016-02-03	310215235	ORTIZ ESPINOZA AMALINALLI ALETHIA	1	1	85	1994-03-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260768	2016-02-03	2016-02-03	416008467	AVIÑA CASTAÑEDA BENITO	1	3	84	1997-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260769	2016-02-03	2016-02-03	410059155	MEJIA MORALES JULIAN	1	2	98	1990-08-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260770	2016-02-03	2016-02-03	416102431	NOPAL CARRASCO NOE FELIX	1	7	85	1995-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260771	2016-02-03	2016-02-03	310230133	HUERTA MONZALVO ANGEL IGNACIO IVAN	1	1	83	1994-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260772	2016-02-04	2016-02-04	414001785	FLORES GOMEZ LUIS ENRIQUE	1	1	90	1995-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260773	2016-02-04	2016-02-04	302125993	PERALTA NARVAEZ SAUL	1	1	85	1986-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260774	2016-02-04	2016-02-04	310177508	RIVERA LOPEZ RODRIGO DANIEL	1	4	79	1994-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260775	2016-02-04	2017-10-03	515012949	CULEBRO MARTINEZ CARLOS ERICK	1	1	113	1991-05-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260776	2016-02-04	2016-02-04	310632324	MOHAR MENENDEZ-APONTE CAMILA	1	4	82	1992-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260777	2016-02-04	2016-02-04	310109518	MEDRANO GONZALEZ PRISCILA ANHEL	1	1	79	1994-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260778	2016-02-04	2016-02-04	311017355	GUERRERO JIMENEZ LAURA LYNNETTE	1	4	90	1995-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260779	2016-02-04	2016-02-04	311095599	JASSO MATA LUZALLIE	1	4	90	1995-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260780	2016-02-04	2016-02-04	309000673	ALQUICIRA DE LA ROSA JOSE DE JESUS	1	1	85	1993-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260781	2016-02-04	2016-02-04	310210986	RODRIGUEZ LOPEZ ALMA GUADALUPE	1	6	90	1994-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260782	2016-02-04	2016-02-04	309208532	PEREZ SUAREZ CESAR AUGUSTO	1	4	90	1993-06-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260783	2016-02-04	2016-02-04	77088639	ESPINOSA ZURITA MONICA	1	3	78	1961-02-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260784	2016-02-04	2016-02-04	309039981	DE LA CRUZ TORRES JOAQUIN MANUEL	1	2	82	1993-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260785	2016-02-04	2016-02-04	414107320	JUAREZ HERNANDEZ BRYAN DAVID	1	1	79	1995-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260786	2016-02-04	2016-02-04	ROUL760810	RODRIGUEZ VALDEZ JOSE LUIS	2	1	69	1976-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260787	2016-02-04	2016-02-04	304217643	MARTINEZ TOLEDO JOSUE	1	2	79	1987-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260788	2016-02-05	2016-02-05	313342064	SANTOS NUÑEZ GUSTAVO	1	1	85	1997-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260789	2016-02-05	2016-02-05	412027264	MONTES DE OCA MORALES JUAN DANIEL	1	2	80	1994-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260790	2016-02-05	2016-02-05	415063917	MENDOZA MORENO CHRISTIAN GIOVANI	1	1	81	1989-05-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260791	2016-02-05	2016-02-05	311166604	HERRERA PEREZ SELENE	1	1	80	1993-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260792	2016-02-05	2016-02-05	313121184	AYALA CHAVEZ DANIELA	1	4	83	1996-08-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260793	2016-02-05	2016-02-05	307286378	TOVAR MOTA JAHAZIEL CALEB	1	1	79	1991-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260794	2016-02-05	2016-02-05	310136011	VILLASEÑOR CALDERON ALEXIA MONTSERRAT	1	1	80	1994-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260795	2016-02-05	2016-02-05	109000244	AZCARATE FERNANDO EZEQUIEL	1	4	85	1996-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260796	2016-02-05	2016-02-05	3102624435	SAAVEDRA REYES BRENDA IXCUINAME	1	5	79	1994-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260797	2016-02-05	2016-02-05	JAVE920731	JACOBO VILLEGAS EDUARDO	2	1	79	1992-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260798	2016-02-05	2016-09-23	312049351	PEREZ SORIA DULCE VALERIA	1	3	84	1996-09-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260799	2016-02-08	2016-02-08	308110395	VILCHIS REYES  FABIOLA	1	1	81	1990-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260800	2016-02-08	2018-03-01	311003543	DIAZ CRUZ JOSE RODRIGO	1	2	85	1995-04-18	M	t	5	apellido p	apellido m	nombres	0	none	none	0
260801	2016-02-08	2016-02-08	GOCM660924	GONZALEZ CASTILLO MAGDALENA	2	1	61	1966-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260802	2016-02-08	2016-02-08	304225666	LOPEZ SANDOVAL DALIA ELENA	1	4	84	1988-12-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260803	2016-02-08	2016-02-08	310076614	ENSINA HERNANDEZ ROCIO	1	1	90	1993-11-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260804	2016-02-08	2017-08-08	413013208	FUENTES LEON ARTURO	1	1	85	1992-04-16	M	f	3	apellido p	apellido m	nombres	0	none	none	0
260805	2016-02-08	2016-02-08	310198477	HERNANDEZ MENDEZ WENDY	1	7	79	1994-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260806	2016-02-08	2016-02-08	CALM910603	CASTILLO LEMUS MIGUEL ANDRES	1	6	85	1991-06-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260807	2016-02-08	2016-02-08	312025371	PACHECO MORALES GABRIELA DENISSE	1	4	85	1996-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260808	2016-02-08	2016-02-08	313152441	MACIAS OCHOA JAVIER ERANDI	1	2	85	1997-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260809	2016-02-08	2016-02-08	309148393	MORON TORRES DAMARIS	1	1	79	1993-03-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260810	2016-02-08	2016-02-08	302076273	GARCIA GRANADOS MONICA DAFNE	1	4	79	1986-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260811	2016-02-09	2016-02-09	310151438	MENDOZA MORFIN JOSE	1	5	82	1995-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260812	2016-02-09	2017-05-17	107001496	GARCIA SOTO CLAUDIA MARISOL	1	1	80	1994-04-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260813	2016-02-09	2016-02-09	414059030	BARRANCO JIMENEZ CARLOS ABEL	1	2	78	1995-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260814	2016-02-09	2016-02-09	BARM920715	BARKOV MAXIM	1	1	7	1992-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260815	2016-02-09	2017-06-09	310327356	TORRES PEREZ KAREN PAOLA	1	7	82	1994-07-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260816	2016-02-09	2016-02-09	90218769	HERNANDEZ CRUZADO JOSE ALBERTO	1	7	79	1970-09-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260817	2016-02-09	2016-08-12	312243944	SILVA PEÑA LILIA MONTSERRAT	1	7	78	1996-10-30	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260818	2016-02-09	2016-02-09	GOVA770930	GONZALEZ VALDEZ ALEJANDRA ABIGAIL	2	1	105	1977-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260819	2016-02-09	2018-04-04	313576113	CARACHEO GONZALEZ JOSE JORGE	1	2	85	1997-01-11	M	t	3	apellido p	apellido m	nombres	0	none	none	0
260820	2016-02-09	2016-02-09	96001541	MONTIEL MARTINEZ PATY AIDE	1	1	80	1983-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260821	2016-02-09	2016-02-09	309695835	LUNA HUITRON JOSELIN ITZEL	1	2	87	1992-07-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260822	2016-02-09	2016-02-09	311075335	CALZADA GALVAN YAOTL	1	1	82	1992-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260823	2016-02-09	2016-02-09	304221675	NAVA BARROSO YESSICA GUADALUPE	1	2	84	1988-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260824	2016-02-09	2016-02-09	96171855	GONZALEZ MANDUJANO OMAR	1	1	78	1980-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260825	2016-02-09	2016-02-09	407057090	ARREOLA FRANCO ANA MARGARITA	1	6	82	1988-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260826	2016-02-09	2018-02-06	516493594	ARISTIZABAL FERREIRA VICTOR ALEXANDER	1	1	90	1979-07-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260827	2016-02-09	2016-02-09	306254169	SANCHEZ DOMINGUEZ RAUL	1	1	85	1990-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260828	2016-02-11	2016-02-11	310211835	ESCAMILLA GUERRERO HERNAN	1	1	79	1994-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260829	2016-02-11	2016-02-11	310132903	SANCHEZ HERNANDEZ MAX ARMANDO	1	1	85	1994-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260830	2016-02-11	2017-04-19	409025880	FRANCISCO GONZALEZ CAROLINA	1	1	85	1990-05-23	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260831	2016-02-11	2016-02-11	312217723	CABRERA PLIEGO DIANA LIZETH	1	1	81	1996-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260832	2016-02-11	2016-02-11	309333447	VITE MONTIEL LUIS FABIAN	1	7	85	1993-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260833	2016-02-11	2017-03-13	97197928	MARTINEZ MORENO VIOLETA	1	5	80	1982-07-10	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260834	2016-02-11	2016-02-11	412054668	DEL VALLE PERALTA ANDRES DE JESUS	1	4	90	1996-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260835	2016-02-11	2016-09-29	312280718	ROSADO PULIDO ESTER ALEJANDRA	1	4	89	1990-07-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260836	2016-02-11	2016-02-11	309595182	EGUIA MEJIA JESSICA GUADALUPE	1	1	78	1993-08-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260837	2016-02-11	2016-02-11	308619520	PEREZ LOPEZ YAEL ANDREA	1	1	78	1992-06-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260838	2016-02-11	2016-02-11	310213080	MALDONADO GONZALEZ MARCO ANTONIO	1	4	79	1994-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260839	2016-02-11	2016-02-11	305256218	ROJO GARCIA JOSE RODRIGO	1	1	79	1989-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260840	2016-02-11	2016-02-11	308155770	SANCHEZ MELESIO VERONICA	1	2	84	1990-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260841	2016-02-11	2016-02-11	DEOK900727	DELGADO ORDOÑEZ KEVIN AXEL	1	1	7	1990-07-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260842	2016-02-11	2016-02-11	AASM850612	ALVAREZ SANCHEZ MILTON CARLOS	2	1	85	1985-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260843	2016-02-11	2016-02-11	416096817	SANABRIA GERONIMO OLIVER	1	1	81	1995-05-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260844	2016-02-11	2016-02-11	309194699	PINEDA LOPEZ EDWIN HECTOR	1	1	80	1993-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260845	2016-02-11	2016-02-11	311005152	ISLAS DEL RIO LUIS EDUARDO	1	4	85	1995-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260846	2016-02-11	2016-02-11	311112577	TELLEZ VAZQUEZ ISABEL LYLI	1	2	82	1995-06-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260847	2016-02-11	2016-02-11	311297690	VAZQUEZ PALACIOS SEBASTIAN	1	1	85	1994-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260848	2016-02-11	2016-09-06	311026904	VEGA DE LEO FERNANDA MONSERRAT	1	7	88	1994-11-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260849	2016-02-11	2016-02-11	312018537	MANUEL ROBLES LUIS ENRIQUE	1	1	82	1995-01-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260850	2016-02-11	2016-02-11	308037960	GALLO GUERRERO LEONARDO	1	1	79	1991-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260851	2016-02-11	2016-02-11	411078858	ALVAREZ MILLAN RASHID ALFREDO	1	1	85	1991-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260852	2016-02-12	2016-02-12	313671263	GOMEZ DIEZ MARTINEZ MARIO	1	1	81	1997-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260853	2016-02-12	2016-02-12	310178952	GOMEZ FLORES DANIEL	1	1	88	1994-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260854	2016-02-12	2016-02-12	310002763	AGUILAR ALBERDIN BETSAIDA	1	1	79	1994-04-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260855	2016-02-12	2016-02-12	413008798	CORONA TEJEDA PAULINA	1	2	79	1994-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260856	2016-02-12	2016-02-12	CEBN610904	CENICEROS BOMBELA NORA ELIA	2	1	99	1961-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260857	2016-02-12	2018-03-06	AAMZ680609	ANDRADE MELENDEZ ZEFERINO	1	3	79	1968-06-09	M	t	5	apellido p	apellido m	nombres	0	none	none	0
260858	2016-02-12	2016-02-12	413001414	ESPINOSA GARCIA JOSE FRANCISCO	1	4	83	1994-11-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260859	2016-02-12	2016-02-12	311143841	HIDALGO CRUZ JOSE MANUEL	1	5	84	1995-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260860	2016-02-12	2016-02-12	513000582	VALDESPINO RODRIGUEZ WILFRIDO	1	2	81	1983-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260861	2016-02-12	2016-02-12	308304521	DORANTES AROSTICO JOSE LUIS	1	2	85	1992-02-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260862	2016-02-12	2016-02-12	313249248	VILLAFRANCO CALDERON ANDREA	1	1	87	1997-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260863	2016-02-12	2016-02-12	415121365	FRANCO CASTILLO JORGE EDUARDO	1	1	73	1991-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260864	2016-02-12	2016-02-12	312655815	DEL REAL GALLARDO ARTURO MOISES	1	1	79	1996-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260865	2016-02-12	2016-02-12	306192108	JIMENEZ ROMERO EMILIO	1	3	84	1991-03-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260866	2016-02-12	2016-02-12	311632217	PRIEGO VALLADOLID ANDRES JESUS	1	5	85	1995-06-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260867	2016-02-12	2017-08-15	311081471	SANCHEZ SANTANA LUIS EDUARDO	1	4	90	1995-07-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260868	2016-02-12	2017-08-16	306006913	LOPEZ VEGA CARLOS OCTAVIO	1	4	85	1990-07-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260869	2016-02-15	2016-02-15	105002387	MARROQUIN VENTURA JESSICA AVELINA	1	2	82	1992-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260870	2016-02-15	2016-02-15	415490463	SANDOVAL QUINTERO ANDREA ISABEL	1	1	84	1992-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260871	2016-02-15	2016-02-15	416010213	PIZAÑA TORRES ESLY PABLO	1	1	82	1997-09-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260872	2016-02-15	2016-02-15	414084735	PEREZ VAZQUEZ DIANA MICHELL	1	1	84	1995-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260873	2016-02-15	2018-04-02	NOGE770423	NOYOLA GONZALEZ ELIZABETH	1	2	7	1977-04-23	F	t	3	apellido p	apellido m	nombres	0	none	none	0
260874	2016-02-15	2016-02-15	310263205	ROSAS MARTINEZ SERGIO TADEO	1	1	85	1994-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260875	2016-02-15	2016-02-15	311115303	HERNANDEZ CASTILLO GUILLERMO AXAYACATL	1	7	84	1995-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260876	2016-02-15	2016-11-18	411008792	DESENTIS TORRES JOSE LUIS	1	2	84	1992-03-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260877	2016-02-15	2016-02-15	311278801	ALBA GARCIA EUNICE PALOMA	1	1	78	1995-11-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260878	2016-02-15	2017-02-07	311177109	PEGUERO HERNANDEZ ADDI SHADDAI	1	4	85	1995-04-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260879	2016-02-15	2016-02-15	413096234	GARCIA AHUMADA JUAN ANTONIO	1	1	83	1994-06-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260880	2016-02-15	2016-02-15	307209791	MARTINEZ DELGADO GABRIELA	1	1	82	1991-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260881	2016-02-15	2016-02-15	HIHC820215	HIDALGO HERNANDEZ CAROLINA	2	4	150	1982-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260882	2016-02-16	2016-02-16	307018236	DELGADO OCHOA MARA	1	1	80	1990-10-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260883	2016-02-16	2016-02-16	307018243	DELGADO OCHOA NORA	1	1	80	1990-10-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260884	2016-02-16	2016-02-16	416035441	HERNANDEZ RAMOS JAIME LEIDTIF	1	1	82	1988-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260885	2016-02-16	2018-02-02	VAGM570622	VAZQUEZ GARCIA MARGARITA	3	2	113	1957-06-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260886	2016-02-16	2016-02-16	CAME881129	CARRANZA MACEDA JOSE EDUARDO	1	1	7	1988-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260887	2016-02-16	2016-02-16	309018191	CRISTOBAL HERNANDEZ JORGE DE JESUS	1	1	90	1993-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260888	2016-02-16	2016-02-16	310149163	HERNANDEZ VASQUEZ CHABELY	1	7	78	1994-02-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260889	2016-02-16	2016-02-16	310295411	PINEDA LEON ROBERTO	1	1	85	1994-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260890	2016-02-16	2016-02-16	310186377	LOPEZ GUZMAN PERLA KARINA	1	2	80	1994-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260891	2016-02-16	2016-02-16	311065569	PEREZ VAZQUEZ DIEGO	1	2	86	1994-12-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260892	2016-02-16	2016-02-16	GOMR791030	GOMEZ MELGAREJO RITA ANGELICA	3	1	70	1979-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260893	2016-02-16	2016-02-16	96316571	MEINGUER LEDESMA JORGE	1	5	84	1980-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260894	2016-02-16	2016-02-16	414045668	MARTINEZ LEGORRETA JUAN DANIEL	1	7	81	1995-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260895	2016-02-16	2016-02-16	306301270	LOPEZ ZAVALETA ULISES EDUARDO	1	2	84	1990-03-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260896	2016-02-16	2016-02-16	312323615	MELCHOR AUDIRAC ANDRES	1	4	89	1995-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260897	2016-02-16	2016-02-16	312252665	MENDEZ CRUZ CASANDRA YAOLXOCHITL	1	1	87	1995-05-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260898	2016-02-16	2016-02-16	415006666	CASTELLANOS SANCHEZ ALEJANDRO ALI	1	1	86	1990-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260899	2016-02-16	2017-03-08	310298632	RAMOS GALLARDO ROSALINDA	1	1	80	1994-04-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260900	2016-02-16	2016-02-16	311219937	RIVERA CORTES MARIO RAUL	1	1	150	1995-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260901	2016-02-17	2016-02-17	310327088	SANABRIA REYES RAUL	1	5	82	1994-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260902	2016-02-17	2016-02-17	303284767	JUAREZ FIGUEROA ULISES EHATL	1	1	105	1987-11-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260903	2016-02-17	2018-03-16	309230786	DE LA PEÑA TIRADO CINTHIA	1	3	84	1992-12-31	F	t	2	apellido p	apellido m	nombres	0	none	none	0
260904	2016-02-17	2016-02-17	312337788	MENA MARTINEZ MARIA ITZEL	1	1	84	1996-02-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260905	2016-02-17	2016-02-17	5140166706	LEYVA HUERTA MARTIN RENE	1	2	113	1947-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260906	2016-02-17	2016-02-17	415055530	CRUZ CABRERA MIRIAM ANERIS	1	1	90	1989-01-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260907	2016-02-17	2016-02-17	312147529	ANDONAEGUI ARANDA ALICIA	1	4	90	1996-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260908	2016-02-17	2016-02-17	313131046	LEON CHAVEZ ARIADNA ALEJANDRA	1	1	85	1997-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260909	2016-02-18	2017-08-09	416123087	RUIZ ALVAREZ MARIA ZAIRA	1	1	80	1997-02-13	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260910	2016-02-18	2017-03-08	415012111	VAZQUEZ ROSAS JUAN PABLO	1	1	85	1996-08-09	M	f	3	apellido p	apellido m	nombres	0	none	none	0
260911	2016-02-18	2016-02-18	416099210	VILLALOBOS BOJORQUEZ ABRAHAM	1	1	81	1992-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260912	2016-02-18	2016-02-18	310588513	BARRAGAN ARTEAGA CRISTINA	1	4	83	1994-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260913	2016-02-18	2017-10-03	313702871	ORTIZ TORRES DANIEL	1	7	85	1997-06-19	M	f	4	apellido p	apellido m	nombres	0	none	none	0
260914	2016-02-18	2016-02-18	311171695	ESPINOSA SANDOVAL ARIADNA ANDREA	1	4	81	1995-08-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260915	2016-02-18	2016-02-18	306249556	GONZALEZ ANGELES MARCO ANTONIO	1	1	82	1990-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260916	2016-02-18	2016-02-18	98548213	HERNANDEZ CHETRIRQUIN TANIA	1	1	84	1980-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260917	2016-02-18	2016-02-18	308309258	LINARES GOMEZ PEDRO DANIEL	1	4	83	1992-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260918	2016-02-18	2016-02-18	308305573	CRUZ SOSA LORENA IVONE	1	2	83	1992-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260919	2016-02-18	2016-02-18	415075952	SANCHEZ ARENAS DANIEL	1	7	80	1991-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260920	2016-02-18	2016-02-18	309241690	MARTINEZ GUZMAN CARLOS IVAN	1	1	85	1993-05-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260921	2016-02-18	2016-02-18	515006449	ORTIZ FLORES JOSE ANTONIO	1	2	82	1982-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260922	2016-02-18	2017-02-07	311275504	DE LUNA CARRICHE PAOLA JAZMIN	1	1	85	1995-03-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260923	2016-02-18	2016-02-18	311322347	SIERRA GALLASTEGUI NICOLAS	1	1	85	1995-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260924	2016-02-22	2016-02-22	312177195	OCAÑA TERAN MICHEL	1	4	78	1996-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260925	2016-02-22	2016-02-22	310000422	BRAVO MORALES JESUS EDUARDO	1	5	78	1992-11-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260926	2016-02-22	2017-08-18	SERP900523	SANCHEZ RUIZ PERLA	1	7	73	1990-05-23	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260927	2016-02-22	2016-02-22	309306157	RAMIREZ LOPEZ MARIA CRISTINA	1	1	85	1993-07-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260928	2016-02-22	2016-02-22	311245550	LAGUNA FERNANDEZ ITZEL	1	4	82	1994-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260929	2016-02-22	2018-08-30	313142606	DE LA CRUZ CARDENAS DIEGO	1	4	90	1996-08-20	M	t	3	apellido p	apellido m	nombres	0	none	none	0
260930	2016-02-22	2016-02-22	309090168	GUEVARA SALAS CINTHYA	1	3	82	1993-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260931	2016-02-22	2016-02-22	308238370	NAVARRO LOPEZ MONTSERRAT	1	1	79	1991-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260932	2016-02-22	2018-02-22	416080850	FUENTES VARGAS MIGUEL ANGEL	1	4	82	1988-05-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260933	2016-02-22	2016-02-22	309626848	VIGNAU MANJARREZ DIEGO	1	4	79	1995-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260934	2016-02-22	2017-02-10	RUMM570729	RUIZ MENDOZA MARTHA ELVIRA	3	1	150	1957-07-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260935	2016-02-22	2017-08-31	309240648	MONTOYA SOSA FRIDA CASSANDRA	1	5	90	1993-07-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260936	2016-02-22	2016-02-22	307044615	PINEDA LOPEZ HECTOR	1	1	90	1991-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260937	2016-02-22	2016-02-22	309017840	BAEZ ARTEAGA JORGE	1	4	81	1993-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260938	2016-02-22	2016-02-22	310035543	GARCIA CARRASCO LEONEL EDUARDO	1	1	86	1994-07-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260939	2016-02-22	2016-02-22	3112134330	ESPINDOLA NUÑEZ GUSTAVO	1	1	86	1995-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260940	2016-02-22	2016-02-22	310332048	ZUÑIGA URBAN EDER	1	1	83	1994-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260941	2016-02-22	2016-02-22	313109658	HERRERA TOVAR MARIA FERNADA	1	1	89	1996-10-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260942	2016-02-22	2016-02-22	311239847	MEJIA ZAVALA DIANA ALETVIA	1	1	78	1995-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260943	2016-02-22	2016-02-22	311182949	GONZALEZ AGUILAR SHANIK	1	1	82	1995-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260944	2016-02-22	2016-02-22	311111862	ROQUE PIÑA MAURICIO	1	3	82	1995-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260945	2016-02-22	2016-02-22	313075173	ARCIGA MIRANDA EDUARDO	1	1	80	1997-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260946	2016-02-22	2016-02-22	89076099	COLINA GONZALEZ RICARDO	1	3	84	1971-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260947	2016-02-22	2017-04-05	311084647	ESCAMILLA GODINEZ PAOLA GUADALUPE	1	5	84	1994-12-09	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260948	2016-02-22	2016-02-22	312235196	BONILLA HERNANDEZ DIANA LAURA	1	1	84	1996-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260949	2016-02-22	2016-02-22	515005208	MORALES FLORES HAYDEE	1	2	84	1980-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260950	2016-02-22	2016-02-22	307015424	AMEZCUA NIETO PRISCILA GIOVANNA	1	2	73	1991-03-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260951	2016-02-22	2016-02-22	312029087	RIVERA HERNANDEZ RUBEN YABZEL	1	4	82	1996-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260952	2016-02-22	2016-02-22	311282049	GAONA MARTINEZ JOSE EDUARDO	1	1	85	1995-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260953	2016-02-22	2016-02-22	310193757	GALEANA MORAN MIGUEL ANGEL	1	1	79	1994-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260954	2016-02-22	2016-02-22	303286266	MARTINEZ ZALDIVAR BOLIVAR GALILEO	1	1	79	1988-02-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260955	2016-02-22	2016-02-22	310035691	HERNANDEZ CHAVEZ VIRIDIANA	1	1	90	1990-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260956	2016-02-22	2016-02-22	516013781	ALCAY MENDEZ SARA GETZEMANI	1	2	80	1990-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260957	2016-02-22	2016-02-22	308208759	VAZQUEZ VARELA SANDRA ALICIA	1	1	90	1992-05-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260958	2016-02-23	2017-05-04	312128245	GARCIA CRUZ LAURA VERONICA	1	4	83	1995-12-29	F	f	3	apellido p	apellido m	nombres	0	none	none	0
260959	2016-02-23	2017-01-31	312106867	MORENO RAMIREZ CRISTIAN EMMANUEL	1	4	82	1996-05-31	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260960	2016-02-23	2016-02-23	414052684	ORTIZ CONEJO GERARDO	1	3	78	1992-11-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260961	2016-02-23	2016-02-23	307186182	ESTRADA ROSAS STEPHANIE NAYELI	1	1	85	1991-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260962	2016-02-23	2016-02-23	310696708	AUDIRAC KUSHIDA JUNE CRISTAL	1	4	84	1993-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260963	2016-02-23	2016-02-23	305197911	MOO VERGARA JESUS EMANUEL	1	1	79	1989-12-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260964	2016-02-23	2016-09-02	313702888	ORTIZ TORRES MAURICIO	1	4	79	1997-06-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260965	2016-02-23	2016-02-23	312275246	GARCIA RAMIREZ MARIA FERNANDA	1	4	85	1996-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260966	2016-02-23	2016-02-23	309096256	CORONA MARQUEZ LUIS ALBERTO	1	1	85	1993-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260967	2016-02-24	2016-02-24	415110949	ORTIZ MENDOZA ALMA DENISSE	1	1	84	1995-05-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260968	2016-02-24	2016-02-24	311007785	GARCIA RUIZ MARIANA	1	2	90	1995-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260969	2016-02-24	2017-10-16	310207092	SANDRIA GONZALEZ KEILA AZALEA	1	4	84	1994-05-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260970	2016-02-24	2017-02-27	HELA581102	HERNANDEZ LAURA	3	1	86	1958-11-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260971	2016-02-25	2016-02-25	313343298	SANCHEZ RAMIREZ AXA KENYA	1	1	79	1995-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260972	2016-02-25	2016-02-25	1040046663	NAVARRO BECERRIL NELLY	1	2	73	1991-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260973	2016-02-25	2016-02-25	311301018	ORTIZ LOPEZ LESLIE JOHANA	1	7	89	1995-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260974	2016-02-25	2016-02-25	416108512	JALPA VALENCIA VICENTE YESAHU	1	2	84	1997-01-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260975	2016-02-25	2016-02-25	312031132	CORTEZ GARCIA RAQUEL	1	4	84	1996-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260976	2016-02-25	2016-02-25	416118591	LEAL ESTUDILLO SANDINO	1	1	82	1982-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260977	2016-02-25	2016-02-25	310031741	LAGUNA NAVARRO JESUS URIEL	1	4	89	1994-04-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260978	2016-02-25	2016-02-25	310262796	ROMO GONZALEZ ANDREA GUADALUPE	1	3	89	1994-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260979	2016-02-25	2016-02-25	BALG790627	BAUTISTA Y LUGO GIBRAN IRVING ISRAEL	2	3	110	1979-06-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260980	2016-02-25	2016-02-25	306027631	HERNANDEZ LOPEZ ABRAHAM EMMANUEL	1	7	90	1990-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260981	2016-02-25	2016-02-25	312037749	IBARRA AGUILAR DIANA GUADALUPE	1	1	89	1995-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260982	2016-02-29	2016-02-29	HEDA810827	HERNANDEZ DELGADO ARMANDO SALOMON	2	4	85	1981-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260983	2016-02-29	2016-02-29	99295154	SANCHEZ HERNANDEZ LISANDRO	1	1	105	1980-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260984	2016-02-29	2016-02-29	413005546	OBESO JUREIDINI JUAN CARLOS	1	1	79	1993-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260985	2016-02-29	2016-02-29	312229957	OLIVEROS OLIVER JOVITA	1	2	80	1996-05-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260986	2016-02-29	2016-02-29	201620010	GERALDO PERALTA ELBA MARIA	1	1	82	1995-04-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260987	2016-02-29	2017-02-24	300172771	ROSAS PLATA LAURA MARISOL	1	5	84	1984-05-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
260988	2016-02-29	2016-02-29	82264026	REYES RODRIGUEZ MATILDE LETICIA	1	4	80	1966-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260989	2016-02-29	2016-02-29	310332354	TOVAR CHAVEZ BALBINA	1	1	73	1993-11-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260990	2016-02-29	2016-02-29	310188216	MEJIA OSORNIO DIEGO YAHEN	1	1	85	1993-10-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260991	2016-02-29	2016-02-29	313226887	SOLIS GARCIA MICHELLE MONSERRAT	1	2	78	1997-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260992	2016-02-29	2017-03-28	413125776	IÑIGUEZ CARDENAS MANUEL	1	4	84	1972-05-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
260993	2016-02-29	2016-02-29	312077789	BARTOLO GONZALEZ ANDREA PAOLA LIZET	1	1	84	1995-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260994	2016-02-29	2016-02-29	106001149	CAMPOS HIDALGO VICTOR	1	5	85	1993-06-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260995	2016-02-29	2016-02-29	312180625	URIARTE ORTIZ JULIAN BRYCE	1	4	86	1996-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260996	2016-02-29	2018-08-14	311223835	GOMEZ OLIVOS JUDITH	1	2	82	1995-10-28	F	t	2	apellido p	apellido m	nombres	0	none	none	0
260997	2016-02-29	2016-02-29	311163270	GARCIA HERNANDEZ BRENDA BERENICE	1	3	82	1995-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
260998	2016-02-29	2016-02-29	312157364	NAVARRO SANCHEZ OSCAR MARTIN	1	4	85	1996-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
260999	2016-02-29	2017-02-02	310270238	MORALES VARGAS VERONICA	1	1	85	1994-02-03	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261000	2016-02-29	2016-02-29	309198202	LUCHINGER DIAZ KATHARINA CITLALY	1	4	90	1993-11-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261001	2016-02-29	2016-02-29	312112501	REYES SANTOS JOSE CARLOS	1	7	85	1996-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261002	2016-02-29	2016-02-29	308317219	ARMENTA JAIME ERIKA	1	1	90	1992-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261003	2016-02-29	2016-02-29	414137910	APODACA GOMEZ ISHTAR LESSLIE	1	1	82	1995-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261004	2016-02-29	2016-02-29	AASS840817	ALDANA SANTANA SELENE	2	1	80	1984-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261005	2016-03-01	2016-03-01	311295115	JIMENEZ MATIAS RUBI	1	1	85	1995-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261006	2016-03-01	2016-03-01	SAGS860617	SANDOVAL GORDON SANDRA SELENE	1	1	7	1986-06-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261007	2016-03-01	2016-03-01	3111195572	CISNEROS MERLIN VANIA TERESA	1	3	82	1995-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261008	2016-03-01	2016-03-01	311319044	DE LOS SANTOS CHAPA MARIA FERNANDA	1	1	89	1994-12-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261009	2016-03-01	2016-03-01	311202557	MORA GARCIA ADRIANA ITZEL	1	3	73	1995-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261010	2016-03-01	2016-03-01	413000235	SALINAS MOROTE MICHELLE	1	5	86	1993-06-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261011	2016-03-01	2016-03-01	512450661	BERMUDEZ MONTAÑA MARISOL	1	1	90	1987-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261012	2016-03-01	2016-03-01	308046179	BONILLA CORREA ESTHELA ALISON	1	1	79	1992-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261013	2016-03-01	2017-10-05	404054698	VOUTSSAS LARA JENNIFER ALEJANDRA	1	5	84	1985-03-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261014	2016-03-01	2016-03-01	412043046	MARROQUIN MARTINEZ JOSE ALFONSO	1	1	80	1975-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261015	2016-03-01	2016-03-01	GACW781102	GALLARDO CAMPOS WENDY ARIADNA	3	2	13	1978-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261016	2016-03-02	2016-03-02	RION911019	RIVERA DAVILA NANCY	1	2	7	1991-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261017	2016-03-02	2016-09-05	99277664	REYES CORONA VALERIA	1	5	76	1984-01-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261018	2016-03-02	2016-03-02	FEVR900930	FERNANDEZ VARGAS RENZO RENATO	1	1	90	1990-09-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261019	2016-03-02	2016-03-02	311123106	YESCAS RAMOS ZURIEL YAHIR	1	2	85	1995-07-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261020	2016-03-02	2016-09-21	306187540	ISIDRO ANGELES MARIA GUADALUPE	1	5	85	1990-12-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261021	2016-03-02	2016-03-02	309315108	ROMERO CHAVEZ LUIS ALFONSO	1	2	79	1993-05-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261022	2016-03-02	2016-03-02	407083101	IBARRA PEREZ LINA	1	4	84	1988-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261023	2016-03-02	2016-03-02	416490734	BEJAR RIVERA ANA VILMA	1	1	82	1963-05-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261024	2016-03-02	2017-04-17	LERM871007	LEVARIO RODRIGUEZ MARCOS AUGUSTO	1	7	7	1987-10-07	M	f	3	apellido p	apellido m	nombres	0	none	none	0
261025	2016-03-03	2016-03-03	414013782	VAZQUEZ BRACAMONTES JAVIER	1	2	81	1995-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261026	2016-03-03	2016-03-03	BAFE890719	BARRIOS FLORES ERIKA	2	1	89	1989-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261027	2016-03-03	2016-03-03	109002640	LOPEZ ROMAN JESUS EDUARDO	1	4	90	1996-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261028	2016-03-03	2017-08-16	VAMG570418	VALTIERRA MATUS GLORIA ELENA	2	2	82	1957-04-18	F	f	3	apellido p	apellido m	nombres	0	none	none	0
261029	2016-03-03	2017-08-22	313197352	NIÑO VEGA PABLO RICARDO	1	1	81	1996-01-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261030	2016-03-04	2016-03-04	LOMJ830718	LOZADA MARTINEZ JESUS ENRIQUE	2	2	77	1983-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261031	2016-03-04	2016-09-05	310051022	GARCIA FRANCO MARCO OLAF	1	1	90	1994-03-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261032	2016-03-04	2016-03-04	309226314	VAZQUEZ SALAZAR LUIS ITZA	1	1	90	1993-12-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261033	2016-03-04	2016-03-04	311309766	MONROY ROSAS JACQUELINE ESMERALDA	1	3	80	1995-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261034	2016-03-04	2016-09-06	412040605	CRUZ BAUTISTA JESUS	1	1	80	1990-09-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261035	2016-03-04	2016-03-04	308195387	VILLASANA HERRERA ALI KEVIN	1	3	90	1992-09-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261036	2016-03-04	2016-09-21	311149049	GOMEZ JIMENEZ CECILIA	1	5	85	1995-03-20	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261037	2016-03-04	2016-03-04	310208972	MONTERRUBIO RAMIREZ CESAR IVAN	1	6	85	1993-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261038	2016-03-07	2016-03-07	416045578	HERRERA GARCIA ALEXANDER	1	1	85	1996-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261039	2016-03-07	2016-03-07	415023458	MIJANGOS LABASTIDA ANDRES	1	2	84	1996-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261040	2016-03-07	2016-03-07	307045904	CALZADA MARTINEZ WENDY JIMENA	1	1	86	1991-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261041	2016-03-07	2016-03-07	84262073	REYES PELAEZ MARIA EUGENIA	1	3	80	1968-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261042	2016-03-07	2016-09-07	311198401	RODRIGUEZ LOZADA ELISA GABRIELA	1	1	89	1994-11-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261043	2016-03-08	2016-03-08	308241446	MENDEZ MACIAS GABRIEL	1	1	78	1992-01-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261044	2016-03-08	2016-03-08	HEIG650929	HERNANDEZ IBARRA GERARDO	3	1	60	1965-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261045	2016-03-08	2016-03-08	414004353	MARINO ESCANDON BELEN	1	1	85	1995-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261046	2016-03-08	2018-08-31	515046032	PRIETO MEJIA JEIMY PAOLA	1	3	84	1986-12-01	F	t	4	apellido p	apellido m	nombres	0	none	none	0
261047	2016-03-08	2016-03-08	413046026	GARNICA CORTES CARLOS	1	1	83	1991-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261048	2016-03-08	2016-03-08	313303083	LIZARRAGA UGALDE JOSE SANTIAGO	1	2	83	1996-03-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261049	2016-03-08	2016-03-08	311323454	VALLADARES RODRIGUEZ KYRIA ALEXA	1	1	79	1994-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261050	2016-03-08	2016-03-08	402070786	CASTELLANOS LOPEZ JOSE NEFTALI	1	1	85	1982-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261051	2016-03-09	2016-03-09	310103994	FLORES GUTIERREZ ALMA ALINNA	1	2	79	1994-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261052	2016-03-09	2016-03-09	AASK870901	AVALOS SANDOVAL KARLA PRISCILLA	2	1	69	1987-09-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261053	2016-03-09	2016-03-09	308125881	ROMO RODRIGUEZ NORMA ANGELICA	1	1	85	1992-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261054	2016-03-09	2016-03-09	415052924	MEJIA LOPEZ RUPERTA	1	6	84	1966-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261055	2016-03-09	2016-03-09	516004084	MACIAS SANCHEZ BRENDA MARGARITA	1	1	84	1984-05-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261056	2016-03-10	2016-03-10	311038891	LUCAS FRANCO DANIELA	1	7	85	1995-10-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261057	2016-03-10	2016-03-10	311200319	PIEDRAS SALGADO JOSE MANUEL	1	1	85	1995-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261058	2016-03-10	2016-03-10	309130947	VELEZ ROJAS BRENDA	1	2	80	1993-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261059	2016-03-10	2016-03-10	MOAF650506	MOLINA AVILA FERNANDO	3	1	114	1965-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261060	2016-03-10	2016-03-10	411041939	PEDRAZA ESPITIA SALVADOR	1	2	79	1991-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261061	2016-03-10	2016-03-10	308255911	GALLARDO MORA OSIEL FRANCISCO	1	1	150	1992-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261062	2016-03-10	2016-03-10	311002144	BARROSO ALAMILLA JUAN ANTONIO	1	4	84	1994-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261063	2016-03-11	2016-03-11	REPS640428	RESENDIZ PASTRANA SILVIA	3	1	86	1964-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261064	2016-03-11	2016-03-11	416064780	MILIAN VEGA GIOVANI	1	3	85	1991-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261065	2016-03-11	2017-08-18	312201285	GONZALEZ MIRANDA ANGEL ALDEBARAN	1	7	82	1996-01-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261066	2016-03-11	2017-02-27	MAGO580201	MALDONADO GUTIERREZ OLGA	1	1	7	1958-02-01	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261067	2016-03-11	2016-03-11	AASC730605	ALVAREZ SALAS CARLOS EDUARDO	2	1	79	1973-06-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261068	2016-03-14	2016-03-14	716037231	CARDONA CALDERON RICARDO STEVEN	1	3	80	1995-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261069	2016-03-14	2016-03-14	GUCL620505	GUERRERO CERVANTES MARIA LUISA	2	1	82	1962-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261070	2016-03-14	2016-03-14	310076559	CHAVEZ CERVANTES DESIRE PATRICIA	1	1	81	1993-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261071	2016-03-14	2016-03-14	311123058	VAZQUEZ BENITEZ JESUS	1	1	85	1995-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261072	2016-03-14	2016-03-14	309267856	SOLIS RODRIGUEZ ABRAHAM ULISES	1	1	79	1993-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261073	2016-03-14	2016-03-14	301065050	MONTIEL LOPEZ VERONICA	1	1	86	1985-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261074	2016-03-14	2016-03-14	407104606	RIOS PEÑA JULIO UBIIDXA	1	1	84	1988-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261075	2016-03-14	2016-03-14	ROCE850218	ROMERO CRUZ ENRIQUE	1	5	7	1985-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261076	2016-03-15	2018-02-21	310140610	ORVAÑANOS ESPINOSA EDUARDO	1	3	78	1994-08-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261077	2016-03-15	2016-03-15	313004797	ESCOBEDO GARCIA LAURA NAYELI	1	4	85	1997-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261078	2016-03-15	2016-03-15	516490665	DOMINGUEZ CARVAJAL JOSE LUIS	1	2	84	1989-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261079	2016-03-16	2016-03-16	503006996	ALARCON FERREIRA ANA MARIA	1	2	99	1970-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261080	2016-03-16	2016-03-16	414003466	BARTOLO GARCIA LUIS ENRIQUE	1	4	85	1994-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261081	2016-03-16	2018-03-05	311196586	GUERRERO GARCIA VICTOR FRANCISCO	1	1	84	1994-10-04	M	t	3	apellido p	apellido m	nombres	0	none	none	0
261082	2016-03-16	2016-03-16	73664752	REPPER JARAMILLO MEDARDO	1	3	82	1949-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261083	2016-03-16	2016-03-16	107003720	IZQUIERDO GARCIA XIMENA DEL CARMEN	1	2	78	1994-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261084	2016-03-16	2016-03-16	410061853	TIZAPA GONZALEZ YAZMIN	1	2	84	1991-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261085	2016-03-16	2016-03-16	516008879	LOPEZ OLEA MOISES	1	2	84	1990-06-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261086	2016-03-17	2016-03-17	311317521	FLORES REGALADO ADRIANA GUADALUPE	1	7	90	1995-10-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261087	2016-03-17	2016-03-17	311009851	ORTIZ MEDRANO ANA GABRIELA	1	7	83	1995-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261088	2016-03-17	2016-03-17	305168108	RESKALA SANCHEZ FELIX JAVIER	1	2	89	1989-01-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261089	2016-03-17	2016-03-17	412070312	HERNANDEZ RAMIREZ JAZMIN	1	3	76	1992-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261090	2016-03-17	2016-03-17	311025488	SANCHEZ GUTIERREZ ITMAR XANAT	1	4	78	1995-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261091	2016-03-17	2016-03-17	310038032	BAEZ VELAZQUEZ TAIDE	1	2	80	1994-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261092	2016-03-17	2016-03-17	310063816	CRUZ LOPEZ MARIANA	1	2	80	1994-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261093	2016-03-18	2016-03-18	306311008	ZARATE VILLAGOMEZ FABIOLA	1	1	80	1990-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261094	2016-03-18	2016-03-18	307117195	SILVA LOPEZ LAURA	1	1	80	1991-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261095	2016-03-28	2016-03-28	310001292	COLMENARES GARCIA JESUS EDUARDO	1	5	84	1993-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261096	2016-03-28	2016-03-28	304064502	ESTRELLA TRUJILLO DIANA	1	4	96	1988-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261097	2016-03-28	2018-08-22	310335269	VAZQUEZ MARTINEZ MIGUEL TADEO	1	5	85	1994-10-18	M	t	2	apellido p	apellido m	nombres	0	none	none	0
261098	2016-03-28	2016-03-28	311130191	BELLO TEPECTZIN NOE	1	1	90	1995-04-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261099	2016-03-28	2016-03-28	311130768	CABRERA ALDANA LAURA EVANGELINA	1	5	79	1995-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261100	2016-03-29	2016-03-29	308074552	CASAS HERREJON KARLA MONSERRAT	1	5	80	1991-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261101	2016-03-29	2016-03-29	PARC770727	PANIAGUA RAMIREZ CARLOS GERARDO	2	5	79	1972-07-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261102	2016-03-29	2016-03-29	309267508	SANTANDER AGUILAR VIRIDIANA GETSEMANI	1	1	78	1993-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261103	2016-03-29	2016-10-11	411011978	OCHOA BLANCAS NORBERTO JOSE	1	2	79	1991-07-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261104	2016-03-29	2016-03-29	303321583	SALINAS GALICIA RUBEN	1	1	94	1987-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261105	2016-03-29	2016-03-29	PAFE571218	PASTRANA FERNANDEZ EMELINA DEL CARMEN	3	1	150	1957-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261106	2016-03-29	2016-03-29	414107337	ORTIZ NOGUEZ JUAN CARLOS	1	1	89	1987-12-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261107	2016-03-29	2016-03-29	411011655	GARDUÑO AGUILAR NATANAEL JESUA	1	5	85	1991-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261108	2016-03-29	2016-03-29	310311100	REYES GUZMAN NANCI	1	1	79	1994-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261109	2016-03-30	2016-03-30	308259737	ORTEGA AYALA ADIEL	1	1	86	1991-11-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261110	2016-03-30	2016-03-30	313347179	VALDIVIA DIAZ LISSETTE	1	1	85	1996-07-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261111	2016-03-30	2016-03-30	310619657	BALTAZARES VALENCIA ENRIQUE	1	3	85	1993-06-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261112	2016-03-30	2018-03-06	311178601	RAMIREZ AGUILAR MIGUEL ANGEL	1	4	85	1994-12-20	M	t	2	apellido p	apellido m	nombres	0	none	none	0
261113	2016-03-30	2016-03-30	MUSA711025	MUÑOZ SEGOVIANO ANGELES AURORA	3	1	79	1971-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261114	2016-03-30	2016-03-30	307322685	ROLDAN RIZO KATYA FERNANDA	1	1	79	1991-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261115	2016-03-30	2016-03-30	408092708	GARCIA TEJEDA THALIA	1	4	86	1988-02-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261116	2016-03-30	2016-03-30	414002177	HERNANDEZ AGUIRRE VICTOR MOISES	1	1	85	1995-07-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261117	2016-03-31	2016-03-31	313041451	MARTINEZ HIRALES ABIGAIL ADRIANA	1	6	80	1997-09-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261118	2016-03-31	2016-03-31	308172517	ESPINOSA SANCHEZ ADRIANA GUADALUPE	1	1	86	1992-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261119	2016-03-31	2016-03-31	300255292	CARPIO PACHECO CARLA VERONICA	1	5	84	1984-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261120	2016-04-04	2016-04-04	309237606	GONZALEZ BARBA DELIA REBECA	1	4	89	1992-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261121	2016-04-04	2016-04-04	312075613	ARRIETA GARCIA ARIADNA REBECA	1	1	84	1994-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261122	2016-04-04	2016-04-04	308285051	SOLANO DE CASTRO GERARDO	1	2	80	1991-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261123	2016-04-04	2016-04-04	309190763	HERRERIAS RUIZ DEL CAMPO ITZEL	1	2	80	1993-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261124	2016-04-04	2016-04-04	311170076	BENAVIDES LARIOS AYLIN	1	1	82	1995-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261125	2016-04-04	2016-04-04	31079818	GARCIA MARTINEZ LORENA SOFIA	1	1	78	1994-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261126	2016-04-04	2018-05-03	310133230	ROJAS FAJARDO DANIELA ARACELI	1	5	84	1994-05-07	F	t	3	apellido p	apellido m	nombres	0	none	none	0
261127	2016-04-04	2016-04-04	410016705	SANCHEZ CASTAÑEDA JOSE RAMON	1	5	79	1991-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261128	2016-04-04	2016-04-04	415123273	MILLAN ORTEGA ITZEL	1	1	84	1995-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261129	2016-04-04	2016-04-04	305224648	TERRONES VAZQUEZ KEIRY COINTA	1	5	81	1988-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261130	2016-04-04	2016-04-04	309189079	GONZALEZ CONTRERAS JESUS EMMANUEL	1	5	84	1993-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261131	2016-04-04	2016-04-04	414058648	PEREZ SALAZAR GABRIEL	1	1	78	1995-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261132	2016-04-04	2016-04-04	416000478	BENIGNO JULIO OSCAR	1	1	81	1995-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261133	2016-04-04	2016-04-04	311020854	CADENA BAUTISTA ANGEL EDUARDO	1	5	79	1995-06-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261134	2016-04-05	2016-04-05	311073362	CRUZ ROJAS ZAYRA GRISELL	1	3	85	1994-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261135	2016-04-05	2016-04-05	311100381	SANCHEZ ORTEGA EDUARDO MAURICIO	1	4	79	1995-07-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261136	2016-04-05	2016-04-05	MATH890108	MARTINEZ TORRES HECTOR ADAN	3	3	90	1989-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261137	2016-04-05	2016-04-05	310317614	SANCHEZ ENZASTIGA KARINA	1	7	82	1993-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261138	2016-04-05	2016-04-05	94137134	DE LA CRUZ CARDENAS FARRAH GUADALUPE	1	5	7	1978-10-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261139	2016-04-05	2016-04-05	313226863	SEOANE VAZQUEZ RAQUEL	1	1	80	1997-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261140	2016-04-05	2016-04-05	310331371	VALLARTA ESTRELLA JESSICA	1	4	79	1994-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261141	2016-04-05	2016-04-05	77107903	GRANADOS BARRERA JULIO	1	1	82	1956-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261142	2016-04-05	2016-04-05	308328714	VAZQUEZ DAVALOS LEONARDO	1	1	85	1992-09-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261143	2016-04-05	2016-04-05	309275745	LOPEZ AGUIRRE MARTHA ITZEL	1	1	85	1993-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261144	2016-04-06	2016-04-06	310050733	GOMEZ CRUZ AXEL RUDGAR	1	1	82	1993-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261145	2016-04-06	2016-04-06	403070356	BUSTOS BRITO CELIA	1	1	90	1980-03-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261146	2016-04-07	2016-04-07	300327407	CASTRO GIL GERARDO ERNESTO	1	1	106	1985-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261147	2016-04-07	2016-04-07	414091971	CUELLAR DURAN JAVIER	1	2	80	1992-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261148	2016-04-07	2016-04-07	716039273	TERREROS OJEDA MELISSA ARACELI	1	3	81	1994-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261149	2016-04-07	2016-04-07	511224144	DIAZ GONZALEZ JOSE MARTIN	1	1	86	1979-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261150	2016-04-07	2016-04-07	308102262	PUENTES GOMEZ JESUS	1	4	78	1992-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261151	2016-04-08	2016-04-08	416143849	AVELINO MARTINEZ JESUS EDUARDO	1	1	81	1993-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261152	2016-04-08	2016-04-08	VIMC781216	VILCHES MALAGON CECILIA	2	5	51	1978-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261153	2016-04-08	2016-04-08	95613530	MENDOZA CANALES CESAR	1	1	85	1977-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261154	2016-04-11	2016-04-11	309048097	CALDERON DIAZ JUAN IVAN	1	5	84	1993-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261155	2016-04-11	2016-04-11	310286288	LEON SANCHEZ ANA KAREN	1	1	84	1994-11-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261156	2016-04-11	2016-04-11	716030287	ARISTIZABAL GUERRERO SANDRA LUCIA	1	1	90	1993-01-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261157	2016-04-12	2017-03-07	415077097	SALINAS BUSTAMANTE MONICA	1	2	81	1996-04-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261158	2016-04-12	2016-04-12	306309317	SANCHEZ CORDOVA JHONNY GEOVANNY	1	1	85	1989-12-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261159	2016-04-13	2016-04-13	310220776	MORALES SANCHEZ LUIS ALBERTO	1	5	78	1994-05-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261160	2016-04-13	2016-04-13	309005757	GARCIA ACEVEDO BELEN	1	1	90	1993-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261161	2016-04-13	2018-08-30	311138616	ALVARADO CONTRERAS ALEJANDRA	1	1	85	1995-03-01	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261162	2016-04-13	2016-04-13	307292603	VILLANUEVA JACOBO DIANA PAOLA	1	1	90	1991-01-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261163	2016-04-14	2016-04-14	312186160	LEON SANCHEZ ADRIANA IXCHELL	1	2	86	1996-05-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261164	2016-04-15	2016-04-15	306180778	MARTINEZ LICEA GONZALO	1	2	84	1990-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261165	2016-04-15	2016-04-15	311263215	LUNA POBLANO JULIAN	1	2	82	1995-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261166	2016-04-15	2016-04-15	RAVL960626	RAMOS VALENCIA LUZ DEL CARMEN	1	5	7	1996-06-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261167	2016-04-18	2016-04-18	313218156	CERVANTES MEZA LAURA YANZA	1	1	78	1997-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261168	2016-04-19	2017-02-01	311318645	CORNELIO MAGALLANES CARLOS MARTIN	1	5	85	1995-06-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261169	2016-04-19	2016-04-19	310097590	GALICIA RAMIREZ MARISOL	1	2	80	1994-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261170	2016-04-19	2016-04-19	411087012	DAVILA GARCIA ALFREDO	1	2	85	1991-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261171	2016-04-20	2017-01-31	313002896	BETANCOURT ROMAN DIEGO ALEJANDRO	1	2	84	1997-05-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261172	2016-04-21	2016-04-21	412024352	HERRMANN ESTUDILLO BLANCA AIDE	1	4	84	1995-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261173	2016-04-21	2016-04-21	311145553	MORALES QUINTANA ALEXIS FABIAN	1	1	84	1995-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261174	2016-04-21	2016-04-21	BELT841002	BENITEZ LOPEZ TANIA GRICEL	2	1	79	1984-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261175	2016-04-22	2016-04-22	311018620	RIVERA COLIN DIANA	1	1	87	1995-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261176	2016-04-22	2016-04-22	415087674	MEJIA MERINO VICTOR ARTURO	1	4	84	1994-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261177	2016-04-22	2016-04-22	415098722	MUÑOZ SANTOS PAMELA ALEJANDRA	1	2	84	1994-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261178	2016-04-25	2016-04-25	303281072	HERNANDEZ DAMIAN ANA LILIA	1	3	101	1986-12-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261179	2016-04-25	2016-04-25	311077494	CUEVAS DE LA CRUZ JESSICA ANAID	1	5	82	1994-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261180	2016-04-25	2016-04-25	313335299	SANCHEZ MONTERO MARIA FERNANDA	1	7	80	1997-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261181	2016-04-25	2016-04-25	415068572	PACCHIANO ESPINOSA ALAN ARTURO	1	4	84	1985-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261182	2016-04-26	2016-04-26	313199143	DIAZ RIVERA ABRAHAM HENOCH	1	1	80	1996-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261183	2016-04-29	2016-04-29	516021072	FLORES SILVA JORGE ALBERTO	1	1	85	1991-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261184	2016-04-29	2016-04-29	309048671	ALVARADO MIYASHIRO MAX	1	7	80	1993-10-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261185	2016-04-29	2016-04-29	AALB771120	AZAR LOPEZ BERNARDO ANWAR	2	1	82	1977-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261186	2016-04-29	2016-04-29	313300109	DE JESUS BAHENA JOSE DANIEL	1	7	83	1997-05-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261187	2016-04-29	2016-04-29	MAGC870324	MARTINEZ GOMEZ CARMEN DENI	2	2	79	1987-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261188	2016-05-02	2016-05-02	414009334	HERNANDEZ MONROY JESICA ABRIL	1	4	79	1994-10-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261189	2016-05-02	2016-05-02	409061918	BORRAS GUTIERREZ JOSE ANTONIO	1	1	79	1989-07-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261190	2016-05-02	2016-05-02	309066484	GUZMAN RESENDIZ GABRIELA	1	2	73	1993-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261191	2016-05-03	2016-05-03	313096437	GONZALEZ VALENCIA ANAYELI	1	2	82	1997-03-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261192	2016-05-03	2016-05-03	HUHL591229	HUERTA HERNANDEZ LEONOR	2	1	105	1959-12-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261193	2016-05-03	2016-05-03	300340356	ARANDA URIBE IVAN SAMMIR	1	1	86	1983-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261194	2016-05-03	2016-05-03	313112786	GONZALEZ GALINDO LILIAN CRISTINA	1	4	85	1996-12-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261195	2016-05-06	2016-05-06	312045346	SANCHEZ CRUZ ADRIAN FERNANDO	1	1	86	1993-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261196	2016-05-09	2016-05-09	312319030	FLORES ISABEL DIANA MICHELLE	1	2	89	1996-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261197	2016-05-09	2016-05-09	407010611	CORTES GUTIERREZ EMELYN	1	5	78	1988-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261198	2016-05-09	2016-05-09	GATE871031	GARCIA TOPETE ENRIQUE PATRICIO	1	3	7	1987-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261199	2016-05-11	2016-05-11	REDR640625	REYES DAVALOS RAYMUNDO	2	1	105	1964-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261200	2016-05-12	2016-05-12	310260541	MORAN LEON DIANA MONSERRAT	1	4	80	1994-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261201	2016-05-12	2016-05-12	308098989	MONROY HERNANDEZ OMAR EDUARDO	1	1	82	1990-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261202	2016-05-13	2017-02-24	MAXF851121	MASSON FLORENT	1	3	7	1985-11-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261203	2016-05-13	2016-05-13	311715264	ESCOBEDO MARTINEZ ISADORA EUNICE	1	2	79	1995-10-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261204	2016-05-13	2016-05-13	312312426	ALDAY RUIZ ALBA ILIANA	1	7	84	1996-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261205	2016-05-16	2016-05-16	308126871	MEJIA OLVERA MARINA	1	1	84	1992-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261206	2016-05-16	2016-05-16	BEPA900313	BECERRA PALMA ANA LAURA	2	3	83	1990-03-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261207	2016-05-17	2016-05-17	310202523	MENDEZ CONTRERAS DANIELA AURORA	1	4	80	1994-06-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261208	2016-05-18	2016-05-18	JAIM740128	JAIMES TELLEZ MIGUEL ANGEL	2	1	102	1974-01-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261209	2016-05-18	2017-02-27	PESO890407	PEREZ SERRANO OSCAR OCTAVIO	3	1	86	1989-04-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261210	2016-05-19	2017-02-01	308315105	MARTINEZ VALDES DIEGO FRANCISCO	1	1	85	1992-06-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261211	2016-05-19	2016-05-19	410060289	BELLO CERVANTES ELEAZAR	1	1	79	1991-04-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261212	2016-05-19	2016-05-19	410040616	HUARTE CUELLAR EUGENIO	1	1	84	1986-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261213	2016-05-20	2016-05-20	301199377	MENDOZA BALANDRAN KARINA	1	3	80	1985-03-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261214	2016-05-20	2016-05-20	411014144	RUEDA ENRIQUEZ TANIA MARIEL	1	2	84	1991-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261215	2016-05-23	2016-05-23	310194716	LOPEZ CORTES OLAF TONATIHU	1	5	80	1994-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261216	2016-05-24	2016-05-24	306048816	BERISTAIN BLANCO PAULINA	1	1	84	1990-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261217	2016-05-25	2016-05-25	IIBG661020	ISIDRO BRUNO GONZALO	2	4	79	1966-10-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261218	2016-05-27	2016-05-27	HEOE870313	HERNANDEZ OTELO EDGAR JAVIER	3	3	77	1987-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261219	2016-05-30	2016-05-30	311142813	BLANCO BALDERRABANO JESSICA	1	1	81	1995-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261220	2016-05-31	2016-05-31	313187902	LOPEZ VAZQUEZ JORGE ALBERTO	1	1	81	1993-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261221	2016-05-31	2016-05-31	90395020	RIVERA RAMIREZ JOSE ALFREDO	1	1	82	1973-03-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261222	2016-05-31	2016-05-31	306026067	PEREZ ISLAS ELIZABETH	1	1	86	1990-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261223	2016-06-01	2016-06-01	313219830	GARCIA CERON LUIS DANIEL	1	1	81	1997-07-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261224	2016-06-03	2016-06-03	314126635	QUIROZ MARTINEZ JOSE OTONIEL	1	4	82	1988-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261225	2016-06-06	2016-06-06	HERA780324	MENDOZA ROSAS ANA TERESA	2	1	99	1978-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261226	2016-06-07	2016-06-07	RUTC810381	RUIZ TREJO CARLOS IDAIR	3	1	48	1981-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261227	2016-06-07	2016-06-07	95188335	RUVALCABA OCHOA JESSICA LIZETH	1	6	84	1978-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261228	2016-06-07	2016-06-07	413094591	FRANCISCO BAZAN OSCAR OSFELIPE	1	2	84	1990-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261229	2016-08-08	2016-08-08	313525788	HERNANDEZ SALMERON MAURICIO	1	4	80	1997-05-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261230	2016-08-08	2016-08-08	3081145540	RODRIGUEZ VARA MARIA ISABEL	1	1	89	1992-10-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261231	2016-08-08	2016-08-08	417097721	LARA ALMAGUER CARLOS YAEL	1	7	89	1992-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261232	2016-08-08	2016-08-08	308042463	LINARES JURADO ARELI	1	5	90	1992-08-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261233	2016-08-08	2016-08-08	310743857	SANCHEZ VEGA ARANTXA	1	3	78	1994-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261234	2016-08-08	2016-08-08	308206212	VELAZCO ISLAS JAEL SAMANTHA	1	1	87	1991-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261235	2016-08-08	2017-08-15	416002733	BETANCOURT BUELNA SARA ALEXANDRA	1	4	84	1997-04-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261236	2016-08-09	2016-08-09	312189068	SANCHEZ MIGUEL ANGELICA BEATRIZ	1	7	78	1996-02-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261237	2016-08-09	2016-08-09	310050575	GOMEZ BARTOLO YARET YAMARINA	1	1	84	1994-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261238	2016-08-09	2016-08-09	311036110	GONZALEZ FLORES DANIEL RICARDO	1	7	85	1995-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261239	2016-08-09	2017-08-08	416034956	LEDESMA ZALDIVAR CHRISTIANE LETICIA	1	4	85	1995-03-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261240	2016-08-09	2016-08-09	312635888	TENORIO GONZALEZ ADRIANA	1	1	78	1996-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261241	2016-08-09	2016-08-09	107003816	CID CHAVARRIA MARIA ESTELA	1	1	80	1994-04-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261242	2016-08-09	2018-08-17	312031572	LOPEZ LOPEZ STEPHAN MARIO	1	4	85	1996-04-22	M	t	3	apellido p	apellido m	nombres	0	none	none	0
261243	2016-08-09	2018-08-29	311313547	HERNANDEZ RAMIREZ YARELI	1	4	90	1994-12-01	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261244	2016-08-09	2016-08-09	312252744	MEDINA MORQUECHO OLIMPIA	1	4	84	1995-08-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261245	2016-08-09	2016-08-09	311665970	MIRANDA FLORES IVANA	1	1	84	1995-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261246	2016-08-09	2016-08-09	416004720	JAEN MATA OLIVER	1	1	83	1997-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261247	2016-08-09	2016-08-09	416065141	CUENCA FITZ ALEXIS MANUEL	1	1	83	1997-07-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261248	2016-08-09	2016-08-09	312003993	GONZALEZ SALAZAR KAREN ARAEL	1	1	81	1996-02-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261249	2016-08-09	2016-08-09	309341226	VARGAS VAZQUEZ FERNANDO ORLANDO	1	1	79	1993-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261250	2016-08-09	2016-08-09	402036315	DELGADO SOLORZANO CECILIA	1	2	85	1983-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261251	2016-08-09	2017-08-14	415071174	MORALES GUZMAN SIDDHARTHA EMMANUEL	1	4	79	1996-10-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261252	2016-08-09	2016-08-09	307306838	RODRIGUEZ VALDEZ RAUL	1	1	89	1991-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261253	2016-08-09	2016-08-09	309276113	MARTINEZ NICOLAS LUCERO ALEJANDRA	1	7	89	1993-08-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261254	2016-08-09	2016-08-09	109001698	GUTIERREZ SANTILLAN ANTONIO	1	4	85	1996-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261255	2016-08-09	2017-02-23	310074177	FLORES GUZMAN KARLA ELIZABETH	1	2	90	1994-09-08	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261256	2016-08-09	2016-08-09	306325470	VERA CALDERON DULCE SELENE	1	1	76	1990-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261257	2016-08-10	2016-08-10	311133604	ZAMORA HERNANDEZ URIEL	1	1	85	1995-08-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261258	2016-08-10	2016-08-10	311094004	GUTIERREZ OSORIO ANA PAULINA	1	1	79	1994-05-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261259	2016-08-10	2016-08-10	313182402	GUTIERREZ AGUILAR KAREN PILAR	1	5	89	1997-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261260	2016-08-10	2016-08-10	415077815	PLATA SALAS JOSE	1	4	79	1995-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261261	2016-08-10	2017-02-15	311235643	PEREZ FLORES GEMA FLORENTINA	1	2	79	1995-08-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261262	2016-08-10	2016-08-10	308166299	BONILLA PLATA DANIEL	1	2	85	1992-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261263	2016-08-10	2016-08-10	31114124	GOMEZ NIGO ARTURO LANCELOTH	1	1	84	1995-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261264	2016-08-10	2016-08-10	415025586	PEREZ RODRIGUEZ BRAYAM NEFTALY	1	1	82	1996-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261265	2016-08-10	2016-08-10	311210642	DOSTHA ARVIZU ELIHU JOSUE	1	1	83	1995-05-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261266	2016-08-10	2016-08-10	312112240	NICOLAS HERNANDEZ DANIEL ALEJANDRO	1	1	78	1996-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261267	2016-08-10	2016-08-10	MOMG820704	MONTES MELO GASPAR	2	1	82	1983-07-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261268	2016-08-10	2016-08-10	312003319	FERNANDEZ MENDEZ GRETA VIDAHI LUCERO	1	1	84	1996-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261269	2016-08-10	2016-08-10	417104335	VENTA PEREZ GLORIA ANGELICA	1	2	80	1996-09-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261270	2016-08-10	2016-08-10	312573360	SERVIN VICTORIA RUBEN	1	4	73	1996-05-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261271	2016-08-10	2016-08-10	10597597	VALBUENA CHUSAN JENIFFER CAROLINA	1	4	90	1994-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261272	2016-08-10	2016-08-10	110594024	CARPIO PINEDA MARCOS ENRIQUE	1	7	90	1993-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261273	2016-08-11	2016-08-11	307093716	ANTONIO BUENO SANDRA	1	4	79	1991-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261274	2016-08-11	2016-08-11	311232020	RODRIGUEZ ROSAS JOSE LUIS	1	1	89	1994-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261275	2016-08-11	2017-02-13	3131167446	PACHECO ZAVALA LILIANA	1	2	89	1997-07-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261276	2016-08-11	2016-08-11	310043023	CARRILLO FLORES JOSE LUIS	1	7	90	1994-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261277	2016-08-11	2016-08-11	417101547	SANCHEZ GONZALEZ MARIA DEL ROSARIO	1	3	84	1995-05-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261278	2016-08-11	2016-08-11	416135390	TORAL CRUZ ALEJANDRO	1	1	82	1992-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261279	2016-08-11	2016-08-11	313319662	CUADROS POPOCA LUIS RAUL	1	4	85	1997-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261280	2016-08-11	2016-08-11	311143920	HIDALGO HERNANDEZ SOFIA	1	4	84	1995-08-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261281	2016-08-11	2016-08-11	308173181	CORONA RODRIGUEZ GEORGINA	1	1	79	1992-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261282	2016-08-11	2016-08-11	516015338	LOPEZ CORTES GEORGINA IVETTE	1	2	90	1991-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261283	2016-08-11	2016-08-11	516022103	GARCIA HERNANDEZ JUAN CARLOS	1	4	90	1990-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261284	2016-08-11	2016-08-11	415075608	CARDENAS RAZO LUCERO	1	4	79	1995-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261285	2016-08-11	2018-03-05	310307422	REYES TRUJILLO GERARDO	1	7	90	1994-10-12	M	t	4	apellido p	apellido m	nombres	0	none	none	0
261286	2016-08-11	2016-08-11	310300038	OCAMPO CERDA JORGE LUIS	1	7	90	1994-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261287	2016-08-12	2016-08-12	412085293	JUAREZ MARTINEZ MYRIAM	1	7	84	1993-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261288	2016-08-12	2016-08-12	309293761	MATIAS MONDRAGON MARIA EUGENIA	1	1	79	1993-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261289	2016-08-12	2018-08-13	415039477	ZENIL PALMA MANUEL	1	2	84	1995-05-30	M	t	4	apellido p	apellido m	nombres	0	none	none	0
261290	2016-08-12	2018-02-23	517009192	SORIA LARA ALEJANDRA SULLYVAN	1	1	85	1991-12-21	F	f	4	apellido p	apellido m	nombres	0	none	none	0
261291	2016-08-15	2016-08-15	312307150	CASTILLO JIMENEZ FELIPE	1	2	84	1996-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261292	2016-08-15	2016-08-15	312653017	LARA PINEDA DENIFF	1	4	83	1991-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261293	2016-08-15	2016-08-15	416099265	GARIBAY GARCIA MADIAN	1	4	83	1997-02-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261294	2016-08-15	2016-08-15	314200019	RUIZ SANTIAGO DANIEL	1	1	79	1998-09-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261295	2016-08-15	2016-08-15	314124944	NAJERA AVILA DIANA FERNANDA	1	4	79	1998-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261296	2016-08-15	2016-08-15	311011834	OBLEA ALONSO TANE MELISA	1	4	85	1995-05-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261297	2016-08-15	2016-08-15	305023214	ZARATE CHAVEZ MERILIN ADRIANA	1	7	85	1989-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261298	2016-08-15	2016-08-15	309093994	GASCA ROJAS BOGAR ALEJANDRO	1	2	84	1993-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261299	2016-08-15	2016-08-15	310224509	SERNAQUE VILLAGOMEZ MITSUO ALEXANDER	1	7	90	1994-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261300	2016-08-15	2016-08-15	310202341	MARTINEZ RAMIREZ RODOLFO	1	1	85	1994-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261301	2016-08-15	2016-08-15	414041141	ABUNDEZ RIVERA MARIA GUADALUPE	1	1	83	1994-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261302	2016-08-15	2018-01-31	98224067	MARTINEZ MENDOZA ARTURO ALEJANDRO	1	1	85	1982-04-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261303	2016-08-15	2016-08-15	517009147	GODINEZ REVELES DANI	1	1	85	1989-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261304	2016-08-15	2018-02-01	300033164	DOMINGUEZ BAEZ DIEGO ALEJANDRO	1	1	85	1983-11-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261305	2016-08-16	2016-08-16	308100907	QUIROZ HERNANDEZ CARMIN	1	1	85	1992-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261306	2016-08-16	2017-02-21	310228978	ELORZA MACIAS LUCIANO FABIAN	1	4	85	1993-09-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261307	2016-08-16	2016-08-16	413092384	LOPEZ HERNANDEZ GABRIEL ALFONSO	1	5	84	1993-05-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261308	2016-08-16	2016-08-16	314048587	DIAZ PEREZ BRANDON DANIEL	1	1	79	1997-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261309	2016-08-16	2016-08-16	311047158	HERNANDEZ ALCANTARA ASHLEY ZOEL	1	1	85	1995-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261310	2016-08-16	2016-08-16	415010447	GONZALEZ CRUZ JORGE WILBERT	1	1	85	1995-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261311	2016-08-16	2016-08-16	516020367	MARTINEZ TREJO LUANN GISSELL	1	1	90	1991-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261312	2016-08-16	2016-08-16	314112301	MARQUEZ RAMIREZ GABRIEL ALDAIR	1	1	79	1997-09-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261313	2016-08-16	2016-08-16	404105099	ZEMPOALTECA ALFONSECA MONICA ELSA	1	1	84	1985-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261314	2016-08-16	2016-08-16	311149915	JIMENEZ SAMANO GERARDO	1	1	79	1994-10-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261315	2016-08-16	2016-08-16	311153064	FLORES BAEZA LESLIE NAYELI	1	2	79	1995-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261316	2016-08-16	2016-08-16	310676881	MEJIA AMEZQUITA ANDREA	1	4	84	1994-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261317	2016-08-16	2016-08-16	416004366	ESTRADA ROBLEDO ERIKA	1	4	83	1997-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261318	2016-08-16	2017-02-17	516008264	PALMA SANTANA DAVID	1	1	85	1990-04-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261319	2016-08-16	2016-08-16	416110595	ESPINOSA DZIB JOSE MARIA	1	1	89	1989-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261320	2016-08-16	2016-08-16	310210395	RODRIGUEZ BELLO ERIK DANIEL	1	1	79	1994-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261321	2016-08-16	2016-08-16	415014627	CALVA CASTILLO ETHAN ADOLFO	1	1	80	1995-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261322	2016-08-16	2016-08-16	309217693	SALGADO HENRIQUEZ BARDO FERNANDO MARTIN	1	4	78	1993-05-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261323	2016-08-16	2017-08-14	312198772	ARANDA SIERRA ALBERTO EDUARDO	1	7	80	1996-06-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261324	2016-08-17	2016-08-17	416094026	HERNANDEZ CASTRO NADIA	1	2	83	1995-10-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261325	2016-08-17	2016-08-17	414011379	ESCAMILLA SALAZAR MARIA JOSEFINA	1	2	85	1994-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261326	2016-08-17	2016-08-17	311188130	HERNANDEZ BUSTAMANTE RUBEN	1	1	85	1995-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261327	2016-08-17	2016-08-17	314241025	OCAMPO GARCIA KRYSTAL MICHELE	1	2	89	1998-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261328	2016-08-17	2016-08-17	310053710	DIAZ JUAREZ BRENDA ELIZABETH	1	1	78	1993-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261329	2016-08-17	2016-08-17	312171904	JUAREZ LOPEZ RODRIGO	1	1	89	1995-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261330	2016-08-17	2016-08-17	CACD950302	CASTAÑON CERVANTES DAVID	1	1	7	1995-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261331	2016-08-17	2016-08-17	82103268	MARTINEZ HERNANDEZ JOSE LUIS	1	1	85	1966-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261332	2016-08-17	2016-08-17	312140018	NIETO MORENO BRENDA	1	2	84	1996-02-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261333	2016-08-17	2016-08-17	512452720	CEVALLOS  MORILLO CARLOS ALBERTO	1	1	90	1986-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261334	2016-08-17	2016-08-17	311050413	GONZALEZ PARDO ELIZABETH	1	1	84	1995-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261335	2016-08-17	2016-08-17	310268255	RAMIREZ JIMENEZ LESLIE	1	2	89	1994-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261336	2016-08-17	2016-08-17	BEMN871112	BELTRAN MALDONADO NANCY BELEM	2	1	87	1987-11-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261337	2016-08-17	2016-08-17	402102889	GARCIA SALDAÑA JOSE ALBERTO	1	3	84	1983-04-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261338	2016-08-17	2016-08-17	311111563	OSORIO GARCIA EMMANUEL	1	1	81	1995-05-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261339	2016-08-17	2016-08-17	314507019	RANGEL CAMACHO JOSE EDUARDO	1	3	78	1996-12-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261340	2016-08-18	2016-08-18	417021096	CRUZ CHAVEZ ANGEL JAVIER	1	1	79	1998-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261341	2016-08-18	2016-08-18	314094333	MUÑOZ GOMEZ LEONARDO	1	4	85	1998-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261342	2016-08-18	2016-08-18	314217248	PEREZ GARCIA ARMANDO	1	1	78	1998-09-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261343	2016-08-18	2016-08-18	314340496	ALVAREZ LOPEZ ARIADNA	1	4	89	1998-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261344	2016-08-18	2016-08-18	417091932	JIMENEZ LOPEZ CUAUHTEMOC MARTIN	1	5	84	1993-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261345	2016-08-18	2016-08-18	312516112	ORDOÑEZ FLORES SAMANTHA	1	2	79	1994-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261346	2016-08-18	2016-08-18	308610981	TRON VALLEJO MAURICIO ALFONSO	1	2	81	1992-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261347	2016-08-18	2016-08-18	313041561	MANZANO MONTIEL AIDHAN ADAHD	1	7	84	1996-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261348	2016-08-18	2016-08-18	311083516	BONILLA ROMERO DEVIANI ANDREA	1	2	84	1987-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261349	2016-08-18	2016-08-18	310287591	MORA PEREZ ABEL JR.	1	1	85	1994-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261350	2016-08-18	2016-08-18	314002655	ALVAREZ ROMERO IVAN	1	4	85	1998-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261351	2016-08-18	2017-03-17	311183207	INFANTE SANTIAGO DORA	1	3	73	1995-02-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261352	2016-08-18	2016-08-18	GOMG830811	GONZALEZ MONTALVO GABRIELA ELENA	3	7	76	1983-08-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261353	2016-08-18	2016-08-18	309057873	APARICIO TREJO ANA FIDELIA	1	1	78	1993-05-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261354	2016-08-18	2016-08-18	98082232	BECERRIL FERNANDEZ JUANA VIRIDIANA	1	1	84	1983-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261355	2016-08-18	2016-08-18	94068638	CARRILLO SILVA MARIA LUCIA	1	3	84	1978-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261356	2016-08-18	2016-08-18	307167303	GARCIA GALLEGOS MARGARITA AYERIM	1	7	85	1991-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261357	2016-08-19	2016-08-19	308190155	SANCHEZ CORONA RICARDO	1	2	78	1992-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261358	2016-08-19	2016-08-19	313316252	GIL CARMONA ERNESTO	1	4	80	1996-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261359	2016-08-19	2016-08-19	311257777	CAMARGO HERNANDEZ JUAN ALFONSO	1	4	83	1994-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261360	2016-08-19	2016-08-19	313123391	CAMARGO HERNANDEZ ALAN MAURICIO	1	4	85	1997-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261361	2016-08-19	2016-08-19	412008063	ARIAS ARELLANO LORENA	1	1	85	1993-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261362	2016-08-19	2016-08-19	314157597	TREJO CENTENO EDITH	1	1	89	1998-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261363	2016-08-19	2016-08-19	417081661	VENTURA SANTOS JONATHAN	1	3	85	1991-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261364	2016-08-19	2016-08-19	309041720	FLORES BLANCO CARLOS ALBERTO	1	1	78	1993-08-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261365	2016-08-19	2018-03-02	312081773	CHAVEZ JUAREZ DIANA BELEN	1	7	84	1996-09-14	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261366	2016-08-19	2016-08-19	309041177	ALVARADO CARRILLO ZELTZIN ITZEL	1	1	78	1993-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261367	2016-08-19	2016-08-19	109001588	FLORES CHAVEZ DIANA CAROLINA	1	1	89	1996-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261368	2016-08-19	2016-08-19	415048497	LOPEZ ZAHAR JOCELYN GUADALUPE	1	1	84	1996-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261369	2016-08-19	2016-08-19	313100624	DOLORES GARCIA DIANA ELIZABETH	1	1	82	1994-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261370	2016-08-19	2016-08-19	301220404	PEREZ AGUILAR EDUARDO	1	2	7	1985-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261371	2016-08-19	2016-08-19	106005453	COLINDRES LOPEZ GLORIA ITZEL	1	3	85	1993-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261372	2016-08-19	2016-08-19	DEGG830329	DELGADILLO GUEVARA GABRIELA YAZMIN	2	1	80	1983-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261373	2016-08-19	2017-08-21	312117623	CASTILLO GOMEZ LILIAN	1	1	79	1996-06-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261374	2016-08-22	2016-08-22	311045408	CHAVARRIA AVILA MARCO YAEL	1	1	85	1995-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261375	2016-08-22	2016-08-22	309249861	JIMENEZ FLORES JUAN GERARDO	1	1	85	1991-10-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261376	2016-08-22	2016-08-22	314300872	PEREZ GUTIERREZ FRANCISCO JAVIER	1	1	85	1998-03-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261377	2016-08-22	2016-08-22	310015475	CORTES SEGURA MARIO ALEJANDRO	1	3	73	1994-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261378	2016-08-22	2018-02-12	416038301	RODRIGUEZ MARTINEZ EDGAR	1	1	83	1984-07-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261379	2016-08-22	2016-08-22	307213163	RODRIGUEZ OCAMPO SAMANTHA MANNHEIM	1	7	7	1991-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261380	2016-08-22	2017-03-31	312229177	MELLADO LIRA EMIRETH AITANA	1	2	79	1995-12-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261381	2016-08-22	2016-08-22	302049691	GARCIA RIVERA TANIA MONTSERRAT	1	1	78	1986-04-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261382	2016-08-22	2016-08-22	301184908	BELLO SANCHEZ LETICIA	1	7	89	1985-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261383	2016-08-22	2016-08-22	407003640	CORTES ACOSTA FABIANA	1	4	86	1987-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261384	2016-08-22	2017-08-11	313212240	GARNICA HERNANDEZ JOSEPH ISRAEL	1	4	81	1997-06-01	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261385	2016-08-23	2016-08-23	307148036	GONZALEZ MORA ANDREA MAGALI	1	1	79	1991-11-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261386	2016-08-23	2016-08-23	414101977	REYES PEREA ELIDA FABIOLA	1	4	74	1993-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261387	2016-08-23	2017-03-23	312654629	ZAYAS MARTINEZ DIEGO	1	4	85	1995-08-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261388	2016-08-23	2017-10-17	74139433	NAHMAD MOLINARI DANIEL	1	1	84	1958-09-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261389	2016-08-23	2016-08-23	414013524	GONZALEZ RIVERA ARTURO	1	1	83	1995-09-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261390	2016-08-23	2016-08-23	309014399	CORDERO RAMIREZ STEPHANIE BERENICE	1	5	84	1993-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261391	2016-08-23	2016-08-23	417049847	VAZQUEZ VIDAL SAUL	1	1	85	1998-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261392	2016-08-23	2016-08-23	307128607	GARCIA OLIVARES MITZI	1	1	86	1991-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261393	2016-08-23	2016-08-23	CAPI850303	CASTILLO PINEDA ILLIZT ELENA	2	7	61	1985-03-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261394	2016-08-23	2016-08-23	308200966	PEÑA ARMENTA ANGEL IVAN	1	7	89	1992-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261395	2016-08-23	2016-08-23	98186488	LUGO ZACARIAS ROCIO	1	6	84	1982-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261396	2016-08-23	2016-08-23	303139351	GUTIERREZ CERVANTES SERGIO	1	4	84	1987-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261397	2016-08-23	2016-08-23	311262926	LEON DE LA FUENTE DIEGO DAVID	1	4	85	1995-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261398	2016-08-23	2016-08-23	307145853	CABRERA AREVALO GUADALUPE GABRIELA	1	2	89	1991-12-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261399	2016-08-23	2016-08-23	307225672	MERINO ROMERO ADRIANA	1	1	85	1990-08-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261400	2016-08-23	2016-08-23	104001985	SIMBRON JUAREZ ITZEL AKETZALLI	1	1	85	1991-02-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261401	2016-08-23	2016-08-23	312198143	ALVAREZ HUERTA ALEJANDRA	1	1	82	1995-12-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261402	2016-08-23	2016-08-23	307225452	MECEIRA CAMARA FRANCISCO	1	2	82	1991-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261403	2016-08-24	2016-08-24	413123631	JIMENEZ PRIMAVERA ZAIDA VANESA	1	7	82	1992-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261404	2016-08-24	2016-08-24	416122097	HERNANDEZ BAUTISTA ELIAS	1	1	83	1996-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261405	2016-08-24	2016-08-24	309021982	BRAVO RAMIREZ JESUS ANGEL	1	1	80	1993-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261406	2016-08-24	2016-08-24	416033179	VAZQUEZ GARCIA ARTURO	1	4	85	1992-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261407	2016-08-24	2016-08-24	304187355	CRUZ ALEJO SANDRA	1	5	84	1988-02-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261408	2016-08-24	2016-08-24	308305315	ESPINOSA LOPEZ GUILLERMO ALEJANDRO	1	4	84	1992-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261409	2016-08-24	2016-08-24	309693154	SANCHEZ CRUZ MYRNA VALERIA	1	3	73	1993-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261410	2016-08-24	2016-08-24	312527693	ORTEGA SEGUNDO ANDREA	1	4	90	1995-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261411	2016-08-24	2016-08-24	68022257	OROZCO CADENA GILBERTO	1	4	84	1953-06-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261412	2016-08-24	2016-08-24	310168973	MARTINEZ BONILLA DELIA AVELINA	1	1	83	1994-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261413	2016-08-24	2016-08-24	314213824	PEREZ ZAMORA FLOR ELIZABETH	1	4	89	1998-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261414	2016-08-24	2016-08-24	308267310	MACHUCA MARTINEZ MARIA DEL CARMEN	1	1	89	1992-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261415	2016-08-24	2016-08-24	312053376	CHAVARRIA GACHUZ FRANCISCO JAVIER	1	1	85	1996-09-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261416	2016-08-25	2016-08-25	308041796	ESPINOSA MARTINEZ ROXANA DELILAH	1	1	81	1991-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261417	2016-08-25	2016-08-25	511452181	PADILLA BARRERA ZUHELEN VERONICA	1	4	5	1984-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261418	2016-08-25	2016-08-25	305283649	MAGAÑA FLORES LINDA ALEJANDRA	1	1	89	1988-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261419	2016-08-25	2017-08-14	310216270	RAMIREZ VAZQUEZ MARIANA	1	4	90	1993-10-08	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261420	2016-08-25	2016-08-25	309124777	NOCHEZ SANCHEZ LEONARDO DANIEL	1	1	78	1993-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261421	2016-08-25	2016-08-25	412007176	RUIZ CRUZ ZUREIMA NOEMI	1	1	78	1990-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261422	2016-08-25	2016-08-25	301867373	CALVO HAM MARIA JOSE	1	1	87	1984-09-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261423	2016-08-25	2016-08-25	311322787	TAPIA LUNA MARCO ANTONIO	1	7	82	1995-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261424	2016-08-25	2016-08-25	310202279	MENDOZA BAEZA SERGIO ANGEL	1	3	82	1994-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261425	2016-08-25	2016-08-25	313113666	HERNANDEZ ZARAZUA LEONARDO	1	1	81	1997-06-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261426	2016-08-25	2016-08-25	413019860	ALVAREZ SALCEDO ANA LAURA	1	5	84	1992-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261427	2016-08-25	2016-08-25	312313832	DURAN BECERRIL JESSICA ABIGAIL	1	1	81	1996-02-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261428	2016-08-26	2016-08-26	311220267	RODRIGUEZ OCAÑA BRANDON ALEJANDRO	1	7	85	1995-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261429	2016-08-26	2016-08-26	313311745	MARTINEZ MENDOZA FERNANDO	1	7	85	1997-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261430	2016-08-26	2016-08-26	312045384	SANDOVAL DE LA ROSA LUZ MARIA AMAIRANI	1	5	90	1996-05-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261431	2016-08-26	2016-08-26	3112217613	CASTILLO VILCHIS VALERIA	1	4	89	1996-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261432	2016-08-26	2016-08-26	310049386	ESCOBEDO TAPIA THELMA	1	2	90	1994-01-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261433	2016-08-26	2016-08-26	305778024	DELARBRE LOPEZ JORGE ALEJANDRO	1	3	80	1989-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261434	2016-08-26	2016-08-26	305587806	BARRERA GUERRA OSCAR URIK	1	5	88	1989-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261435	2016-08-26	2016-08-26	309560457	YAÑEZ ZERTUCHE XIMENA	1	3	7	1992-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261436	2016-08-26	2016-08-26	310311021	RODRIGUEZ GARCIA SAUL	1	1	85	1994-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261437	2016-08-26	2018-02-06	74323171	SANCHEZ GARCIA MARIA DEL CARMEN	1	4	84	1956-08-22	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261438	2016-08-26	2016-08-26	312020448	VIRGEN ROJAS ERENDIRA ABIGAIL	1	7	90	1995-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261439	2016-08-26	2016-08-26	314074698	JAIMES VERA DIANA GRISELL	1	4	89	1998-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261440	2016-08-26	2017-08-28	311215805	FRANCO GALIOTE GUADALUPE	1	3	79	1995-12-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261441	2016-08-29	2016-08-29	311138630	AMEZCUA LEZAMA LUIS ALEXIS	1	1	78	1995-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261442	2016-08-29	2016-08-29	310071231	AGUIRRE MORALES ASAEL	1	1	78	1986-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261443	2016-08-29	2016-08-29	306120608	GARCIA FUENTES JORGE	1	1	81	1990-03-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261444	2016-08-29	2016-08-29	307250470	QUEZADA CARRANZA JOSE MIGUEL	1	1	81	1991-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261445	2016-08-29	2016-08-29	312115942	RAMIREZ JUAREZ ANA JACQUELINE	1	5	81	1996-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261446	2016-08-29	2017-08-17	417077952	FLORES RIOS JOSE ANTONIO	1	2	84	1996-08-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261447	2016-08-29	2016-08-29	417098852	MEDINA ROSAS AXAYACATL	1	1	80	1988-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261448	2016-08-29	2016-08-29	417019549	GOMEZ TORRES TANIA AGLAE	1	1	89	1984-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261449	2016-08-29	2016-08-29	311122604	SANCHEZ RICARDO CARLOS ALBERTO	1	5	80	1995-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261450	2016-08-30	2016-08-30	311183685	LEAL PEREZ ALEJANDRO	1	1	85	1995-09-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261451	2016-08-30	2016-08-30	412042049	RIVERA APARTADO NORMA ARGELIA	1	4	81	1988-03-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261452	2016-08-30	2016-08-30	AUOI730418	AGUILAR DIAZ MA. ISABEL	1	3	84	1973-04-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261453	2016-08-30	2016-08-30	413077541	GOMEZ CAÑEDO LUIS ENRIQUE	1	4	85	1993-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261454	2016-08-30	2016-08-30	306142880	RANGEL GRIMALDO MANUEL EDUARDO	1	5	90	1990-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261455	2016-08-30	2016-08-30	415005085	ROSAS GUTIERREZ EDUARDO DAVID	1	1	81	1993-09-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261456	2016-08-30	2016-08-30	RAAM591215	RAMIREZ ARROYO MARGARITA	1	6	7	1959-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261457	2016-08-30	2016-08-30	309144034	NAVARRO GONZALEZ GABRIELA	1	1	78	1993-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261458	2016-08-30	2016-08-30	309063043	ANDRADE TORRES JHONATAN	1	1	79	1993-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261459	2016-08-30	2016-08-30	311188862	JARQUIN MANUEL OMAR	1	1	90	1995-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261460	2016-08-30	2016-08-30	717000889	AGUILLON GARCIA DARIO	1	1	81	1988-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261461	2016-08-30	2016-08-30	311309845	MOSQUEDA RAMIREZ CLAUDIA EUGENIA	1	1	90	1995-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261462	2016-08-30	2016-08-30	307172129	MAYA BERNAL CESAR FRANCISCO	1	2	104	1991-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261463	2016-08-30	2016-08-30	106003181	PAVON RAMON MITZIA EULI	1	7	78	1993-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261464	2016-08-31	2016-08-31	415024280	ALARCON GONZALEZ KANDY GUADALUPE	1	5	80	1996-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261465	2016-08-31	2016-08-31	307308650	TORRES HERNANDEZ EDGAR CHRISTIAN	1	1	85	1991-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261466	2016-08-31	2016-08-31	410002151	LOPEZ ORTEGA MAURICIO	1	1	85	1990-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261467	2016-08-31	2016-08-31	304067314	GRIFALDO MORALES DIANA ELIZABETH	1	1	81	1988-06-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261468	2016-08-31	2016-08-31	412000122	APAN ORTIZ JORGE IGOR	1	3	85	1993-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261469	2016-08-31	2016-08-31	309119937	VALENCIA GARCIA ROSA ISELA	1	1	84	1993-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261470	2016-08-31	2017-09-04	306219454	FLORES IBARRA KETZALLINA	1	1	99	1989-10-05	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261471	2016-08-31	2016-08-31	312283881	YEPIZ ABOYTES SHARON	1	1	80	1996-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261472	2016-08-31	2016-08-31	307182249	LOPEZ FRANCO JOSE MIGUEL	1	1	85	1991-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261473	2016-08-31	2017-08-21	31344581	HERNANDEZ BECERRA VICTOR DANIEL	1	5	85	1994-03-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261474	2016-08-31	2016-08-31	414007488	GUAJARDO OCHOA OSCAR HECTOR	1	5	85	1995-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261475	2016-08-31	2016-08-31	201608007	MORALES VILLAFUERTE JESSICA	1	2	82	1994-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261476	2016-08-31	2016-08-31	310036612	CERVANTES OLMOS RUTH ADRIANA	1	4	86	1994-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261477	2016-08-31	2016-08-31	313313110	ALVAREZ REYES ADRIANA	1	1	84	1997-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261478	2016-08-31	2016-08-31	414143764	AVILA LOPEZ CHRISTOPHER MICHELLE A.	1	2	80	1989-10-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261479	2016-09-01	2016-09-01	311067642	AGUILAR HERNANDEZ JOSE LUIS	1	2	81	1994-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261480	2016-09-01	2016-09-01	305059363	REYES PEREZ BETZABETH	1	5	84	1987-09-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261481	2016-09-01	2017-09-01	417094586	ZAMARRON HIDALGO ANTONIO ESDRAS	1	4	85	1998-02-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261482	2016-09-01	2018-02-07	309016142	DE JESUS VALERIO JUDITH	1	5	78	1998-09-27	F	f	3	apellido p	apellido m	nombres	0	none	none	0
261483	2016-09-01	2016-09-01	312051664	LAZOS PEREZ ROBERTO	1	5	81	1996-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261484	2016-09-01	2016-09-01	312033882	CHAVEZ GONZALEZ MAURICIO	1	1	82	1996-04-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261485	2016-09-02	2016-09-02	CUDA870209	CURIEL DIAZ ARTURO TLACAELEL	1	5	7	1987-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261486	2016-09-02	2016-09-02	92204520	PEREZ ESTEBAN ELIZABETH	1	1	81	1976-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261487	2016-09-02	2016-09-02	311130177	BARRON JUAREZ VANIA	1	1	73	1995-11-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261488	2016-09-02	2016-09-02	311027152	ARANDA REBOLLAR ALEJANDRA GUADALUPE	1	1	73	1995-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261489	2016-09-02	2016-09-02	311002168	BECERRA RODRIGUEZ ANA KAREN	1	1	87	1994-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261490	2016-09-02	2016-09-02	412017784	ESPARZA MAGAÑA ILSE GABRIELA	1	5	79	1992-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261491	2016-09-02	2016-09-02	305044729	HERNANDEZ DURAN JESUS JAVIER	1	3	82	1989-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261492	2016-09-02	2016-09-02	312112381	RAMOS DEL PRADO ANGELES	1	3	79	1996-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261493	2016-09-02	2016-09-02	415101699	HURTADO ULLOA HECTOR LEONARDO	1	1	79	1991-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261494	2016-09-02	2018-02-23	107004693	QUIROZ MENDIOLA METZTLI IRETI	1	1	85	1993-11-19	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261495	2016-09-05	2016-09-05	310268200	RODRIGUEZ MEJIA EDUARDO FRANCISCO	1	1	86	1993-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261496	2016-09-05	2016-09-05	310073967	ESCUDERO FIERROS ABEL YOSIMAR	1	4	85	1993-12-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261497	2016-09-05	2016-09-05	717002120	CASTILLO HERNANDEZ JOSE EDUARDO	1	7	84	1993-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261498	2016-09-05	2016-09-05	311264982	MEDINA MACIAS FRANCISCO JAVIER	1	5	90	1994-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261499	2016-09-05	2016-09-05	311041572	SAMPEDRO PINTO LUIS ARTEMIO	1	4	85	1994-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261500	2016-09-05	2016-09-05	309121790	LUNA MORA LUCERO DANIELA	1	5	84	1993-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261501	2016-09-05	2016-09-05	303219424	GONZALEZ PEREZ PAVEL	1	5	85	1987-07-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261502	2016-09-06	2016-09-06	311059832	CHAVERO CASTILLO DIANA JOSELIN	1	4	84	1995-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261503	2016-09-07	2016-09-07	311295809	NAVA SANDOVAL VANESSA JARET	1	4	89	1995-08-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261504	2016-09-07	2016-09-07	302121067	GOMEZ HERNANDEZ IZCHEL ROMANA	1	1	95	1986-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261505	2016-09-07	2017-09-18	309349057	CONTRERAS MACIAS SANDRA	1	4	84	1993-12-13	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261506	2016-09-07	2016-09-07	417008068	LEYVA CUEVAS ERICK	1	4	83	1996-11-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261507	2016-09-07	2016-09-07	416069987	RENTERIA ABAD RAZIEL JESUS ALI	1	1	84	1997-03-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261508	2016-09-07	2016-09-07	312290759	ACUÑA HERNANDEZ NANCY NAYELLI	1	1	82	1996-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261509	2016-09-07	2016-09-07	717002230	HERNANDEZ JUAREZ RAUL MARTIN	1	1	84	1994-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261510	2016-09-07	2018-04-02	312237138	VALTIERRA DE LA ROSA BRENDA MICHELLE	1	1	82	1996-10-14	F	t	3	apellido p	apellido m	nombres	0	none	none	0
261511	2016-09-07	2016-09-07	CAOM921001	CALDERON ORTIZ MILAGROS STHEPHANIE	1	1	80	1992-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261512	2016-09-07	2016-09-07	620162013	LOZANO HUARIPOMA MARIO ALEJANDRO	1	2	85	1990-05-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261513	2016-09-07	2016-09-07	515046757	DE AVILA LOPEZ MARIA ALEJANDRA	1	1	75	1986-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261514	2016-09-07	2016-09-07	308610778	GONZALEZ QUIROZ MARIA FERNANDA	1	2	81	1992-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261515	2016-09-07	2016-09-07	301642756	ARROYO SANTANA MONICA	1	5	81	1985-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261516	2016-09-07	2016-09-07	303311597	TORRES LOPEZ GUADALUPE YAMILET	1	5	84	1987-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261517	2016-09-07	2016-09-07	312034793	DIAZ CRUZ EDUARDO	1	7	85	1996-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261518	2016-09-07	2016-09-07	88125118	RAMIREZ MORENO REYNA MIRIAM	1	3	82	1970-10-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261519	2016-09-07	2016-09-07	311267385	PEREZ ORTEGA PAOLA GUADALUPE	1	1	85	1995-04-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261520	2016-09-07	2016-09-07	310275240	ROMERO FLORES NIDIA NAYELI	1	2	84	1994-10-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261521	2016-09-07	2016-09-07	309103406	DOMINGUEZ CARBAJAL DAVID ERNESTO	1	5	84	1992-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261522	2016-09-07	2016-09-07	312096506	CASTILLO RAMIREZ ALEX PAUL	1	5	78	1996-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261523	2016-09-07	2018-05-07	FOGE590330	FLORES GOMEZ RICARDO	1	5	7	1959-03-30	M	t	2	apellido p	apellido m	nombres	0	none	none	0
261524	2016-09-07	2016-09-07	303273262	GOMEZ ROSAS ANA LAURA	1	1	86	1987-03-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261525	2016-09-07	2017-08-07	409070873	VARELA MARTINEZ DANIEL GERARDO	1	7	113	1990-07-19	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261526	2016-09-08	2016-09-08	312283685	ZARAGOZA UTRILLA ERIKA	1	1	82	1996-01-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261527	2016-09-08	2016-09-08	313202852	LAZARO FIGUEROA ALEJANDRA	1	1	89	1996-12-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261528	2016-09-08	2016-09-08	313290879	SOTO AVILA CESAR	1	5	82	1995-12-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261529	2016-09-08	2016-09-08	311330432	RODRIGUEZ LOPEZ ARTURO JHASUA	1	7	89	1993-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261530	2016-09-08	2016-09-08	414007172	PEREZ DE LOS SANTOS NEHEMIAS	1	1	85	1994-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261531	2016-09-08	2016-09-08	312142579	ABREGO ALCANTARA LUIS ALEJANDRO	1	1	80	1995-10-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261532	2016-09-08	2016-09-08	309203946	YAÑEZ TROCHE MARTIN HORACIO	1	2	73	1993-03-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261533	2016-09-08	2016-09-08	308240724	MEDINA GARCIA ARMANDO DAVID	1	5	73	1992-08-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261534	2016-09-08	2016-09-08	408107617	MARTINEZ CORTES ELIAS SEBASTIAN	1	1	81	1983-02-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261535	2016-09-08	2016-09-08	307308526	TORRES LAZARO ALINE ABRIL	1	3	84	1991-04-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261536	2016-09-09	2016-09-09	312253143	MARTINEZ BUENDIA KAREN GUADALUPE	1	1	82	1995-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261537	2016-09-09	2016-09-09	308712322	RODRIGUEZ MARTINEZ YUBITZA ANDREA	1	1	82	1992-05-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261538	2016-09-09	2016-09-09	717001082	MELENDEZ NERIA RUBI CRISTAL	1	4	81	1993-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261539	2016-09-09	2016-09-09	310097916	HERNANDEZ HERNANDEZ JOSE LUIS	1	1	79	1994-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261540	2016-09-09	2016-09-09	310139232	MARTINEZ BECERRIL ALDO CAMILO	1	1	79	1994-07-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261541	2016-09-09	2016-09-09	AAHE611102	DE ANDA HERNANDEZ MARIA EUGENIA ADRIANA	2	5	82	1961-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261542	2016-09-09	2016-09-09	ROTS750407	RODRIGUEZ TORRES SANDRA JULISA	2	1	79	1975-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261543	2016-09-09	2016-09-09	310304926	RUIZ SOLIS CELERINO	1	5	89	1994-09-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261544	2016-09-09	2016-09-09	314343181	DE LA CRUZ MIRANDA LEONARDO MANUEL	1	1	85	1998-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261545	2016-09-09	2016-09-09	307085607	HERNANDEZ VALLE KIMBERLY ANABEL	1	5	89	1989-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261546	2016-09-09	2016-09-09	507017338	GARCIA MENDEZ MARBELLA CLAUDIA	1	1	90	1979-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261547	2016-09-09	2017-03-21	311221855	VAZQUEZ NAVARRETE MIGUEL ANGEL	1	1	83	1995-05-16	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261548	2016-09-09	2016-09-09	413032269	LIMONES POZOS ADAN	1	5	80	1994-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261549	2016-09-09	2016-09-09	311333323	ROLDAN PORTAL JESUS ARTURO	1	1	85	1993-04-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261550	2016-09-12	2016-09-12	311192083	QUIROZ ALDERETE FATIMA ALEJANDRA	1	5	80	1995-06-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261551	2016-09-12	2017-08-18	311272943	ALTAMIRANO DEL RAZO DARIO BONIFACIO	1	1	85	1995-04-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261552	2016-09-12	2016-09-12	312603029	MANRIQUEZ MARTINEZ KITZIA	1	3	82	1996-08-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261553	2016-09-12	2016-09-12	312035109	ESPINOZA BACILIO JULIETA	1	2	84	1996-04-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261554	2016-09-12	2016-09-12	416049136	GALVEZ GONZALEZ EMMANUEL	1	2	86	1996-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261555	2016-09-12	2016-09-12	313118647	SANCHEZ SORIANO VICTOR MANUEL	1	1	80	1996-12-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261556	2016-09-12	2016-09-12	312076160	ALVAREZ COLORADO BRENDA	1	3	90	1994-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261557	2016-09-12	2016-09-12	312165909	GUZMAN SANTIAGO MEZTLI AMEYALLI	1	1	81	1995-08-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261558	2016-09-12	2016-09-12	310037042	GONZALEZ NIETO ERICK FERNANDO	1	2	89	1993-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261559	2016-09-12	2016-09-12	312181574	AVILA FELIPE VICTOR HUGO	1	3	81	1996-12-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261560	2016-09-12	2016-09-12	310311708	SAMAYOA OVIEDO HUGO YUSET	1	4	90	1994-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261561	2016-09-13	2016-09-13	414091146	VILLAGOMEZ ACOSTA JORGE	1	1	83	1994-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261562	2016-09-13	2016-09-13	GORN661104	GOMEZ RIOS NORMA ANGELICA	2	3	76	1966-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261563	2016-09-13	2017-03-21	CALJ870630	CABALLERO LINARES JAVIER	3	2	7	1987-06-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261564	2016-09-13	2016-09-13	416073188	MONDRAGON GALLARDO CESAR GIOVANNI	1	5	85	1997-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261565	2016-09-13	2016-09-13	312037354	HERNANDEZ MAYA EMELIA	1	6	79	1995-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261566	2016-09-13	2016-09-13	311241954	PEREZ HERNANDEZ CITLALI LICELI	1	1	89	1995-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261567	2016-09-13	2016-09-13	CAPO670915	CARRILLO PORFIRIO	3	2	77	1967-09-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261568	2016-09-13	2016-09-13	310042208	ARENAS PERALES AIDE AREMI	1	1	82	1994-08-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261569	2016-09-14	2016-09-14	414003356	TORRES FIGA MARLENE MICHELLE	1	2	82	1993-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261570	2016-09-14	2016-09-14	415140429	GUZMAN SUAREZ ARIANA LIZETH	1	2	82	1995-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261571	2016-09-14	2016-09-14	310120865	RODRIGUEZ CORONA VICTOR	1	1	85	1994-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261572	2016-09-14	2016-09-14	412004759	ROMERO GUZMAN ALFREDO	1	1	85	1993-04-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261573	2016-09-14	2016-09-14	313081549	SAN JUAN SANCHEZ CRISTEL ESMERALDA	1	1	89	1997-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261574	2016-09-14	2018-02-16	313111136	LOPEZ CALDERON ISAAC EDMUNDO	1	4	79	1997-07-03	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261575	2016-09-14	2016-09-14	313193354	MONDRAGON SALDAÑA MONICA FERNANDA	1	1	80	1996-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261576	2016-09-14	2018-02-22	303189923	GONZALEZ MONDRAGON CLAUDIA	1	1	84	1987-09-18	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261577	2016-09-14	2016-09-14	311236499	SOLIS GONZALEZ EDRICK	1	4	79	1995-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261578	2016-09-14	2016-09-14	305175760	SALAZAR VENTURA DAVID ELMER	1	1	82	1984-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261579	2016-09-14	2016-09-14	303028763	MARTINEZ DIAZ MAYRA PATRICIA	1	1	86	1987-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261580	2016-09-19	2016-09-19	413004381	PALOMERO JANDETE CARLOS ADRIAN	1	1	89	1989-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261581	2016-09-19	2016-09-19	308148338	RAMIREZ OSNAYA VIANEY	1	2	84	1992-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261582	2016-09-19	2017-04-04	416042955	NOGUERA ORTIZ TERYUS JONATHAN	1	1	83	1993-02-22	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261583	2016-09-19	2016-09-19	107003861	RODRIGUEZ FLORES LILIAN BETSABE	1	1	80	1993-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261584	2016-09-19	2016-09-19	302066627	RIOS ORTIZ MIGUEL ANTONIO	1	1	86	1986-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261585	2016-09-19	2016-09-19	313326664	CASTRO BORJAS FABIOLA	1	1	82	1997-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261586	2016-09-19	2016-09-19	313303227	LEMUS PAGAZA HECTOR ALFREDO	1	4	80	1996-08-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261587	2016-09-19	2016-09-19	309137544	OROZCO ESCOBAR GABRIELA ISABEL	1	7	84	1993-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261588	2016-09-19	2016-09-19	AAGW440527	AYALA GARCIA JOSE WILFRIDO	2	1	63	1944-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261589	2016-09-20	2016-09-20	308045251	ARENAS GUZMAN NICOLE	1	2	78	1992-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261590	2016-09-20	2016-09-20	310045766	ALEGRIA RANGEL ANGELICA	1	2	78	1993-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261591	2016-09-20	2016-09-20	410003660	MORENO MONTES JORGE	1	1	79	1990-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261592	2016-09-20	2016-09-20	303074681	CRISTINO SICAIROS KAREN ESTHER	1	2	84	1989-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261593	2016-09-20	2016-09-20	417490029	GONZALEZ RODRIGUEZ DIANA	1	4	89	1997-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261594	2016-09-20	2016-09-20	412042197	PEREDA BARRIOS ITZEL	1	2	83	1992-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261595	2016-09-20	2016-09-20	415114583	GUZMAN GONZALEZ DIEGO	1	2	80	1991-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261596	2016-09-20	2018-02-19	312048426	RAMOS MARTINEZ LILIANA VICTORIA	1	1	89	1996-10-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261597	2016-09-20	2016-09-20	312158488	ATILANO REYES ARANZA	1	1	84	1996-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261598	2016-09-20	2018-02-28	311273421	BALVANERA ARELLANO HECTOR	1	2	90	1995-07-18	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261599	2016-09-20	2018-02-23	311107713	MORALES GALLARDO JORGE DIEGO	1	3	85	1995-02-01	M	f	3	apellido p	apellido m	nombres	0	none	none	0
261600	2016-09-20	2016-09-20	413544607	GONZALEZ HERNANDEZ ADRIANA	1	1	89	1991-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261601	2016-09-20	2016-09-20	311260135	GARCIA URIBE ANDREA SELENA	1	7	82	1995-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261602	2016-09-20	2016-09-20	310015365	CALIHUA VALENTIN MONSERRAT	1	1	84	1994-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261603	2016-09-21	2016-09-21	307638155	SOUSA ROJAS GABRIELA	1	1	78	1991-08-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261604	2016-09-21	2018-04-03	313070958	FLORES DE JESUS DIANA AURORA	1	4	78	1997-01-31	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261605	2016-09-21	2016-09-21	307274986	LOPEZ PEREZ ADRIANA ABIGAIL	1	3	90	1991-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261606	2016-09-21	2016-09-21	308249655	CHAVEZ ROMERO LUISA VERONICA	1	2	84	1992-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261607	2016-09-22	2016-09-22	311274428	CEBADA OROZCO MARIA GUADALUPE	1	2	78	1995-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261608	2016-09-22	2016-09-22	75200431	LOPEZ SOLIS CAROLINA PATRICIA	1	3	80	1959-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261609	2016-09-22	2016-09-22	311082193	SANTIBAÑEZ MENDEZ ADA	1	3	84	1994-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261610	2016-09-22	2018-08-23	311038822	LOPEZ CARRILLO EDUARDO DANIEL	1	4	85	1995-11-09	M	t	3	apellido p	apellido m	nombres	0	none	none	0
261611	2016-09-22	2016-09-22	31254095	HERNANDEZ CRUZ BRENDA JULIETA	1	1	85	1996-08-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261612	2016-09-22	2016-09-22	415156785	BERMUDEZ URIZA CAROLINA	1	1	80	1995-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261613	2016-09-23	2016-09-23	ROCC941124	ROSALES CASTILLO CRISTINA ELIZABETH	1	2	80	1994-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261614	2016-09-23	2016-09-23	310286745	MORENO CUATECONTZI EMMANUEL	1	1	90	1994-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261615	2016-09-23	2016-09-23	312328940	VALDES MALDONADO LAURA POOLET	1	1	78	1995-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261616	2016-09-23	2016-09-23	305287575	DIAZ TREJO ALBERTO	1	1	80	1990-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261617	2016-09-27	2016-09-27	717003725	TAMEZ LEYVA YENY RUBI	1	4	89	1992-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261618	2016-09-27	2017-11-07	311003983	GONZALEZ PEREZ MARISA ESTEFANIA	1	3	90	1994-07-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261619	2016-09-27	2016-09-27	312076153	ALVAREZ AYALA LUIS ALBERTO	1	4	85	1994-12-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261620	2016-09-27	2016-09-27	311171780	DAVILA LAINE DAVID	1	4	81	1995-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261621	2016-09-27	2016-09-27	413052643	BAUTISTA GALICIA DANIEL	1	6	80	1982-04-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261622	2016-09-28	2016-09-28	311142181	VALADEZ COSMES MARIANA	1	1	78	1994-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261623	2016-09-28	2017-05-05	310225056	TORRES ROSALES LUZ OLYMPIA	1	4	85	1993-05-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261624	2016-09-29	2016-09-29	311206043	RODRIGUEZ LEON JESUS EDMUNDO	1	7	83	1995-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261625	2016-09-29	2016-09-29	OECS730715	ORTEGA CUEVAS SUYIN	2	1	113	1973-07-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261626	2016-09-29	2016-09-29	312108627	RAMIREZ MARTINEZ MARYNTHIA GUADALUPE	1	4	85	1996-04-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261627	2016-09-29	2016-09-29	312279677	OCAMPO MATA FRANCISCO	1	4	80	1996-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261628	2016-09-29	2016-09-29	308251968	GONZALEZ GOMEZ ULISES ROBERTO	1	1	84	1992-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261629	2016-09-29	2016-09-29	415000073	ENRIQUEZ MENDOZA JAVIER	1	4	79	1994-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261630	2016-09-29	2017-08-22	312081924	CALLEJAS HERNANDEZ JAIR ESTEBAN	1	1	79	1996-09-20	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261631	2016-09-29	2016-09-29	512453356	CUADRADO BARRETO GABRIELA CARLA	1	4	81	1984-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261632	2016-09-30	2016-09-30	414009468	CARRILLO FAJARDO DANIEL	1	1	85	1991-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261633	2016-09-30	2016-09-30	313157886	MARTINEZ MARTINEZ GUILLERMO	1	1	85	1997-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261634	2016-09-30	2016-09-30	314210768	PEREZ HERNANDEZ JUAN JOSE	1	2	84	1992-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261635	2016-09-30	2016-09-30	310331508	VEGA BERNAL ANGEL	1	7	85	1994-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261636	2016-10-03	2016-10-03	PEDT731124	PEREZ RIOS MARIA TERESA	3	1	61	1973-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261637	2016-10-03	2016-10-03	306174436	CERVANTES REYES CINTHYA RUBI	1	5	84	1990-09-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261638	2016-10-03	2016-10-03	314225735	CARDENAS LUCIO HECTOR MARTIN	1	2	84	1998-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261639	2016-10-03	2016-10-03	309023259	CHAVEZ GOMEZ ALBERTO ANTONIO	1	5	90	1993-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261640	2016-10-03	2016-10-03	413046631	SANCHEZ SUAREZ LIDIA ANAHI	1	1	81	1994-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261641	2016-10-03	2016-10-03	314028811	TLALPACHITO ANGUIANO LILIA SARAHI	1	1	89	1997-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261642	2016-10-04	2016-10-04	310302403	PORTILLO GAONA MARIANA	1	1	80	1994-10-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261643	2016-10-04	2016-10-04	308168736	MARTINEZ GONZALEZ CARMINA	1	1	94	1992-12-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261644	2016-10-04	2016-10-04	413096265	ORTIZ SOLANO CLAUDIA LILIAN	1	6	83	1993-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261645	2016-10-04	2017-11-28	97348027	MARTINEZ ESTRADA JOEL	1	1	96	1981-10-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261646	2016-10-04	2016-10-04	310238043	MOCTEZUMA SALGADO ALINA	1	1	89	1994-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261647	2016-10-04	2016-10-04	310220439	MANZANO MARTINEZ NATALY	1	1	80	1994-01-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261648	2016-10-04	2016-10-04	312325004	DIAZ VACIO JORDAN ARATH	1	1	89	1996-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261649	2016-10-04	2016-10-04	310069409	BELLO SANCHEZ TOMASA	1	5	80	1994-01-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261650	2016-10-05	2016-10-05	308245781	OSORIO RIVERO ANGELES ERANDENY	1	4	84	1992-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261651	2016-10-06	2016-10-06	313037515	CRUZ SALGADO ALEJANDRA XOCHITL	1	2	86	1997-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261652	2016-10-06	2016-10-06	308249569	DURAN OROZCO ANA CRISTINA	1	4	75	1992-02-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261653	2016-10-06	2018-05-04	310203829	ROSALES RAMIREZ FERNANDA HOYANNA	1	7	80	1994-07-17	F	t	3	apellido p	apellido m	nombres	0	none	none	0
261654	2016-10-07	2016-10-07	309097662	BALTAZAR LOPEZ GUSTAVO	1	4	84	1993-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261655	2016-10-07	2016-10-07	413025061	GRANADOS PASTRANA JOSE EDUARDO	1	1	85	1994-11-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261656	2016-10-10	2016-10-10	308204782	SANCHEZ BETANCOURT CECIA GABRIELA	1	1	80	1991-11-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261657	2016-10-10	2016-10-10	314272557	CRUZ CARRAZCO BRENDA SOFIA	1	7	84	1998-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261658	2016-10-10	2016-10-10	314353885	ARANDA MASTACHE SIGMA LIZETH	1	7	84	1997-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261659	2016-10-10	2016-10-10	3603088	GONZALEZ APARICIO ULISES	1	4	75	1995-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261660	2016-10-10	2018-08-10	308756401	ALAMO AVILA AINEE	1	4	78	1991-07-29	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261661	2016-10-10	2016-10-10	311315558	SANCHEZ SANCHEZ ALEJANDRO	1	1	85	1994-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261662	2016-10-11	2018-02-15	410070567	RODRIGUEZ GARCIA MARCO ANTONIO	1	7	98	1991-10-08	M	f	3	apellido p	apellido m	nombres	0	none	none	0
261663	2016-10-11	2016-10-11	717030493	CABALLERO TORO SAMUEL ALONSO	1	5	80	1996-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261664	2016-10-11	2017-09-11	31190838	MARURI SANCHEZ DOLORES ALEJANDRA	1	5	79	1995-07-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261665	2016-10-11	2016-10-11	417091372	RUIZ JUAREZ KARLA FERNANDA	1	2	84	1993-07-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261666	2016-10-11	2018-02-23	92161207	MARTINEZ JACINTO MAYTE GUADALUPE	1	5	84	1977-01-21	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261667	2016-10-11	2016-10-11	310183417	OSORNIO GOMEZ KEYLE KARLA	1	1	80	1994-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261668	2016-10-11	2016-10-11	310047681	ALVAREZ CID ERICK IVAN	1	1	85	1993-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261669	2016-10-13	2016-10-13	414066221	AGUILA ROLDAN MALENI	1	1	83	1992-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261670	2016-10-13	2016-10-13	717003684	NAVA FLORES ELBA CRISTINA	1	1	89	1993-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261671	2016-10-13	2016-10-13	98011007	CHAVEZ ROMO JOSE DAVID	1	1	90	1982-03-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261672	2016-10-13	2016-10-13	717003581	ALMORA HERNANDEZ MAYRA GUADALUPE	1	1	89	1994-11-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261673	2016-10-17	2017-04-20	516016328	ROMAN PEREZ PABLO	1	4	99	1988-01-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261674	2016-10-17	2017-08-09	FOQR910709	FLORES QUIRINO RAFAEL	2	1	90	1991-07-09	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261675	2016-10-17	2016-10-17	306177224	PACHECO MARTINEZ ANA LAURA	1	5	90	1989-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261676	2016-10-18	2016-10-18	314019176	LEMUS AYALA MELANIE PAMELA	1	1	84	1997-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261677	2016-10-18	2016-10-18	412030310	VAZQUEZ HALL ANNE SOFIA	1	3	84	1993-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261678	2016-10-18	2016-10-18	311098480	NAVARRETE SARMIENTO ELENA	1	4	90	1995-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261679	2016-10-18	2016-10-18	309226833	VAZQUEZ RAMOS JESUS	1	1	79	1993-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261680	2016-10-19	2016-10-19	LOIG830104	LOPEZ LOPEZ GRISSEL BERENICE	2	2	88	1983-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261681	2016-10-20	2016-10-20	409110638	ROMERO BASILIO RICARDO	1	4	82	1990-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261682	2016-10-21	2017-10-05	417037819	SANCHEZ GONZALEZ EVER	1	4	84	1986-04-24	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261683	2016-10-21	2016-10-21	314250131	CONTRERAS RIVERA BRUNO	1	4	85	1998-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261684	2016-10-21	2016-10-21	GANS810514	GALLEGOS NAVA SELMA	2	1	86	1981-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261685	2016-10-21	2016-10-21	314345587	SALAZAR CRUZ BRUNO	1	4	84	1998-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261686	2016-10-21	2016-10-21	310285810	HUEZCA CARBAJAL CARLA	1	1	79	1994-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261687	2016-10-26	2016-10-26	HEGE650905	HERNANDEZ GODINEZ EMMA YOLANDA	2	7	7	1965-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261688	2016-11-04	2016-11-04	413051725	MORALES LOPEZ KAREN ADILENE	1	1	80	1991-09-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261689	2016-11-04	2016-11-04	107003830	RODRIGUEZ PEREZ IRIS GABRIELA	1	4	84	1994-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261690	2016-11-04	2016-11-04	SENR880112	SEGOVIA NOVA ROSENDO ALBERTO	2	4	73	1988-01-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261691	2016-11-04	2016-11-04	517492356	FLAGEL JORGE EDUARDO	1	4	84	1987-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261692	2016-11-07	2016-11-07	TOTV570804	TORRES TARIN VICTOR MARIO	2	2	62	1957-08-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261693	2016-11-07	2016-11-07	310243254	LABORIE ALVAREZ MARITA	1	4	80	1993-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261694	2016-11-07	2016-11-07	313287301	RIVAS SERRANO DANIEL	1	4	85	1997-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261695	2016-11-07	2017-09-11	BACA760429	BATTE CAIRO ADRIAN	1	5	7	1976-04-29	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261696	2016-11-07	2016-11-07	313300556	ESTEVEZ CASTRO ESAUL NOE	1	1	85	1996-10-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261697	2016-11-09	2016-11-09	41000927	SERVIN DIAZ ARAM	1	6	81	1989-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261698	2016-11-09	2016-11-09	308197817	JAIMES GOMEZ BLANCA ITAYETZI	1	1	79	1992-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261699	2016-11-11	2016-11-11	308508671	DOKIN GRANADOS MINERVA ITZEL	1	2	80	1991-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261700	2016-11-11	2016-11-11	312581675	JIMENEZ ORTIZ DIANA ALEJANDRA EUGENIA	1	3	82	1996-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261701	2016-11-11	2016-11-11	312346296	REZA HERNANDEZ JESUS ZURISADAI	1	6	84	1985-04-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261702	2016-11-11	2016-11-11	515013331	CARRASQUEDO PEÑALOZA CARLOS ARTURO	1	6	90	1989-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261703	2016-11-11	2017-09-06	313095045	HERNANDEZ VALLE ARACELI	1	1	85	1997-10-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261704	2016-11-14	2016-11-14	313151279	ARMENTA DE LOS REYES LILLY ROXANA	1	4	79	1997-08-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261705	2016-11-14	2018-02-26	3122932262	GUZMAN MARIN YARED	1	1	85	1996-07-28	F	f	2	apellido p	apellido m	nombres	0	none	none	0
261706	2016-11-14	2016-11-14	VAA880105	VAZQUEZ AYALA ADRIAN	1	7	83	1988-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261707	2016-11-16	2016-11-16	311329607	REYES TRINIDAD DANIELA	1	1	86	1995-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261708	2016-11-16	2017-08-30	310022910	FIGUEROA MATA MARIO IVAN	1	1	90	1994-05-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
261709	2016-11-18	2016-11-18	413027955	PIÑA MENDOZA MANUEL	1	1	89	1986-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261710	2016-11-18	2016-11-18	310152136	PUENTE DURAN MIGUEL MARCOS	1	1	74	1994-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261711	2016-11-18	2016-11-18	310051644	GOMEZ AYALA RODRIGO	1	1	74	1994-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261712	2016-11-22	2016-11-22	4015564154	ROMO FERNANDEZ YHONATAN	1	5	7	1982-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261713	2016-11-23	2016-11-23	93505930	FRANCO ESPINOSA DE LOS MONTEROS IRA	1	4	80	1973-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261714	2016-11-23	2016-11-23	109000505	CANALES ALVAREZ ROBERTO	1	7	76	1995-10-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261715	2016-11-24	2018-08-29	306028643	JASSO MARTINEZ JOVANA MAGDALENA	1	1	79	1990-09-03	F	t	3	apellido p	apellido m	nombres	0	none	none	0
261716	2016-11-24	2016-11-24	PAHC601129	PRADO HERNANDEZ CLAUDIA AURORA	1	5	7	1960-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261717	2016-11-25	2018-08-10	416031577	SERRATO NAVARRETE SABI YOLIHUE	1	7	79	1995-12-13	F	t	2	apellido p	apellido m	nombres	0	none	none	0
261718	2016-11-29	2016-11-29	111900930	ORIZAGA INZUNZA ISABEL ANAYANSSI	1	1	7	1990-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261719	2016-11-29	2016-11-29	312168137	GONZALEZ ORELLAN NATALIA	1	2	84	1995-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261720	2016-12-02	2016-12-02	412003491	MUÑIZ ROJAS DANIELA	1	4	90	1992-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261721	2016-12-02	2016-12-02	416123661	LEYVA CONTRERAS EVA GABRIELA	1	5	84	1995-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261722	2016-12-02	2016-12-02	411154363	ILLESCAS MENDOZA DAVID	1	1	75	1992-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261723	2016-12-02	2016-12-02	MERA780414	MENDOZA RAMOS ARTURO	2	2	7	1978-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261724	2016-12-05	2016-12-05	VAAA880105	VAZQUEZ AYALA ADRIAN	2	7	83	1988-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261725	2016-12-05	2016-12-05	516010065	MIRANDA CASASOLA FREDY	1	1	85	1984-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261726	2016-12-06	2016-12-06	314279192	HERNANDEZ MORENO MAURICIO HUMBERTO	1	4	86	1997-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261727	2016-12-06	2016-12-06	311668490	TORRALVA BECERRA GONZALO	1	7	79	1994-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261728	2016-12-06	2016-12-06	307511861	MARTINELL GARCIA VICTOR	1	6	79	1991-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261729	2016-12-06	2016-12-06	515021017	RAMIREZ GARCIA GABRIEL	1	1	86	1989-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
261730	2016-12-06	2016-12-06	313230273	GARCIA MORA LORNA HEATHER	1	4	86	1997-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
261731	2016-12-09	2016-12-09	314284114	ROMERO ROJAS FERNANDO	1	4	90	1998-05-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270674	2017-01-16	2017-01-16	307234874	FRAGOSO ROMAN JESSICA	1	4	90	1991-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270675	2017-01-30	2017-01-30	312232243	BRUCE ROSETE CITLALI	1	7	85	1996-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270676	2017-01-30	2017-01-30	512010582	MENDOZA HUERTA YASBIL YANIL BERENICE	1	3	75	1981-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270677	2017-01-30	2017-01-30	311259812	GARCIA LANDA MARIANA	1	2	84	1995-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270678	2017-01-30	2017-01-30	305321039	HERNANDEZ ESPINOSA LORENA CARMINA	1	1	90	1989-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270679	2017-01-30	2017-01-30	312087036	RAUDRY RICO CECILIA	1	3	80	1996-04-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270680	2017-01-30	2017-08-07	415024383	BALDERRABANO GARCIA MANUEL ALEJANDRO	1	1	85	1995-11-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270681	2017-01-30	2017-01-30	CAAE500111	CAMARENA ADAME MARIA ELENA	2	1	81	1950-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270682	2017-01-30	2017-01-30	111001543	ENRIQUEZ HERREJON TULIO ARIEL	1	4	84	1998-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270683	2017-01-30	2017-01-30	309176398	LEON ROJAS HECTOR EMANUEL	1	1	83	1993-10-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270684	2017-01-30	2017-01-30	304002548	AGUIRRE GODINEZ ERICK	1	4	80	1988-07-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270685	2017-01-30	2017-01-30	MAOJ851022	MANCILLA ORTIZ JOSE JONATHAN	1	6	7	1985-10-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270686	2017-01-31	2017-01-31	416070895	BARRERA CAUICH MIGUEL ANGEL	1	7	84	1995-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270687	2017-01-31	2017-01-31	417119539	BROWN HERNANDEZ MIROSLAWA	1	2	81	1992-09-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270688	2017-01-31	2017-01-31	312021926	VELAZQUEZ LOPEZ ZYANYA IZCALTIK	1	1	79	1995-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270689	2017-01-31	2017-01-31	308206102	JIMENEZ IGLESIAS MARIO ALBERTO	1	1	80	1991-04-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270690	2017-01-31	2017-01-31	312130211	SANCHEZ MANCERA RICARDO AGUSTIN	1	2	90	1996-04-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270691	2017-01-31	2017-01-31	309135265	GALINDO SANTILLAN CECILIA ISABEL	1	1	84	1995-07-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270692	2017-01-31	2017-01-31	311203774	SOTELO RAMIREZ JOSE ANTONIO	1	1	85	1995-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270693	2017-01-31	2017-01-31	306245589	SANCHEZ FLORES CINTHYA BERENICE	1	2	84	1990-05-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270694	2017-01-31	2017-01-31	105002569	HERNANDEZ ARELLANES JOSE GUILLERMO	1	1	85	1992-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270695	2017-01-31	2017-01-31	310038764	DE ANDA CLEMENTE YESSICA ARIADNE	1	1	85	1994-06-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270696	2017-01-31	2017-01-31	309339236	VAZQUEZ SANTIAGO JACOBO	1	1	90	1993-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270697	2017-01-31	2017-01-31	79111890	PEREZ CALDERON MARIA DEL RAYO	1	1	80	1959-11-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270698	2017-01-31	2017-01-31	406013877	PRUDENCIO VAZQUEZ JAIME ALBERTO	1	1	150	1987-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270699	2017-01-31	2017-01-31	309189433	GRANADOS SOTO ANA PATRICIA	1	1	84	1993-06-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270700	2017-01-31	2017-01-31	308178870	JIMENEZ PEREZ ERIKA DANIELA	1	2	84	1992-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270701	2017-02-01	2018-08-23	312106788	MARTINEZ VIDAL JOCELINE YADIRA	1	1	85	1996-10-14	F	t	3	apellido p	apellido m	nombres	0	none	none	0
270702	2017-02-01	2018-08-23	312217479	CASTILLO HERRERA GABRIELA	1	5	85	1996-09-26	F	t	4	apellido p	apellido m	nombres	0	none	none	0
270703	2017-02-01	2017-02-01	311188484	HUERTA FLORES ILSE MAGALI	1	2	84	1994-06-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270704	2017-02-01	2017-02-01	30861318	GONZALEZ VERDEJO ELISA	1	1	79	1992-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270705	2017-02-01	2017-02-01	308085318	CORTES MARTINEZ ESTHELLA	1	2	86	1991-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270706	2017-02-01	2017-02-01	312295967	FLORES GONZALEZ JOCELYN ALEXIA	1	5	80	1996-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270707	2017-02-01	2017-02-01	411012023	RIVERA LOPEZ MIRIAM	1	3	84	1989-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270708	2017-02-01	2017-08-16	415079008	DOMINGUEZ ANTONIO EDGAR IVAN	1	1	90	1990-09-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270709	2017-02-01	2017-02-01	312344876	REYNA TORRES GRECIA HAZEL	1	1	85	1996-03-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270710	2017-02-01	2017-02-01	312123518	TAPIA MARTINEZ YENI NEMINALI	1	2	90	1996-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270711	2017-02-01	2018-02-12	312188999	SIERRA MURILLO BRYAN DAVID-DUPLICADO	1	1	85	1996-03-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270712	2017-02-01	2017-02-01	3101000041	CAMPOS ENRIQUEZ SANTIAGO DE JESUS	1	1	85	1993-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270713	2017-02-01	2017-02-01	101000783	PINEDA VAZQUEZ DIANA	1	4	79	1990-01-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270714	2017-02-01	2017-02-01	312129912	RAMIREZ CISNEROS EDGAR EVERARDO	1	1	85	1996-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270715	2017-02-02	2017-02-02	311267880	RIOS TREJO SANDRA PATRICIA	1	1	80	1995-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270716	2017-02-02	2017-02-02	416045152	PORTILLO GARCIA MARCO ANTONIO	1	3	84	1992-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270717	2017-02-02	2017-02-02	415098052	LEYVA ALTAMIRANO KEVIN	1	1	85	1996-08-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270718	2017-02-02	2017-02-02	311025835	SANTAMARIA GARCIA CONCEPCION	1	4	78	1995-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270719	2017-02-02	2017-02-02	416090736	SILVA ROY DAVID	1	1	79	1997-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270720	2017-02-02	2017-02-02	310043889	AVILA PEREZ DIANA ALEJANDRA	1	6	82	1994-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270721	2017-02-02	2017-02-02	413078249	LOPEZ HERNANDEZ MARIANA	1	3	84	1994-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270722	2017-02-02	2017-02-02	306123465	CHAVEZ SANCHEZ CARLOS DANIEL	1	3	86	1990-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270723	2017-02-02	2017-12-01	314086279	CASTRO ALQUICIRA MARCO ANTONIO	1	1	82	1997-03-05	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270724	2017-02-02	2017-02-02	MIMG880813	MIRANDA MARTINEZ GUILLERMO	2	3	84	1988-08-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270725	2017-02-02	2017-08-10	507450126	PEDRAJAS Y HERNANDEZ PALOMA MARIA	1	3	85	1965-09-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270726	2017-02-02	2017-02-02	413036470	LOPEZ VELOZ FERNANDA NAYELI	1	2	80	1994-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270727	2017-02-02	2018-03-08	311132281	MONTES ANGELES VICTOR DANIEL	1	7	85	1995-10-27	M	t	3	apellido p	apellido m	nombres	0	none	none	0
270728	2017-02-02	2017-02-02	309001728	CORREA BECERRIL PAMELA JOSEFINA	1	2	79	1992-12-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270729	2017-02-02	2017-02-02	314318273	LOPEZ LOPEZ ULYSSES	1	4	85	1998-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270730	2017-02-02	2018-02-06	312225526	BENITEZ BARROSO BRANDON RAUL	1	5	85	1996-11-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270731	2017-02-02	2017-02-02	312135742	SANCHEZ BISTRAIN JAVIER	1	4	85	1995-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270732	2017-02-02	2017-02-02	311263143	JIMENEZ GOMEZ ANDREA	1	1	82	1995-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270733	2017-02-02	2017-08-14	312356244	CHOMPA HERNANDEZ DAVID	1	1	81	1996-03-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270734	2017-02-02	2017-09-01	517022711	LUGO BASILIO FERNANDO	1	1	82	1983-03-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270735	2017-02-02	2017-02-02	311216314	FUENTES MANZANERO HECTOR	1	1	84	1995-04-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270736	2017-02-03	2017-02-03	417036410	OLIVARES TELLO RENE	1	1	85	1998-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270737	2017-02-03	2017-02-03	312155267	LUEVANO HERNANDEZ JOSE MARIA	1	2	84	1996-06-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270738	2017-02-03	2017-08-14	310107662	ISLAS ARCIGA JUAN CARLOS	1	1	90	1994-05-31	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270739	2017-02-03	2017-02-03	517008982	RAMIREZ ARIAS GUSTAVO	1	1	85	1991-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270740	2017-02-03	2017-02-03	414112108	AGUILAR CASTRO CORAL NATALIA	1	6	84	1981-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270741	2017-02-03	2017-02-03	311144635	JASSO ROSALES DAFNE	1	7	79	1995-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270742	2017-02-03	2017-02-03	309220738	MARTINEZ GALICIA TANIA BRENDA	1	5	83	1993-06-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270743	2017-02-03	2017-02-03	416036596	GARCIA RIOS PERLA HAIDEE	1	1	90	1996-07-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270744	2017-02-03	2017-08-11	503006996	ALARCON FERREIRA ANA MARIA	1	1	99	1970-11-10	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270745	2017-02-03	2017-02-03	413008516	VAZQUEZ BERMEJO VICTOR ARMANDO	1	4	90	1993-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270746	2017-02-03	2017-02-03	ROSD930603	ROMERO SANCHEZ DIANA IXCHEL	2	1	90	1993-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270747	2017-02-03	2017-02-03	313057669	GUTIERREZ TAPIA AMARILLIS	1	6	84	1997-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270748	2017-02-03	2017-02-03	312177377	OLIVARES GARCIA EDUARDO JAEL	1	3	80	1996-02-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270749	2017-02-03	2017-02-03	311060564	GRANADOS SOTO TZITZI CURATI	1	1	84	1995-06-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270750	2017-02-03	2017-09-04	311097146	MARTINEZ CRUZ ELIZABETH	1	1	90	1995-06-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270751	2017-02-03	2017-02-03	314018997	JACOBO HERNANDEZ EVA	1	1	79	1996-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270752	2017-02-03	2017-02-03	309256399	MONROY GOMEZ JOSE DEL REFUGIO	1	1	90	1991-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270753	2017-02-03	2017-02-03	309218298	HUERTA ZERON HILARIO DIEGO	1	7	90	1993-11-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270754	2017-02-08	2017-02-08	105005694	HERNANDEZ MENDEZ REY IVAN	1	1	83	1991-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270755	2017-02-08	2017-02-08	311016231	VALENCIA HERNANDEZ JESSICA BERENICE	1	1	86	1995-06-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270756	2017-02-08	2017-02-08	311002560	CARRILLO RODRIGUEZ ADRIAN	1	1	86	1994-10-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270757	2017-02-08	2017-02-08	313237076	ACO GUERRERO IVAN ROGELIO	1	1	85	1998-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270758	2017-02-08	2018-08-06	313182598	GARCIA GUIZA LIZBETH	1	1	85	1997-04-09	F	t	3	apellido p	apellido m	nombres	0	none	none	0
270759	2017-02-08	2017-02-08	313293894	VALVERDE MARTINEZ ALBERTO	1	4	81	1997-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270760	2017-02-08	2018-02-28	417028349	ROMERO ALDUCIN BEATRIZ ANDREA	1	1	89	1993-12-02	F	f	3	apellido p	apellido m	nombres	0	none	none	0
270761	2017-02-08	2017-02-08	416114830	CARRASQUEDO HERNANDEZ  ILIANA	1	2	84	1997-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270762	2017-02-08	2017-02-08	314651837	JUAREZ LOPEZ LUIS MIGUEL	1	1	82	1998-04-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270763	2017-02-08	2017-08-11	312056339	MENDOZA NEGRETE KATIA EDITH	1	1	79	1996-06-06	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270764	2017-02-08	2018-08-08	306102046	ARGUELLO OCAMPO MARICRUZ ESTEFANIA	1	7	88	1990-08-25	F	t	2	apellido p	apellido m	nombres	0	none	none	0
270765	2017-02-08	2017-02-08	307052195	DIAZ BARRON EMILIO	1	1	78	1991-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270766	2017-02-08	2017-02-08	308184813	CAMARGO MORALES EDITH	1	1	85	1992-08-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270767	2017-02-08	2017-02-08	311275102	CHAVEZ MOLINA JOSE ALBERTO	1	7	85	1994-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270768	2017-02-08	2017-02-08	RECJ670803	REYES CERVANTES JUAN ADRIAN	1	5	98	1967-08-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270769	2017-02-08	2017-02-08	308305494	CORDERO PINEDA CYNTHIA TAMARIS	1	5	82	1991-09-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270770	2017-02-08	2017-09-27	314198149	DURAN RAMIREZ JULIO ALFONSO	1	7	82	1998-07-07	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270771	2017-02-08	2018-08-06	314098142	RODRIGUEZ CASTELAN KAREN MARLENE	1	4	90	1997-10-16	F	t	3	apellido p	apellido m	nombres	0	none	none	0
270772	2017-02-08	2017-08-23	312095585	CRISTOBAL HERNANDEZ MARIA GUADALUPE	1	1	87	1996-02-27	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270773	2017-02-08	2017-02-08	411005973	OBREGON LOPEZ CRISTHIAN	1	1	85	1992-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270774	2017-02-08	2017-02-08	313187627	LUNA ROJAS SAMIR NOE	1	2	82	1997-09-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270775	2017-02-08	2018-08-08	313191013	MORENO GARDUÑO JONATHAN YANN	1	7	84	1995-08-15	M	t	2	apellido p	apellido m	nombres	0	none	none	0
270776	2017-02-08	2017-02-08	416104686	SALAS RAMIREZ ESTEFANIA	1	4	84	1996-12-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270777	2017-02-08	2017-02-08	313006296	GONZALEZ ROJAS PABLO	1	4	84	1997-02-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270778	2017-02-08	2017-02-08	309200835	QUINTANA DE LA VEGA MARIO ANTONIO	1	5	83	1992-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270779	2017-02-08	2017-02-08	312254793	MARTINEZ OCAMPO SHERLIN CASANDRA	1	3	82	1995-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270780	2017-02-08	2017-02-08	310081681	GARCIA RANGEL EDMUNDO	1	5	78	1993-09-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270781	2017-02-08	2017-02-08	313304561	MARTINEZ FIGUEROA ERICK JAVIER	1	1	83	1997-03-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270782	2017-02-08	2017-02-08	31023608	LADRON DE GUEVARA LOPEZ EDUARDO	1	7	85	1994-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270783	2017-02-08	2017-02-08	313253373	LOPEZ HUANTE TANIA	1	1	90	1997-12-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270784	2017-02-08	2017-02-08	312259121	PEREZ FERNANDEZ BERNARDO SAMUEL	1	1	85	1995-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270785	2017-02-09	2017-02-09	308016211	AYALA GONZALEZ JUAN DE DIOS	1	1	83	1992-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270786	2017-02-09	2017-02-09	311024041	ROCHA CORONA KAVIK RAFAEL	1	4	82	1994-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270787	2017-02-09	2017-02-09	313298019	MARTINEZ BARBECHO ANA KAREN	1	1	82	1997-08-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270788	2017-02-09	2017-02-09	313036020	DOMINGUEZ SANCHEZ ERCILIA	1	6	82	1997-08-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270789	2017-02-09	2017-08-14	94244779	REYES CALIXTO ELSA	1	1	85	1978-07-16	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270790	2017-02-09	2017-02-09	314129396	CORRALES LOPEZ GENARO ISMAEL	1	1	90	1998-04-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270791	2017-02-09	2017-02-09	319642044	LOPEZ GARCIA VICTOR ALBERTO	1	4	90	1997-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270792	2017-02-09	2017-02-09	311169409	ALVAREZ ANGUIANO MIRIAM	1	1	85	1995-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270793	2017-02-09	2017-02-09	313129544	GOMEZ REYES FRANCISCO JAVIER	1	1	79	1997-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270794	2017-02-09	2017-02-09	311307872	PIÑA MORALES SERGIO ALAN	1	1	83	1995-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270795	2017-02-09	2017-02-09	109000275	CORTES TORRES SERGIO ANDRES	1	4	85	1996-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270796	2017-02-09	2018-02-26	MESB491025	MENDOZA SUVERZA BERTHA MA. DEL CARMEN	3	3	87	1949-10-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270797	2017-02-09	2017-08-16	313030530	PATIÑO RODRIGUEZ ALEJANDRO	1	1	78	1997-01-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270798	2017-02-09	2017-02-09	313175895	SALAZAR PEREZ EDUARDO	1	4	85	1997-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270799	2017-02-09	2017-02-09	412111253	SANCHEZ MORA CARLOS	1	1	81	1988-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270800	2017-02-09	2017-02-09	311204207	VERGARA SOSA BRENDA BERENICE	1	3	82	1995-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270801	2017-02-10	2017-02-10	311068553	ARENAS RAMIREZ DANIA RAQUEL	1	5	80	1995-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270802	2017-02-10	2017-02-10	311279667	MORALES GARCIA LUIS DANIEL	1	2	90	1995-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270803	2017-02-10	2017-02-10	307071541	BAHENA AGUILAR GILBERTO	1	1	90	1991-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270804	2017-02-10	2017-02-10	311211175	HERNANDEZ RIVERA ARIANA IVON	1	1	84	1995-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270805	2017-02-10	2017-02-10	306275791	TREJO ALVAREZ ORIANA	1	3	93	1989-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270806	2017-02-10	2017-02-10	51601355	LOPEZ GUEL EMIGDIO CURATAME	1	5	95	1984-03-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270807	2017-02-10	2017-02-10	312289474	NAVA ARSOLA DIEGO ALBERTO	1	7	85	1996-11-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270808	2017-02-10	2017-02-10	304067716	GARCIA JIMENEZ HECTOR DANIEL	1	1	78	1988-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270809	2017-02-10	2017-02-10	517024911	FABELA SOTELO EURIPIDES	1	1	78	1991-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270810	2017-02-10	2017-02-10	517494271	ALCIVAR MORALES VICTOR ENRIQUE	1	1	78	1986-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270811	2017-02-10	2017-02-10	303231778	SUAREZ CHORA DAVID RICARDO	1	1	78	1987-08-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270812	2017-02-10	2017-10-04	517026300	ALVIZO MORENO LUIS HUGO	1	1	78	1993-06-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270813	2017-02-10	2017-02-10	417017844	SANCHEZ GIL BYRON ALEXIS	1	1	78	1998-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270814	2017-02-10	2017-02-10	312063087	MURILLO VEGA DAVID EDUARDO	1	1	84	1996-06-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270815	2017-02-10	2017-02-10	517015094	REYES RODRIGUEZ EDUARDO	1	1	78	1990-05-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270816	2017-02-10	2017-02-10	416104404	ARIAS NAVARRETE PALOMA ARGENTINA	1	1	83	1990-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270817	2017-02-10	2017-02-10	312108270	PEREZ ROMO PATRICIA ALEJANDRA	1	4	90	1996-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270818	2017-02-10	2017-02-10	313184317	TODD CHAGOYA CLAUDIO ARTURO	1	2	83	1996-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270819	2017-02-10	2017-02-10	311268739	SUAREZ GOMEZ LUIS ALBERTO	1	1	90	1995-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270820	2017-02-10	2017-02-10	311022205	MARTINEZ SOLANO ANGEL ERNESTO	1	1	90	1995-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270821	2017-02-13	2017-02-13	311107555	LOPEZ LOPEZ SAMUEL	1	4	90	1995-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270822	2017-02-13	2017-02-13	303576219	RIVERA JORDAN MAYRA KEREN	1	2	82	1987-09-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270823	2017-02-13	2017-02-13	312037749	IBARRA AGUILAR DIANA GUADALUPE	1	1	89	1995-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270824	2017-02-13	2017-02-13	312325286	ESQUIVEL DIAZ JOVANNI NICOLAS	1	1	90	1996-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270825	2017-02-13	2017-10-09	415123376	HUITZIL TELLO GERARDO	1	1	90	1995-10-28	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270826	2017-02-13	2017-02-13	414010475	OJEDA ESTRADA RODRIGO	1	5	78	1991-11-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270827	2017-02-13	2017-02-13	414072408	DOMINGUEZ GRAJALES MARTIN DE JESUS	1	2	85	1995-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270828	2017-02-13	2017-02-13	417078698	REGALADO REYES DALIA CAROLINA	1	1	80	1992-01-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270829	2017-02-13	2017-02-13	414032695	RUIZ Y LIMON GIOVANNA PAOLA	1	2	78	1994-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270830	2017-02-13	2017-02-13	310117115	RINCONCILLO PEREZ DANIEL	1	1	78	1994-11-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270831	2017-02-13	2017-02-13	314034445	JUAREZ TORRES MARIANA PAMELA	1	7	85	1997-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270832	2017-02-14	2017-02-14	305210001	REYO LOPEZ ALONSO ADRIAN	1	1	85	1989-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270833	2017-02-14	2017-02-14	402076159	GONZALEZ GUZMAN JUAN FIDEL	1	1	82	1982-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270834	2017-02-14	2017-02-14	312027564	SANCHEZ CASTILLO MARIBEL	1	1	85	1995-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270835	2017-02-14	2017-02-14	306256266	COLIN CASTRO ASTRID	1	4	84	1988-07-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270836	2017-02-15	2017-02-15	308174652	CHAVEZ RUIZ JUAN CARLOS	1	5	84	1992-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270837	2017-02-15	2017-10-20	416490741	BAIK RAFAEL	1	6	81	1987-08-06	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270838	2017-02-15	2017-02-15	416147823	NARVAEZ NIETO MARX ANTONIO	1	1	80	1983-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270839	2017-02-15	2017-02-15	312322883	MATAMOROS ROMERO DANIELA	1	4	78	1995-12-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270840	2017-02-15	2017-02-15	GRAT880820	GRANDE AMORIM THIAGO	1	2	7	1988-08-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270841	2017-02-15	2017-02-15	417118783	VELA LUNA JOSE SANTOS	1	4	81	1993-11-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270842	2017-02-15	2017-02-15	414034802	AMADOR SANCHEZ DANIEL	1	4	81	1994-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270843	2017-02-15	2017-02-15	312063070	MURILLO LUNA JUAN JOSE	1	7	84	1995-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270844	2017-02-15	2018-04-03	DIRC420925	DIAZ WALLS ROBLEDO CAROLINA M.	2	2	89	1942-09-25	F	t	2	apellido p	apellido m	nombres	0	none	none	0
270845	2017-02-15	2017-02-15	309212210	GONZALEZ RUBIO MENDOZA ANDREA	1	5	73	1993-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270846	2017-02-15	2017-02-15	313326956	GARCES BRIONES RODOLFO	1	2	82	1996-10-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270847	2017-02-15	2017-02-15	314282914	PEREZ RUIZ RUBEN ALBERTO	1	1	82	1998-05-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270848	2017-02-15	2017-02-15	MOVM621005	MONZON VELASCO MINERVA SIRAI	3	3	86	1962-10-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270849	2017-02-15	2017-02-15	311037045	LOPEZ JIMENEZ ANA LUCIA	1	2	90	1995-02-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270850	2017-02-15	2017-02-15	311700606	AMEZQUITA BOBADILLA LUIS DANIEL	1	4	83	1995-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270851	2017-02-15	2017-02-15	VAGK900621	VARGAS GODOY KARLA ROCIO	2	1	79	1990-06-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270852	2017-02-15	2017-02-15	309056151	GUZMAN HUERTA ALITZEL	1	1	5	1992-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270853	2017-02-15	2017-02-15	415003050	GUERRERO SILVESTRE MARCO ELIAS	1	5	81	1994-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270854	2017-02-15	2017-02-15	313282100	REYES ESPINOZA JOVANNA ASTRID	1	2	84	1996-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270855	2017-02-15	2017-02-15	312301512	PAULIN MERIDA JOSE ALBERTO	1	1	90	1995-10-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270856	2017-02-15	2018-02-28	312125464	ARMAS SANTILLAN MARCO ANTONIO	1	1	85	1996-09-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270857	2017-02-15	2017-02-15	312175885	MARMOLEJO FERNANDEZ BARBARA	1	1	85	1996-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270858	2017-02-15	2017-09-11	313649363	GUTIERREZ MENDOZA ANDREA ESTELA	1	5	84	1996-09-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270859	2017-02-15	2017-09-14	312213567	ERLAM LOZANO VALERIA	1	2	84	1996-11-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270860	2017-02-15	2017-02-15	310200969	MARIN LOPEZ ARIZAI	1	3	82	1994-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270861	2017-02-15	2017-08-23	311219236	LOPEZ ORTIZ FERNANDO	1	1	85	1994-12-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270862	2017-02-16	2017-02-16	414134452	IBARRA ALLENDE ABRAHAM	1	3	84	1991-10-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270863	2017-02-16	2017-02-16	414073821	GONZALEZ GARRIDO ANA LILIA	1	2	84	1992-09-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270864	2017-02-16	2018-03-05	110006693	MARTINEZ COVARRUBIAS DIEGO ARMANDO	1	4	85	1997-07-28	M	t	3	apellido p	apellido m	nombres	0	none	none	0
270865	2017-02-16	2017-02-16	414053117	NAVA CORTES HUMBERTO	1	1	82	1951-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270866	2017-02-16	2017-02-16	415091785	ANSELMO TORRES JESUS IVAN	1	1	82	1994-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270867	2017-02-16	2017-08-21	41500259	CRUZ VENEGAS NOEL ALBERTO	1	1	79	1993-11-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270868	2017-02-16	2017-02-16	94300927	HERRERA LOPEZ REYNA	1	2	84	1978-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270869	2017-02-16	2018-02-02	415079060	BAUTISTA CUATRA YAZMIN VANESA	1	2	76	1995-03-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270870	2017-02-16	2017-02-16	414035421	GUARNEROS ROJAS VERONICA JOCELYN	1	4	84	1994-11-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270871	2017-02-16	2017-02-16	310185569	GALLO GUTIERREZ ALEJANDRA	1	1	87	1994-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270872	2017-02-16	2017-02-16	314120276	DEL VALLE CORONA RICARDO	1	4	83	1997-08-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270873	2017-02-16	2017-02-16	308260823	GARCIA GOMEZ JOSE MARCOS	1	4	79	1992-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270874	2017-02-17	2017-02-17	311241260	NORIEGA HERNANDEZ IVAN	1	1	85	1995-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270875	2017-02-17	2017-02-17	313533859	VALVERDE MARTINEZ EMILIA	1	4	85	1996-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270876	2017-02-17	2017-02-17	311293214	SANTIAGO RAMIREZ RODRIGO	1	2	85	1995-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270877	2017-02-17	2018-04-24	313321676	HERNANDEZ REYES LUIS ENRIQUE	1	4	90	1997-01-09	M	t	2	apellido p	apellido m	nombres	0	none	none	0
270878	2017-02-17	2018-03-22	516010364	SOLIS TORRES DAVID HAZAEL	1	7	85	1987-09-17	M	t	2	apellido p	apellido m	nombres	0	none	none	0
270879	2017-02-17	2017-02-17	75220901	LOZADA FLORES ELIZABETH	1	3	82	1960-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270880	2017-02-17	2017-02-17	416068939	GOMEZ RODRIGUEZ LIZZETH	1	2	83	1996-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270881	2017-02-17	2017-02-17	412057827	CRUZ ESPINDOLA SEBASTIAN	1	7	85	1992-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270882	2017-02-17	2017-02-17	311153442	DORANTES MOLINA LAURA JIMENA	1	5	89	1995-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270883	2017-02-17	2017-02-17	310235451	GALLARDO MARIN ALEJANDRO	1	1	85	1994-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270884	2017-02-17	2017-08-28	309171506	NUÑEZ PLIEGO KAREN ZULAYMA	1	4	90	1993-04-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270885	2017-02-17	2017-02-17	311260678	GUTIERREZ RIVAS MARIA FERNANDA	1	1	86	1994-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270886	2017-02-17	2017-02-17	307169558	MENDOZA MENDOZA CINTIA	1	1	81	1991-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270887	2017-02-17	2017-02-17	305292528	MOGUEL VILLA MANUEL OMAR	1	2	87	1989-06-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270888	2017-02-20	2017-02-20	414067125	MARTINEZ GARCIA VICTOR MANUEL	1	1	85	1994-10-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270889	2017-02-20	2017-02-20	313569726	RIOS YUNES SEBASTIAN	1	4	90	1996-08-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270890	2017-02-20	2017-02-20	415024204	GASTELLOU PERALTA GISELLE AZUCENA	1	2	79	1995-11-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270891	2017-02-20	2017-02-20	310087377	AVILA SANTILLAN SERGIO EDUARDO	1	7	85	1994-03-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270892	2017-02-20	2017-02-20	304144833	VILLANUEVA PLIEGO JOSE DANIEL	1	2	89	1987-11-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270893	2017-02-20	2017-02-20	311280155	SALAZAR ORTIZ ANDREA	1	1	78	1995-09-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270894	2017-02-20	2017-02-20	31022498	SALAZAR MALDONADO DALIA ISABEL	1	4	85	1995-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270895	2017-02-21	2017-02-21	312348434	RAMIREZ FAJARDO JULIO CESAR	1	5	83	1995-11-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270896	2017-02-21	2017-02-21	311195716	CONTRERAS VILLASEÑOR NATALIA EDURNE	1	5	78	1995-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270897	2017-02-21	2017-02-21	415022262	ALVAREZ RENDON JANETTH ANTONIETA	1	2	83	1996-06-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270898	2017-02-21	2017-02-21	AAIP740123	ANAYA IMAZ PRISCILA	2	1	22	1974-01-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270899	2017-02-21	2018-08-07	303167473	CUICAHUA GOMEZ JUAN CARLOS	1	5	80	1987-04-21	M	t	3	apellido p	apellido m	nombres	0	none	none	0
270900	2017-02-21	2018-02-12	314279501	JACQUES MARIN  WANDA	1	4	89	1998-08-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270901	2017-02-21	2017-02-21	306320781	SANCHEZ FUENTES ASAI	1	1	97	1989-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270902	2017-02-21	2017-02-21	311221831	VALDEZ RODRIGUEZ ALEJANDRA	1	2	90	1995-04-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270903	2017-02-21	2017-02-21	311275652	ESPINOSA GARCIA LLUVIA ANGELICA	1	1	90	1995-11-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270904	2017-02-21	2017-02-21	313177789	ZARATE JIMENEZ ERNESTO	1	5	79	1997-01-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270905	2017-02-21	2017-02-21	412063542	MENDEZ ENRIQUEZ JESUS	1	1	89	1990-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270906	2017-02-21	2017-02-21	310300492	RODRIGUEZ HERNANDEZ MARIEL	1	1	90	1994-06-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270907	2017-02-21	2017-02-21	301146900	ALBARRAN BELLO ANA EUNICE	1	1	82	1990-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270908	2017-02-21	2017-02-21	312175177	LOPEZ REYNA AMPARO	1	1	84	1995-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270909	2017-02-21	2017-02-21	308613717	POZOS ROCHA ILSE MARIELA	1	4	84	1992-07-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270910	2017-02-22	2017-02-22	314226079	CASTILLO SANCHEZ AXEL	1	1	85	1998-07-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270911	2017-02-22	2017-02-22	310172462	LUIS VARGAS MAIRA NAYELI	1	5	79	1994-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270912	2017-02-22	2017-02-22	MAFB800818	MARTINEZ FIGUEROA BEATRIZ	3	1	88	1980-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270913	2017-02-22	2017-02-22	309267351	SALINAS GALLEGOS KARLA XIMENA	1	3	84	1993-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270914	2017-02-22	2017-02-22	313170618	HERNANDEZ GARCIA LUIS ANGEL	1	1	85	1997-03-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270915	2017-02-22	2017-02-22	311258341	FLORES ARREDONDO MARIANA	1	5	80	1994-10-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270916	2017-02-22	2017-02-22	312151506	YEPEZ JIMENEZ GEORGINA BERENICE	1	3	84	1996-02-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270917	2017-02-22	2017-02-22	314253558	VALENCIA MENDEZ ALEIDA TAMARA	1	1	84	1998-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270918	2017-02-22	2017-02-22	311302685	TOVAR CERVANTES EVELIN MICHELLE	1	1	78	1995-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270919	2017-02-22	2017-02-22	312108043	PEÑALOZA PONCE JOSE HECTOR	1	5	84	1996-02-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270920	2017-02-23	2018-04-10	PIDJ920531	PINEDA DIAZ JOSUE ISSAC	2	5	83	1992-05-31	M	t	2	apellido p	apellido m	nombres	0	none	none	0
270921	2017-02-23	2017-02-23	309667593	OCAMPO LICEAGA VERONICA FERNANDA	1	5	78	1992-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270922	2017-02-23	2017-02-23	310096823	ALVARADO MARTINEZ MONICA PALOMA	1	1	84	1994-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270923	2017-02-23	2017-02-23	414039890	HERRERA BELLO JOSE MANUEL	1	1	78	1995-06-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270924	2017-02-23	2017-09-11	309140933	ESCUTIA GIRON OMAR	1	5	84	1993-07-08	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270925	2017-02-23	2017-09-18	312191230	ARAUJO AGUILAR EDUARDO	1	5	80	1996-03-02	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270926	2017-02-23	2017-02-23	314046765	CHAVEZ WATANABE SILVIA ANGELICA	1	4	85	1998-11-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270927	2017-02-23	2017-02-23	417040394	GASTELLOU PERALTA BLANCA ALITZEL	1	2	89	1997-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270928	2017-02-23	2017-02-23	312149262	YAÑEZ ALVAREZ AMERICA DAYANE	1	1	89	1996-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270929	2017-02-23	2017-02-23	314012902	RUBIO GARCIA IVAN	1	1	85	1998-07-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270930	2017-02-23	2017-02-23	312676674	VARGAS SOSA MAURICIO EMILIO	1	1	89	1994-11-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270931	2017-02-23	2017-09-11	107001300	GUTIERREZ FLORES ERIC ALEJANDRO	1	1	80	1994-02-12	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270932	2017-02-24	2017-02-24	85359419	BARRERA TAPIA ROCIO DE MONSERRAT	1	2	84	1969-05-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270933	2017-02-24	2017-02-24	309571841	MEDINA OLGUIN ZAIRA KENNETH	1	1	73	1993-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270934	2017-02-24	2017-02-24	415075275	GAMBOA LUNA CINTHIA NALLELY	1	1	80	1996-06-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270935	2017-02-24	2017-02-24	312220394	MARTINEZ GONZALEZ JESUS GUADALUPE	1	4	85	1995-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270936	2017-02-24	2017-02-24	417048204	MORENO VELAZQUEZ NOE	1	4	85	1998-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270937	2017-02-24	2017-08-28	404082167	MONTALVO SANTIAGO RODRIGO	1	1	85	1984-10-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270938	2017-02-24	2017-08-28	301178491	MONTER GUZMAN JESSICA YAZMIN	1	1	85	1985-10-04	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270939	2017-02-24	2018-03-13	BELO860623	BENITEZ LOPEZ OLGA BERENICE	1	5	7	1986-06-23	F	t	2	apellido p	apellido m	nombres	0	none	none	0
270940	2017-02-24	2018-04-03	311078116	ESPINOSA MELENDEZ MARCIA	1	3	73	1990-06-25	F	t	3	apellido p	apellido m	nombres	0	none	none	0
270941	2017-02-24	2017-02-24	313107180	GALICIA NAVARRO CRISTOPHER FABIAN	1	5	80	1994-07-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270942	2017-02-24	2017-02-24	313080470	MONTECILLO SANDOVAL JOSE ALEJANDRO	1	1	85	1997-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270943	2017-02-24	2017-02-24	415092919	ESQUIVEL LAGUNES JOEL JACOBO	1	4	84	1994-09-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270944	2017-02-24	2017-02-24	311715226	BORREGO DELGADO EMILIO SEBASTIAN	1	5	85	1995-08-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270945	2017-02-24	2017-02-24	313059498	VEGA MEDRANO ANA LAURA	1	5	80	1996-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270946	2017-02-24	2017-02-24	313336722	AVELINO CALYECA ANA SHARONN	1	2	82	1997-04-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270947	2017-02-24	2017-02-24	310018892	DOMINGUEZ HERNANDEZ LETICIA	1	3	84	1993-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270948	2017-02-27	2017-02-27	RUGA820731	RUIZ Y GARCIA ALEJANDRA ISABEL	3	6	63	1982-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270949	2017-02-27	2017-02-27	CECJ610501	CERVANTES CABELLO JOSE JAVIER	2	1	85	1961-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270950	2017-02-27	2017-02-27	312055019	HERNANDEZ RESENDIZ CELIA KARINA	1	1	79	1996-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270951	2017-02-27	2017-02-27	310184397	FUENTES MONJARAZ MARIO ALBERTO	1	1	85	1993-12-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270952	2017-03-01	2017-03-01	417074535	GARCIA HERNANDEZ ESTEPHANIE	1	4	79	1998-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270953	2017-03-01	2017-03-01	408093664	SALAZAR HERNANDEZ LUIS MANUEL	1	2	84	1988-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270954	2017-03-01	2017-03-01	BALE890818	BAHENA LOPEZ EDUARDO	2	4	86	1989-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270955	2017-03-01	2017-03-01	BADM661123	BATTISTA DIMASTRODONATO MARGHENTA	2	3	7	1966-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270956	2017-03-01	2017-03-01	85063361	CABRERA SANCHEZ CLAUDIA	1	1	84	1969-07-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270957	2017-03-01	2017-03-01	SOVE660210	SOTO VARGAS ELENA DEYANIRA	2	1	150	1966-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270958	2017-03-01	2017-03-01	310103475	CRUZ ROMERO JOSE ROBERTO	1	1	85	1994-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270959	2017-03-01	2017-03-01	311243934	LUNA CELIS FELIX HECTOR	1	1	78	1993-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270960	2017-03-01	2017-03-01	413002947	MARTINEZ HERNANDEZ ALBERTO GABINO	1	1	83	1994-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270961	2017-03-01	2017-03-01	COTS901221	CORREA TORRES SERGIO	2	1	85	1990-12-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270962	2017-03-01	2017-09-05	312227719	RAMIREZ BARBOSA LEILANI YAZMIN	1	3	84	1996-10-11	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270963	2017-03-01	2018-02-28	311302592	SAAVEDRA GOMEZ RENE	1	1	80	1995-03-15	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270964	2017-03-02	2017-03-02	314592633	PEREZ ABREGO EDUARDO	1	4	82	1996-07-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270965	2017-03-02	2017-03-02	311279612	MENDEZ PLATA FERNANDO	1	1	85	1995-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270966	2017-03-02	2017-03-02	517003080	ISLAS BLANCO VICTOR ALBERTO	1	4	82	1991-05-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270967	2017-03-03	2017-03-03	309055635	DE LA PEÑA CHAVEZ LUIS ALBERTO	1	1	83	1993-10-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270968	2017-03-03	2017-03-03	GARJ560602	GARCIA ROJAS JOEL ERASMO	2	1	83	1956-06-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270969	2017-03-03	2017-03-03	305123307	AMBROSIO LARA ANA INES	1	3	82	1989-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270970	2017-03-03	2017-03-03	311341315	SANTIAGO SANCHEZ OMAR LIONE	1	1	85	1995-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270971	2017-03-06	2017-03-06	314322061	RAMIREZ TABACO JALIL RICARDO	1	1	85	1998-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270972	2017-03-06	2017-03-06	312203791	ORTIZ AGUILAR KARINA	1	1	80	1996-07-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270973	2017-03-06	2017-03-06	311292190	MEJIA RANGEL RICARDO	1	1	85	1995-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270974	2017-03-06	2017-03-06	314247986	QUINTANILLA SALINAS RAYMUNDO ADRIAN	1	1	90	1998-02-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270975	2017-03-06	2018-02-02	311012817	RAMIREZ LOPEZ JOCELYN	1	1	90	1995-09-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270976	2017-03-07	2017-03-07	310061836	ALANIS FLORES LESLI JANETH	1	2	80	1994-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270977	2017-03-07	2017-03-07	311171059	CONTRERAS PASTRANA FERNANDO	1	1	90	1995-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270978	2017-03-07	2017-03-07	310262954	TELLEZ PEREZ EDUARDO	1	1	85	1993-11-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270979	2017-03-07	2017-03-07	309143082	PEREZ ROJAS OSWALDO OMAR	1	3	85	1992-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270980	2017-03-07	2017-03-07	314069308	RODRIGUEZ HILARIO EVELYNE	1	4	84	1996-05-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270981	2017-03-07	2017-03-07	312281825	ROSADO SANCHEZ GABRIELA AIMEE	1	2	81	1996-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270982	2017-03-07	2017-03-07	312309673	MARCOS DEHILARIO JOSE EDUARDO	1	6	84	1996-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270983	2017-03-07	2017-03-07	311166776	HERNANDEZ RAMIREZ TANIA ANGELICA	1	1	84	1993-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270984	2017-03-07	2017-03-07	310019291	ESTRADA SOLLANO LIVIA VANESSA	1	5	73	1993-11-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270985	2017-03-09	2017-03-09	313313048	AGUILAR BORJAS CARMEN ABRIL	1	1	81	1997-03-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270986	2017-03-09	2017-03-09	310067601	JIMENEZ ROMERO JULIETA LIZETH	1	1	90	1994-08-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270987	2017-03-09	2017-03-09	311049798	RIOS BRITO KEVIN FRANCISCO	1	1	86	1995-07-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270988	2017-03-09	2017-03-09	308192953	RUIZ LOPEZ KEVIN DANIEL	1	1	85	1992-06-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270989	2017-03-09	2017-03-09	311239287	LOPEZ GONZALEZ SARA ITZEL	1	3	73	1995-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270990	2017-03-09	2017-03-09	312511612	FIGUEROA RODRIGUEZ VANIA LORENA	1	3	79	1996-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270991	2017-03-13	2018-04-20	301015770	ARRATIA MENDEZ VICTOR MANUEL	1	4	84	1985-07-29	M	t	2	apellido p	apellido m	nombres	0	none	none	0
270992	2017-03-13	2017-03-13	313067796	MORANCHEL ROSAS LANDA JUAN CARLOS	1	3	89	1996-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
270993	2017-03-13	2018-01-30	312063764	LOPEZ FLORES EDGAR ALFONSO	1	5	84	1996-05-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
270994	2017-03-13	2017-03-13	312145855	RUIZ TEYER MARIANA	1	3	84	1996-04-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270995	2017-03-13	2017-03-13	311099735	RIOS LOPEZ MARLENE	1	7	90	1995-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270996	2017-03-13	2017-11-27	305011169	HERNANDEZ TELLES GRISCELDA	1	3	107	1989-09-14	F	f	2	apellido p	apellido m	nombres	0	none	none	0
270997	2017-03-13	2017-03-13	415050913	RODRIGUEZ CHIRINO BRENDA TANIA	1	3	84	1994-08-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270998	2017-03-13	2017-03-13	JIRR810117	JIMENEZ RODEA ROSA	2	3	82	1981-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
270999	2017-03-13	2017-03-13	ZAVL810517	ZAMORA VALTIERRA LISSETTE	2	3	69	1981-05-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271000	2017-03-13	2017-03-13	308293098	LOPEZ VALDEZ DZOARA NIDIA	1	3	88	1992-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271001	2017-03-13	2017-03-13	310066013	GARRIDO SANCHEZ FABIOLA LIZETH	1	3	84	1994-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271002	2017-03-13	2017-03-13	312110765	HUERTA GARCIA ALMA DELIA	1	3	84	1996-03-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271003	2017-03-13	2017-03-13	307251570	RODRIGUEZ ALMARAZ ILSE VIANEY	1	1	87	1991-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271004	2017-03-13	2017-03-13	312089621	TEJADA QUINTINO MARIA FERNANDA	1	3	80	1996-01-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271005	2017-03-13	2017-03-13	313313794	ALVAREZ PONCE LAURA ALEJANDRA	1	5	80	1997-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271006	2017-03-13	2017-03-13	414003772	VAZQUEZ BAUTISTA ANA KAREN	1	4	79	1995-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271007	2017-03-13	2017-03-13	314259275	MENDEZ ANGELES CLAUDIA	1	3	82	1998-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271008	2017-03-13	2017-03-13	310185291	GARCIA CASTILLO MIGUEL ANGEL	1	1	85	1994-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271009	2017-03-13	2017-03-13	312264394	LUNA RODRIGUEZ GUADALUPE LIZZBETT	1	2	89	1996-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271010	2017-03-14	2018-02-13	309038221	GONZALEZ JIMENEZ ITZEL BIDDY	1	7	85	1992-12-31	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271011	2017-03-14	2018-02-13	414058624	ORTEGA ROSALES LUIS ALBERTO	1	1	90	1994-11-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271012	2017-03-14	2017-03-14	SIBS921202	SIERRA BENAVIDEZ SALVADOR EMILIO	2	1	85	1992-12-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271013	2017-03-14	2017-09-27	517031865	VILLAGRA FUENTES GUILLERMO ANDRES	1	1	83	1971-12-17	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271014	2017-03-14	2018-08-28	311139936	CALDERON FERNANDEZ GABRIEL	1	4	79	1995-06-13	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271015	2017-03-14	2017-03-14	311148949	GOMEZ SOTO BRANDON	1	3	80	1995-03-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271016	2017-03-14	2017-03-14	3121353604	SANDI MARRON OSCAR OMAR	1	4	81	1995-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271017	2017-03-14	2017-03-14	67007112	GARCIA SOTO MARINA ESMERALDA	1	1	82	1951-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271018	2017-03-14	2017-11-09	110005287	VILLAGOMEZ PEREZ CESAR ALEJANDRO	1	1	85	1997-02-23	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271019	2017-03-14	2017-03-14	309054061	GOMEZ PACHECO HITA MONSERRAT	1	3	81	1993-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271020	2017-03-14	2017-03-14	413047896	RAMIREZ MUÑOZ GERARDO	1	4	90	1993-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271021	2017-03-14	2017-03-14	RORE830607	RODRIGUES RIBEIRO EMANUELA	1	5	7	1983-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271022	2017-03-14	2017-03-14	310231556	CORIA DE JESUS GAMALIEL	1	3	84	1994-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271023	2017-03-14	2018-02-08	312183509	CAMPOS ROSAS MOISES	1	1	85	1996-08-30	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271024	2017-03-14	2017-03-14	311290282	CHACON HERNANDEZ JOSE YAIR	1	5	80	1995-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271025	2017-03-14	2017-03-14	MARG870423	MARTINEZ RAMIREZ GUILLERMO ALBINO	2	6	7	1987-04-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271026	2017-03-15	2018-02-15	414097344	MARTINEZ FLORES OMAR RAZIEL	1	1	90	1995-06-27	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271027	2017-03-15	2017-03-15	413006323	HEREDIA GARCIA CESAR IVAN	1	4	78	1994-03-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271028	2017-03-15	2017-03-15	308237421	TAPIA TORRES GUADALUPE TONANZIN	1	3	90	1992-12-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271029	2017-03-15	2017-03-15	306232994	RODRIGUEZ RAMIREZ JORGE OMAR	1	4	84	1990-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271030	2017-03-15	2017-03-15	314121950	VALLEJO CARRILLO MONICA YAEL	1	7	90	1998-08-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271031	2017-03-15	2017-03-15	413003779	CAMPOS RAMIREZ JONATAN	1	1	79	1994-03-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271032	2017-03-16	2017-03-16	406003960	JARQUIN SORIANO HAYDEE TAMARA	1	1	81	1986-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271033	2017-03-16	2017-03-16	310228961	EGUIA LIS ROJAS JAZAEL	1	3	78	1994-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271034	2017-03-16	2017-03-16	309347572	MITZIN FLORES DIANA	1	3	84	1990-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271035	2017-03-16	2017-03-16	311276109	DE JESUS FLORES CARLOS BRYAN	1	2	90	1995-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271036	2017-03-16	2017-03-16	312322292	JIMENEZ AVILA PAOLA GUADALUPE	1	1	86	1996-02-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271037	2017-03-16	2018-03-06	311239270	LOPEZ GARCIA MARIANA ITZEL	1	1	86	1995-06-13	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271038	2017-03-16	2017-03-16	417026259	PEREZ DIAZ CARLOS EDUARDO	1	3	89	1998-09-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271039	2017-03-16	2017-03-16	310181592	AGUILAR PICHARDO MONSERRAT	1	1	90	1994-06-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271040	2017-03-16	2017-03-16	309150955	PEREZ MENDEZ ZULEICA	1	1	90	1992-09-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271041	2017-03-16	2017-03-16	414056266	ROMAY HIDALGO FRIDA	1	1	82	1994-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271042	2017-03-21	2018-02-07	314317746	LUGO GUZMAN RAQUEL	1	4	90	1998-07-07	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271043	2017-03-21	2017-03-21	310171135	KUSCHICK FEHER MARK	1	4	80	1993-04-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271044	2017-03-21	2017-03-21	412041420	HERNANDEZ GARCIA KARLA JOCELYN DOLORES	1	2	80	1989-12-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271045	2017-03-21	2017-03-21	95188919	RODRIGUEZ SALDAÑA FREIRE	1	4	84	1979-02-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271046	2017-03-21	2017-03-21	311100288	TORRES LOPEZ DANIELA GUADALUPE	1	4	73	1995-09-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271047	2017-03-21	2017-03-21	3113022444	SEDANO BARAJAS YUNUEN	1	7	84	1995-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271048	2017-03-21	2017-03-21	312272056	LINARES MARIN JESUS ANTONIO	1	5	82	1996-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271049	2017-03-21	2017-03-21	412124910	OJEDA BAUTISTA JORGE ALFONSO	1	1	82	1982-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271050	2017-03-21	2017-03-21	310051455	HERNANDEZ HERNANDEZ BRENDA	1	2	79	1994-05-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271051	2017-03-21	2017-03-21	413008798	CORONA TEJEDA PAULINA	1	2	79	1994-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271052	2017-03-21	2018-04-11	517012419	VALDEZ RAMIREZ NANCY VIRIDIANA	1	1	73	1991-04-19	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271053	2017-03-22	2017-03-22	310293400	QUINTERO SERNA GERARDO	1	5	80	1994-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271054	2017-03-22	2017-03-22	313309016	URIBE FRIAS ARISAID BERENICE	1	2	80	1997-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271055	2017-03-22	2017-10-02	312187497	NAVA MAZARIEGOS FERNANDO	1	4	85	1996-11-26	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271056	2017-03-22	2017-03-22	409107366	BECERRIL MIGUEZ EDSON ARGENIS	1	7	84	1990-04-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271057	2017-03-23	2017-03-23	417084040	RODRIGUEZ AGISS DEMIAN JAHAZIEL DE JESUS	1	2	84	1997-03-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271058	2017-03-23	2018-03-02	107000420	CAMPOS TOSCUENTO MONTSERRAT	1	1	78	1994-07-03	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271059	2017-03-23	2017-03-23	84517304	RESENDIZ SERRANO ADAN	1	3	82	1964-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271060	2017-03-23	2017-03-23	311106352	GUTIERREZ MUÑIZ SAMANTHA	1	4	80	1995-06-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271061	2017-03-23	2017-03-23	309070461	ALPIZAR PEREZ SARAI	1	1	82	1993-06-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271062	2017-03-24	2017-03-24	307270081	NEQUIZ GUILLEN BRENDA ABRIL	1	1	79	1991-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271063	2017-03-24	2018-02-08	308262061	MARGARITO GONZALEZ ANA GABRIELA	1	6	80	1992-07-29	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271064	2017-03-24	2017-03-24	416014307	CORTES GONZALEZ BEATRIZ LETICIA	1	4	84	1967-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271065	2017-03-24	2018-08-30	AALB771120	AZAR LOPEZ BERNARDO ANWAR	2	1	82	1977-11-20	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271066	2017-03-24	2017-10-16	416093603	ROJAS LERMA YHARITZA	1	4	84	1994-09-26	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271067	2017-03-28	2017-03-28	95129255	MATIAS GARCIA RUBEN	1	5	84	1979-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271068	2017-03-28	2017-03-28	312323347	MOLINA ALCANTARA ALDO MAURICIO	1	1	90	1995-12-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271069	2017-03-28	2017-03-28	311211986	PEREZ HERNANDEZ LAURA HORTENCIA	1	5	78	1995-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271070	2017-03-28	2017-03-28	308146310	RAMOS MEJIA ANGELICA SOFIA	1	1	90	1992-08-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271071	2017-03-28	2017-03-28	309012993	AGUILAR CUEVAS ANA CAROLINA	1	5	78	1993-08-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271072	2017-03-28	2017-03-28	312272506	CASTAÑEDA CUEVAS CARLOS EMILIO	1	7	85	1994-11-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271073	2017-03-31	2017-03-31	312183846	DEZA JUAREZ WANDA SHANIK	1	1	85	1996-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271074	2017-03-31	2017-03-31	308041435	AGUILAR LOBATO ISAAC	1	1	82	1992-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271075	2017-03-31	2017-03-31	305001463	VARGAS SANCHEZ CUAUHTEMOC	1	2	7	1990-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271076	2017-03-31	2017-03-31	416084360	FRANCISCO ANTONIO ANGEL	1	1	84	1993-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271077	2017-03-31	2017-03-31	312017956	SALGADO MORA ISAMAR	1	1	79	1993-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271078	2017-03-31	2017-03-31	306774074	RAMIREZ TERRONES BRENDA	1	1	85	1990-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271079	2017-03-31	2018-04-02	TIBJ861018	TIERRABLANCA BERMUDEZ JEANNETTE BERENICE	2	1	89	1986-10-18	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271080	2017-04-03	2017-04-03	312062138	ZALDIVAR ZAMUDIO DULCE ESMERALDA	1	3	82	1996-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271081	2017-04-03	2017-04-03	416112159	HERNANDEZ KRAUSS GUILLERMO EFRAIN	1	5	84	1993-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271082	2017-04-03	2017-04-03	311227699	HERNANDEZ GARCIA LIZBETH	1	1	82	1995-09-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271083	2017-04-04	2017-04-04	305028965	DOMINGUEZ JUAREZ MARISSEL	1	4	82	1989-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271084	2017-04-04	2017-04-04	305139137	TRUJILLO ARMENTA ARMANDO	1	4	82	1989-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271085	2017-04-04	2017-04-04	300252057	HERRERA VALDEZ LUIS FERNANDO	1	4	84	1985-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271086	2017-04-04	2018-02-19	313315231	CRUZ URIBE ANGEL SEBASTIAN	1	5	79	1996-04-21	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271087	2017-04-05	2017-04-05	312120067	PEREYRA GARCIA ALLAN ROBERT	1	1	85	1996-07-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271088	2017-04-05	2017-04-05	312290553	ALMONTE RODRIGUEZ RICARDO	1	1	81	1996-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271089	2017-04-07	2017-04-07	312003364	DANIEL GARCIA DANIELA ANGELICA	1	2	78	1996-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271090	2017-04-07	2017-04-07	84148773	VILCHIS ALEJANDRE MARIA DOLORES	1	1	82	1967-01-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271091	2017-04-07	2017-04-07	311072121	BUSTAMANTE ALVA JUAN DANIEL	1	1	82	1994-02-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271092	2017-04-17	2017-04-17	312129840	RICCI RIVERA DANIELA NATALIE	1	1	85	1996-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271093	2017-04-17	2017-04-17	309346881	GONZALEZ TORRES ADRIANA	1	7	82	1993-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271094	2017-04-19	2018-02-08	305685342	OCHOA RIOS LUIS ERNESTO	1	7	85	1988-11-14	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271095	2017-04-19	2017-04-19	105000620	BELLO PEZA ISRAEL	1	1	85	1992-05-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271096	2017-04-19	2017-04-19	311283943	MORA BONILLA JOSE ANTONIO	1	1	85	1995-06-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271097	2017-04-19	2017-04-19	311027767	BARRERA MERCADO BRENDA ELISABET	1	1	85	1995-03-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271098	2017-04-19	2017-04-19	312068714	ESTRADA ARELLANO RAUL ISAAC	1	1	79	1996-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271099	2017-04-19	2017-04-19	311154669	GONZALEZ DIEGO LAURA RIGEL	1	7	79	1994-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271100	2017-04-19	2017-04-19	312281258	RODRIGUEZ IBARRA CARLOS IMANUEL	1	1	81	1996-03-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271101	2017-04-20	2017-04-20	LIAD920403	LIANGYN DAI	1	1	78	1992-04-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271102	2017-04-20	2017-04-20	314345068	PEREZ CHAVEZ EMILIANO	1	1	83	1998-04-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271103	2017-04-20	2017-04-20	86234304	BARRERA ADAME GABRIELA DONAJI	1	7	7	1970-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271104	2017-04-21	2017-04-21	313355831	AMIGON CALDERON BRAYAN RODRIGO	1	1	84	1997-06-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271105	2017-04-21	2017-04-21	310089515	GARIBAY ALCALA ALTINAI	1	1	83	1994-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271106	2017-04-21	2017-04-21	307134190	GONZALEZ PEREZ ULISES ALBERTO	1	2	84	1991-01-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271107	2017-04-21	2017-04-21	311100594	TORRES VASQUEZ MIRIAM BERENICE	1	2	86	1994-11-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271108	2017-04-21	2017-04-21	412045916	GALLARDO PEREZ KARLA DANIELA	1	1	84	1983-11-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271109	2017-04-25	2017-04-25	413083584	LICONA BECERRA RUTH ALAIN	1	7	78	1993-12-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271110	2017-04-25	2017-04-25	310074098	DAVILA MENDOZA VALERIA	1	3	85	1993-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271111	2017-04-25	2017-04-25	311148107	CAMPOS FERNANDEZ YAZMIN VANESSA	1	1	80	1995-04-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271112	2017-04-26	2017-04-26	413021465	MAYEN MUÑOZ FLOR MARIBEL	1	5	84	1984-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271113	2017-04-26	2017-04-26	310244488	JIMENEZ CONTRERAS HECTOR	1	1	85	1993-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271114	2017-04-26	2017-04-26	311195400	BENITEZ HERRERA ADOLFO	1	7	85	1995-04-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271115	2017-04-26	2017-04-26	415132028	ZARAGOZA CARDIEL ALAN IGOR	1	1	85	1990-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271116	2017-04-27	2017-04-27	309218092	HIRATA RAMIREZ HECTOR	1	4	79	1992-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271117	2017-04-27	2017-04-27	413007148	TLACUILO FUENTES ITZAYANA	1	2	82	1994-08-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271118	2017-04-27	2018-03-01	306270662	HERNANDEZ MEDINA YOLANDA	1	1	82	1990-03-24	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271119	2017-04-27	2017-04-27	OEMD510326	OLVERA MAZARIEGOS DULCE MARIA	2	4	88	1951-03-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271120	2017-05-03	2017-05-03	98331114	PERALTA GOMEZ GIBRAN JAVIER	1	1	7	1982-09-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271121	2017-05-03	2018-08-14	304086588	FRAGOSO GARCIA TERESA CAROLINA	1	2	84	1988-05-23	F	t	3	apellido p	apellido m	nombres	0	none	none	0
271122	2017-05-03	2017-05-03	312279907	OCHOA CHAVEZ MARIANA	1	1	89	1995-05-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271123	2017-05-03	2017-05-03	VIEL910405	VITE ESCOBEDO LILIA MONTSERRAT	2	1	79	1991-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271124	2017-05-03	2017-05-03	309045216	ANDRADE SAN PEDRO RICARDO	1	1	80	1993-05-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271125	2017-05-03	2017-05-03	310129064	GALINDO RAMIREZ ZAIRA ICHEL	1	1	84	1994-11-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271126	2017-05-03	2017-05-03	415030175	PEREZ GONZALEZ GRECIA CITLALLI	1	2	79	1996-11-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271127	2017-05-04	2017-05-04	DEPE820506	DELGADO PORTILLA ESPERANZA QUILATZI	2	1	61	1982-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271128	2017-05-04	2017-05-04	310336967	ZEPEDA DIAZ MISAEL EDGAR	1	5	85	1994-02-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271129	2017-05-05	2017-05-05	PEREE730408	PEREA RAMIREZ MARIA ELENA	3	3	85	1973-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271130	2017-05-05	2017-05-05	310252494	MEDINA ROA JOSE EUGENIO	1	1	79	1993-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271131	2017-05-08	2017-05-08	312295575	CARBAJAL PEREZ MARIA FERNANDA KEILA	1	5	81	1996-12-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271132	2017-05-09	2017-05-09	312112422	RIVERA CHAVEZ VICTOR ARIEL	1	5	80	1996-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271133	2017-05-09	2017-05-09	309253161	MORENO CABELLO DANIELA PATRICIA	1	7	80	1992-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271134	2017-05-09	2017-05-09	306055722	GOMEZ LOPEZ KARINA	1	2	78	1995-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271135	2017-05-09	2017-05-09	98170452	RODRIGUEZ HERNANDEZ ARTURO	1	1	84	1982-03-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271136	2017-05-09	2017-05-09	75014809	ALMEIDA NUCHE GABRIELA MARIA CRISTINA	1	2	80	1960-02-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271137	2017-05-11	2017-05-11	312219820	LOPEZ VAZQUEZ RUTH NOEMI	1	3	84	1996-05-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271138	2017-05-11	2017-05-11	312007506	LARA HERNANDEZ EDGAR EDUARDO	1	1	79	1995-09-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271139	2017-05-12	2017-05-12	312323172	MARTINEZ RAMIREZ SANDRA	1	4	81	1995-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271140	2017-05-12	2017-05-12	515013788	GOMEZ GARCIA CARLOS ALBERTO	1	7	99	1987-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271141	2017-05-16	2017-05-16	314547183	FLORES HUELGAS ARMANDO CAMILO	1	7	85	1997-06-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271142	2017-05-16	2017-05-16	107006329	NARVAEZ GONZALEZ HUGO FERNANDO	1	1	86	1994-06-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271143	2017-05-17	2017-05-17	514006501	CRUZ RAMIREZ CESIA JAQUELINE	1	1	85	1989-03-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271144	2017-05-17	2017-05-17	309221759	MONTES SALAS CESAR MAXIMILIANO	1	2	84	1993-05-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271145	2017-05-18	2017-05-18	312597539	GUERRERO AVALOS LIZA  IVETTE	1	2	79	1995-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271146	2017-05-19	2017-05-19	107003861	RODRIGUEZ FLORES LILIAN BETSABE	1	1	80	1993-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271147	2017-05-22	2017-05-22	309268286	ROCHA GONZALEZ LUCERO DEL CARMEN	1	5	80	1993-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271148	2017-05-23	2017-05-23	108000588	CORTES DEL PRADO JORGE ROBERTO	1	6	80	1995-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271149	2017-05-25	2017-05-25	313166040	PAULIN CHAVEZ SARA ALICIA	1	5	89	1997-04-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271150	2017-05-25	2017-05-25	514351863	OROZCO ALVAREZ MARISOL	1	5	73	1966-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271151	2017-05-26	2017-05-26	77307615	RUIZ MARTINEZ MARIA ELENA	1	3	84	1962-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271152	2017-05-26	2017-05-26	314332284	DIAZ BALBUENA DAVID ALEJANDRO	1	7	82	1997-06-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271153	2017-05-29	2017-05-29	SEMS930210	SEGURA MUÑOZ SIDNEY ANGELICA	2	7	79	1993-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271154	2017-06-06	2017-06-06	414167184	LOPEZ TOLEDO MARIA FERNANDA	1	1	75	1995-04-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271155	2017-06-06	2017-06-06	314196774	COTE VALENCIA ITZEL BERENICE	1	1	86	1998-06-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271156	2017-06-09	2017-06-09	311036873	LOZANO ARRIAGA DALIA ALEJANDRA	1	4	86	1994-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271157	2017-08-07	2017-08-07	400035477	LIMA MARTINEZ EIVAR	1	1	89	1969-08-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271158	2017-08-07	2017-08-07	314087733	BARRANCO GILES DALIA	1	1	85	1998-04-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271159	2017-08-07	2017-08-07	400072162	ONTIVEROS PALACIOS NANCY GUADALUPE	1	2	90	1982-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271160	2017-08-07	2017-08-07	518010102	DIAZ DE LA ROSA JAZMIN LORENA	1	1	85	1988-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271161	2017-08-07	2017-08-07	98332898	ROSAS CRUZ LUZ MARIA CRYSTELL	1	1	89	1982-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271162	2017-08-07	2017-08-07	GOSS820705	GONZALEZ SANCHEZ SHENDEL	3	1	56	1987-07-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271163	2017-08-07	2017-08-07	364651373	PALAVICINI CRUZ NADIA	1	2	7	1988-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271164	2017-08-07	2018-02-19	315197815	BRITO SEGURA ANGEL	1	1	85	1999-05-11	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271165	2017-08-07	2017-08-07	310237235	JIMENEZ GONZALEZ LUIS GUILLERMO	1	1	85	1993-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271166	2017-08-07	2018-02-15	310003502	CORTES FERNANDEZ DE LARA PAOLA	1	2	89	1994-09-02	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271167	2017-08-07	2017-08-07	416092321	SOTELO SANDOVAL AXEL ALFREDO	1	1	78	1994-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271168	2017-08-07	2017-08-07	310222897	VARGAS VERA ARACELI GENOVEVA	1	1	85	1994-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271169	2017-08-07	2018-02-09	304209266	MELENDEZ VICTORIA TERESA ANTONIA	1	1	86	1988-03-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271170	2017-08-07	2017-08-07	312068374	COLCHADO LOPEZ GIOVANI JOEL	1	1	79	1996-11-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271171	2017-08-07	2017-08-07	312283159	SANDOVAL PEÑA GISELA	1	1	79	1996-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271172	2017-08-08	2017-08-08	4313264438	PALACIOS CURIEL BRENDA PATRICIA	1	1	81	1997-10-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271173	2017-08-08	2017-08-08	311288450	MENDEZ GUZMAN BEATRIZ ESTEFANIA	1	2	80	1995-06-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271174	2017-08-08	2017-08-08	414003954	HERNANDEZ PAZ LUZ ELENA	1	4	85	1995-05-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271175	2017-08-08	2017-08-08	417034739	ROMANO SUAREZ PALOMA	1	1	84	1996-10-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271176	2017-08-08	2017-08-08	309160874	SANCHEZ PEREZ RAFAEL	1	6	84	1992-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271177	2017-08-08	2017-08-08	312048495	RAMOS GUTIERREZ JUAN DE JESUS	1	5	84	1996-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271178	2017-08-08	2017-08-08	311296112	RODRIGUEZ CASIANO REBECA	1	1	80	1995-08-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271179	2017-08-08	2017-08-08	314265293	SANCHEZ JIMENEZ ISAI	1	1	85	1998-09-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271180	2017-08-08	2017-08-08	313312560	SANCHEZ JAIME ANGEL ABRAHAM	1	2	85	1997-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271181	2017-08-08	2018-02-14	312188999	SIERRA MURILLO BRYAN DAVID	1	1	85	1996-03-13	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271182	2017-08-08	2017-08-08	416085532	MARTINEZ HERRERA MARIANA MURIEL	1	7	84	1997-07-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271183	2017-08-08	2017-08-08	309271352	RENTERIA MEJIA RAFAEL	1	1	7	1993-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271184	2017-08-09	2017-08-09	312320274	GONZALEZ COLIN FERNANDO	1	1	85	1996-07-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271185	2017-08-09	2017-08-09	311063046	RODRIGUEZ GARCIA ALAN JULIAN	1	1	85	1995-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271186	2017-08-09	2017-08-09	311006946	NAVARRETE SOTELO DIANA MELISSA	1	1	79	1995-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271187	2017-08-09	2017-08-09	311037667	MATA GALINDO MARIO	1	1	79	1994-01-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271188	2017-08-09	2017-08-09	312643100	LEON HUATO MIGUEL ANGEL	1	3	83	1996-02-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271189	2017-08-09	2017-08-09	310268619	SARMIENTO ROCHA JOSUE JULIAN	1	1	85	1994-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271190	2017-08-09	2017-08-09	310248084	MELO GARCIA FRANCISCO	1	4	85	1993-09-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271191	2017-08-09	2017-08-09	308043989	BARRADAS VILLEGAS DAFNE ANAID	1	2	79	1991-11-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271192	2017-08-09	2017-08-09	418059159	RAMIREZ DOMINGUEZ JUAN	1	1	89	1987-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271193	2017-08-09	2017-08-09	312012346	ROMERO MORENO TSASNAI MARIA	1	4	80	1995-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271194	2017-08-09	2017-08-09	518493260	RANDI SERGIO ADRIAN ALEJANDRO	1	4	80	1975-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271195	2017-08-09	2017-08-09	COOS940821	CORZO SANCHEZ SEBASTIAN	2	2	79	1994-08-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271196	2017-08-09	2017-08-09	313295207	HERNANDEZ CEDILLO LEONEL	1	1	85	1995-11-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271197	2017-08-09	2017-08-09	312270083	VAN SCOIT MARTINEZ ALEXIA GUADALUPE	1	4	80	1996-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271198	2017-08-10	2017-08-10	409107823	JARQUIN JARQUIN LUDMILA	1	1	82	1979-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271199	2017-08-10	2017-08-10	313320727	GARRIDO LOPEZ LUIS ENRIQUE	1	7	85	1997-08-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271200	2017-08-10	2017-08-10	313194681	MARTINEZ MEJIA MARIA DEL REFUGIO	1	1	79	1995-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271201	2017-08-10	2017-08-10	312301725	RODRIGUEZ CHAVEZ ARIANA	1	1	89	1996-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271202	2017-08-10	2017-08-10	312509062	AIZA LOPEZ PELAEZ MIGUEL	1	5	78	1996-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271203	2017-08-10	2017-08-10	314247883	PALACIOS PATIÑO LIZETH	1	1	84	1998-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271204	2017-08-10	2017-08-10	311293623	CALIXTO CANO KAREN LIZBETH	1	1	90	1995-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271205	2017-08-10	2017-08-10	310104159	FLORES SALAS ABDEL AL RABBI	1	1	90	1994-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271206	2017-08-10	2017-08-10	311185768	ESQUIVEL CARRILLO LETICIA	1	4	80	1995-04-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271207	2017-08-10	2017-08-10	310203056	OLVERA ACEVEDO LUIS JESUS	1	1	85	1993-11-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271208	2017-08-10	2017-08-10	313170357	HERNANDEZ LEMUS JOSE MANUEL	1	2	83	1997-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271209	2017-08-10	2017-08-10	312279299	NICOLAS VILLALOBOS LILIANA MARGARITA	1	1	90	1996-04-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271210	2017-08-10	2017-08-10	AERE761119	ARELLANO ROJAS ERIKA	3	1	65	1976-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271211	2017-08-11	2018-02-21	415070562	QUINTANA GUERRERO HERIBERTO	1	3	83	1996-01-25	M	f	2	apellido p	apellido m	nombres	0	none	none	0
271212	2017-08-11	2017-08-11	314129097	CASTELLANOS GARZA DANIEL	1	2	85	1998-03-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271213	2017-08-11	2017-08-11	311015210	TREJO RODRIGUEZ CARLOS ALBERTO	1	4	87	1995-09-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271214	2017-08-11	2017-08-11	314186520	OJENDIZ GARCIA RAUL	1	1	83	1998-07-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271215	2017-08-11	2017-08-11	416092307	CASTRO CALZADA IZA MARIEL	1	3	84	1994-06-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271216	2017-08-11	2017-08-11	304306157	RAMIREZ LOPEZ MARIA CRISTINA	1	1	85	1993-07-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271217	2017-08-11	2017-08-11	314684071	RUBIO VEGA CAROLINA	1	4	89	1997-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271218	2017-08-11	2017-08-11	410062647	MORENO HERRERA LOURDES ANAHI	1	2	82	1990-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271219	2017-08-11	2017-08-11	310678919	CARRETE CHAVEZ ARTURO	1	4	85	1993-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271220	2017-08-11	2017-08-11	312272032	BALBUENA PONCE JUAN CARLOS	1	4	85	1996-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271221	2017-08-11	2017-08-11	313161021	VALDEZ URIBE SAUL ALEJANDRO	1	1	85	1997-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271222	2017-08-11	2017-08-11	313010417	ZEPEDA FUENTES MERCEDES XIMENA	1	1	85	1997-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271223	2017-08-11	2017-08-11	418049486	CAÑEDO GUERRA ENRIQUE	1	2	86	1998-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271224	2017-08-11	2017-08-11	41800935	BARRERAS MALDONADO JOSE CARLOS	1	2	86	1998-08-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271225	2017-08-11	2017-08-11	312219954	MUÑOZ BUSTOS ASAEL BESAI	1	1	85	1995-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271226	2017-08-11	2017-08-11	308061125	BARCENAS HERNANDEZ AXEL ALBERTO	1	2	80	1991-06-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271227	2017-08-11	2017-08-11	FEPR931130	FELIPE PEREZ RAQUEL	1	1	99	1993-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271228	2017-08-11	2017-08-11	313181656	BAHENA PACHECO MARA ITZUL	1	1	85	1997-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271229	2017-08-11	2017-08-11	415013596	GREGORIO MARTINEZ ROBERTO CARLOS	1	1	79	1995-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271230	2017-08-14	2017-08-14	MOAM740610	MONTELONGO ARANA MARINA	2	1	80	1974-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271231	2017-08-14	2017-08-14	313144411	RIOS RUIZ ALEXIS ITAMAR	1	1	79	1996-12-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271232	2017-08-14	2017-08-14	EALM930205	ESTRADA LUGO MARILYN YESENIA	2	2	83	1993-02-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271233	2017-08-14	2018-08-23	300013508	GARCIA GARDUÑO GISELA	1	1	84	1984-05-30	F	t	3	apellido p	apellido m	nombres	0	none	none	0
271234	2017-08-14	2017-08-14	CALI770201	CASAS LOPEZ ISRAEL ALEJANDRO	3	2	62	1977-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271235	2017-08-14	2017-08-14	313263534	KOTLYAROV GONZALEZ JENNIFER	1	1	75	1997-02-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271236	2017-08-14	2017-08-14	313219270	FLORES ROJAS EDUARDO DAVID	1	1	85	1996-12-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271237	2017-08-14	2017-08-14	313335811	VALDES SERRANO ADRIANA	1	1	80	1996-02-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271238	2017-08-14	2017-08-14	99170792	LOPEZ SANCHEZ ELIZABETH ZORAYDA	1	1	89	1983-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271239	2017-08-14	2017-08-14	313126062	SANCHEZ LARIOS JANETH MONTSERRAT	1	5	81	1997-11-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271240	2017-08-14	2017-08-14	374767583	VASQUEZ HERNANDEZ MARCO ANTONIO	1	5	85	1997-10-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271241	2017-08-14	2018-03-15	311175703	MENESES SANCHEZ JOSE GUSTAVO	1	1	90	1995-07-27	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271242	2017-08-15	2017-08-15	408089553	OLEA GOMEZ CINTHIA TALIA	1	2	82	1989-03-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271243	2017-08-15	2018-03-15	311237623	ANDRADE SANCHEZ YATCENICS	1	1	90	1995-06-19	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271244	2017-08-15	2017-08-15	314121857	ZUMAYA MENDEZ ALEJANDRA	1	1	83	1998-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271245	2017-08-15	2017-08-15	313157836	MARTINEZ MARTINEZ GUILLERMO	1	1	85	1997-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271246	2017-08-15	2017-08-15	412145126	MANTILLA PEÑA FELIPE GENARO	1	7	78	1987-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271247	2017-08-15	2017-08-15	415042983	ROJAS PADILLA ANDREA VIRIDRIANA	1	1	81	1996-04-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271248	2017-08-15	2017-08-15	314190617	MARTINEZ HERNANDEZ KARLA IVONNE	1	2	80	1998-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271249	2017-08-15	2017-08-15	311176322	PEÑA SANCHEZ DILAN SERGIO	1	1	85	1995-04-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271250	2017-08-15	2017-08-15	310259431	PEREZ PEREZ VICTOR HUGO	1	1	85	1994-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271251	2017-08-15	2017-08-15	JUAM520510	JURADO ARELLANO MIGUEL ANGEL	1	5	7	1952-05-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271252	2017-08-15	2017-08-15	312111944	NUÑEZ RAMOS SAUL ALEJANDRO	1	1	81	1996-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271253	2017-08-15	2017-08-15	31133434399	RAMIREZ ANDUAGA SAMUEL ALEJANDRO	1	1	87	1995-07-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271254	2017-08-15	2017-08-15	309192695	LOPEZ ROA CARLOS	1	2	85	1993-07-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271255	2017-08-15	2018-03-05	309337799	VALENCIA MEDINA DIANA ITZEL	1	1	85	1993-09-10	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271256	2017-08-15	2017-08-15	310701932	RIOS MARTINEZ MARICELA DEL REFUGIO	1	2	84	1994-11-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271257	2017-08-15	2017-08-15	312111982	MONTES ROJAS IRVING	1	4	84	1996-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271258	2017-08-15	2017-08-15	311261589	HERNANDEZ CASTRO VICTOR MANUEL	1	1	85	1994-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271259	2017-08-15	2017-08-15	311193523	ROSALES JIMENEZ VICTOR JOSUE	1	1	85	1995-02-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271260	2017-08-15	2017-08-15	309593779	BOSCH SANCHEZ JOSE MIGUEL	1	4	83	1992-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271261	2017-08-15	2017-08-15	308579497	PADILLA CRUZ MARIA ALICIA SUSANA	1	6	83	1992-08-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271262	2017-08-15	2017-08-15	314142324	TORRES SALAYEZ SAMANTHA MONSERRAT	1	1	89	1998-06-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271263	2017-08-15	2018-08-28	306111925	LOPEZ MORALES RICARDO JONATHAN	1	5	80	1989-09-27	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271264	2017-08-15	2017-08-15	313649837	RAMIREZ FLORES GUILLERMO AMARILLO	1	1	85	1997-09-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271265	2017-08-15	2017-08-15	312141338	RUIZ CHAVARRIA VALERIA	1	1	84	1995-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271266	2017-08-15	2017-08-15	314266057	GODINEZ BASTIDA RICARDO	1	5	85	1998-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271267	2017-08-15	2017-08-15	891830067	RICARDO GARCIA BEATRIZ	1	1	89	1973-03-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271268	2017-08-15	2017-08-15	517011955	ROSENDO PINEDA MARGARITA JACARANDA	1	1	97	1986-04-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271269	2017-08-16	2017-08-16	312134336	REYES RAMIREZ ALAN GERARDO	1	1	85	1996-07-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271270	2017-08-16	2017-08-16	315334126	CHAVEZ QUINTERO JULIA CAMILA	1	4	90	1998-10-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271271	2017-08-16	2017-08-16	HEHK910909	HERRERA HIDALGO KARLA ELENA	2	1	87	1991-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271272	2017-08-16	2017-08-16	314215691	MENDEZ GUTIERREZ SAUL	1	4	79	1998-09-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271273	2017-08-16	2017-08-16	315220537	MONTIEL GUTIERREZ ALEJANDRO	1	1	80	1998-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271274	2017-08-16	2017-08-16	415049432	GOMEZ GUTIERREZ ERIC ALAN	1	7	75	1993-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271275	2017-08-16	2017-08-16	312683126	TORRES GOMEZ EDUARDO	1	7	85	1995-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271276	2017-08-16	2017-08-16	314209160	LEGORRETA SANCHEZ MAURICIO	1	2	80	1998-01-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271277	2017-08-16	2017-08-16	OUUG611011	OLGUIN URIBE GUILLERMO	1	2	7	1961-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271278	2017-08-16	2017-08-16	313266542	GARCIA MORALES RICARDO EMILIANO	1	1	90	1998-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271279	2017-08-16	2017-08-16	311018486	RAMIREZ SANCHEZ ROSA	1	1	85	1995-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271280	2017-08-16	2017-08-16	312003917	DINORIN ORTA JAVIER ANDRES	1	6	82	1997-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271281	2017-08-16	2017-08-16	310300344	RODRIGUEZ MARTINEZ ANA LAURA	1	2	80	1994-04-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271282	2017-08-16	2017-08-16	400062626	SANTAMARIA PRIEDE DILVY	1	7	7	1981-01-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271283	2017-08-17	2017-08-17	413052337	CARDOSO VERA GERARDO	1	2	81	1990-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271284	2017-08-17	2017-08-17	315022393	VALDEZ URIBE MAURICIO	1	4	86	1999-03-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271285	2017-08-17	2017-08-17	91200304	GARCIA MAYA LILIAN IVETTE	1	1	108	1975-06-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271286	2017-08-17	2017-08-17	308011120	HERNDEZ ESPINOSA DANYA ANGELICA	1	4	7	1992-08-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271287	2017-08-17	2017-08-17	313552827	MEZA HERNANDEZ JORGE ANTONIO	1	7	85	1996-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271288	2017-08-17	2017-08-17	314284774	SANDOVAL PEREVOCHTCHIKOVA DIANA	1	2	80	1998-05-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271289	2017-08-17	2017-08-17	311041929	SUAREZ MONROY RENATO ADRIEL	1	1	79	1992-10-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271290	2017-08-17	2017-08-17	110004534	ROSAS AVILA JOSE DANIEL	1	1	85	1997-07-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271291	2017-08-17	2017-08-17	VAFK760510	VARGAS FUENTES KATIA GABRIELA	3	1	90	1976-05-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271292	2017-08-17	2017-08-17	CAPN951112	CASTAÑEDA PAEZ NATALIA	1	7	80	1995-11-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271293	2017-08-18	2017-08-18	416075780	OLIVARES CASTILLO GISELA DE LOS ANGELES	1	7	84	1996-05-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271294	2017-08-18	2017-08-18	312322144	PIZIO LOZADA LEONARDO JOSUE	1	7	80	1996-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271295	2017-08-18	2017-08-18	MAAM480426	MARTINEZ ALCARAZ JOSE MIGUEL	2	1	85	1948-04-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271296	2017-08-18	2017-08-18	MAMX831121	MARTINEZ MUÑOZ ERIKA	2	1	88	1983-11-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271297	2017-08-18	2017-08-18	417101877	RODRIGUEZ AGISS ZURIEL UZAI	1	4	85	1998-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271298	2017-08-18	2017-08-18	311012381	PARRA MENDOZA NYDIA	1	1	84	1995-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271299	2017-08-18	2017-08-18	310332347	TORRES ROSALES BELEM DE JESUS	1	6	85	1994-01-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271300	2017-08-18	2017-08-18	311279605	MARTINEZ TORRES ARELY	1	1	90	1995-01-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271301	2017-08-18	2017-08-18	517491854	FRANCO BERNAL GLORIA TATIANA	1	1	80	1963-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271302	2017-08-21	2017-08-21	305148573	RIOS SANTOS CESAR	1	1	101	1988-11-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271303	2017-08-21	2017-08-21	418028988	MACIAS URBINA DANIELA MICHEL	1	1	82	1997-12-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271304	2017-08-21	2018-04-06	516013475	MENDO PEREZ GERARDO MANUEL	1	7	99	1991-06-03	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271305	2017-08-21	2017-08-21	406096690	LINARES GARCIA OSCAR ALEJANDRO	1	1	86	1986-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271306	2017-08-21	2017-08-21	311101106	SERRANO RIVERA PEDRO	1	4	79	1995-03-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271307	2017-08-21	2017-08-21	314269230	SANDOVAL MERINO MARICARMEN	1	1	85	1997-09-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271308	2017-08-21	2017-08-21	413089517	DOMINGUEZ MATEOS IRVING	1	3	80	1993-06-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271309	2017-08-21	2017-08-21	312106922	MENDEZ GUZMAN ANA ISABEL	1	1	87	1996-07-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271310	2017-08-21	2017-08-21	HAHC660707	HAGG HAGG CARIME	2	2	89	1966-07-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271311	2017-08-21	2017-08-21	312115296	LOPEZ AQUINO MARIA CASANDRA	1	4	90	1995-09-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271312	2017-08-21	2017-08-21	109002987	AGUILAR GUEVARA HEBER	1	4	90	1996-09-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271313	2017-08-21	2017-08-21	415091417	MERCED MONTERROSAS ANA LAURA	1	6	80	1996-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271314	2017-08-21	2017-08-21	312343790	ROJAS CEDILLO ADRIANA	1	3	80	1995-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271315	2017-08-22	2017-08-22	313204289	MARTINEZ GOMEZ MIRNA DEL CARMEN	1	4	84	1997-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271316	2017-08-22	2017-08-22	416152584	ANDRADE DURAN ALAN IRVING	1	4	82	1992-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271317	2017-08-22	2017-08-22	312303145	RODRIGUEZ VEGA KEVIN BIBLAIN	1	2	86	1996-12-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271318	2017-08-22	2017-08-22	311200333	POMPA ALCALA GEORGINA	1	3	84	1995-01-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271319	2017-08-22	2017-08-22	312180993	VILLALOBOS RUIZ VERONICA ALONDRA	1	1	79	1996-11-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271320	2017-08-22	2017-08-22	413054795	PETERSON BORQUEZ CHRISTIAN	1	5	79	1994-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271321	2017-08-22	2017-08-22	ROFL920824	ROMERO FERNANDEZ LAURA ELISA	3	2	90	1992-08-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271322	2017-08-22	2017-08-22	314329871	ALARCON FLORES URIEL AURELIO	1	2	82	1998-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271323	2017-08-22	2018-08-28	314072096	MENDOZA NEGRETE MELISSA ALINE	1	1	89	1998-02-28	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271324	2017-08-22	2017-08-22	417034382	CAMACHO CABRERA LUIS ANTONIO	1	1	84	1996-05-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271325	2017-08-22	2017-08-22	414098255	MONDRAGON CRUZ MARIA VICTORIA	1	2	90	1990-10-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271326	2017-08-22	2017-08-22	310067656	LOPEZ GARCIA NATHAN	1	5	82	1993-10-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271327	2017-08-22	2017-08-22	307158321	RODRIGUEZ LEON NYDIA DENISE	1	1	79	1991-02-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271328	2017-08-22	2017-08-22	411027148	JIMENEZ ALARCON LUIS EDUARDO	1	2	80	1986-02-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271329	2017-08-22	2017-08-22	313046188	AVILES SANCHEZ REBECA	1	1	84	1997-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271330	2017-08-22	2017-08-22	302303423	HERNANDEZ SANTILLAN YAZMIN IVONNE	1	3	84	1986-07-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271331	2017-08-22	2017-08-22	312034229	FERNANDEZ DE LARA SANCHEZ ALVARO	1	1	85	1996-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271332	2017-08-23	2017-08-23	313312395	SEVERO MARTINEZ PAULINA	1	3	84	1997-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271333	2017-08-23	2018-08-20	31098484	HERRERA MACIAS VANESSA VIRIDIANA	1	1	78	1994-06-14	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271334	2017-08-23	2018-02-28	CAAG930617	CAMPIRANO AGUILAR GABRIELA	2	1	85	1993-06-17	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271335	2017-08-23	2017-08-23	312311656	ZAMUDIO SOLIS BRUNO ABRAHAM	1	2	84	1996-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271336	2017-08-23	2017-08-23	314182694	MARTINEZ SALAS LUZ MARIA GUADALUPE	1	4	82	1998-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271337	2017-08-23	2017-08-23	415084075	PEÑA AGUILAR KARINA	1	2	79	1996-07-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271338	2017-08-23	2017-08-23	HERE800820	HERNANDEZ RAMIREZ ERIC	2	1	79	1980-08-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271339	2017-08-23	2018-04-13	314272368	BAEZ TABE ANUAR	1	1	89	1996-07-20	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271340	2017-08-23	2017-08-23	417138435	GALAN BASILIO BRENDA EDITH	1	6	83	1993-12-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271341	2017-08-24	2017-08-24	TAAA870831	TAVARES AUGUSTE ANA LUISA	1	5	7	1987-08-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271342	2017-08-24	2017-08-24	315252588	GONZALEZ SANCHEZ MARIA GUADALUPE	1	1	89	1999-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271343	2017-08-24	2017-08-24	309182180	LECHUGA JIMENEZ ARELY	1	1	90	1993-05-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271344	2017-08-24	2017-08-24	3111115561	LUGO DORANTES ANGEL EDUARDO	1	3	79	1995-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271345	2017-08-24	2018-02-26	303148560	ORTIZ FERNANDEZ RAQUEL	1	3	79	1988-07-25	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271346	2017-08-24	2017-08-24	3111651649	CRUZ MANCILLAS MIGUEL ANGEL	1	3	83	1995-02-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271347	2017-08-24	2017-08-24	89243330	RAZO MENDIVIL ULISES JESUS	1	3	81	1972-03-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271348	2017-08-24	2018-02-26	306263567	PALMA ORTEGA PAMELA	1	3	84	1990-04-12	F	f	2	apellido p	apellido m	nombres	0	none	none	0
271349	2017-08-24	2017-08-24	314137618	HERNANDEZ LEON JAVIER SAHIDT	1	1	84	1998-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271350	2017-08-24	2017-08-24	315223961	ROMO ELIGIO JOHAN FERNANDO	1	7	85	1999-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271351	2017-08-28	2017-08-28	416071294	PENAGOS JONAPA ALEJANDRA DEL PILAR	1	1	81	1996-10-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271352	2017-08-28	2017-08-28	312069742	GARCIA CRUZ CINTHYA VANESA	1	1	81	1996-04-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271353	2017-08-28	2017-08-28	418046038	CALAN SANCHEZ FRANCISCO JAVIER	1	1	85	1998-04-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271354	2017-08-28	2017-08-28	307252931	SANCHEZ SANCHEZ DULCE SANDRA	1	1	78	1991-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271355	2017-08-28	2017-08-28	514026129	COVARRUBIAS LOPEZ JOSE GERARDO	1	1	83	1981-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271356	2017-08-28	2017-08-28	314156253	MENES DE LA HUERTA MARIA FERNANDA	1	1	7	1998-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271357	2017-08-28	2017-08-28	3132230929	LEOCADIO CHAVEZ DANIEL HIRAM	1	4	83	1996-04-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271358	2017-08-28	2017-08-28	401042654	SOLANO BELTRAN FERNANDO	1	2	84	1980-02-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271359	2017-08-28	2018-03-02	315235195	REYES HERNANDEZ BALDEMAR SALVADOR	1	4	82	1999-04-19	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271360	2017-08-28	2017-08-28	302130238	MARTINEZ PEREZ GUADALUPE	1	3	80	1985-12-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271361	2017-08-28	2017-08-28	314197128	COVARRUBIAS RUIZ KARLA NATALYA	1	4	86	1998-08-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271362	2017-08-28	2017-08-28	377089745	CASTILLO NUÑEZ ANA MARIA	1	2	86	1995-07-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271363	2017-08-28	2018-03-08	314126728	RUIZ AVILA ANA BELEM	1	4	86	1997-12-15	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271364	2017-08-28	2017-08-28	307234874	FRAGOSO RAMON JESSICA	1	2	90	1991-08-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271365	2017-08-28	2017-08-28	313198160	PANTOJA CEDEÑO ROBERTO YAMIL	1	1	89	1996-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271366	2017-08-28	2017-08-28	416080317	CAMARILLO RANGEL JOSE MISAEL	1	7	81	1992-01-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271367	2017-08-28	2018-08-22	313108448	ISIDRO GONZALEZ JESSICA	1	1	79	1996-07-30	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271368	2017-08-28	2018-04-09	312111195	LABRA ALVAREZ VIRIDIANA	1	6	85	1996-02-01	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271369	2017-08-28	2017-08-28	311089570	AGUILAR MONTES JUAN DANIEL	1	2	79	1995-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271370	2017-08-28	2017-08-28	301045250	CARDENAS JUAREZ ANA MARCELA	1	5	7	1981-12-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271371	2017-08-28	2017-08-28	311253456	MARTINEZ HERRERA LESLIE MARLENE	1	2	78	1994-10-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271372	2017-08-28	2017-08-28	312083526	CID SALINAS DIEGO ALEJANDRO	1	1	83	1995-08-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271373	2017-08-28	2017-08-28	310222677	ZAMORA SANTOS ALBERTO	1	1	85	1994-04-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271374	2017-08-28	2017-08-28	305097299	ARREOLA PEREZ SERGIO MANUEL	1	2	84	1986-10-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271375	2017-08-28	2017-08-28	310282486	SERNA ZAPIEN MIRIAM	1	2	84	1994-06-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271376	2017-08-28	2017-08-28	418046306	GOMEZ GARCIA CHRISTOPHER	1	2	85	1999-05-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271377	2017-08-28	2017-08-28	313069192	ASTORGA SANCHEZ FRIDA	1	1	80	1997-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271378	2017-08-28	2017-08-28	313270017	SANDOVAL OCAMPO MIGUEL ANGEL	1	2	87	1997-04-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271379	2017-08-29	2017-08-29	315017625	LOPEZ MARTINEZ JUAN PABLO	1	4	87	1997-11-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271380	2017-08-29	2017-08-29	307179575	DANIEL MARTINEZ NORMA ANGELICA	1	4	78	1991-02-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271381	2017-08-29	2017-08-29	303020853	NAVARRETE MADRID HECTOR IVAN	1	2	73	1988-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271382	2017-08-29	2017-08-29	311269891	SANCHEZ CERON JOSE ALAN	1	4	85	1995-10-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271383	2017-08-29	2017-08-29	313118685	TORRES ALVARADO ROGELIO	1	1	89	1996-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271384	2017-08-29	2017-08-29	517023749	VIDAL MARTINEZ CRISTIAN ENRIQUE	1	2	82	1993-07-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271385	2017-08-29	2017-08-29	312125938	ALTAMIRANO DEL RAZO DIEGO	1	4	85	1996-08-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271386	2017-08-29	2017-08-29	313232662	SEGURA NAVA DIEGO RICARDO	1	5	84	1997-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271387	2017-08-29	2017-08-29	313308239	TAPIA VELAZQUEZ GERARDO	1	3	78	1997-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271388	2017-08-29	2017-08-29	315069459	PACHECO HERNANDEZ MARIE JOSE	1	1	7	1999-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271389	2017-08-29	2017-08-29	718003027	RODRIGUEZ HERNANDEZ PAOLA GUADALUPE	1	1	89	1994-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271390	2017-08-29	2017-08-29	312058151	MARTIN GARCIA GERARDO	1	1	85	1996-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271391	2017-08-29	2017-08-29	96006168	CHAVEZ MEJIA JOSE IVAN	1	4	85	1983-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271392	2017-08-30	2017-08-30	314345824	QUINTANA HERNANDEZ NOEMI	1	7	84	1998-11-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271393	2017-08-30	2017-08-30	313699382	CANIZAL OSUNA JOSE GERARDO	1	1	85	1997-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271394	2017-08-30	2017-08-30	313347179	VALDIVIA DIAZ LISSETTE	1	1	85	1997-07-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271395	2017-08-30	2017-08-30	308085112	FERNANDEZ CARRILLO DANIELA	1	2	85	1991-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271396	2017-08-30	2017-08-30	313106750	GUERRERO GUTIERREZ ANGEL PATRICIA	1	1	80	1995-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271397	2017-08-30	2017-08-30	112001089	RAMIREZ CORDOVA JUAN CARLOS	1	2	84	1999-08-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271398	2017-08-31	2017-08-31	312281997	SOLARES MORENO ELISA	1	3	79	1995-03-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271399	2017-08-31	2017-08-31	418025358	MORENO ZUÑIGA ERICK OCTAVIO	1	4	82	1997-07-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271400	2017-08-31	2017-08-31	107002046	HERNANDEZ ARUMIR RAUL DANIEL	1	1	85	1994-07-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271401	2017-08-31	2017-08-31	311220717	SANDOVAL MILLAN STEFANY VALERIA	1	4	78	1993-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271402	2017-08-31	2017-08-31	310225269	VAZQUEZ MARTINEZ ROBERTO ABRAHAM	1	5	85	1994-01-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271403	2017-08-31	2017-08-31	311002775	BRAVO JERONIMO MITZI MARIANA	1	1	84	1994-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271404	2017-08-31	2017-08-31	312049416	NAJERA MORA DIEGO ALEJANDRO	1	1	80	1995-10-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271405	2017-08-31	2017-08-31	311132683	OSORIO GALICIA SAUL	1	4	79	1995-09-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271406	2017-08-31	2017-08-31	310544063	CARCAMO OROZCO MARCO ANTONIO	1	2	75	1993-05-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271407	2017-08-31	2017-08-31	313574016	GONZALEZ DESPAGNE NINA	1	2	80	1996-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271408	2017-08-31	2017-08-31	418059283	MURRIETA PEREZ RIGEL ARMANDO	1	2	7	1996-06-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271409	2017-08-31	2017-08-31	AACE770819	ALCANTARA CONCEPCION ERNESTO	2	1	89	1977-08-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271410	2017-08-31	2017-08-31	315233706	FAJARDO MONDRAGON DIEGO	1	1	85	1999-07-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271411	2017-08-31	2017-08-31	311066968	AMARO MARTINEZ HILLARY ESTEFANIA	1	7	82	1995-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271412	2017-08-31	2017-08-31	93355144	MONROY ROMERO FLORENCIO	1	1	79	1974-02-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271413	2017-09-01	2017-09-01	GARM911017	GARCIA RODRIGUEZ MISAEL JOSUE	3	3	88	1991-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271414	2017-09-01	2017-09-01	74106055	GISPERT GALVAN MARTHA PATRICIA	1	4	84	1958-08-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271415	2017-09-01	2018-03-05	309168629	MARTINEZ TELLEZ BERENICE	1	1	85	1993-02-27	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271416	2017-09-01	2017-09-01	403029471	INFANTE HERNANDEZ SERGIO	1	2	81	1984-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271417	2017-09-01	2018-03-06	313303894	MENDOZA ZURITA JORGE RAMON	1	1	85	1997-03-27	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271418	2017-09-01	2017-09-01	110004273	REYES ANDRADE ALONDRA	1	1	79	1997-05-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271419	2017-09-01	2018-03-07	305027119	BALTAZAR CORONA DAVID ISAAC	1	1	82	1989-11-17	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271420	2017-09-01	2017-09-01	RIDL900221	RIVERA DAVILA JOSE LUIS	3	5	150	1990-02-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271421	2017-09-01	2017-09-01	315324783	ALVARADO RODRIGUEZ CINTYA ESTEFANIA	1	2	84	1999-08-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271422	2017-09-01	2017-09-01	312351005	SANCHEZ ORTIZ EMMANUEL	1	2	85	1995-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271423	2017-09-01	2017-09-01	418490321	PINCHULAF LOAIZA FRANCISCO ANTONIO	1	4	84	1988-12-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271424	2017-09-01	2017-09-01	312177999	NAVARRO GRANADOS LUCIA ERANDI	1	5	84	1996-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271425	2017-09-04	2017-09-04	315338306	RAMOS PEREZ ZAIRA	1	1	84	1999-03-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271426	2017-09-04	2017-09-04	314188593	RODRIGUEZ NANNI KARLA SOFIA	1	1	89	1998-08-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271427	2017-09-04	2017-09-04	309328559	VEGA AGUILAR NOEMI	1	7	84	1993-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271428	2017-09-04	2017-09-04	SOEI910412	SOSA EHNIS INGRID MARGARITA	2	4	73	1991-04-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271429	2017-09-04	2018-08-08	315025222	SANDOVAL AMADOR CARLOS EMILIANO	1	4	79	1999-01-19	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271430	2017-09-04	2017-09-04	315025198	SANCHEZ ACOSTA ENRIQUE	1	4	85	1999-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271431	2017-09-04	2017-09-04	315021530	SANTIAGO VIDAL CECILIA	1	1	89	1999-02-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271432	2017-09-04	2017-09-04	416088045	BARRON ARELLANO KARIME ANAHI	1	6	80	1997-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271433	2017-09-04	2017-09-04	94244580	FLORES VAZQUEZ DIANA LUZ	1	1	80	1978-12-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271434	2017-09-05	2017-09-05	310105785	HERNANDEZ GARCIA KARINA	1	2	78	1994-09-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271435	2017-09-05	2017-09-05	313581544	CORDOBA ROSARIO KAREN DANAHE	1	1	89	1997-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271436	2017-09-05	2017-09-05	315266744	CORDOVA CERVANTES SEBASTIAN	1	7	85	1999-06-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271437	2017-09-05	2017-09-05	309116084	TAPIA MELO ALAM MAURICIO	1	5	80	1993-03-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271438	2017-09-05	2017-09-05	313057937	GARCES BARCENA ANA SOFIA	1	4	90	1997-07-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271439	2017-09-05	2017-09-05	306219234	CONTRERAS YTTESEN LIBIA YURITZI	1	2	82	1989-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271440	2017-09-05	2017-09-05	308196377	REYES DIAZ OSCAR ROBERTO	1	2	81	1991-11-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271441	2017-09-05	2017-09-05	418046856	ALCANTARA HOYOS JOSE CARLOS	1	1	85	1999-01-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271442	2017-09-05	2017-09-05	AEDP731113	ANGELES DELGADO PATRICIA	2	1	7	1973-11-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271443	2017-09-06	2017-09-06	414167232	NADER RILOBA MARIA DEL MAR	1	1	22	1994-01-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271444	2017-09-06	2017-09-06	313004553	DAVILA LAMAS LUIS ANTONIO	1	2	85	1997-06-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271445	2017-09-06	2017-09-06	313326327	AVELINO REGALADO LIBNI SAMUEL	1	1	85	1997-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271446	2017-09-06	2017-09-06	314187510	RODRIGUEZ FLORES ANGEL DAVID	1	1	88	1998-08-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271447	2017-09-06	2017-09-06	303289528	SANTIAGO GARCIA ANAYELY	1	1	84	1987-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271448	2017-09-06	2017-09-06	313096217	ESPINOZA MARTINEZ JAZMIN	1	7	81	1997-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271449	2017-09-07	2017-09-07	314066936	RAMIREZ VENEGAS ANDREA KARIME	1	4	80	1997-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271450	2017-09-07	2017-09-07	312119160	MONDRAGON HERNANDEZ DANIELA	1	6	82	1996-08-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271451	2017-09-07	2017-09-07	517490503	GONZALEZ FORSTER SARA LUA	1	5	84	1987-07-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271452	2017-09-07	2017-09-07	312294977	CASTILLO NAVA ALAN GUSTAVO	1	1	85	1995-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271453	2017-09-07	2017-09-07	413079466	GOMEZ CAMBEROS YAVIN ISAC	1	4	80	1992-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271454	2017-09-11	2017-09-11	302279182	MOSQUEDA MANJARREZ ABRIL SOLEDAD	1	1	84	1981-12-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271455	2017-09-11	2018-08-30	313169780	MARTINEZ LEYVA LISSET ANAHI	1	1	90	1997-11-10	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271456	2017-09-11	2017-09-11	312048268	ROSALES ROJAS OCTAVIO	1	4	79	1996-05-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271457	2017-09-11	2017-09-11	304127395	RAMIREZ CABAÑAS ALMA KAREN	1	1	99	1989-04-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271458	2017-09-11	2017-09-11	416101496	ROMERO CAUDILLO SERGIO IVAN	1	7	80	1992-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271459	2017-09-12	2017-09-12	313221521	HERNANDEZ CARDEÑA MARIA FERNANDA	1	2	80	1997-11-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271460	2017-09-12	2017-09-12	311003914	GALLEGOS HADDAD KAREN EDIT	1	7	81	1995-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271461	2017-09-12	2017-09-12	518012379	VITELA HERNANDEZ VLADIMIR	1	4	84	1988-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271462	2017-09-12	2017-09-12	312280172	PEREZ LUNA AMAURY DAVID	1	7	85	1995-09-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271463	2017-09-12	2017-09-12	302073959	CASTILLO LLANAS GONZALO ENRIQUE	1	1	79	1986-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271464	2017-09-13	2017-09-13	309208680	PEREZ CASTAÑEDA ALMA LETICIA	1	1	90	1992-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271465	2017-09-13	2017-09-13	314082721	CONTRERAS ANGELES CESAR URIEL	1	4	85	1998-04-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271466	2017-09-13	2017-09-13	HEZA600912	HERNANDEZ ZAMORA MARIA ALICIA	2	1	77	1960-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271467	2017-09-13	2017-09-13	414078682	ALVARADO SANCHEZ ULISES DAVID	1	7	85	1993-06-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271468	2017-09-13	2017-09-13	91218339	CRUZ VICTORINO SONIA	1	7	82	1975-08-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271469	2017-09-13	2017-09-13	313227066	SALOME SANCHEZ AMAIRANY DARINKA	1	1	80	1997-03-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271470	2017-09-13	2017-09-13	311202807	PEREZ GONZALEZ DANYA ISABEL	1	2	80	1995-12-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271471	2017-09-13	2017-09-13	312166157	GARCIA GARCES RICARDO ALEXANDER	1	1	85	1996-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271472	2017-09-13	2017-09-13	312265236	MACHORRO QUIROZ SINAI	1	1	85	1996-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271473	2017-09-13	2017-09-13	TOBM780716	TORROELLA BRIBIESCA MARICARMEN	2	2	84	1978-07-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271474	2017-09-14	2017-09-14	315025813	AVILA CORREA JESSICA JAQUELINE	1	1	85	1995-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271475	2017-09-14	2017-09-14	FADA850421	FRANCO DAMM ALBERTO ANDRES	1	6	84	1985-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271476	2017-09-14	2017-09-14	307320650	SOSA NERI JOSE IVAN	1	1	86	1987-09-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271477	2017-09-18	2017-09-18	313037508	CRUZ ROQUE DIANA LAURA	1	7	84	1997-05-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271478	2017-09-18	2017-09-18	417125792	NACER RAMOS SILVIA	1	1	81	1982-04-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271479	2017-09-18	2017-09-18	314327970	LIPRANDI CORTES NAYELI	1	4	79	1998-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271480	2017-09-18	2018-08-20	315192748	DIAZ RESENDIZ GEMA ALICIA	1	4	80	1999-06-23	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271481	2017-09-18	2017-09-18	518013945	PEREZ TRINIDAD JOSE DAVID	1	4	90	1995-08-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271482	2017-09-18	2017-09-18	80405250	GONZALEZ ORTIZ ALEJANDRO	1	3	82	1965-02-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271483	2017-09-18	2017-09-18	311217562	GOMEZ FUENTES SAID ARTURO	1	5	87	1995-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271484	2017-09-18	2017-09-18	312311670	RAMIREZ RAMIREZ ROSA ALEJANDRA	1	1	85	1996-01-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271485	2017-09-18	2017-09-18	314342232	CHAVEZ GRANADOS VALERIA	1	3	80	1998-08-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271486	2017-09-18	2017-09-18	306262577	MELO SALAS MARLENE SINAI	1	1	90	1989-10-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271487	2017-09-25	2017-09-25	309230597	ENRIQUEZ CHAVEZ CARLOS EDUARDO	1	5	84	1992-07-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271488	2017-09-25	2017-09-25	315092260	TELLEZ ESCRIBANO MARIANA JANETH	1	1	84	1998-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271489	2017-09-26	2017-09-26	313003855	CORREA AQUINO SAULO	1	4	81	1997-08-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271490	2017-09-26	2017-09-26	477092049	CAMARILLO RANGEL ABIEL JEHU	1	4	81	1994-02-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271491	2017-09-26	2017-09-26	308323001	SANCHEZ RODRIGUEZ ALBERTO	1	1	88	1992-10-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271492	2017-09-26	2017-09-26	514015291	GONZALEZ TRILLO ANA CAROLINA	1	1	90	1989-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271493	2017-09-26	2017-09-26	314154792	GUADARRAMA MARTINEZ MIGUEL	1	1	85	1998-03-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271494	2017-09-26	2017-09-26	313236732	TORRES PEREZ JAQUELINE	1	1	85	1996-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271495	2017-09-27	2017-09-27	315105209	LOPEZ LINCE ARIADNA GEORGINA	1	4	84	1997-12-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271496	2017-09-27	2017-09-27	311078264	FERNANDEZ AGUIRRE JUAN MIGUEL	1	4	85	1995-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271497	2017-09-27	2017-09-27	315331974	ALBA FLORES RAQUEL	1	4	80	1999-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271498	2017-09-27	2017-09-27	417100777	ESTRADA LEON ALEJANDRO	1	1	85	1998-06-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271499	2017-09-28	2017-09-28	314278157	GARCIA SALAZAR JUAN JESUS	1	1	89	1997-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271500	2017-09-28	2017-09-28	517494525	MANZANO MORA FRANCISCO JAVER	1	1	83	1990-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271501	2017-09-28	2017-09-28	415021368	MENDEZ SANCHEZ EDWIN	1	3	82	1995-11-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271502	2017-10-02	2017-10-02	411132514	GARCIA SANTANA KARINA EUNICE	1	1	81	1985-04-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271503	2017-10-02	2017-10-02	415070823	ROMERO GARCIA RAQUEL	1	7	84	1994-03-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271504	2017-10-03	2017-10-03	312040901	BENITEZ DOMINGUEZ CESAR FERNANDO	1	1	90	1996-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271505	2017-10-03	2017-10-03	416105061	BRAVO VILLARREAL DIEGO	1	1	80	1997-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271506	2017-10-03	2017-10-03	312311395	VALERIO MARTINEZ EDUARDO	1	1	85	1996-12-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271507	2017-10-03	2017-10-03	315158391	SANTILLAN GODINEZ ALAN ALEJANDRO	1	1	85	1999-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271508	2017-10-03	2017-10-03	305013455	HERNANDEZ SANTOS JOSE ANTONIO	1	4	79	1989-02-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271509	2017-10-03	2017-10-03	315075502	HERNANDEZ MANCILLA ZELTZIN	1	1	85	1999-12-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271510	2017-10-03	2018-04-18	313319758	CALDERON FLORES MARIA FERNANDA	1	6	84	1997-01-20	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271511	2017-10-03	2017-10-03	311284191	SERRANO CRUZ IRVING ALBERTO	1	1	83	1995-11-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271512	2017-10-04	2017-10-04	305023214	ZARATE CHAVEZ MERILIN ADRIANA	1	7	85	1989-02-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271513	2017-10-04	2017-10-04	311324183	ANINCER ANGEL MARIANNE	1	1	89	1995-09-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271514	2017-10-04	2017-10-04	309238500	HUERTA MARTINEZ ALEJANDRO	1	4	84	1992-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271515	2017-10-04	2017-10-04	411050289	TZOMPANTZI CRUZ VICTOR HUGO	1	1	84	1991-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271516	2017-10-04	2017-10-04	312081876	CASTILLO OLVERA JESUS	1	7	80	1991-09-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271517	2017-10-05	2017-10-05	311169007	ACEVEDO YAMAMOTO MONTSERRAT MIDORI	1	7	79	1994-12-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271518	2017-10-05	2017-10-05	311083974	CAMPOS FLORES JESUS AMANDO	1	1	80	1995-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271519	2017-10-05	2017-10-05	718031981	LAZO PAREDES MARIANNE ANTONELL XIOMARA	1	2	89	1997-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271520	2017-10-09	2017-10-09	313245336	GONZALEZ CASTILLO ARVIN ROGELIO	1	1	84	1997-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271521	2017-10-09	2017-10-09	416035908	MAR RODRIGUEZ JESUS ABRAHAM	1	1	85	1996-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271522	2017-10-09	2017-10-09	415079266	MORALES GONZALEZ FAUSTO FELIPE	1	1	79	1996-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271523	2017-10-09	2017-10-09	315191404	CRUZ CRUZ SANDRA	1	1	81	1999-03-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271524	2017-10-09	2018-06-07	310143518	FUENTES GARAY GUSTAVO ALEJANDRO	1	2	79	1994-12-28	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271525	2017-10-10	2017-10-10	415122506	VELASQUEZ MATUS DANIEL	1	1	85	1996-03-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271526	2017-10-10	2017-10-10	312060763	VAZQUEZ NORICUMBO JORGE JAVIER	1	5	80	1995-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271527	2017-10-10	2017-10-10	311219061	LUNA GARCIA TANIA	1	1	82	1995-01-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271528	2017-10-10	2017-10-10	417077457	MARQUEZ MARTINEZ ZAIDA MHETZI	1	1	84	1998-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271529	2017-10-10	2017-10-10	313335718	SERRANO SANCHEZ BRYANT RICARDO	1	1	85	1996-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271530	2017-10-11	2018-05-23	313052334	RODRIGUEZ ALFEREZ MARIA LETICIA	1	1	85	1997-08-13	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271531	2017-10-11	2017-10-11	312104722	FLORES VARGAS ANDREA XIMENA	1	1	80	1996-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271532	2017-10-11	2017-10-11	BAMR930618	BARRAZA MENDOZA ROBERTO DE JESUS	2	7	79	1993-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271533	2017-10-11	2018-08-23	302262702	MENDEZ VELA IVAN	1	7	84	1986-10-25	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271534	2017-10-11	2017-10-11	313003305	CUEVAS AVILES REBECA ARIADNA	1	4	85	1996-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271535	2017-10-11	2017-10-11	418000670	ROMERO CAMPOS JESUS MANUEL	1	4	78	1995-03-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271536	2017-10-12	2017-10-12	315778414	HERNANDEZ NUÑEZ DENISSE ANDREA	1	7	82	1998-01-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271537	2017-10-12	2017-10-12	310042820	AGUILAR AVILA DAVID FRANCISCO	1	1	79	1994-09-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271538	2017-10-12	2017-10-12	312150152	RIVERA MONDRAGON EMILY	1	1	79	1995-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271539	2017-10-12	2017-10-12	412010118	ZAGO YAÑEZ GERARDO	1	7	79	1993-05-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271540	2017-10-12	2017-10-12	414490422	LEAL GOMEZ DIEGO ARMANDO	1	7	84	1990-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271541	2017-10-16	2017-10-16	417037675	GONZALEZ PINEDA DANIEL	1	5	80	1994-09-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271542	2017-10-16	2017-10-16	310301073	OLVERA MACIEL MIGUEL ANGEL	1	2	84	1994-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271543	2017-10-16	2017-10-16	MORL901017	MORENO ARAUJO LAURA	3	1	66	1990-10-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271544	2017-10-17	2017-10-17	310070124	CORONA PEREZ PAULINA	1	2	90	1994-10-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271545	2017-10-17	2017-10-17	313087376	NIETO AMBRIZ FRIDA SOFIA	1	1	79	1997-09-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271546	2017-10-17	2017-10-17	311140259	CORONEL GARCIA RUBEN	1	2	90	1995-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271547	2017-10-17	2017-10-17	TAKS830701	TAKAGI SHUICHI	1	1	8	1983-07-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271548	2017-10-17	2018-04-19	WADH940921	WADA HITOMI	1	1	8	1994-09-21	F	t	2	apellido p	apellido m	nombres	0	none	none	0
271549	2017-10-17	2017-10-17	312115320	LOZANO ACUÑA IVAN	1	1	85	1996-06-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271550	2017-10-17	2017-10-17	309264484	RODRIGUEZ SALDAÑA GABRIELA AYDEE	1	7	80	1993-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271551	2017-10-17	2017-10-17	415000286	PEÑA REYES ANUAR ESTEBAN	1	1	85	1995-02-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271552	2017-10-17	2017-10-17	412050581	GUTIERREZ VALDEZ DULCE OLIVIA	1	4	79	1992-12-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271553	2017-10-17	2017-10-17	3603088	GONZALEZ APARICIO ULISES	1	2	75	1995-10-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271554	2017-10-18	2017-10-18	wadt950612	WADA TAKAYOSHI	1	1	8	1995-06-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271555	2017-10-18	2017-10-18	415149697	DOMINGUEZ HERMOSO JAIR EDUARDO	1	2	83	1992-08-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271556	2017-10-19	2017-10-19	417062088	MENDEZ HERRERA JOEL ALEJANDRO	1	3	78	1998-05-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271557	2017-10-19	2017-10-19	418039438	TELLEZ GIRON OCAÑA CARLOS	1	4	84	1994-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271558	2017-10-19	2017-10-19	514220217	CABRERA MARTI LANDER	1	2	86	1987-08-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271559	2017-10-19	2017-10-19	414006955	VARGAS USCANGA ALEJANDRO	1	7	90	1994-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271560	2017-10-20	2017-10-20	311023491	PEREZ TRONCOSO SILVIA EDITH	1	4	85	1994-12-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271561	2017-10-20	2017-10-20	312103990	CRUZ SANCHEZ LUIS FERNANDO	1	1	86	1996-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271562	2017-10-20	2017-10-20	112002787	LEON GARCIA HASSIBE	1	1	86	1998-11-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271563	2017-10-20	2017-10-20	311236011	REYES HERNANDEZ RUTH MONSERRAT	1	1	90	1995-01-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271564	2017-10-23	2017-10-23	308205284	TORO JAIMES JORGE OSWALDO	1	4	90	1992-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271565	2017-10-24	2017-10-24	310041524	MEDINA ALVARADO VICTOR HUGO	1	1	85	1993-11-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271566	2017-10-24	2017-10-24	311319996	ELIAS ROBLES CESAR AGUSTIN	1	1	85	1995-10-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271567	2017-10-25	2017-10-25	308512359	HUANG ANTONIO MEI WON	1	6	83	1991-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271568	2017-10-25	2017-10-25	315117608	GARCIA MEJIA ARCELIA DEL CARMEN	1	1	84	1998-10-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271569	2017-10-25	2017-10-25	313243851	CACAHUATITLA OJEDA JEANNIE GUADALUPE	1	3	84	1997-09-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271570	2017-10-26	2017-10-26	313125285	OROZCO SALAZAR NAYELI YEQUENTEL	1	7	79	1997-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271571	2017-10-26	2017-10-26	310110989	CABEZA TORRES CARLOS ALBERTO	1	2	82	1994-04-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271572	2017-10-30	2017-10-30	315099506	GARCIA MARTINEZ ARIANA CITLALLI	1	1	85	1999-04-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271573	2017-10-30	2017-10-30	412117444	MONTIEL APOLONIO JOVVANY	1	1	81	1992-10-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271574	2017-10-30	2017-10-30	310216830	RODRIGUEZ CANTERO MAYRA CEMALI	1	1	86	1994-07-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271575	2017-10-30	2017-10-30	316669959	BADILLO HERNANDEZ SAUL	1	4	85	1999-02-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271576	2017-10-30	2017-10-30	309182070	LIRA TORRES EVELYN YOCZIRA	1	1	79	1993-07-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271577	2017-11-03	2017-11-03	ZUBO751221	ZUÑIGA BECERRA ODRA	2	3	82	1975-12-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271578	2017-11-06	2017-11-06	COVM740318	CONSTANTINO VALENTINO MONICA	3	3	66	1974-03-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271579	2017-11-06	2017-11-06	518491125	FLOOVER HERNANDEZ ROJAS STEVEN	1	1	90	1991-03-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271580	2017-11-06	2017-11-06	312148849	VELAZQUEZ GOMEZ SARA	1	3	89	1995-10-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271581	2017-11-06	2017-11-06	GOEV880915	GOMEZ ESPINOSA VICTOR MANUEL	2	1	85	1988-09-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271582	2017-11-06	2017-11-06	107004057	REZA OLVERA SUSANA	1	1	79	1994-09-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271583	2017-11-07	2018-05-22	414067194	CHAVEZ BECERRIL FRANCISCO	1	4	84	1995-02-21	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271584	2017-11-08	2017-11-08	308060764	BAUTISTA POPOCA ADRIANA	1	1	79	1991-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271585	2017-11-08	2017-11-08	307120175	RIOS CALNACASCO SANDRA LUZ	1	2	80	1992-09-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271586	2017-11-09	2017-11-09	314012562	OCHOA JUAREZ ANA GABRIELA	1	7	82	1998-06-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271587	2017-11-09	2017-11-09	310076315	FRANCO FLORES ANA ELISA	1	6	90	1993-07-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271588	2017-11-09	2017-11-09	312024611	MENDOZA OLAYA MARIO ALBERTO	1	1	81	1996-01-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271589	2017-11-09	2017-11-09	313509900	ROSALES DE PAULA MUÑOZ ANA SOFIA	1	2	84	1997-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271590	2017-11-10	2018-08-21	314321648	RAMIREZ DELGADILLO FERNANDO GABRIEL	1	1	85	1998-03-17	M	t	2	apellido p	apellido m	nombres	0	none	none	0
271591	2017-11-10	2017-11-10	313167810	DELGADO MERAZ BRENDA NAYELI	1	1	83	1997-12-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271592	2017-11-10	2017-11-10	313196599	PORTILLO SANCHEZ MARIA ELENA	1	1	86	1997-04-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271593	2017-11-13	2017-11-13	MOMA560812	MONTOYA MENDOZA ALEJANDRO JORGE	2	3	83	1956-08-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271594	2017-11-13	2017-11-13	308065398	CORDERO PALACIOS MARIA GUADALUPE	1	1	85	1991-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271595	2017-11-13	2017-11-13	314049522	GOMEZ HERRERA MARIA ANDREA LILIANA	1	4	79	1998-08-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271596	2017-11-14	2017-11-14	SAHM600722	SABANERO HERNANDEZ MOISES	2	5	82	1960-07-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271597	2017-11-14	2017-11-14	403015683	GONZALEZ GUADARRAMA MARIA DE JESUS	1	1	95	1984-12-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271598	2017-11-17	2017-11-17	300033092	HANDALL GONZALEZ LEILA NATALIA	1	1	78	1984-08-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
271599	2017-11-27	2017-11-27	CACX750420	CARMONA CORTES ALBERTO RAMON	2	1	80	1975-04-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271600	2017-11-28	2017-11-28	311321728	RICARDEZ ORTIGOSA ADRIAN	1	4	85	1995-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271601	2017-11-28	2017-11-28	413017268	REBOLLO HERNANDEZ ROBERTO	1	1	79	1994-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
271602	2017-11-28	2017-11-28	306109423	CORREA GONZALEZ CESAR ALEJANDRO	1	1	85	1990-05-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280564	2018-01-29	2018-01-29	311128455	RANGEL GRIMALDO LUZ MARIANA	1	3	80	1995-01-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280565	2018-01-29	2018-01-29	310168124	LUNA PATIÑO GABRIELA	1	3	84	1994-05-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280566	2018-01-29	2018-01-29	310329714	HERRERA SANTIAGO DAVID	1	1	90	1994-12-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280567	2018-01-29	2018-01-29	313013690	ALVAREZ MARQUEZ DONOVAN ENRIQUE	1	7	90	1990-09-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280568	2018-01-29	2018-01-29	301133494	GARCIA PEREZ JONATHAN	1	1	81	1985-01-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280569	2018-01-29	2018-01-29	415070155	GUERRERO ORTIZ RICARDO	1	1	90	1995-02-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280570	2018-01-29	2018-01-29	310332048	ZUÑIGA URBAN EDER	1	1	83	1994-04-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280571	2018-01-29	2018-08-06	313163441	HUERTA RUIZ LUIS GERARDO	1	4	81	1997-03-10	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280572	2018-01-29	2018-01-29	SAMG960316	SALDIVAR MENDOZA GRETA ELIZABETH	1	5	79	1996-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280573	2018-01-29	2018-01-29	AEMA930628	AMEZCUA MONTIEL ABRIL	2	1	79	1993-06-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280574	2018-01-29	2018-01-29	300198638	VAZQUEZ FLORES JUAN MARCOS	1	7	85	1984-03-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280575	2018-01-29	2018-01-29	311174074	HUITRON VEGA XIMENA ARLEN	1	1	84	1995-12-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280576	2018-01-29	2018-08-14	312355065	BLANCAS ANALCO MARTHA CAROLINA	1	5	80	1996-03-06	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280577	2018-01-30	2018-01-30	310273473	OLALDE RAMIREZ GUADALUPE SARAHI	1	1	90	1994-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280578	2018-01-30	2018-08-28	HEJJ970602	HERNANDEZ JUAREZ JESUS ROBERTO	1	6	82	1997-06-02	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280579	2018-01-30	2018-01-30	31188484	HUERTA FLORES ILSE MAGALI	1	2	84	1994-06-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280580	2018-01-30	2018-01-30	313262317	GARCIA CORREA ANA LAURA	1	1	79	1997-03-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280581	2018-01-30	2018-01-30	309097394	CRUZ MARTINEZ CLARISA	1	1	90	1993-09-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280582	2018-01-30	2018-01-30	416146589	MARTINEZ ROMAN MARIA ISABEL	1	1	81	1973-07-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280583	2018-01-30	2018-01-30	416110959	LEAL ESCUTIA VALDEMAR	1	5	84	1997-10-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280584	2018-01-30	2018-01-30	311023927	ROSAS RAMIREZ ANDRES	1	2	80	1995-04-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280585	2018-01-30	2018-01-30	416112269	PERIAÑEZ CORONADO EVELYN	1	2	84	1995-09-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280586	2018-01-31	2018-01-31	313305004	NAVA TREJO JULIO ERNESTO	1	2	79	1997-04-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280587	2018-01-31	2018-01-31	HEHM880925	HERNANDEZ HERNANDEZ MANUEL	2	5	79	1988-09-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280588	2018-01-31	2018-01-31	SOVC671002	SOLIS VELAZQUEZ CLAUDIA	1	1	83	1967-10-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280589	2018-01-31	2018-01-31	85222287	GARCIA ROCHA DAVID	1	1	82	1969-06-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280590	2018-01-31	2018-01-31	BAST901015	BAENA SANCHEZ MARIA TERESA DE JESUS	3	1	111	1990-10-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280591	2018-01-31	2018-01-31	312182045	ARRIAGA GONZALEZ AGNI FAMITSAI	1	5	82	1996-04-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280592	2018-01-31	2018-01-31	315320747	OROZCO RAMIREZ NAYLEA ODHET	1	1	80	1999-06-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280593	2018-01-31	2018-01-31	314588807	GALVAN LOPEZ GEORGINA	1	3	78	1998-01-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280594	2018-01-31	2018-01-31	313617298	CORDOVA GARCIA PAULA ANDREA	1	4	84	1996-12-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280595	2018-01-31	2018-01-31	416001389	MATEOS URBINA OCTAVIO	1	1	85	1995-09-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280596	2018-01-31	2018-01-31	OICL501011	OLIVER COSTILLA LUCIO FERNANDO	2	4	80	1950-10-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280597	2018-01-31	2018-01-31	HEME970212	HERNANDEZ MEDINA ESTEBAN	1	4	79	1997-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280598	2018-01-31	2018-01-31	310009542	ENRIQUEZ CARMONA MARIA DEL CARMEN	1	1	84	1994-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280599	2018-01-31	2018-01-31	310058272	BRAVO ASCENCION GEORGINA	1	1	90	1994-04-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280600	2018-01-31	2018-01-31	312151197	VELAZQUEZ LOPEZ GUADALUPE CAROLINA	1	2	79	1995-12-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280601	2018-01-31	2018-01-31	CALA780731	CASTILLO LOPEZ ADRIANA ISABEL	1	1	7	1978-07-31	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280602	2018-02-02	2018-02-02	CIPJ890305	CIFUENTES PEREZ TAYLOR JULIANA	1	2	7	1989-03-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280603	2018-02-02	2018-02-02	3503157	MATAMOROS GARCIA MARGARITA	1	1	75	1991-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280604	2018-02-02	2018-08-13	313203316	LUNA ZAVALA CLAUDIA GEORGINA	1	2	73	1996-12-08	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280605	2018-02-02	2018-02-02	HEEC971226	HERNANDEZ ELOTLAN CARLOS	1	4	80	1997-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280606	2018-02-02	2018-02-02	517009147	GODINEZ REVELES DANY	1	1	85	1989-04-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280607	2018-02-02	2018-02-02	3122833489	VALDES FLORES GABRIEL PEDRO	1	2	85	1995-11-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280608	2018-02-02	2018-02-02	315131334	BADILLO JIMENEZ AIKO YARET	1	1	79	1999-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280609	2018-02-02	2018-02-02	311096929	MUÑOZ MORALES LETICIA	1	2	90	1995-05-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280610	2018-02-02	2018-02-02	313074839	AVILA BAZAN BARBARA MELISSA	1	5	90	1997-01-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280611	2018-02-02	2018-02-02	416065426	CHAVEZ CASTILLO JOSE MARIA	1	3	79	1997-03-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280612	2018-02-02	2018-02-02	301275222	CAMPOS PEREZ FIDEL	1	1	82	1972-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280613	2018-02-02	2018-02-02	312048189	RODRIGUEZ ALZALDE KARLA MARIA	1	3	81	1996-10-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280614	2018-02-02	2018-02-02	314185176	NIETO GARCIA ALEJANDRA DEL CONSUELO	1	4	84	1998-03-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280615	2018-02-02	2018-02-02	310282259	RUIZ CORTES NOEMI SHARON	1	1	84	1994-01-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280616	2018-02-02	2018-02-02	417116806	MAGDALENO GARCIA ADRIANA ALFONSINA	1	5	84	1998-01-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280617	2018-02-02	2018-02-02	302084052	PEREZ REYES SARA LIBERTAD	1	5	82	1986-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280618	2018-02-02	2018-02-02	309171197	PAULIN RODRIGUEZ AMADOR ISAIAS	1	2	90	1993-05-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280619	2018-02-02	2018-08-21	MIMJ810210	MIRANDA MARTINEZ JIMENA	2	3	75	1981-02-10	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280620	2018-02-02	2018-02-02	315114566	RODRIGUEZ GOVEA LIZBETH	1	1	90	1999-06-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280621	2018-02-02	2018-02-02	HEPH870216	HERRERA PAZ HUGO DANIEL	1	5	102	1987-02-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280622	2018-02-02	2018-02-02	BEJM871114	BERTELY JIMENEZ MELINA PAOLA	1	1	7	1987-11-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280623	2018-02-02	2018-02-02	GAPF901217	GARCIA PEREZ FERNANDO	2	1	79	1990-12-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280624	2018-02-02	2018-02-02	312053613	CRUZ PEREZ DENISSE	1	2	79	1996-02-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280625	2018-02-02	2018-02-02	PUCS700519	PUNTOS CARBAJAL SILVIA	3	1	78	1970-05-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280626	2018-02-02	2018-02-02	418010415	DUEÑEZ GUERRA FERNANDO	1	1	80	1999-08-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280627	2018-02-06	2018-02-06	PAGL550217	PALACIOS GONZALEZ MARIA DE LOURDES	2	5	84	1955-02-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280628	2018-02-06	2018-02-06	311259520	FLORES RUIZ CLAUDIA MARIANA	1	4	85	1995-07-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280629	2018-02-06	2018-02-06	315138340	VAZQUEZ SAN JUAN ITZTLI ISIS	1	2	89	1999-05-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280630	2018-02-06	2018-02-06	315034338	CHAVEZ NAVARRETE ALAN DANIEL	1	1	84	1999-04-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280631	2018-02-06	2018-02-06	418046423	ISLAS RAMIREZ FERNANDO	1	1	85	1991-03-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280632	2018-02-06	2018-02-06	315160185	SANCHEZ CATEDRA DIEGO ISSAC	1	1	85	1998-12-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280633	2018-02-06	2018-02-06	315187001	MARTINEZ HERNANDEZ RICARDO	1	1	90	1999-09-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280634	2018-02-06	2018-02-06	POCE780912	PONCE CORREO EVELYN BERENICE	1	2	7	1978-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280635	2018-02-06	2018-02-06	415010588	GUEVARA CRUZ JOSE ADAN	1	1	90	1996-08-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280636	2018-02-06	2018-02-06	417070977	ROMERO GONZALEZ LUIS CARLOS	1	2	90	1997-01-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280637	2018-02-06	2018-02-06	315125494	AGUILERA TREJO REBECA	1	5	84	1998-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280638	2018-02-06	2018-02-06	315076619	CORTE DE LA ROSA ALEJANDRO	1	4	85	1999-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280639	2018-02-06	2018-02-06	312121703	REYES MARTINEZ THELMA CECILIA	1	2	78	1996-04-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280640	2018-02-06	2018-02-06	315599453	MARTINEZ VILLA ADRIAN	1	7	85	1996-10-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280641	2018-02-06	2018-02-06	SIME640908	SHIMAZAKI MIHO ELISA AKEMI	2	7	7	1964-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280642	2018-02-07	2018-02-07	311303788	SANTIBAÑEZ POSADAS JOSEFINA	1	1	84	1994-05-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280643	2018-02-07	2018-02-07	412049691	UGALDE ESCOBAR ANTONIO	1	1	90	1986-01-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280644	2018-02-07	2018-02-07	319136446	DEHESA CORONA VALERIA CAROLINA	1	2	79	1998-03-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280645	2018-02-07	2018-02-07	314276232	CAUDILLO PARTIDA LUIS	1	2	85	1998-03-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280646	2018-02-07	2018-08-24	418059300	ROSALES RUIZ PERLA ARACELI	1	1	7	1994-05-22	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280647	2018-02-07	2018-08-14	313345663	REYNOSA MONTOYA LAURA	1	4	85	1990-01-01	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280648	2018-02-07	2018-02-07	518492902	RAMIREZ ROMERO MARIA CAROLINA	1	1	79	1993-11-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280649	2018-02-07	2018-02-07	GISU7111203	GRIDA SUSETTE	2	3	7	1971-12-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280650	2018-02-07	2018-02-07	314027508	CRUZ VILLASEÑOR MONSERRAT	1	1	82	1998-04-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280651	2018-02-07	2018-02-07	94197307	TORRES FLORES ALEJANDRA GUADALUPE	1	1	82	1978-09-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280652	2018-02-07	2018-02-07	309180265	GARCIA NILA JUAN	1	7	99	1993-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280653	2018-02-07	2018-02-07	315115051	SOLANO MEJIA ALEJANDRA	1	4	80	1999-11-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280654	2018-02-07	2018-02-07	312208703	SANCHEZ CASTRO SINAI YESLENY	1	1	85	1996-04-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280655	2018-02-07	2018-02-07	415131832	HERNANDEZ MUNGUIA PABLO ADRIAN	1	4	79	1995-04-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280656	2018-02-07	2018-02-07	311326039	OLVERA DE LEON MONICA SHADANI	1	1	80	1994-03-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280657	2018-02-07	2018-02-07	303174860	RODRIGUEZ LUCAS VIRIDIANA REBECA	1	3	84	1987-08-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280658	2018-02-07	2018-02-07	416110650	OGATA AGUILAR JUMKO	1	7	84	1996-07-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280659	2018-02-07	2018-02-07	312115155	HERNANDEZ MENDEZ SARETH GEORGINA	1	1	73	1996-11-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280660	2018-02-08	2018-02-08	309339236	VAZQUEZ SANTIAGO JACOBO	1	2	90	1993-01-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280661	2018-02-08	2018-02-08	310561305	GUZMAN SANCHEZ EMILIANO	1	1	85	1994-04-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280662	2018-02-08	2018-02-08	HEME801115	HERNANDEZ MENDIOLA ERNESTO	1	2	7	1980-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280663	2018-02-08	2018-08-16	311087758	RANGEL JIMENEZ RICARDO	1	2	79	1995-08-11	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280664	2018-02-08	2018-02-08	416043646	DE LA ROSA TRONCOSO JIMENA	1	3	82	1995-02-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280665	2018-02-08	2018-02-08	313212408	GAMA RUIZ DIEGO ALEXIS	1	2	80	1997-06-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280666	2018-02-08	2018-02-08	314001201	TORRES SOLIS LUIS MARIO	1	1	79	1998-01-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280667	2018-02-08	2018-02-08	314074368	JIMENEZ NOGUEZ ANDREA HISSEL	1	3	78	1998-04-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280668	2018-02-08	2018-02-08	311210255	SANTIAGO CRUZ ALEJANDRA	1	7	85	1995-11-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280669	2018-02-08	2018-02-08	416013283	ACOSTA PINEDA ABRAHAM	1	2	76	1991-02-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280670	2018-02-08	2018-08-23	415023661	ESPINOZA SANCHEZ ENRIQUE	1	1	85	1995-01-29	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280671	2018-02-08	2018-02-08	309145354	RAMOS FERNANDEZ ALONSO	1	7	85	1993-05-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280672	2018-02-08	2018-02-08	413003023	PEREZ CAMARGO RUBEN	1	1	83	1994-08-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280673	2018-02-08	2018-02-08	308199426	LEYVA ORTIZ RODRIGO GILBERTO	1	1	83	1992-12-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280674	2018-02-08	2018-02-08	306264186	PEREZ VILLALOBOS LUZ ANGELICA	1	7	84	1990-03-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280675	2018-02-08	2018-02-08	510015861	CARDENAS SANCHEZ ENRIQUE	1	1	79	1985-01-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280676	2018-02-08	2018-02-08	310193757	GALEANA MORAN MIGUEL ANGEL	1	1	79	1994-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280677	2018-02-08	2018-02-08	310043865	AVILA CASCAJARES FATIMA SOFIA	1	4	7	1994-05-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280678	2018-02-09	2018-02-09	314268594	HERNANDEZ GONZALEZ ISAAC EDUARDO	1	1	80	1996-10-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280679	2018-02-09	2018-02-09	314284729	TRUJILLO LOPEZ IRAN	1	1	78	1997-11-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280680	2018-02-09	2018-02-09	514024503	RAMIREZ CORTES SARA ABIGAIL	1	1	116	1988-12-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280681	2018-02-09	2018-02-09	418038259	BAUTISTA SANCHEZ LUIS ANGEL	1	6	84	1996-06-05	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280682	2018-02-09	2018-02-09	315028326	MORENO GALVEZ GABRIELA	1	6	81	1999-06-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280683	2018-02-09	2018-02-09	314329912	ANGELES RODRIGUEZ ADRIANA	1	1	82	1998-10-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280684	2018-02-09	2018-02-09	315004810	BOCANEGRA MOLINA JESUS EMMANUEL	1	7	85	1998-01-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280685	2018-02-09	2018-02-09	517012639	CASTILLO RIOS BETSY FABIOLA	1	1	84	1992-02-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280686	2018-02-09	2018-02-09	412017588	LOPEZ MORA ULISES	1	7	79	1992-04-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280687	2018-02-09	2018-02-09	620182030	LAGOS DE LA CRUZ ANGELLO SAMY	1	5	85	1997-06-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280688	2018-02-09	2018-02-09	314048532	FERNANDEZ REYES ERICK SAUL	1	4	79	1998-01-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280689	2018-02-09	2018-02-09	417024310	CABALLERO MARTINEZ JORGE EDUARDO	1	1	83	1998-05-29	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280690	2018-02-09	2018-02-09	313248289	VELAZQUEZ PONCE NATHALIE	1	1	79	1997-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280691	2018-02-09	2018-02-09	312283159	SANDOVAL PEÑA GISELA	1	5	79	1996-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280692	2018-02-09	2018-02-09	312050564	LUGO GONZALEZ ERIC	1	1	85	1996-12-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280693	2018-02-09	2018-02-09	418153439	MUÑOZ OLVERA SELENE	1	1	82	1995-01-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280694	2018-02-09	2018-02-09	312320779	GARCIA GARCIA AXEL	1	4	90	1996-03-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280695	2018-02-09	2018-02-09	315235140	ROMERO LOZANO ALAIN FERNANDO	1	1	82	1995-04-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280696	2018-02-09	2018-02-09	310062039	AMADOR DIAZ SELENE GABRIELA	1	1	84	1994-02-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280697	2018-02-09	2018-08-23	416068726	MUJICA PEREZ GUSTAVO	1	1	85	1997-08-20	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280698	2018-02-12	2018-02-12	312094650	ALEMAN GUILLEN HAMLET	1	4	89	1995-12-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280699	2018-02-12	2018-02-12	312309271	LOPEZ JUAREZ MARIA DEL CARMEN	1	1	89	1996-05-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280700	2018-02-12	2018-02-12	310084039	GRAJALES AVILA CINTHIA HELYDE	1	1	90	1993-01-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280701	2018-02-12	2018-02-12	315328279	ZARABRIA PEREZ ANA VALERIA	1	1	89	1998-08-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280702	2018-02-12	2018-02-12	312053833	FUENTES DE LA ROSA DIANA LAURA	1	5	79	1996-11-24	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280703	2018-02-12	2018-02-12	312307734	GARCIA MEJIA JESUS SAUL	1	1	85	1996-10-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280704	2018-02-12	2018-02-12	314349592	BUSTOS FLORES IVETTE SOFIA	1	1	82	1997-03-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280705	2018-02-12	2018-02-12	COGA960902	COLMENARES GUTIERREZ ANGELICA DEL PILAR	1	1	80	1996-09-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280706	2018-02-12	2018-02-12	315229255	ARROYO JARAMILLO CINTHYA NATHALY	1	2	85	1999-07-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280707	2018-02-12	2018-02-12	312112271	PARRA BAUTISTA EDGARDO	1	1	85	1995-12-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280708	2018-02-12	2018-02-12	417006143	RAMIREZ PIÑA CLAUDIA CECILIA	1	1	78	1996-02-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280709	2018-02-12	2018-02-12	313067105	GONZALEZ JIMENEZ IVAN	1	1	84	1997-09-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280710	2018-02-12	2018-02-12	201802014	SANCHEZ CASARRUBIAS MARIA GUADALUPE	1	2	82	1995-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280711	2018-02-12	2018-02-12	306150983	GALINDO CORONADO NIDIA ALEJANDRA	1	1	80	1990-09-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280712	2018-02-12	2018-02-12	41606706	SALBITANO FERNANDEZ GIOVANNI	1	1	85	1997-03-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280713	2018-02-12	2018-02-12	313033122	AYALA MOLINA KARLA SHANTAL	1	2	82	1997-03-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280714	2018-02-12	2018-02-12	417067825	LORENZO PATRICIO ARTEMIO	1	1	81	1997-10-11	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280715	2018-02-12	2018-02-12	311078343	ESPARZA VAZQUEZ LUIS MAURICIO	1	4	85	1995-03-03	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280716	2018-02-12	2018-02-12	VEGA610827	VERDIN GALAN ARMANDO	2	5	7	1961-08-27	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280717	2018-02-13	2018-02-13	418142611	MEJIA ELIAS CLAUDIA ALEJANDRA	1	1	82	1986-12-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280718	2018-02-13	2018-02-13	4181139655	MEJIA ELIAS WENDY SARAI	1	1	82	1995-11-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280719	2018-02-13	2018-02-13	406110024	RODRIGUEZ SANCHEZ YAZMIN VIANEY	1	2	89	1984-03-01	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280720	2018-02-13	2018-02-13	308106868	VAZQUEZ CAMACHO CATALINA	1	1	79	1992-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280721	2018-02-13	2018-02-13	311065710	PERALTA PEREZ SOFIA	1	1	84	1994-12-25	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280722	2018-02-13	2018-08-31	313127863	ESCOBAR BADILLO DAVID ANTONIO	1	4	85	1997-06-03	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280723	2018-02-13	2018-02-13	306097948	PADILLA BELMONT OLIVER LUDWING	1	1	73	1990-08-22	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280724	2018-02-13	2018-02-13	313134463	PAREDES SANCHEZ YAZMIN	1	1	79	1997-02-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280725	2018-02-13	2018-02-13	315127467	CORTES MACIAS RICARDO ENRIQUE	1	2	85	1999-06-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280726	2018-02-13	2018-02-13	312250087	LOZA GONZALEZ SANTIAGO	1	1	81	1994-11-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280727	2018-02-13	2018-02-13	507007081	REYES CARLO IVONNE	1	5	84	1981-05-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280728	2018-02-13	2018-02-13	314679341	HAM GARCIA DIANA PATRICIA	1	1	85	1997-11-09	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280729	2018-02-13	2018-02-13	510013374	CARRASCO MIJAREZ NORMA IRENE	1	3	5	1973-11-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280730	2018-02-13	2018-02-13	3121121356	RAMOS BENITEZ GIOVANNI	1	2	80	1996-04-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280731	2018-02-13	2018-02-13	HETC500719	HERNANDEZ TORRES MARIA DEL CARMEN	3	7	61	1950-07-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280732	2018-02-13	2018-02-13	311077535	CARRILLO VERGARA EDUARDO FRANCISCO	1	1	83	1994-10-08	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280733	2018-02-13	2018-08-16	514015473	MAGALLANES PUEBLA ALEJANDRO	1	7	105	1987-12-06	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280734	2018-02-14	2018-02-14	309237338	GARDUÑO RUIZ DANIEL IVAN	1	1	84	1993-02-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280735	2018-02-14	2018-02-14	313090174	MARIN GARCIA GABRIEL	1	1	89	1995-01-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280736	2018-02-14	2018-02-14	307140841	ROMAN OCAMPO CARLOS ARTURO	1	1	82	1985-09-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280737	2018-02-14	2018-02-14	518025021	SANTANA SALAZAR ALEJANDRO	1	1	73	1992-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280738	2018-02-14	2018-02-14	3112211855	VAZQUEZ NAVARRETE MIGUEL ANGEL	1	1	83	1995-05-16	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280739	2018-02-14	2018-02-14	304767894	RUELAS RIVERA MARIONE	1	4	7	1988-02-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280740	2018-02-14	2018-02-14	311145151	MONTOYA MARTINEZ ANTONIO EDUARDO	1	1	85	1995-06-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280741	2018-02-14	2018-02-14	313336801	BADILLO NAVARRETE JESSICA SOFIA	1	1	82	1997-07-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280742	2018-02-14	2018-02-14	414044128	ABAN ESTRELLA ALAN ALBERTO	1	1	90	1995-02-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280743	2018-02-14	2018-02-14	416112771	SANCHEZ MARTINEZ ELIZABETH	1	1	84	1991-10-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280744	2018-02-14	2018-02-14	417106597	ZAMORA FRANCISCO FERNANDO DANIEL	1	1	85	1998-03-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280745	2018-02-15	2018-08-23	313228575	GARCIA AGUILERA LUIS ULISES	1	4	85	1996-12-06	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280746	2018-02-15	2018-02-15	312286167	CUEVAS FLORES DIANA LAURA	1	1	85	1996-07-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280747	2018-02-15	2018-08-21	311079821	QUIROZ GARCIA IVAN RODRIGO	1	4	85	1995-09-30	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280748	2018-02-15	2018-02-15	314042413	VERGARA GARCIA LUZ XIMENA	1	1	80	1998-06-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280749	2018-02-15	2018-02-15	99244310	PEREZ RIVERA ISMAEL	1	8	87	1982-06-17	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280750	2018-02-15	2018-02-15	313569647	PACHECO JIMENEZ AUREA DANIELA	1	1	83	1995-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280751	2018-02-15	2018-02-15	310238043	MOCTEZUMA SALGADO ALINA	1	3	89	1994-01-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280752	2018-02-15	2018-02-15	312109576	BRITO SANCHEZ JORGE	1	1	79	1996-07-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280753	2018-02-15	2018-02-15	415106917	CURIEL GONZALEZ JOSE DE JESUS	1	8	80	1995-03-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280754	2018-02-15	2018-02-15	EI8202301	CASTILLO CARO LIBERTAD	1	1	78	1996-11-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280755	2018-02-16	2018-02-16	314257518	MESTRE MARTINEZ LORENA	1	7	74	1998-08-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280756	2018-02-16	2018-02-16	414084728	VALLADOLID  BRIBIESCA VICTOR MANUEL	1	1	84	1994-07-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280757	2018-02-16	2018-02-16	CACR660423	CARBAJAL CORTES RAUL	2	8	83	1966-04-23	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280758	2018-02-16	2018-02-16	CANA940507	CANSECO NARANJO ALEXIS	1	8	7	1994-05-07	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280759	2018-02-16	2018-02-16	313208603	RAMIREZ RIOS PATRICIO MANUEL	1	1	81	1996-12-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280760	2018-02-16	2018-02-16	300072217	ORDAZ SAN AGUSTIN MIGUEL ANGEL	1	2	84	1982-08-02	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280761	2018-02-16	2018-02-16	313167535	CASTILLO GONZALEZ MICHELLE	1	1	90	1997-12-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280762	2018-02-19	2018-02-19	106000771	AGUILERA MORA MAURICIO KEVIN	1	5	84	1992-12-12	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280763	2018-02-19	2018-02-19	95197056	ROMERO CRUZ IRIS GRISELDA	1	5	81	1979-02-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280764	2018-02-19	2018-02-19	311242212	JIMENEZ GAYOSSO SOCRATES DIBS	1	1	85	1995-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280765	2018-02-19	2018-02-19	306592986	HERNANDEZ CORDOVA BELEM	1	2	84	1990-01-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280766	2018-02-19	2018-02-19	315302178	PATIÑO TORRES AYLIN ALEXIA	1	1	82	1998-12-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280767	2018-02-20	2018-02-20	309306157	RAMIREZ LOPEZ MARIA CRISTINA	1	1	85	1993-07-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280768	2018-02-20	2018-02-20	517492033	AGUIRRE LONDOÑO JESSICA	1	1	85	1989-05-05	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280769	2018-02-20	2018-02-20	311292808	RODRIGUEZ CARRILLO PRISCILA	1	2	80	1995-07-17	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280770	2018-02-20	2018-02-20	416090200	TELLEZ CHAVEZ OSCAR DANIEL	1	1	83	1997-06-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280771	2018-02-20	2018-02-20	315247549	CARDENAS MARTINEZ XOCHITL ALEJANDRA	1	3	89	1999-03-19	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280772	2018-02-20	2018-08-29	315306657	VELAZQUEZ DE LEON LAVARRIOS ALVAR	1	1	85	1999-08-24	M	t	2	apellido p	apellido m	nombres	0	none	none	0
280773	2018-02-20	2018-02-20	414033881	GONZALEZ MONDRAGON ALEJANDRO	1	4	80	1995-04-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280774	2018-02-20	2018-02-20	31112445	ACOSTA VALENCIA DENISSE	1	7	84	1995-08-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280775	2018-02-20	2018-02-20	85182329	REYES ROSALES GUADALUPE NICOLAS	1	2	82	1966-09-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280776	2018-02-20	2018-02-20	416114108	LIMON YAÑEZ NANCY	1	2	80	1997-10-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280777	2018-02-20	2018-02-20	313056930	COLOHUA CARVAJAL DANIELA	1	1	85	1997-06-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280778	2018-02-20	2018-02-20	313322752	RODRIGUEZ JIMENEZ KARLA	1	1	85	1997-06-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280779	2018-02-20	2018-02-20	311321302	RAMOS HERNANDEZ VALERIA	1	1	84	1995-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280780	2018-02-20	2018-02-20	314257549	NARVAEZ MIRANDA ALDAIR ALEJANDRO	1	1	89	1997-11-26	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280781	2018-02-20	2018-02-20	406006105	CHAVEZ PALAFOX GEMMA JENNIFFER	1	3	7	1988-08-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280782	2018-02-20	2018-02-20	308322420	TORREZ GONZALEZ JOSE ALFREDO	1	1	89	1992-09-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280783	2018-02-20	2018-02-20	417047135	BARBA MORALES JORGE EMILIANO	1	1	83	1998-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280784	2018-02-20	2018-02-20	415118787	GARCIA VILLATORO EMMANUEL ALEJANDRO	1	1	90	1996-08-31	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280785	2018-02-21	2018-02-21	313222504	JARDINES MUÑOZ INGRID NAYELLY	1	1	73	1997-04-07	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280786	2018-02-21	2018-02-21	311065954	RUFFINO BOHORQUEZ ABRAHAM	1	1	84	1999-09-24	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280787	2018-02-21	2018-02-21	312094997	BARRON ROSAS ANA PAULA	1	2	84	1996-03-02	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280788	2018-02-21	2018-02-21	313055263	ANGELES HERNANDEZ DYLAN	1	5	85	1997-10-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280789	2018-02-21	2018-02-21	94199655	SEGURA ANGELES KAREN PAHOLA	1	1	81	1978-06-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280790	2018-02-21	2018-02-21	415142636	ARELLANO GUZMAN MARIA JOSE	1	1	81	1994-12-03	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280791	2018-02-21	2018-02-21	314117344	FLORES LOPEZ VICTORIA PATRICIA	1	2	82	1998-03-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280792	2018-02-21	2018-02-21	309313557	SALDAÑA CORREA ERICK DANIEL	1	3	85	1995-02-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280793	2018-02-21	2018-02-21	314343222	DIAZ PADILLA TAISHA PENELOPE NATSKIENKA	1	1	85	1997-12-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280794	2018-02-21	2018-02-21	417137823	CASTRO MARIN WILLIAM ALEJANDRO	1	1	82	1989-11-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280795	2018-02-21	2018-02-21	306085666	HERNANDEZ OROZCO KEREN HAPUC	1	2	83	1990-05-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280796	2018-02-21	2018-02-21	31312085	ARIAS HERNANDEZ MAURICIO	1	4	80	1997-04-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280797	2018-02-21	2018-02-21	416074446	VASQUEZ NUÑEZ VICTOR HUGO	1	1	85	1996-11-20	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280798	2018-02-21	2018-02-21	313091078	MEDINA GOMEZ DIANA	1	7	82	1997-05-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280799	2018-02-22	2018-02-22	313038385	HERNANDEZ SANTIAGO ERICK RENE	1	4	90	1997-01-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280800	2018-02-22	2018-02-22	312096434	CONTRERAS ROSAS ERICK GERARDO	1	4	90	1996-05-28	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280801	2018-02-22	2018-02-22	313265583	DIAZ IBARRA SANDRA ELIZABETH	1	3	73	1997-08-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280802	2018-02-22	2018-02-22	315296970	NUÑEZ GONZALEZ KAREN	1	1	85	1999-06-04	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280803	2018-02-22	2018-02-22	417062239	VERGARA VALENZUELA NOEMI	1	5	81	1998-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280804	2018-02-22	2018-08-27	312297473	HERNANDEZ SANDOVAL KELLY PAMELA	1	1	85	1996-05-16	F	t	2	apellido p	apellido m	nombres	0	none	none	0
280805	2018-02-22	2018-02-22	313240946	FLORES LOPEZ EDSON JESUS	1	4	79	1997-10-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280806	2018-02-22	2018-02-22	309207157	SANTIAGO SOBREVILLA DAVID	1	1	85	1993-01-10	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280807	2018-02-22	2018-02-22	313206025	PACHECO GARCIA KAREN DANIELA	1	1	89	1996-10-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280808	2018-02-22	2018-02-22	312277707	MIRANDA SANCHEZ ANGELICA	1	1	85	1996-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280809	2018-02-22	2018-02-22	312000480	HERRERA MAYEN REBECA ROSARIO	1	4	85	1995-12-14	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280810	2018-02-22	2018-02-22	418048575	NAVARRO SILVA LUIS GERARDO	1	1	85	1997-12-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280811	2018-02-22	2018-02-22	312119744	PASTRANA ESPINOZA JAZMIN MICHELLE	1	3	89	1996-10-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280812	2018-02-22	2018-02-22	313124879	MONTIEL REYNOSO NAYELY QUIAVETH	1	3	80	1997-07-21	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280813	2018-02-23	2018-02-23	413091741	REYES CARRASCO FRANCISCO JAVIER	1	3	84	1992-07-13	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280814	2018-02-23	2018-02-23	412040564	RODRIGUEZ CERDA SANDRA AMPARO	1	5	76	1989-11-23	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280815	2018-02-23	2018-02-23	418136166	RODRIGUEZ BISTRAIN KARENINA	1	1	84	1984-01-26	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280816	2018-02-23	2018-02-23	418136801	RODRIGUEZ BISTRAIN CINTYA ALCIONE	1	1	81	1991-07-13	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280817	2018-02-23	2018-02-23	306025266	MONROY SALAZAR PAULINA	1	1	81	1990-05-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280818	2018-02-23	2018-02-23	306002111	FLORES GARCIA GUTIERREZ MARICELA	1	4	79	1990-02-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280819	2018-02-23	2018-02-23	305207203	MENDEZ CELIS CARLOS AARON	1	1	86	1989-09-06	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280820	2018-02-23	2018-02-23	314209036	LOPEZ SANCHEZ MISAEL	1	1	79	1998-04-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280821	2018-02-23	2018-02-23	312103914	CARREON GUZMAN MARIANA IVETTE	1	4	85	1995-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280822	2018-02-23	2018-02-23	311217885	GONZALEZ  VARGAS LIZETH	1	3	80	1995-02-18	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280823	2018-02-23	2018-02-23	718005313	ESCAMILLA DE LA CRUZ MARISOL	1	7	85	1996-10-22	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280824	2018-02-23	2018-02-23	315040436	REYES BERMUDEZ NATALIA	1	1	85	1999-05-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280825	2018-02-23	2018-02-23	309326438	SAAVEDRA JIMENEZ GERARDO	1	4	86	1993-07-09	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280826	2018-02-23	2018-02-23	718006107	LOPEZ AMAYA HECTOR MANUEL	1	7	85	1997-06-18	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280827	2018-02-26	2018-02-26	310087999	BERNAL FABILA ALINE	1	3	84	1994-01-28	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280828	2018-02-26	2018-02-26	718004859	BORBOA FELIX JAZMIN SUGEY	1	4	78	1997-02-14	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280829	2018-02-26	2018-02-26	313038309	HERNANDEZ MARTINEZ DIANA LAURA	1	1	85	1997-03-10	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280830	2018-02-26	2018-02-26	309560487	YAÑEZ ZERTUCHE XIMENA	1	3	84	1992-01-08	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280831	2018-02-26	2018-02-26	310151397	MOLINA GUTIERREZ BRENDA HASSEL	1	6	80	1995-05-30	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280832	2018-02-26	2018-02-26	310121099	TRONCO GAMBOA KARLA MARIANA	1	4	80	1993-02-06	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280833	2018-02-26	2018-02-26	313047271	BAUTISTA CHAVELA JENNIFER JOHANA	1	1	90	1998-01-29	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280834	2018-02-27	2018-02-27	309260242	TRONCOSO ESPINOSA FATIMA DEL PILAR	1	3	84	1993-01-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280835	2018-02-27	2018-02-27	417006222	MENDOZA FLORES ELEAZAR	1	1	89	1996-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280836	2018-02-27	2018-02-27	312049124	NAVARRO PEREZ DIANA XOCHITL	1	4	80	1996-03-15	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280837	2018-02-27	2018-02-27	310047430	ALDANA AGUILERA MARIO ALBERTO	1	4	80	1993-11-30	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280838	2018-02-27	2018-02-27	718037529	MORALES ROA EDITH JOHANNA	1	5	76	1997-03-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280839	2018-02-27	2018-02-27	414056936	RAMIREZ YAUTENTZI DANIELA	1	1	84	1994-02-16	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280840	2018-02-27	2018-02-27	418154560	RAMIREZ VAZQUEZ GILBERTO ANTONIO	1	1	80	1989-02-04	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280841	2018-02-27	2018-02-27	314170099	REYES HERNANDEZ JORGE IVAN	1	8	79	1998-01-21	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280842	2018-02-27	2018-02-27	309226479	VARGAS REYES JOSE ALBERTO	1	2	85	1993-06-25	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280843	2018-02-27	2018-02-27	MEQA840215	MEDINA QUINTERO ARMANDO	1	5	7	1984-02-15	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280844	2018-02-27	2018-02-27	718004684	BACA GASTELUM DIANA LAURA	1	1	81	1994-09-12	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280845	2018-02-27	2018-02-27	MOVE840301	MOJICA UROSA EDGAR	3	4	150	1984-03-01	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280846	2018-02-27	2018-02-27	312309824	MARTINEZ OLMOS MIGUEL ANGEL	1	1	85	1996-05-19	M	f	1	apellido p	apellido m	nombres	0	none	none	0
280847	2018-02-27	2018-02-27	311239287	LOPEZ GONZALEZ SARA ITZEL	1	3	7	1995-07-27	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280848	2018-02-27	2018-02-27	311174823	LOPEZ HERNANDEZ JULIETA	1	5	79	1995-04-11	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280849	2018-02-28	2018-02-28	313050419	NUÑEZ GARCIA GABRIELA	1	3	73	1997-07-20	F	f	1	apellido p	apellido m	nombres	0	none	none	0
280850	2018-03-01	2018-03-01	414049240	RUIZ RAMIREZ GRACIELA	1	1	89	1984-06-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280851	2018-03-01	2018-03-01	307007913	CHIRINOS FLORES DENISE ELENA	1	5	90	1991-03-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280852	2018-03-01	2018-03-01	313277762	RODRIGUEZ MENDOZA ALBAN ALEXIS	1	1	85	1995-10-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280853	2018-03-01	2018-03-01	304137233	HERNANDEZ ORTEGA PEDRO ISRAEL	1	1	84	1988-07-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280854	2018-03-01	2018-03-01	312007678	LINO AGUILAR LAURA ELENA	1	1	85	1996-02-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280855	2018-03-01	2018-03-01	314264730	GUZMAN CORONEL DIANA CAROLINA	1	1	81	1997-06-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280856	2018-03-01	2018-03-01	518013512	RAMOS PEREZ IRENE	1	7	150	1991-05-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280857	2018-03-01	2018-03-01	312118455	GARCIA FRANCO NELLY VERONICA	1	1	85	1996-04-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280858	2018-03-01	2018-03-01	99291534	RODRIGUEZ CASTRO ERICK IVAN	1	4	113	1983-06-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280859	2018-03-01	2018-03-01	413095361	RIVERA TARANGO MARIA FERNANDA	1	1	84	1994-10-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280860	2018-03-01	2018-03-01	314032764	GONZALEZ FRAGOSO TERESA CONSUELO	1	7	86	1998-03-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280861	2018-03-01	2018-03-01	312072241	PAZ CARMONA LUIS	1	2	84	1996-10-02	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280862	2018-03-01	2018-03-01	416075773	BARCENAS MARTINEZ EDGAR DANIEL	1	5	85	1997-01-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280863	2018-03-01	2018-03-01	RJM880101	RAMIREZ JIMENEZ MARCO ANTONIO	2	4	87	1988-01-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280864	2018-03-01	2018-03-01	310271479	MALDONADO GONZALEZ CYNTHIA	1	1	79	1994-10-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280865	2018-03-01	2018-03-01	312172884	LEON MORA ANA BERENICE	1	1	84	1995-05-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280866	2018-03-01	2018-03-01	E1820090A	GARCIA GONZALEZ KARLA PAOLA	1	4	78	1995-01-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280867	2018-03-01	2018-03-01	90080210	LEDESMA HERNANDEZ CLAUDIA VERONICA	1	1	89	1974-12-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280868	2018-03-01	2018-03-01	416070596	RAMOS MURRIETA LUIS ANGEL	1	1	83	1997-02-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280869	2018-03-01	2018-03-01	311313925	MARTIN REYES JESUS IVAN	1	8	85	1994-12-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280870	2018-03-01	2018-03-01	SURL690330	SUASTEGUI RIVERA LYDIA	1	8	7	1969-03-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280871	2018-03-01	2018-03-01	1004732992	SASTOKE GONZALEZ STEPHANY	1	1	85	1990-10-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280872	2018-03-01	2018-03-01	718037031	LASSO PERDOMO CRISTIAM JAVIER	1	2	85	1993-05-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280873	2018-03-02	2018-03-02	CALM7570519	CANALES LIZAOLA MONICA ARACELI	2	1	79	1975-05-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280874	2018-03-02	2018-03-02	103004684	VEGA VALDES ADOLFO ALAN	1	3	83	1989-11-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280875	2018-03-02	2018-03-02	517712298	BAPTISTE TOUSSAINT LAURANT	1	1	86	1978-11-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280876	2018-03-02	2018-03-02	315087406	RUIZ VALVERDE RAUL ERNESTO	1	1	81	1999-02-26	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280877	2018-03-02	2018-03-02	CUML740323	CRUZ MENDEZ LEONOR	3	1	90	1974-03-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280878	2018-03-02	2018-03-02	312281801	SALAZAR AGUILAR ROSSANA NADINE	1	2	79	1996-12-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280879	2018-03-02	2018-03-02	315660922	GAYTAN LOPEZ EMILIO NICANOR	1	4	82	1998-12-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280880	2018-03-02	2018-03-02	105000871	ANDRADE TREJO ALEJANDRA	1	3	83	1992-07-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280881	2018-03-05	2018-03-05	GASI790804	GARCIA SORIANO IVAN	2	4	82	1979-08-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280882	2018-03-05	2018-03-05	313004120	DAMIAN ALVARADO MARIANA JAZMIN	1	7	80	1997-08-09	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280883	2018-03-05	2018-03-05	311068144	AMAYA GARCIA MARIA FERNANDA	1	5	84	1994-01-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280884	2018-03-05	2018-03-05	312578705	MELO JIMENEZ ENRIQUE	1	4	85	1996-05-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280885	2018-03-05	2018-03-05	310157241	RAYGOZA SALINAS ESTEFANIA	1	2	85	1992-12-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280886	2018-03-05	2018-03-05	301176538	ARREDONDO BARRON FERNANDO	1	1	105	1978-03-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280887	2018-03-05	2018-03-05	314055149	TORRES ROSALES MARCO AUGUSTO	1	4	90	1998-01-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280888	2018-03-05	2018-03-05	312324203	PATLAN TOVAR ARAM ZHAID	1	8	83	1996-05-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280889	2018-03-06	2018-03-06	312103000	BRINDIS CEDEÑO MISAEL	1	1	78	1996-06-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280890	2018-03-06	2018-03-06	311255931	ALCARAZ ROMERO KARINA	1	1	79	1995-07-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280891	2018-03-06	2018-03-06	309668882	SUBUYUJ DE LEON SHARON GABRIELA	1	1	82	1990-10-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280892	2018-03-06	2018-03-06	315588075	GARFIAS AZNAR JOSE DAVID	1	1	85	1999-08-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280893	2018-03-06	2018-03-06	314634375	VERA BARRUTA ADRIANA KARIN	1	4	84	1997-06-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280894	2018-03-06	2018-03-06	310277316	ISLAS DOMINGUEZ EDUARDO GABRIEL	1	1	85	1994-10-25	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280895	2018-03-06	2018-03-06	718036917	HURTADO ENCOMENDEROS LUIS ENRIQUE	1	5	80	1989-11-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280896	2018-03-06	2018-03-06	309329295	ZAMORA HERNANDEZ YESSICA	1	3	84	1993-09-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280897	2018-03-06	2018-03-06	374197348	CERVANTES FLORES SOFIA	1	1	84	1997-10-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280898	2018-03-06	2018-03-06	HERO830907	HERNANDEZ DE LA ROSA OSCAR	1	1	7	1983-09-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280899	2018-03-07	2018-03-07	3101453361	MARTINEZ TORRES KARLA JOSELINE	1	4	80	1993-04-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280900	2018-03-07	2018-03-07	303092308	RUMUALDO FLORES DULCE MARIANA	1	4	84	1987-10-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280901	2018-03-07	2018-03-07	306213799	ROMERO SAAVEDRA MIGUEL ANGEL	1	3	84	1989-12-18	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280902	2018-03-07	2018-03-07	313214646	SANCHEZ LOPEZ AXEL COOANDIVI	1	1	79	1997-07-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280903	2018-03-09	2018-03-09	305051862	MORALES CARRILLO JUAN ALFONSO	1	5	80	1988-10-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280904	2018-03-09	2018-03-09	718006554	PANIAGUA HERNANDEZ JOSE ALEXIS	1	1	82	1995-05-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280905	2018-03-09	2018-03-09	GACE700627	GARCIA CASTILLO ENRIQUE DAVID	1	5	7	1976-06-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280906	2018-03-09	2018-03-09	415154152	ALVA GUTIERREZ FLORENCIA	1	1	83	1981-11-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280907	2018-03-09	2018-03-09	3111291234	GONZALEZ ARRIAGA ITZEL	1	2	84	1995-09-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280908	2018-03-09	2018-03-09	313254088	RUIZ CASTILLO RICARDO YOALY	1	5	79	1998-03-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280909	2018-03-09	2018-03-09	311260465	GONZALEZ ESPINOSA EDUARDO SEBASTIAN	1	4	90	1995-07-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280910	2018-03-09	2018-03-09	NAGJ831115	NAVA GODINEZ JOSE DE JESUS	2	4	82	1983-11-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280911	2018-03-09	2018-03-09	313218156	CERVANTES MEZA LAURA YANZA	1	4	85	1997-01-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280912	2018-03-09	2018-03-09	407023220	SILVA HERNANDEZ JOSE ANTONIO	1	4	85	1987-09-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280913	2018-03-13	2018-03-13	312065995	RIVERA CORTES MARIANA ALICIA	1	4	86	1996-05-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280914	2018-03-13	2018-03-13	310241425	ZACARIAS LAGOS YESSENIA	1	2	90	1994-04-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280915	2018-03-13	2018-03-13	310304926	RUIZ SOLIS CELERINO	1	5	89	1994-09-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280916	2018-03-13	2018-03-13	308312795	GARCIA VARGAS ALEJANDRA	1	6	84	1992-03-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280917	2018-03-13	2018-03-13	411132909	VAZQUEZ VEGA PEDRO ANTONIO	1	2	82	1978-03-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280918	2018-03-13	2018-03-13	315104491	GARCIA ESPINOSA RICARDO ARTURO	1	1	85	1999-02-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280919	2018-03-13	2018-03-13	311276336	GAYTAN HERNANDEZ DANIELA	1	1	90	1995-11-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280920	2018-03-13	2018-03-13	311025835	SANTAMARIA GARCIA CONCEPCION	1	4	78	1995-04-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280921	2018-03-13	2018-03-13	416011148	AGUILERA LARA ALEJANDRO ALBERTO	1	1	84	1989-12-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280922	2018-03-14	2018-03-14	418050802	AMADOR CARRIZAL ISAAC	1	2	75	1992-07-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280923	2018-03-14	2018-03-14	313028100	GUZMAN ORTIZ JESUS DANIEL	1	5	84	1997-02-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280924	2018-03-14	2018-03-14	416542792	OLVERA MARTINEZ BERENICE	1	5	89	1997-06-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280925	2018-03-14	2018-03-14	314321631	RAMIREZ ARELLANO BRENDA CONCEPCION	1	4	82	1998-03-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280926	2018-03-14	2018-03-14	718006949	RUBIO CARBALLO JOEL DEL JESUS	1	4	78	1995-05-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280927	2018-03-14	2018-03-14	31005340	CARRILLO LOPEZ DANIEL	1	5	82	1994-01-10	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280928	2018-03-14	2018-03-14	313080683	NAVA HERNANDEZ LUZ DINORA	1	1	89	1997-10-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280929	2018-03-14	2018-03-14	311531543	SANCHEZ UGALDE MARIANA PAOLA	1	1	90	1995-01-31	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280930	2018-03-14	2018-03-14	311275872	ESPINO RUIZ JUAN FELIPE	1	1	90	1995-01-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280931	2018-03-14	2018-03-14	308209749	GOMEZ GURROLA ITZEL ELIZABETH	1	2	80	1992-11-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280932	2018-03-14	2018-03-14	308049242	ALONSO GARCIA ADRIANA	1	3	85	1992-02-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280933	2018-03-14	2018-03-14	405069730	ISLAS VIGUERAS ROSA ELIA	1	4	90	1986-08-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280934	2018-03-15	2018-03-15	314180827	CORRALES PEREZ PAOLO	1	4	79	1997-08-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280935	2018-03-15	2018-03-15	301095940	RUIZ CABAÑAS CORTES FLORENCIA	1	5	7	1986-01-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280936	2018-03-15	2018-03-15	315195433	LOPEZ Y CRUZ SUSANA	1	2	82	1999-09-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280937	2018-03-15	2018-03-15	312255831	MARQUEZ CADENA IVAN ALEJANDRO	1	4	78	1995-10-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280938	2018-03-15	2018-03-15	314138110	LOPEZ SOTO MIGUEL ANGEL	1	1	85	1998-01-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280939	2018-03-20	2018-03-20	MEHT850525	MELLOH HERNANDEZ TANIA JOYCE	3	1	130	1995-05-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280940	2018-03-20	2018-03-20	409051805	BARRIOS GARCIA JESSICA ELIZABETH	1	1	80	1988-02-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280941	2018-03-20	2018-03-20	308287866	MIRANDA ALVAREZ MARCELA	1	8	84	1992-07-09	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280942	2018-03-20	2018-03-20	312027502	SALAS GONZALEZ MARCO ANTONIO	1	1	85	1996-01-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280943	2018-03-20	2018-03-20	416030477	ITO MORENO EVENCIO	1	1	85	1996-04-25	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280944	2018-03-20	2018-03-20	308266382	LEON CRUZ ERIKA	1	1	90	1992-01-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280945	2018-03-20	2018-03-20	312097747	PEREZ MATURANO ERIKA MARIBEL	1	3	85	1996-03-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280946	2018-03-21	2018-03-21	312229531	MONJARDIN LINARES ANA TERESA	1	4	86	1996-06-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280947	2018-03-21	2018-03-21	312040293	MARTINEZ FRANCO LILIANA	1	1	79	1996-08-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280948	2018-03-21	2018-03-21	418059252	OLIVOS LEYVA JENNY KAREN	1	1	89	1995-01-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280949	2018-03-21	2018-03-21	718005791	HERNANDEZ GONZALEZ JUAN DANIEL	1	1	84	1993-04-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280950	2018-03-21	2018-03-21	314033606	GOMEZ ARIZMENDI JOSE LUIS	1	2	85	1998-04-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280951	2018-03-21	2018-03-21	413035648	GALLARDO VARGAS GABRIELA	1	1	80	1985-05-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280952	2018-03-21	2018-03-21	415087698	ALVAREZ SANTABARBARA BRENDA	1	8	80	1994-09-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280953	2018-03-21	2018-03-21	302238891	GONZALEZ GONZALEZ GABRIELA	1	1	99	1986-09-28	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280954	2018-03-21	2018-03-21	311322361	SUAREZ GERVASIO CLAUDIA GABRIELA	1	6	83	1995-02-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280955	2018-03-21	2018-03-21	315294378	MORENO MC. MANUS KEVIN CLYDE	1	4	85	1999-05-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280956	2018-03-21	2018-03-21	313072529	HERNANDEZ MAZAS DAFNE MONTSERRAT	1	3	85	1997-03-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280957	2018-03-21	2018-03-21	306236071	SALDAÑA MONROY FRANCISCO ENRIQUE	1	1	99	1990-04-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280958	2018-03-21	2018-03-21	412044294	MEDINA GARITA FRANCISCO	1	1	84	1981-10-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280959	2018-03-21	2018-03-21	314128203	TEJADA PORRAS LUZ ALINE	1	3	84	1998-08-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280960	2018-03-22	2018-03-22	313180886	VALENCIA ENRIQUEZ PAOLA	1	1	80	1997-06-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280961	2018-03-22	2018-03-22	313023806	CASTAÑEDA DELGADO JORGE IRVING	1	3	80	1996-09-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280962	2018-03-22	2018-03-22	416151123	CARMONA MORENO FERNANDO	1	1	81	1996-09-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280963	2018-03-22	2018-03-22	315238639	AGUILAR BARCENAS RODRIGO ALFONSO	1	1	84	1999-06-16	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280964	2018-03-22	2018-03-22	406039820	DEL VALLE DE LA CRUZ JUAN MANUEL	1	1	84	1980-01-25	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280965	2018-03-22	2018-03-22	311051355	RANGEL GARCIA MARIANA	1	3	84	1995-08-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280966	2018-03-23	2018-03-23	312285153	ALVARADO ZUÑIGA CELESTE	1	1	89	1996-03-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280967	2018-04-02	2018-04-02	93334316	CERVANTES CABRERA DALIA BERENICE	1	1	79	1977-02-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280968	2018-04-03	2018-04-03	312269870	VELAZQUEZ PEREZ MOISES SAMUEL	1	1	83	1996-09-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280969	2018-04-03	2018-04-03	413490216	VENANCIO GODINEZ ALBA	1	1	83	1994-08-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280970	2018-04-03	2018-04-03	417133667	ARMENDARIZ TORRES SARA	1	1	84	1976-09-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280971	2018-04-03	2018-04-03	418005297	LOPEZ LOPEZ CESAR OSVALDO	1	6	80	1997-07-14	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280972	2018-04-03	2018-04-03	310679916	SANCHEZ CECEÑA JIMENA	1	2	80	1994-02-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280973	2018-04-03	2018-04-03	418014121	MENDOZA CHEGUI ARIEL FERNANDO	1	6	90	1996-05-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280974	2018-04-03	2018-04-03	98057544	PEREZ TRINIDAD JAQUELINE	1	1	76	1982-03-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280975	2018-04-03	2018-04-03	314089270	GONZALEZ CASTILLO JOSELINE	1	6	81	1998-12-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280976	2018-04-03	2018-04-03	408086064	VAZQUEZ BARRANCO ARTURO	1	6	80	1989-08-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280977	2018-04-03	2018-04-03	416103524	GONZALEZ GONZALEZ ADRIANA ELIZABETH	1	1	81	1993-03-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280978	2018-04-03	2018-04-03	516017796	CABRERA SOTELO DANIEL	1	1	85	1987-11-16	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280979	2018-04-04	2018-04-04	304144833	VILLANUEVA PLIEGO JOSE DANIEL	1	4	89	1987-11-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280980	2018-04-04	2018-04-04	517011106	AGUILAR LUNA ALINE	1	3	150	1978-11-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280981	2018-04-04	2018-04-04	415065038	LARA RODRIGUEZ KARINA ELISA	1	3	78	1994-11-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280982	2018-04-04	2018-04-04	417062569	LOPEZ LUNA ANDREA FERNANDA	1	2	84	1998-04-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280983	2018-04-04	2018-04-04	311012116	NOGUEZ HERNANDEZ JUDITH GABRIELA	1	1	84	1995-08-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280984	2018-04-05	2018-04-05	313236921	SIXTOS REBOLLEDO RODRIGO	1	3	78	1996-11-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280985	2018-04-05	2018-04-05	305107110	HERNANDEZ CARRILLO YESICA IVONNE	1	1	85	1989-07-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280986	2018-04-05	2018-04-05	313085918	JUAREZ MONTES JOSE ANTONIO	1	1	78	1996-09-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280987	2018-04-05	2018-04-05	512003030	MATUS MEZA AUDIFAS SALVADOR	1	1	90	1987-01-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280988	2018-04-05	2018-04-05	310230975	BENITEZ ARCOS DEMIAN	1	1	80	1993-11-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280989	2018-04-06	2018-04-06	312237688	VELAZQUEZ ORDUÑA KARINA	1	3	78	1996-08-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280990	2018-04-06	2018-04-06	314027618	CONTRERAS TORRES EDGAR ALAN	1	1	85	1998-03-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280991	2018-04-06	2018-04-06	418007693	ALMAZAN CASTRO ALEXIS	1	3	80	1992-07-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280992	2018-04-09	2018-04-09	416055409	RODRIGUEZ CAMACHO SILVIA LIZBETH	1	3	84	1990-07-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280993	2018-04-10	2018-04-10	311144099	HUERTA FLORES MONICA ABIGAIL	1	3	90	1995-07-21	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280994	2018-04-10	2018-04-10	311263325	LOPEZ VILLEGAS MARIELENA	1	3	80	1994-12-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280995	2018-04-10	2018-04-10	411050296	TENORIO ROMERO NIDIA JAZMIN	1	5	79	1992-11-21	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280996	2018-04-10	2018-04-10	312135670	SANCHEZ CARRILLO JESUS ROMAN	1	2	84	1996-01-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280997	2018-04-10	2018-04-10	313032888	ARELLANO MARTINEZ ZYANYA	1	1	73	1996-11-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
280998	2018-04-10	2018-04-10	415099437	FIGUEROA VAZQUEZ EMMANUEL	1	3	90	1995-11-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
280999	2018-04-10	2018-04-10	415146397	RAMIREZ GUDIÑO MIGUEL	1	1	83	1987-05-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281000	2018-04-10	2018-04-10	309105929	GAYOSSO CRUZ ALDO RAMON	1	8	85	1993-06-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281001	2018-04-12	2018-04-12	307510149	FRUTOS LOPEZ MICHELLE MONTSERRAT	1	6	89	1990-10-31	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281002	2018-04-12	2018-04-12	413098324	CUEVAS MORALES CRISTHIAN	1	4	79	1993-11-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281003	2018-04-12	2018-04-12	ROMC840630	RODRIGUEZ MARTINEZ CHRISTIAN ISAI	1	1	98	1984-06-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281004	2018-04-12	2018-04-12	312011277	ORTIZ RODRIGUEZ LUISA GABRIELA	1	3	81	1995-11-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281005	2018-04-12	2018-04-12	416109588	DEL TORO OCHOA  JORGE ARTURO	1	2	79	1997-12-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281006	2018-04-16	2018-04-16	518494542	PEREZ ARAUJO YUNIOR FRAINEN	1	1	98	1981-12-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281007	2018-04-16	2018-04-16	314308641	VIDAL GARCIA GABRIELA	1	1	85	1998-01-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281008	2018-04-16	2018-04-16	304204065	TORRES REYES ADRIAN JONATHAN	1	3	82	1988-02-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281009	2018-04-16	2018-04-16	NAAH980311	NAKAICHI HARUKA	1	1	8	1998-03-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281010	2018-04-16	2018-04-16	FODJ510318	FLORES DERBEZ JOSEFINA	1	7	7	1951-03-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281011	2018-04-16	2018-04-16	518016513	MENDOZA GARCIA MARIA ELENA	1	1	80	1990-05-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281012	2018-04-16	2018-04-16	413138299	RAMIREZ PONCE LILIA MARINA	1	1	80	1983-05-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281013	2018-04-17	2018-04-17	307312826	SANCHEZ MARTINEZ ALFREDO	1	7	73	1991-05-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281014	2018-04-17	2018-04-17	418018150	GUZMAN JARA BRENDA LIZBET	1	1	81	1994-01-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281015	2018-04-17	2018-04-17	310063816	CRUZ LOPEZ MARIANA	1	1	80	1994-03-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281016	2018-04-18	2018-04-18	312015093	LOYA SANCHEZ GABRIEL	1	2	79	1997-01-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281017	2018-04-18	2018-04-18	310097356	ESPINOSA LORENCE DIEGO GUILLERMO	1	7	83	1994-11-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281018	2018-04-18	2018-04-18	415008749	DE LA ROSA SERRANO FRANCISCO JAVIER	1	2	80	1995-04-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281019	2018-04-18	2018-04-18	41744	CATALAN VEGA NAHEMA	1	1	78	1983-01-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281020	2018-04-18	2018-04-18	415082655	OLVERA GONZALEZ ESTEFANIA	1	4	90	1995-10-31	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281021	2018-04-18	2018-04-18	415044310	ORDOÑEZ NAVARRO ERINIA MARIA	1	7	80	1995-03-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281022	2018-04-18	2018-04-18	410080560	ANGEL HERNANDEZ ADAN OSIRIS	1	1	80	1989-12-10	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281023	2018-04-18	2018-04-18	ZAOL880506	ZAVALA OCAMPO LIZETH MARIEL	2	1	79	1988-05-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281024	2018-04-18	2018-04-18	312098184	ROBELLADA LOPEZ LAURA ELVIA	1	3	73	1996-09-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281025	2018-04-18	2018-04-18	315178407	HERNANDEZ MORAN MARIO ALBERTO	1	1	85	1998-05-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281026	2018-04-18	2018-04-18	112003629	PEREZ SALAZAR DANIELA	1	3	82	1998-10-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281027	2018-04-18	2018-04-18	517019267	PEREZ VELAZCO FREDDY ANTONIO	1	5	75	1973-06-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281028	2018-04-18	2018-04-18	517014389	GARCIA RODRIGUEZ MONICA	1	5	75	1984-01-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281029	2018-04-18	2018-04-18	517018947	PALLAS GUIZAR IRMA CHRISTINA	1	5	75	1989-04-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281030	2018-04-19	2018-04-19	OIHP770829	ONTIVEROS HERRERA PEDRO	2	1	85	1977-08-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281031	2018-04-19	2018-04-19	312003319	FERNANDEZ MENDEZ GRETA VIDAHI LUCERO	1	3	84	1996-02-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281032	2018-04-19	2018-04-19	517017995	SANCHEZ DIAZ MARIA ELENA	1	1	99	1992-04-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281033	2018-04-19	2018-04-19	312068044	CASTAÑEDA DORANTES ALESSY RAQUEL	1	7	80	1996-06-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281034	2018-04-23	2018-04-23	SIAY550907	SILVA AGUIRRE YOLANDA ALICIA	2	1	61	1955-09-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281035	2018-04-24	2018-04-24	313315932	DIAZ ANTUNEZ IVONNE JACQUELINE	1	1	90	1997-06-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281036	2018-04-24	2018-04-24	417092056	VERDUGO RODRIGUEZ JESUS DANIEL	1	8	79	1997-02-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281037	2018-04-24	2018-04-24	314032324	GALEANA ARAUJO EMILIANO	1	8	79	1998-05-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281038	2018-04-24	2018-04-24	312069742	GARCIA CRUZ CINTHYA VANESA	1	3	81	1996-04-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281039	2018-04-25	2018-04-25	312287281	SOTARRIVA ALVAREZ ISAI ROBERTO	1	7	79	1996-08-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281040	2018-04-27	2018-04-27	418138744	LETZEL GARCIA KURT KEVIN	1	1	82	1993-01-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281041	2018-04-27	2018-04-27	EICA830417	ESPINOSA CALDERON ASMINDA	1	3	7	1983-04-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281042	2018-04-27	2018-04-27	BUPE960615	VON BULOW PEYRET FRANCISCO	1	8	7	1996-06-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281043	2018-04-30	2018-04-30	314166122	ROMERO DE LOS SANTOS CARLOS CESAR	1	1	85	1998-05-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281044	2018-04-30	2018-04-30	311121047	RANGEL LAGUNAS JESUS ALBERTO	1	1	85	1995-12-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281045	2018-04-30	2018-04-30	3090105406	DOMINGUEZ CARBAJAL DAVID ERNESTO	1	2	84	1992-12-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281046	2018-04-30	2018-04-30	310275240	ROMERO FLORES NIDIA NAYELI	1	2	84	1994-10-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281047	2018-05-02	2018-05-02	416061780	MILIAN VEGA GIOVANI	1	3	85	1991-10-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281048	2018-05-02	2018-05-02	94361362	GONZALEZ HERNANDEZ CARMEN	1	6	7	1978-09-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281049	2018-05-03	2018-05-03	305585723	RAMOS BUENO ARTURO	1	8	84	1988-12-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281050	2018-05-03	2018-05-03	308698259	CRUZ ALVARADO DIEGO ANTONIO	1	2	79	1992-11-02	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281051	2018-05-07	2018-05-07	417096308	GALLARDO CRUZ CINTHYA	1	4	80	1999-01-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281052	2018-05-07	2018-05-07	314137838	HERNANDEZ RAMIREZ ESTEFANY VANESSA	1	1	80	1998-01-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281053	2018-05-09	2018-05-09	310103987	FLOREAN CRUZ CLAUDIA LIZETH	1	1	79	1994-03-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281054	2018-05-14	2018-05-14	311260135	GARCIA URIBE ANDREA SELENA	1	7	82	1995-03-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281055	2018-05-14	2018-05-14	309064882	CABRERA SORIANO MICHAEL DAVID	1	1	90	1992-05-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281056	2018-05-14	2018-05-14	309205830	SILVA AGUILERA FIDEL SALVADOR	1	1	7	1992-12-26	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281057	2018-05-16	2018-05-16	309041524	CABELLO TOVAR EMMANUEL ANTONIO	1	1	85	1993-08-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281058	2018-05-16	2018-05-16	311172991	GOMEZ RODELA KARINA VICTORIA	1	7	80	1995-09-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281059	2018-05-16	2018-05-16	412026931	MARTELL CAPETILLO JESUS	1	1	80	1983-08-21	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281060	2018-05-16	2018-05-16	311327689	LOPEZ CAMARGO ASTRUD ANGELICA	1	5	84	1995-01-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281061	2018-05-17	2018-05-17	78182187	QUIROZ JACOBO ROCIO GUADALUPE	1	1	89	1959-11-28	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281062	2018-05-21	2018-05-21	414078682	ALVARADO SANCHEZ ULISES DAVID	1	7	85	1993-06-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281063	2018-05-22	2018-05-22	313227437	SANCHEZ ANGULO RODRIGO	1	4	79	1995-11-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281064	2018-05-22	2018-05-22	415068620	ORTEGA GUILLEN DALIA	1	2	84	1989-01-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281065	2018-05-22	2018-05-22	518490764	CASTILLO CADENA SANTIAGO EDUARDO	1	1	85	1993-06-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281066	2018-05-24	2018-05-24	311100972	TENORIO GUTIERREZ DANIEL ITZAES	1	1	84	1995-02-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281067	2018-05-24	2018-05-24	417019219	BOLAÑOS RODRIGUEZ NANCY	1	1	81	1981-03-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281068	2018-05-28	2018-05-28	310021047	BARRIOS DIAZ MONICA	1	1	81	1994-03-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281069	2018-05-28	2018-05-28	310185181	GOMEZ MEJIA ENRIQUE	1	1	81	1995-01-16	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281070	2018-05-28	2018-05-28	309338617	VAZQUEZ PEREZ LILIA FERNANDA	1	1	73	1993-05-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281071	2018-05-30	2018-05-30	RAMB861203	RAMIREZ BALLESTEROS MIREYA	2	5	79	1986-12-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281072	2018-05-30	2018-05-30	417107271	MORALES ZAMORA CARLOS FERNANDO	1	1	82	1975-07-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281073	2018-05-30	2018-05-30	302146800	GONZALEZ PEREZ CLAUDIA ARELYTH	1	2	84	1986-07-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281074	2018-05-31	2018-05-31	309303699	MARTINEZ MEDINA JONATHAN	1	4	90	1993-11-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281075	2018-06-01	2018-06-01	SABS870318	SAMANO BERISTAIN SYLVIA	2	6	82	1987-03-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281076	2018-06-01	2018-06-01	418034213	BAUTISTA HERNANDEZ ADRIANA	1	1	83	1997-03-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281077	2018-06-01	2018-06-01	309114970	VELASCO PICHARDO MARIA BIAANNI	1	2	79	1992-10-21	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281078	2018-06-01	2018-06-01	307188014	GUZMAN VAZQUEZ ITZEL	1	8	79	1995-06-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281079	2018-08-06	2018-08-06	310331481	VASQUEZ GOMEZ MARTHA BERENICE	1	1	90	1994-10-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281080	2018-08-06	2018-08-06	313548943	RODRIGUEZ MENDOZA OMAR	1	6	86	1996-12-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281081	2018-08-06	2018-08-06	311059791	DURAND CORTES JULIO CESAR	1	1	90	1995-07-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281082	2018-08-06	2018-08-06	415150556	SANTIAGO OLOARTE ANGEL YAOTECATL	1	2	80	1989-02-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281083	2018-08-07	2018-08-07	418002241	RAMIREZ GALLARDO ADRIAN FELIPE	1	1	79	1999-08-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281084	2018-08-07	2018-08-07	402037051	GARCIA MORENO JOCABED	1	4	75	1979-04-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281085	2018-08-07	2018-08-07	419004011	DELGADILLO GARCIA EMMANUEL	1	1	79	2000-11-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281086	2018-08-07	2018-08-07	316171171	DIAZ RAMIREZ ELSA GABRIELA	1	1	79	1999-11-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281087	2018-08-07	2018-08-07	416006793	HURTADO GONZALEZ ALMA	1	6	82	1997-02-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281088	2018-08-07	2018-08-07	417023155	PEREZ BARRIENTOS FLORIBEL	1	2	87	1997-05-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281089	2018-08-07	2018-08-07	312322395	LUNA ROJAS SOFIA LUCILA	1	1	90	1996-01-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281090	2018-08-07	2018-08-07	311033573	BERNABE GARCIA SORAYA ELIZABETH	1	1	90	1995-03-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281091	2018-08-07	2018-08-07	311025835	SANTAMARIA GARCIA CONCEPCION	1	4	78	1995-04-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281092	2018-08-07	2018-08-07	313217630	CALDERON GARCIA JUAN PABLO	1	2	79	1997-01-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281093	2018-08-07	2018-08-07	311075995	CUELLAR GONZALEZ JOSE RUBEN	1	1	79	1994-03-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281094	2018-08-08	2018-08-08	519492929	BLANCO GAONA SANDRA PAOLA	1	1	79	1993-06-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281095	2018-08-08	2018-08-08	315161625	ROCHA GARCIA BRANDON NOE	1	7	85	1998-07-14	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281096	2018-08-08	2018-08-08	313698880	ARIAS VEGA JORGE ALEJANDRO	1	2	86	1996-11-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281097	2018-08-08	2018-08-08	312092900	ROSALES  VELAZQUEZ CESAR ALEXIS	1	1	90	1996-02-02	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281098	2018-08-08	2018-08-08	313152180	FLORES MORALES JACINTO MANUEL	1	1	85	1996-11-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281099	2018-08-08	2018-08-08	31102079	RIO DE LA LOZA HERRERA RODRIGO	1	1	85	1995-04-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281100	2018-08-08	2018-08-08	315202047	MANCILLA ARGUELLO EDUARDO	1	1	90	1999-08-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281101	2018-08-08	2018-08-08	415065447	PUON CORTES MANUEL ALEJANDRO	1	1	90	1995-03-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281102	2018-08-08	2018-08-08	REOM960712	REYNOSO OCHOA MARIANA	1	3	83	1996-07-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281103	2018-08-08	2018-08-08	310090120	BELTRAN SEVILLA FRANCISCO DANIEL	1	1	90	1994-11-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281104	2018-08-08	2018-08-08	AERG650218	ARCE ROCHA GRACIELA	2	1	79	1965-02-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281105	2018-08-08	2018-08-08	417052487	LORANDI CAMACHO ITALO GUINNO	1	1	79	1998-07-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281106	2018-08-08	2018-08-08	419060444	BAYLON REYNOSO SANDRA CECILIA	1	7	7	1996-07-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281107	2018-08-08	2018-08-08	310181523	AMARO MONTOYA NITZIA KATYA	1	2	8	1994-05-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281108	2018-08-08	2018-08-08	417069520	GONZALEZ RUIZ FELIX JOSUE	1	4	81	1997-04-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281109	2018-08-09	2018-08-09	302293461	RUIZ OCAMPO ALEJANDRO AXAYACATL	1	7	89	1986-06-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281110	2018-08-09	2018-08-09	419031428	RIVERA CORTEZ GABRIELA	1	1	83	1999-02-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281111	2018-08-09	2018-08-09	MARD870827	MARTINEZ RODRIGUEZ DIANA BERENICE	2	4	7	1987-08-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281112	2018-08-09	2018-08-09	110004400	ROCHA TANGASSI BRENDA ABIGAIL	1	1	89	1997-06-18	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281113	2018-08-09	2018-08-09	316158741	COLIN ROJAS JUAN MANUEL	1	7	85	2000-01-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281114	2018-08-09	2018-08-09	416010615	ORTEGA ALVARADO FERNANDO	1	1	90	1997-04-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281115	2018-08-09	2018-08-09	310319436	TELLO ISLAS ANA GEORGINA	1	1	90	1994-08-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281116	2018-08-13	2018-08-13	419003519	LINARES GARCIA ANA PAOLA	1	4	86	2000-05-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281117	2018-08-13	2018-08-13	MOMK961106	MORALES MARTINEZ KIMBERLY	1	2	81	1996-11-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281118	2018-08-13	2018-08-13	316150752	CARDENAS NUÑEZ ALEXIS	1	4	85	1999-01-16	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281119	2018-08-13	2018-08-13	316316378	ALARCON VELAZQUEZ ALMA ITZEL	1	4	85	2000-07-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281120	2018-08-13	2018-08-13	310110563	AGUILAR SANCHEZ DANIEL	1	1	84	1994-01-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281121	2018-08-13	2018-08-13	95290009	GAYTAN CRUZ LILIANA	1	2	87	1990-01-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281122	2018-08-13	2018-08-13	517491593	MATEUS ANZOLA JESSICA PAOLA	1	2	87	1992-11-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281123	2018-08-13	2018-08-13	315096866	RAMIREZ DAMIAN ALEXIS	1	1	86	1999-06-18	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281124	2018-08-13	2018-08-13	316186708	GONZALEZ GARIBAY THABATA LIZETH	1	1	79	2000-11-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281125	2018-08-13	2018-08-13	313183100	MONTIEL GALINDO JOSE GILBERTO	1	4	85	1997-08-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281126	2018-08-13	2018-08-13	313119431	SAENZ LOPEZ DANIELA	1	1	90	1997-08-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281127	2018-08-13	2018-08-13	313006818	HURTADO CARMONA CHRISTOPHER GABRIEL	1	1	90	1996-09-21	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281128	2018-08-13	2018-08-13	309138637	RODRIGUEZ BLANCO ADRIANA DENNISE	1	5	84	1993-02-09	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281129	2018-08-13	2018-08-13	314502210	RAMIREZ GUZMAN SERGIO SEBASTIAN	1	4	89	1997-10-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281130	2018-08-13	2018-08-13	410118081	GUZMAN CRUZ VICTOR	1	1	84	1987-03-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281131	2018-08-13	2018-08-13	313308260	TORRES MALDONADO MARIANA ITZEL	1	1	90	1997-04-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281132	2018-08-13	2018-08-13	315000166	ARCE CONTRERAS LIBNI BETBIRAI	1	1	82	1998-01-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281133	2018-08-13	2018-08-13	309294548	PAZ ARELLANO LARISSA GUADALUPE	1	1	85	1993-01-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281134	2018-08-13	2018-08-13	1070006557	CAMPOS CANO JOCELYN	1	1	85	1994-07-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281135	2018-08-13	2018-08-13	311243518	LOPEZ VARGAS OLIVER KEVIN	1	1	90	1994-10-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281136	2018-08-13	2018-08-13	417088488	HERNANDEZ RODRIGUEZ ALEJANDRO	1	4	85	1998-02-26	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281137	2018-08-13	2018-08-13	313332377	REYES CASTILLO JESUS	1	1	85	1997-04-25	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281138	2018-08-14	2018-08-14	415053244	CASTILLO ESPINOZA ALINA	1	4	85	1996-01-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281139	2018-08-14	2018-08-14	311184156	MAR GONZALEZ LESLI XIOMARA	1	6	7	1995-08-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281140	2018-08-14	2018-08-14	314335900	ALVARADO OLVERA CESAR JOSUE	1	1	85	1997-12-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281141	2018-08-14	2018-08-14	31367108	UGALDE VIVO JOSE FRANCISCO	1	8	85	1996-06-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281142	2018-08-14	2018-08-14	308005307	GONZALEZ FLORES DANIEL	1	1	90	1992-01-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281143	2018-08-14	2018-08-14	308342110	PEÑA SANABRIA KARLA ADRIANA	1	1	150	1992-11-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281144	2018-08-14	2018-08-14	306290534	MARTINEZ LOPEZ FERNANDO	1	1	90	1990-08-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281145	2018-08-14	2018-08-14	419060437	CARIÑO CORTES NATALIA	1	1	84	1999-06-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281146	2018-08-14	2018-08-14	415020392	PEREZ DIAZ JAIME YAEL	1	1	85	1996-03-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281147	2018-08-14	2018-08-14	417019594	HERNANDEZ GARCIA YESENIA INES	1	1	79	1998-04-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281148	2018-08-14	2018-08-14	313139949	MARTINEZ PALMA VANESSA JOSELIN	1	4	84	1996-12-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281149	2018-08-14	2018-08-14	LOKD950227	LOUSTALOT KNAPP DANIELA	2	1	79	1995-02-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281150	2018-08-14	2018-08-14	316272405	ESTRADA HUERTA MIRANDA	1	6	7	1998-12-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281151	2018-08-14	2018-08-14	312115296	LOPEZ AQUINO MARIA CASANDRA	1	1	90	1998-08-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281152	2018-08-14	2018-08-14	312150860	SEBASTIAN ALARCON EDUARDO	1	1	85	1996-06-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281153	2018-08-14	2018-08-14	312003759	FLORES ORDOÑEZ PAOLA	1	1	86	1996-09-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281154	2018-08-14	2018-08-14	315035249	AMADOR PEREZ ANDREA	1	3	83	1999-02-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281155	2018-08-14	2018-08-14	419050166	MIRANDA HERNANDEZ BELEM ABIGAIL	1	1	85	1999-12-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281156	2018-08-14	2018-08-14	700000055	GONZALEZ ABRIL DIANA CAROLINA	1	2	80	1999-04-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281157	2018-08-14	2018-08-14	LOGS950401	LOPEZ GONZALEZ SANTOS	1	2	82	1995-04-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281158	2018-08-14	2018-08-14	415076148	ROCHA TERAN SUSANA	1	4	84	1995-06-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281159	2018-08-14	2018-08-14	310053473	CHAVARRIA SANCHEZ BRYAN	1	2	85	1993-10-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281160	2018-08-14	2018-08-14	315334731	DIMAS RAMIREZ LUIS DANIEL	1	5	85	1999-05-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281161	2018-08-14	2018-08-14	201901015	DE LEON MENDOZA FELIPE DE JESUS	1	1	82	1998-07-24	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281162	2018-08-14	2018-08-14	201901017	HERNANDEZ HERNANDEZ JENNIFER	1	2	82	1997-04-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281163	2018-08-14	2018-08-14	307211190	OSORIO RABADAN YARIMETH	1	2	80	1990-01-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281164	2018-08-14	2018-08-14	315262904	HERNANDEZ SORIANO LUZ MARIA	1	1	85	1998-10-17	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281165	2018-08-15	2018-08-15	314241128	RETIZ JURADO JOSE ELIAS	1	4	85	1998-07-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281166	2018-08-15	2018-08-15	IAIJ890227	ISLAS TELLEZ JENNIFER GABRIELA	1	7	73	1989-02-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281167	2018-08-15	2018-08-15	413122517	CAMACHO ROSAS ISABEL	1	4	84	1983-10-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281168	2018-08-15	2018-08-15	314619776	POZOS CORTES ALEJANDRO	1	1	7	1998-08-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281169	2018-08-15	2018-08-15	314261368	ALVAREZ LARA EVELYN	1	1	85	1998-06-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281170	2018-08-15	2018-08-15	41902543	SANTANA GONZALEZ MARIA ELENA	1	6	82	1963-12-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281171	2018-08-15	2018-08-15	31519197	CHIO GOMEZ ANDREA VICTORIA	1	7	7	1998-05-26	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281172	2018-08-15	2018-08-15	419060475	MORA MONTALVO MANUEL	1	7	7	1995-12-16	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281173	2018-08-15	2018-08-15	301243669	MONTAÑO RUIZ IVETTE	1	1	7	1982-10-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281174	2018-08-15	2018-08-15	312255185	MONTIEL GARCIA DANIEL	1	8	88	1998-03-30	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281175	2018-08-15	2018-08-15	316142894	RODRIGUEZ GRANADOS CARLOS IGNACIO	1	4	85	1999-06-11	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281176	2018-08-15	2018-08-15	313659555	IZQUIERDO FRAGOSO MARIA FERNANDA	1	1	7	1997-08-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281177	2018-08-15	2018-08-15	315327296	ZUÑIGA SANCHEZ CHRISTIAN	1	1	80	1996-11-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281178	2018-08-15	2018-08-15	GALA970606	GASCA LAGUNA ADRIANA	1	2	150	1997-06-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281179	2018-08-15	2018-08-15	620191107	GALVAN ACOSTA JANNET	1	1	90	1996-08-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281180	2018-08-15	2018-08-15	HEAA960203	HERNANDEZ ALVAREZ ANDREA	1	1	150	1996-02-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281181	2018-08-15	2018-08-15	AAHW950216	ALVAREZ HERNANDEZ WENDY DARIAN	1	1	150	1995-02-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281182	2018-08-15	2018-08-15	518011484	VAZQUEZ ALONSO EDGAR JESUS	1	7	113	1994-07-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281183	2018-08-15	2018-08-15	29104727	RODRIGUEZ BASURTO OSCAR OSVALDO	1	4	90	1997-08-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281184	2018-08-15	2018-08-15	416060204	RIVERA RAMIREZ OSMAR	1	7	79	1997-08-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281185	2018-08-15	2018-08-15	309336761	VERTIZ CRUZ ANDREA	1	4	84	1992-07-29	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281186	2018-08-16	2018-08-16	402029382	SALAZAR HERNANDEZ MARTHA VIRGINIA	1	1	81	1983-09-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281187	2018-08-16	2018-08-16	314048350	DAVALOS LOREDO GABRIELA ALEJANDRA	1	3	78	1998-06-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281188	2018-08-16	2018-08-16	SONF980108	SOTO NIETO FERNANDO	1	4	90	1998-01-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281189	2018-08-16	2018-08-16	QUBR970822	QUINTERO BOJORQUEZ RAFAEL	1	1	90	1997-08-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281190	2018-08-16	2018-08-16	316516475	MAROUN GONZALEZ NAGIBE	1	4	85	1999-07-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281191	2018-08-16	2018-08-16	316249577	ZARATE GARCIA JORGE ADRIAN	1	1	85	1999-11-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281192	2018-08-16	2018-08-16	315284559	GUILLEN ZARAGOZA NIDIA ALEJANDRA	1	1	90	1999-02-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281193	2018-08-16	2018-08-16	312311687	ROMERO ANICETO LETICIA	1	4	85	1996-09-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281194	2018-08-16	2018-08-16	314223607	MARTINEZ VENANCIO DIANA LAURA	1	1	88	1998-05-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281195	2018-08-16	2018-08-16	EAEE920907	ESCARCEGA ESPINOZA ELI MONTSERRAT	1	3	73	1992-09-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281196	2018-08-16	2018-08-16	311112814	VELAZQUEZ GARCIA LEONEL GERARDO	1	6	85	1995-09-14	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281197	2018-08-16	2018-08-16	RAGN880731	RAMIREZ GUTIERREZ NUBIA NALLELY	1	8	7	1988-07-31	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281198	2018-08-16	2018-08-16	417008068	LEYVA CUEVAS ERICK	1	2	83	1996-11-18	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281199	2018-08-16	2018-08-16	CAZF930723	CARRISOZA ZAMORA MARIA FERNANDA	2	8	85	1993-07-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281200	2018-08-16	2018-08-16	313280302	REYES BONILLA JORGE YASBETH	1	1	80	1993-04-12	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281201	2018-08-16	2018-08-16	95191872	OLIVARES CARRILLO JATZIRI HORTENCIA	1	6	80	1979-06-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281202	2018-08-16	2018-08-16	313218826	DOMINGUEZ DRUE VIRIDIANA	1	1	79	1997-11-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281203	2018-08-16	2018-08-16	312195434	OLIVO IBARRA DIANA	1	1	85	1996-08-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281204	2018-08-16	2018-08-16	314324357	SANTIAGO RIVERA LIZBETH	1	1	85	1993-09-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281205	2018-08-16	2018-08-16	313040540	MENDEZ CABRERA ANA BELEM	1	3	85	1997-02-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281206	2018-08-16	2018-08-16	312075723	ALDANA SUAREZ ANA LAURA	1	3	90	1994-10-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281207	2018-08-16	2018-08-16	315087949	LOPEZ GONZALEZ FERNANDO	1	1	85	1999-03-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281208	2018-08-16	2018-08-16	316007096	CAMPOS HERNANDEZ GABRIELA FATIMA	1	1	7	1999-05-09	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281209	2018-08-16	2018-08-16	314676072	ZUÑIGA VENEGAS BRENDA CRISTINA	1	3	84	1998-12-21	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281210	2018-08-16	2018-08-16	313173774	GONZALEZ RUIZ MARIA FERNANDA	1	2	7	1997-03-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281211	2018-08-16	2018-08-16	76365135	ROBLES LOPEZ ESPERANZA	1	1	82	1960-01-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281212	2018-08-16	2018-08-16	308266674	JIMENEZ JIMENEZ ANA IVETTE	1	1	89	1991-12-08	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281213	2018-08-16	2018-08-16	414045204	VARGAS PALACIOS ANTONIO	1	1	85	1994-07-28	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281214	2018-08-16	2018-08-16	96243644	TORRES ALVIRDE ERIK	1	8	79	1977-05-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281215	2018-08-16	2018-08-16	315233706	FAJARDO MONDRAGON DIEGO	1	1	85	1999-07-20	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281216	2018-08-17	2018-08-17	315265084	EMILIO ARIAS JESICA BETZABE	1	4	80	1999-01-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281217	2018-08-17	2018-08-17	316597485	VICTORIA GOMEZ MANUEL ALEJANDRO	1	2	81	2000-10-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281218	2018-08-17	2018-08-17	315003507	BAUTISTA PEREZ ANA LAURA	1	1	85	1997-12-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281219	2018-08-17	2018-08-17	419060468	CABRERA RODRIGUEZ ANDREA	1	4	7	2000-10-14	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281220	2018-08-17	2018-08-17	306657553	CAMACHO ORTIZ DE LA PEÑA MONTSERRAT	1	4	80	1989-09-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281221	2018-08-17	2018-08-17	414039979	VERDIN BAUTISTA DANTE LEONEL	1	1	90	1995-06-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281222	2018-08-17	2018-08-17	519010978	MORALES NAVARRETE GERARDO	1	1	79	1992-09-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281223	2018-08-20	2018-08-20	310346757	CARRAZCO CARDENAS ZAORI	1	2	78	1994-02-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281224	2018-08-20	2018-08-20	AASC780110	ALVAREZ SANCHEZ MA. DEL CARMEN PATRICIA	2	2	82	1978-01-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281225	2018-08-20	2018-08-20	315122596	SANTAMARIA GISPERT LUIS ANDRES	1	2	78	1998-09-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281226	2018-08-20	2018-08-20	316192387	VELAZQUEZ GIL BLANCA ANDREA	1	1	85	2000-07-01	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281227	2018-08-20	2018-08-20	313195633	COLOTLA LOPEZ ADRIAN TONATIUH	1	1	85	1995-03-21	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281228	2018-08-20	2018-08-20	312019084	SANCHEZ GONZALEZ ALEJANDRO	1	2	84	1996-01-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281229	2018-08-20	2018-08-20	413080837	ARELLANO ARREGUIN DENISSE	1	4	84	1984-11-21	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281230	2018-08-20	2018-08-20	312337094	LOPEZ MIRANDA ERICK	1	1	90	1996-01-08	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281231	2018-08-20	2018-08-20	314027852	CRISTAL CHAVEZ LUCERO ALICIA	1	3	84	1998-01-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281232	2018-08-20	2018-08-20	31209850	RESENDIZ ORTEGA JOSE ALFREDO	1	7	80	1996-04-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281233	2018-08-20	2018-08-20	PACL911019	PLATA CALDERA JOSE LUIS	3	3	7	1991-10-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281234	2018-08-21	2018-08-21	307251570	RODRIGUEZ ALMARAZ ILSE VIANEY	1	2	87	1991-02-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281235	2018-08-21	2018-08-21	CAGD961103	CHAN GURRIA DENNISS KARINA	1	1	90	1996-11-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281236	2018-08-21	2018-08-21	314147343	CHIÑAS AGUILAR HECTOR ULISES	1	2	84	1997-12-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281237	2018-08-21	2018-08-21	301293451	ORTEGA LEONARD LAURA VICTORIA	1	2	89	1985-07-20	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281238	2018-08-21	2018-08-21	99005256	PEREZ LEMUS GUSTAVO ROBERTO	1	1	116	1986-02-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281239	2018-08-21	2018-08-21	416116573	DE JESUS RAMIREZ MIGUEL	1	1	85	1997-01-14	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281240	2018-08-21	2018-08-21	314183031	OTERO ACOSTA PABLO CESAR	1	7	80	1998-04-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281241	2018-08-21	2018-08-21	313204502	MERCIER GARCIA HEBER DAVID	1	2	80	1997-03-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281242	2018-08-21	2018-08-21	LEGC530503	LEON GONZALEZ MARIA CRISTINA	2	8	85	1953-05-03	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281243	2018-08-21	2018-08-21	316002424	ALVAREZ RUIZ CHRIS DAVID	1	4	85	1999-09-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281244	2018-08-21	2018-08-21	312226372	PEREZ MATEOS ARMANDO	1	7	82	1996-01-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281245	2018-08-21	2018-08-21	112004657	SANCHEZ PACHECO NADIA KETZALLI	1	2	7	1999-03-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281246	2018-08-21	2018-08-21	112001199	SANCHEZ PACHECO ILSE AMEYALLI	1	2	7	1999-03-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281247	2018-08-21	2018-08-21	313047185	BOLAÑOS TORRIJOS IVAN	1	7	82	1997-10-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281248	2018-08-21	2018-08-21	419049757	BRIZUELA TORRES VALERIA	1	2	85	1995-12-27	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281249	2018-08-21	2018-08-21	310058382	BAUTISTA ANTONIO YAMILET	1	2	84	1993-10-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281250	2018-08-21	2018-08-21	310340566	CASTILLO MORALES BENJAMIN	1	1	79	1999-07-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281251	2018-08-21	2018-08-21	416490143	LEYVA RODRIGUEZ ANA LAURA	1	1	85	1996-09-08	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281252	2018-08-21	2018-08-21	313299188	CALLEJA ORIHUELA NADIA ERANDI	1	1	80	1996-12-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281253	2018-08-21	2018-08-21	98235414	VIDAL MEDINA JORGE MARINO	1	3	86	1982-05-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281254	2018-08-22	2018-08-22	313224632	RODRIGUEZ CRUZ IVAN	1	1	79	1996-11-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281255	2018-08-22	2018-08-22	417033110	ARMENTA TEZCUCANO DIANA LAURA	1	2	89	1997-09-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281256	2018-08-22	2018-08-22	309123938	MARTINEZ GUTIERREZ LILIA PRAXEDES	1	4	90	1993-03-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281257	2018-08-22	2018-08-22	313312560	SANCHEZ JAIME ANGEL ABRAHAM	1	2	85	1997-09-25	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281258	2018-08-22	2018-08-22	314069308	RODRIGUEZ HILARIO EVELYNE	1	3	84	1996-05-23	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281259	2018-08-22	2018-08-22	314243335	DIAZ VALVERDE JACQUELINE	1	7	82	1998-06-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281260	2018-08-22	2018-08-22	315127364	CALDERON PIÑA VERONICA ILEANA	1	1	90	1999-04-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281261	2018-08-22	2018-08-22	312169615	HERNANDEZ LLAGUNO KEVIN ISAAC	1	2	90	1995-12-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281262	2018-08-22	2018-08-22	314515018	ARVIZU VIÑAS IVANA	1	3	78	1998-07-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281263	2018-08-22	2018-08-22	414066104	RIVERA MOTA ROLANDO	1	2	84	1994-12-27	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281264	2018-08-22	2018-08-22	1518019514	URA GUTIERREZ MIGUEL EDUARDO	1	1	81	1989-04-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281265	2018-08-22	2018-08-22	307247225	PORTILLO DIAZ ANGEL ARTURO	1	1	82	1990-08-02	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281266	2018-08-23	2018-08-23	88320863	GUTIERREZ MENESES ALBERTO	1	1	82	1970-05-14	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281267	2018-08-23	2018-08-23	303238856	BAHENA PEREZ MARTHA ATZIN	1	1	84	1987-03-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281268	2018-08-23	2018-08-23	978008817	VELAZQUEZ GUTIERREZ RODRIGO	1	2	82	1978-08-22	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281269	2018-08-23	2018-08-23	417027672	MARTINEZ MARTINEZ ANDRES	1	2	85	1998-03-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281270	2018-08-23	2018-08-23	416065835	DE LOS SANTOS AGUILLON SEBASTIAN	1	5	90	1997-04-07	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281271	2018-08-23	2018-08-23	314070755	GUTIERREZ MARQUEZ ASTRID CAROLINA	1	1	82	1998-09-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281272	2018-08-23	2018-08-23	314182182	LEAL VAZQUEZ GLORIA JAZMIN	1	1	82	1998-04-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281273	2018-08-23	2018-08-23	316034434	GARCIA ESCALONA MARIA JOSE	1	4	86	2000-02-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281274	2018-08-23	2018-08-23	316201081	MERINO CARBAJAL ERNESTO	1	3	7	1999-10-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281275	2018-08-23	2018-08-23	316025847	SANTOS VASCONCELOS ANA EMILIA	1	1	78	2000-08-28	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281276	2018-08-23	2018-08-23	419059808	PABLO TEPOXTECATL SAMANTA	1	1	89	2000-03-16	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281277	2018-08-27	2018-08-27	419008064	CASAS VENTEÑO ANGELES ABRIL	1	4	80	1996-01-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281278	2018-08-27	2018-08-27	316125583	MAYA PIMENTEL JUAN FRANCISCO	1	1	7	1999-10-05	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281279	2018-08-27	2018-08-27	309330635	VIGNATI VILCHIS PATRICIA	1	2	80	1993-04-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281280	2018-08-27	2018-08-27	416044131	HIDALGO LUNA ALBERTO ANDRES	1	5	84	1995-06-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281281	2018-08-27	2018-08-27	315084687	DE JESUS VERGARA LESLI JOSELIN	1	1	80	1999-03-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281282	2018-08-27	2018-08-27	315087705	REYES LOPEZ OSCAR	1	1	80	1999-03-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281283	2018-08-27	2018-08-27	316193487	BARRIOS GONZALEZ ALEJANDRO	1	4	84	1999-09-29	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281284	2018-08-27	2018-08-27	315334085	CISNEROS JIMENEZ ARIADNA GUADALUPE	1	3	89	1999-02-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281285	2018-08-27	2018-08-27	312054775	GARCIA INCLAN DILAN JOSEPH	1	1	7	1996-08-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281286	2018-08-27	2018-08-27	313309559	YTURRIA SIGUENZA MONTSERRAT	1	5	88	1996-10-09	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281287	2018-08-27	2018-08-27	312017963	SANCHEZ DOMINGUEZ ROSARIO ANGELICA	1	5	78	1995-09-24	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281288	2018-08-27	2018-08-27	316194271	CASTILLO CABALLERO FERNANDA GUADALUPE	1	4	7	2000-01-06	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281289	2018-08-27	2018-08-27	315338863	GONZALEZ SIERRA CONSTANZA MARIANA	1	1	89	1999-02-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281290	2018-08-27	2018-08-27	515013238	FRANCO ARELLANO ASAF LEVI	1	1	113	1989-10-13	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281291	2018-08-27	2018-08-27	111002124	ARCE POSADAS SANDRA ODALIZ	1	1	82	1999-06-08	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281292	2018-08-27	2018-08-27	313042850	ROCHA ROJAS EDUARDO	1	1	90	1997-10-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281293	2018-08-27	2018-08-27	313246302	HERNANDEZ GONZALEZ RICARDO PARAMONT	1	1	90	1997-09-03	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281294	2018-08-28	2018-08-28	313149595	NIETO DE LA ROSA FRANCISCO SANTIAGO	1	1	79	1997-07-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281295	2018-08-28	2018-08-28	310000116	BAENA TRUJILLO JOSE EMMANUEL	1	1	85	1994-07-23	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281296	2018-08-28	2018-08-28	313186259	LARIOS CORTES GUSTAVO JAVIER	1	1	84	1995-03-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281297	2018-08-28	2018-08-28	311177336	PULIDO ORTEGA ISRAEL	1	7	79	1995-01-04	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281298	2018-08-28	2018-08-28	313273049	QUINTANA MARTINEZ ANA PAOLA	1	1	84	1997-11-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281299	2018-08-28	2018-08-28	315226742	RODRIGUEZ LOPEZ ARAIZA JOSE EDUARDO	1	7	85	1998-12-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281300	2018-08-28	2018-08-28	314006567	DIAZ PEREIRA REBECA	1	6	81	1998-04-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281301	2018-08-28	2018-08-28	309276113	MARTINEZ NICOLAS LUCERO ALEJANDRA	1	7	89	1993-08-19	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281302	2018-08-28	2018-08-28	419060554	LUIS MARQUEZ ANDREA	1	2	7	1999-08-07	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281303	2018-08-28	2018-08-28	316250106	VALDEZ CARDENAS JEHIELI VALERIA	1	4	90	1999-10-02	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281304	2018-08-28	2018-08-28	313119015	SOLANO AVELAR LUIS FERNANDO	1	4	85	1997-04-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281305	2018-08-28	2018-08-28	312118864	JIMENEZ ALVAREZ EURYDICE	1	4	7	1996-01-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281306	2018-08-28	2018-08-28	305229784	GONZALEZ MEDINA MARCOS JOSUE	1	1	85	1988-10-01	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281307	2018-08-28	2018-08-28	305097275	BENITEZ MARTINEZ TANIA ALEJANDRA	1	7	85	1988-08-25	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281308	2018-08-28	2018-08-28	312041575	FLORES GARCIA ANA	1	1	82	1996-04-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281309	2018-08-28	2018-08-28	415140539	HERNANDEZ VELAZQUEZ DANIEL ANTONIO	1	1	84	1996-12-12	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281310	2018-08-29	2018-08-29	312271509	GONZALEZ PEÑA JESSICA MARLENE	1	1	85	1996-06-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281311	2018-08-29	2018-08-29	109003661	PUNZO MEDINA GERMAN ULISES	1	1	85	1996-06-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281312	2018-08-29	2018-08-29	417071534	VAZQUEZ ALFERES PAOLA ABRIL	1	1	82	1996-07-31	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281313	2018-08-29	2018-08-29	313342136	SOSA DIAZ ADRIANA	1	6	85	1997-06-11	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281314	2018-08-29	2018-08-29	313096217	ESPINOZA MARTINEZ JAZMIN	1	7	81	1997-03-10	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281315	2018-08-29	2018-08-29	313293856	ISLAS ESCOBAR ALEXA PAMELA	1	1	90	1997-05-22	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281316	2018-08-30	2018-08-30	416090736	SILVA ROY DAVID	1	4	79	1997-07-06	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281317	2018-08-30	2018-08-30	TEME870418	TEJADA MALPICA ERIC ADRIAN	2	1	85	1987-04-18	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281318	2018-08-30	2018-08-30	316075017	VILLANUEVA ROJAS KEVIN AMIR	1	4	85	2000-03-02	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281319	2018-08-30	2018-08-30	316675961	GARZA PEÑA NARVAEZ JUAN PABLO	1	2	83	1999-07-19	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281320	2018-08-30	2018-08-30	316077554	VEGA GUERRERO JIMENA	1	1	85	2000-05-30	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281321	2018-08-30	2018-08-30	514012898	ZAVALA JIMENEZ BERENICE	1	2	79	1990-10-15	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281322	2018-08-30	2018-08-30	313185269	SANTIAGO RUBIO JORGE DANIEL	1	1	90	1995-01-31	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281323	2018-08-30	2018-08-30	311218198	HERNANDEZ ALVARADO RICARDO BRUNO	1	2	90	1995-08-17	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281324	2018-08-30	2018-08-30	416058871	RAMIREZ MARTINEZ IGNACIO	1	4	83	1996-04-15	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281325	2018-08-30	2018-08-30	304237890	SANCHEZ CASTAÑEDA URIEL	1	1	84	1988-08-09	M	t	1	apellido p	apellido m	nombres	0	none	none	0
281326	2018-08-30	2018-08-30	313358667	MARTINEZ GONZALEZ GABRIELA IVONNE	1	1	90	1997-05-04	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281327	2018-08-30	2018-08-30	SOXC880813	SOLIGO CAROLINA	1	8	80	1988-08-13	F	t	1	apellido p	apellido m	nombres	0	none	none	0
281328	2018-08-30	2018-08-30	31233037	ALVARADO BENITEZ TANIA	1	1	89	1996-06-05	F	t	1	apellido p	apellido m	nombres	0	none	none	0
\.


--
-- TOC entry 2090 (class 2606 OID 19981)
-- Name: aprendiente2_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY aprendiente2
    ADD CONSTRAINT aprendiente2_pkey PRIMARY KEY (idaprendiente);


--
-- TOC entry 2091 (class 2606 OID 20121)
-- Name: aprendiente2_idioma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY aprendiente2
    ADD CONSTRAINT aprendiente2_idioma_fkey FOREIGN KEY (idioma) REFERENCES idioma(ididioma);


--
-- TOC entry 2092 (class 2606 OID 20126)
-- Name: aprendiente2_idioma_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY aprendiente2
    ADD CONSTRAINT aprendiente2_idioma_fkey1 FOREIGN KEY (idioma) REFERENCES idioma(ididioma);


-- Completed on 2018-09-03 09:16:24

--
-- PostgreSQL database dump complete
--

