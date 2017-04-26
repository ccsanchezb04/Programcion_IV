--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2017-04-24 08:01:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 186
-- Name: adds_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adds_id', 3, true);


--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 183
-- Name: city_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('city_id', 8, true);


--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 185
-- Name: path_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('path_id', 16, true);


--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 187
-- Name: rese_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rese_id', 1, false);


--
-- TOC entry 2147 (class 0 OID 32908)
-- Dependencies: 189
-- Data for Name: tp_adds; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tp_adds VALUES (1, 'Alimentación', 150000, 'A');
INSERT INTO tp_adds VALUES (2, 'Internet', 80000, 'A');
INSERT INTO tp_adds VALUES (3, 'Maletero', 50000, 'A');


--
-- TOC entry 2142 (class 0 OID 24727)
-- Dependencies: 184
-- Data for Name: tp_cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tp_cities VALUES (1, 'Bogotá', 'A');
INSERT INTO tp_cities VALUES (2, 'Bucaramanga', 'A');
INSERT INTO tp_cities VALUES (3, 'Cali', 'A');
INSERT INTO tp_cities VALUES (4, 'Manizales', 'A');
INSERT INTO tp_cities VALUES (5, 'Medellín', 'A');
INSERT INTO tp_cities VALUES (6, 'Miami', 'A');
INSERT INTO tp_cities VALUES (7, 'New York', 'A');
INSERT INTO tp_cities VALUES (8, 'Panamá', 'A');


--
-- TOC entry 2146 (class 0 OID 24813)
-- Dependencies: 188
-- Data for Name: tp_paths; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tp_paths VALUES (1, 4, 2, 35040000, 45040000, 60040000, 'N', 'A');
INSERT INTO tp_paths VALUES (2, 4, 1, 20030000, 30030000, 45030000, 'N', 'A');
INSERT INTO tp_paths VALUES (3, 4, 3, 18000000, 28000000, 43000000, 'N', 'A');
INSERT INTO tp_paths VALUES (4, 4, 5, 15000000, 25000000, 40000000, 'N', 'A');
INSERT INTO tp_paths VALUES (5, 2, 4, 41500000, 51500000, 66500000, 'N', 'A');
INSERT INTO tp_paths VALUES (6, 2, 1, 22000000, 32000000, 47000000, 'N', 'A');
INSERT INTO tp_paths VALUES (7, 2, 3, 18000000, 28000000, 43000000, 'N', 'A');
INSERT INTO tp_paths VALUES (8, 2, 5, 21000000, 31000000, 46000000, 'N', 'A');
INSERT INTO tp_paths VALUES (9, 5, 4, 18000000, 28000000, 43000000, 'N', 'A');
INSERT INTO tp_paths VALUES (10, 5, 1, 15000000, 25000000, 40000000, 'N', 'A');
INSERT INTO tp_paths VALUES (11, 5, 3, 17000000, 27000000, 42000000, 'N', 'A');
INSERT INTO tp_paths VALUES (12, 5, 2, 21500000, 31500000, 46500000, 'N', 'A');
INSERT INTO tp_paths VALUES (13, 1, 6, 130000000, 160000000, 190000000, 'S', 'A');
INSERT INTO tp_paths VALUES (14, 1, 7, 140000000, 190000000, 230000000, 'S', 'A');
INSERT INTO tp_paths VALUES (15, 3, 8, 80000000, 100000000, 130000000, 'S', 'A');
INSERT INTO tp_paths VALUES (16, 3, 6, 110000000, 130000000, 180000000, 'S', 'A');


--
-- TOC entry 2148 (class 0 OID 32914)
-- Dependencies: 190
-- Data for Name: tp_reser; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2140 (class 0 OID 24719)
-- Dependencies: 182
-- Data for Name: tp_trav; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2196 (class 0 OID 0)
-- Dependencies: 181
-- Name: travel_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('travel_id', 1, false);


-- Completed on 2017-04-24 08:01:03

--
-- PostgreSQL database dump complete
--

