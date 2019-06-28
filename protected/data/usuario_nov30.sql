--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2017-11-30 11:08:54

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
-- TOC entry 201 (class 1259 OID 20173)
-- Name: usuario; Type: TABLE; Schema: public; Owner: alex
--

CREATE TABLE usuario (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    password text NOT NULL,
    nombre character varying(100) NOT NULL,
    apaterno character varying(100) NOT NULL,
    amaterno character varying(100) DEFAULT ''::character varying NOT NULL,
    email character varying(150) NOT NULL,
    tipo character varying(20) DEFAULT 'admin'::character varying NOT NULL
);


ALTER TABLE usuario OWNER TO alex;

--
-- TOC entry 200 (class 1259 OID 20171)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: alex
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_seq OWNER TO alex;

--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alex
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- TOC entry 2050 (class 2604 OID 20176)
-- Name: id; Type: DEFAULT; Schema: public; Owner: alex
--

ALTER TABLE ONLY usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- TOC entry 2172 (class 0 OID 20173)
-- Dependencies: 201
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY usuario (id, username, password, nombre, apaterno, amaterno, email, tipo) FROM stdin;
1	alex	12345	Alejandro	Rodriguez	Allende	alejandro@cele.unam.mx	super
6	nico	12345	Nico	SinConocer	SinConocer	nicocele@cele.unam.mx	asist
4	rosario	adminRos	Rosario	Aragon	López	rosario.aragon@enallt.unam.mx	admin
3	elizabeth	adminEli	Elizabeth	Olivares	Quiroz	elizabeth.olivares@enallt.unam.mx	admin
5	gaspar	adminGaspar	Gaspar	Rodriguez	Cuellar	gaspar.rodriguez@enallt.unam.mx	admin
2	adelia	coordAdelia	Adelia	Peña	Clavel	medcele@enallt.unam.mx	coord
\.


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('usuario_id_seq', 6, true);


--
-- TOC entry 2054 (class 2606 OID 20185)
-- Name: usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- TOC entry 2056 (class 2606 OID 20183)
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: alex
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


-- Completed on 2017-11-30 11:08:56

--
-- PostgreSQL database dump complete
--

