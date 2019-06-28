--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.9
-- Dumped by pg_dump version 9.4.4
-- Started on 2019-01-28 17:26:54 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 25129)
-- Name: salida; Type: TABLE; Schema: public; Owner: arodriguez; Tablespace: 
--

CREATE TABLE salida (
    identrada integer NOT NULL,
    idaprendiente integer NOT NULL,
    horasalida timestamp without time zone NOT NULL
);


ALTER TABLE salida OWNER TO arodriguez;

--
-- TOC entry 2078 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN salida.identrada; Type: COMMENT; Schema: public; Owner: arodriguez
--

COMMENT ON COLUMN salida.identrada IS 'No. entrada';


--
-- TOC entry 2079 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN salida.idaprendiente; Type: COMMENT; Schema: public; Owner: arodriguez
--

COMMENT ON COLUMN salida.idaprendiente IS 'No. Aprendiente';


--
-- TOC entry 2080 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN salida.horasalida; Type: COMMENT; Schema: public; Owner: arodriguez
--

COMMENT ON COLUMN salida.horasalida IS 'Hora de salida';


--
-- TOC entry 2073 (class 0 OID 25129)
-- Dependencies: 187
-- Data for Name: salida; Type: TABLE DATA; Schema: public; Owner: arodriguez
--

COPY salida (identrada, idaprendiente, horasalida) FROM stdin;
1	123456	2018-07-27 09:26:40
15	281612	2019-01-18 11:41:51
14	281566	2019-01-18 11:42:03
13	281602	2019-01-18 11:56:08
12	271361	2019-01-18 11:56:51
11	281607	2019-01-18 11:56:55
10	281575	2019-01-18 11:58:00
9	281609	2019-01-18 11:58:11
8	281574	2019-01-18 12:04:32
7	281611	2019-01-18 12:04:37
6	280903	2019-01-18 12:04:41
5	281082	2019-01-18 12:04:43
4	281081	2019-01-18 12:04:50
3	290407	2019-01-18 12:04:54
32	281363	2019-01-25 10:58:33
33	281105	2019-01-25 10:58:51
34	281589	2019-01-25 11:00:35
35	281597	2019-01-25 11:00:45
36	281218	2019-01-25 11:02:22
37	281262	2019-01-25 11:02:38
38	281132	2019-01-25 11:03:10
39	281466	2019-01-25 11:04:04
40	281477	2019-01-25 11:04:39
41	281441	2019-01-25 11:05:14
42	251427	2019-01-25 11:05:43
46	281579	2019-01-25 11:08:15
47	281521	2019-01-25 11:08:55
43	281366	2019-01-25 11:09:16
48	281084	2019-01-25 11:14:53
56	281556	2019-01-25 11:15:37
57	281371	2019-01-25 11:15:42
72	281531	2019-01-25 11:19:43
73	281080	2019-01-25 11:19:49
71	281282	2019-01-25 11:19:55
70	281200	2019-01-25 11:20:01
69	281254	2019-01-25 11:20:14
68	281598	2019-01-25 11:20:19
67	281603	2019-01-25 11:20:22
66	280904	2019-01-25 11:20:26
65	281143	2019-01-25 11:20:31
75	281331	2019-01-25 11:22:00
31	281322	2019-01-25 11:22:40
76	281490	2019-01-25 11:22:52
77	281091	2019-01-25 11:22:58
78	281228	2019-01-25 11:23:18
79	281257	2019-01-25 11:23:22
81	281392	2019-01-25 11:24:08
74	281292	2019-01-25 11:28:29
80	281217	2019-01-25 11:28:50
30	251817	2019-01-25 11:31:17
29	281587	2019-01-25 11:35:34
63	281139	2019-01-25 11:42:31
64	281593	2019-01-25 11:44:31
58	281578	2019-01-25 11:46:04
53	281280	2019-01-25 11:50:42
44	281504	2019-01-25 11:55:21
\.


--
-- TOC entry 1962 (class 2606 OID 25133)
-- Name: salida_pkey; Type: CONSTRAINT; Schema: public; Owner: arodriguez; Tablespace: 
--

ALTER TABLE ONLY salida
    ADD CONSTRAINT salida_pkey PRIMARY KEY (identrada, idaprendiente, horasalida);


--
-- TOC entry 1963 (class 2606 OID 25134)
-- Name: salidamediateca; Type: FK CONSTRAINT; Schema: public; Owner: arodriguez
--

ALTER TABLE ONLY salida
    ADD CONSTRAINT salidamediateca FOREIGN KEY (identrada) REFERENCES entrada(identrada) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-01-28 17:26:58 CST

--
-- PostgreSQL database dump complete
--

