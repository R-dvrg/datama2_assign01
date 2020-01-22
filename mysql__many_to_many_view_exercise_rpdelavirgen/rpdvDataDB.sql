--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-01-20 09:16:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2902 (class 1262 OID 13318)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2888 (class 0 OID 24578)
-- Dependencies: 204
-- Data for Name: _bid; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public._bid (id, bid_refid, bid_orgname, bid_conam, employee_emp_num) VALUES (1, 'RP020124541', 'Department of Health', 'Php 1,234,191.23', 2);
INSERT INTO public._bid (id, bid_refid, bid_orgname, bid_conam, employee_emp_num) VALUES (2, 'RP020124542', 'Department of Public Works and Highways', 'Php 21,124,123.89', 2);
INSERT INTO public._bid (id, bid_refid, bid_orgname, bid_conam, employee_emp_num) VALUES (3, 'RP020124543', 'Department of Public Works and Highways', 'Php 5,121.192.71', 3);
INSERT INTO public._bid (id, bid_refid, bid_orgname, bid_conam, employee_emp_num) VALUES (4, 'RP020124544', 'Department of Health', 'Php 3,742,125.00', 1);
INSERT INTO public._bid (id, bid_refid, bid_orgname, bid_conam, employee_emp_num) VALUES (5, 'RP020124545', 'Department of Environment and Natural Resourc', 'Php 1,752,110.12', 3);


--
-- TOC entry 2890 (class 0 OID 24587)
-- Dependencies: 206
-- Data for Name: _employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public._employee (id, emp_ln, emp_mn, emp_fn, emp_type) VALUES (1, 'dela Cruz', 'Penafrancia', 'Romel', 'Engineer');
INSERT INTO public._employee (id, emp_ln, emp_mn, emp_fn, emp_type) VALUES (2, 'Ramos', 'Panganiban', 'Elise', 'Secretary');
INSERT INTO public._employee (id, emp_ln, emp_mn, emp_fn, emp_type) VALUES (3, 'Lagsac', 'Martinez', 'Rose', 'Secretary');


--
-- TOC entry 2892 (class 0 OID 24597)
-- Dependencies: 208
-- Data for Name: _project; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2893 (class 0 OID 24606)
-- Dependencies: 209
-- Data for Name: _project_has_suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2895 (class 0 OID 24614)
-- Dependencies: 211
-- Data for Name: _suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2896 (class 0 OID 24621)
-- Dependencies: 212
-- Data for Name: _worker; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 203
-- Name: _bid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._bid_id_seq', 5, true);


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 205
-- Name: _employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._employee_id_seq', 3, true);


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 207
-- Name: _project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._project_id_seq', 1, false);


--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 210
-- Name: _suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._suppliers_id_seq', 1, false);


-- Completed on 2020-01-20 09:16:53

--
-- PostgreSQL database dump complete
--

