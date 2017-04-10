--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2017-04-10 09:52:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2153 (class 1262 OID 24716)
-- Name: trip_plan; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE trip_plan WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';


ALTER DATABASE trip_plan OWNER TO postgres;

\connect trip_plan

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 186 (class 1259 OID 24776)
-- Name: adds_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adds_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adds_id OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24725)
-- Name: city_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE city_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE city_id OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 24733)
-- Name: path_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE path_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE path_id OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 24784)
-- Name: rese_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rese_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rese_id OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 24778)
-- Name: tp_adds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tp_adds (
    adds_idadds integer DEFAULT nextval('adds_id'::regclass) NOT NULL,
    adds_namead character varying(100) NOT NULL,
    adds_status character(1) NOT NULL
);


ALTER TABLE tp_adds OWNER TO postgres;

--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 187
-- Name: TABLE tp_adds; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tp_adds IS 'Adds | Adicionales';


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tp_adds.adds_idadds; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_adds.adds_idadds IS 'Id adds | Id Ciudad';


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tp_adds.adds_namead; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_adds.adds_namead IS 'adds Name | Nombre de la Adicion';


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tp_adds.adds_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_adds.adds_status IS 'Registration Status | Estado del Registro';


--
-- TOC entry 184 (class 1259 OID 24727)
-- Name: tp_cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tp_cities (
    city_idcity integer DEFAULT nextval('city_id'::regclass) NOT NULL,
    city_namect character varying(100) NOT NULL,
    city_status character(1) NOT NULL
);


ALTER TABLE tp_cities OWNER TO postgres;

--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 184
-- Name: TABLE tp_cities; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tp_cities IS 'Cities | Ciudades';


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN tp_cities.city_idcity; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_cities.city_idcity IS 'Id City | Id Ciudad';


--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN tp_cities.city_namect; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_cities.city_namect IS 'City Name | Nombre de la Ciudad';


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN tp_cities.city_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_cities.city_status IS 'Registration Status | Estado del Registro';


--
-- TOC entry 189 (class 1259 OID 24813)
-- Name: tp_paths; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tp_paths (
    path_idpath integer DEFAULT nextval('path_id'::regclass) NOT NULL,
    path_idctor integer NOT NULL,
    path_idctds integer NOT NULL,
    path_prieco integer NOT NULL,
    path_pritou integer NOT NULL,
    path_priexe integer NOT NULL,
    path_intpat character(1) NOT NULL,
    path_status character(1) NOT NULL
);


ALTER TABLE tp_paths OWNER TO postgres;

--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 189
-- Name: TABLE tp_paths; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tp_paths IS 'Paths | Trayectos';


--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_idpath; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_idpath IS 'Id Path | Id Trayecto';


--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_idctor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_idctor IS 'Id Origin City | Id Ciudad de Origen';


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_idctds; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_idctds IS 'Id Destination City | Id Ciudad de Destino';


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_prieco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_prieco IS 'Economic Price | Precio Economico';


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_pritou; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_pritou IS 'Tourist Price | Precio Turista';


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_priexe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_priexe IS 'Executive Price | Precio Ejecutivo';


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_intpat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_intpat IS 'Intenational Path | Trayecto Internacional';


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN tp_paths.path_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_paths.path_status IS 'Registration Status | Estado de Registro';


--
-- TOC entry 190 (class 1259 OID 24845)
-- Name: tp_reser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tp_reser (
    rese_idrese integer DEFAULT nextval('rese_id'::regclass) NOT NULL,
    rese_idtrav integer NOT NULL,
    rese_idpath integer NOT NULL,
    rese_idadds integer NOT NULL,
    rese_subtot integer NOT NULL,
    rese_totpri integer NOT NULL,
    rese_status character(1) NOT NULL
);


ALTER TABLE tp_reser OWNER TO postgres;

--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 190
-- Name: TABLE tp_reser; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tp_reser IS 'Reservations | Reservas';


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_idrese; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_idrese IS 'Id Reservation | Id Reservación';


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_idtrav; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_idtrav IS 'Id Traveler | Id Viajero';


--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_idpath; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_idpath IS 'Id Path | Id Trayecto';


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_idadds; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_idadds IS 'Id Adds | Id Adcionales';


--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_subtot; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_subtot IS 'Subtotal | Subtotal';


--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_totpri; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_totpri IS 'Total Price | Precio Total';


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN tp_reser.rese_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_reser.rese_status IS 'Registration Status | Estado de Registro';


--
-- TOC entry 181 (class 1259 OID 24717)
-- Name: travel_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE travel_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE travel_id OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24719)
-- Name: tp_trav; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tp_trav (
    trav_idtrav integer DEFAULT nextval('travel_id'::regclass) NOT NULL,
    trav_cardid character varying(45) NOT NULL,
    trav_fsname character varying(45) NOT NULL,
    trav_lsname character varying(45) NOT NULL,
    trav_brdate date NOT NULL,
    trav_agetra character varying(3) NOT NULL,
    trav_emailt character varying(100) NOT NULL,
    trav_status character(1) NOT NULL
);


ALTER TABLE tp_trav OWNER TO postgres;

--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 182
-- Name: TABLE tp_trav; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tp_trav IS 'Travellers | Viajeros';


--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_idtrav; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_idtrav IS 'Id Traveler | Id Viajero';


--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_cardid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_cardid IS 'Identification Card | Nro. de Identificación';


--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_fsname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_fsname IS 'Traveler Firts Name | Nombres del Viajero';


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_lsname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_lsname IS 'Traveler Last Name | Apellidos del Viajero';


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_brdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_brdate IS 'Traveler Birth Date | Fecha de Nacimiento del Viajero';


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_agetra; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_agetra IS 'Traveler Age | Edad del Viajero';


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_emailt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_emailt IS 'Traveler Email | Correo Electronico del Viajero';


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tp_trav.trav_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tp_trav.trav_status IS 'Registration Status | Estado del Registro';


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 186
-- Name: adds_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adds_id', 1, false);


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 183
-- Name: city_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('city_id', 1, false);


--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 185
-- Name: path_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('path_id', 1, false);


--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 188
-- Name: rese_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rese_id', 1, false);


--
-- TOC entry 2145 (class 0 OID 24778)
-- Dependencies: 187
-- Data for Name: tp_adds; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2142 (class 0 OID 24727)
-- Dependencies: 184
-- Data for Name: tp_cities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2147 (class 0 OID 24813)
-- Dependencies: 189
-- Data for Name: tp_paths; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2148 (class 0 OID 24845)
-- Dependencies: 190
-- Data for Name: tp_reser; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2140 (class 0 OID 24719)
-- Dependencies: 182
-- Data for Name: tp_trav; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 181
-- Name: travel_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('travel_id', 1, false);


--
-- TOC entry 2015 (class 2606 OID 24783)
-- Name: adds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_adds
    ADD CONSTRAINT adds_pkey PRIMARY KEY (adds_idadds);


--
-- TOC entry 2013 (class 2606 OID 24732)
-- Name: city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_cities
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_idcity);


--
-- TOC entry 2017 (class 2606 OID 24818)
-- Name: paths_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_paths
    ADD CONSTRAINT paths_pkey PRIMARY KEY (path_idpath);


--
-- TOC entry 2019 (class 2606 OID 24850)
-- Name: reses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_reser
    ADD CONSTRAINT reses_pkey PRIMARY KEY (rese_idrese);


--
-- TOC entry 2011 (class 2606 OID 24724)
-- Name: traveler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_trav
    ADD CONSTRAINT traveler_pkey PRIMARY KEY (trav_idtrav);


--
-- TOC entry 2024 (class 2606 OID 24861)
-- Name: adds_reservation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_reser
    ADD CONSTRAINT adds_reservation FOREIGN KEY (rese_idadds) REFERENCES tp_adds(adds_idadds);


--
-- TOC entry 2021 (class 2606 OID 24824)
-- Name: city_destination_path; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_paths
    ADD CONSTRAINT city_destination_path FOREIGN KEY (path_idctds) REFERENCES tp_cities(city_idcity);


--
-- TOC entry 2020 (class 2606 OID 24819)
-- Name: city_origin_path; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_paths
    ADD CONSTRAINT city_origin_path FOREIGN KEY (path_idctor) REFERENCES tp_cities(city_idcity);


--
-- TOC entry 2023 (class 2606 OID 24856)
-- Name: path_reservation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_reser
    ADD CONSTRAINT path_reservation FOREIGN KEY (rese_idpath) REFERENCES tp_paths(path_idpath);


--
-- TOC entry 2022 (class 2606 OID 24851)
-- Name: traveler_reservation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tp_reser
    ADD CONSTRAINT traveler_reservation FOREIGN KEY (rese_idtrav) REFERENCES tp_trav(trav_idtrav);


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-04-10 09:52:13

--
-- PostgreSQL database dump complete
--

