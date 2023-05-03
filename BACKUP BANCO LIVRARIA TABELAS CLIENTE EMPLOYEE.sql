--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    codigo integer NOT NULL,
    nome character varying(255),
    cel character varying(30)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_codigo_seq OWNER TO postgres;

--
-- Name: cliente_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_codigo_seq OWNED BY public.cliente.codigo;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    name character varying(255),
    job character varying(255),
    department character varying(255),
    salary character varying(255),
    hire_date character varying(255),
    cpf character varying(255)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: livros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livros (
    codlivro integer NOT NULL,
    nome character varying(255)
);


ALTER TABLE public.livros OWNER TO postgres;

--
-- Name: livros_codlivro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livros_codlivro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.livros_codlivro_seq OWNER TO postgres;

--
-- Name: livros_codlivro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livros_codlivro_seq OWNED BY public.livros.codlivro;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    codproduto integer NOT NULL,
    nome character varying(255)
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- Name: cliente codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN codigo SET DEFAULT nextval('public.cliente_codigo_seq'::regclass);


--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: livros codlivro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros ALTER COLUMN codlivro SET DEFAULT nextval('public.livros_codlivro_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (codigo, nome, cel) FROM stdin;
1	nome1111	65464654646
2	nome22	22222222222
3	brianc	777777777
4	lian	555555
5	lianggg	ggg555555
6	lianggg	ggg555555
7	lianggg	ggg555555
8	lianggg	ggg555555
9	lianggg	ggg555555
10	lianggg	ggg555555
11	lianggg	ggg555555
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, name, job, department, salary, hire_date, cpf) FROM stdin;
9	ttt	ttttt	ttt	111	2023-02-14	\N
7	fgdfgdfg	dfgdf	gdfg	434444	2023-03-09	4444
10	reter	tert	erter	3233	2023-02-15	33232
11	hhhhhhh	dfgdfdfg	dfgdfg	43543	2023-02-22	5345
12	ppppp	ppppppp	pppppppppp	888888888	2023-02-21	77777
\.


--
-- Data for Name: livros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livros (codlivro, nome) FROM stdin;
1	psqlll
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (codproduto, nome) FROM stdin;
\.


--
-- Name: cliente_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_codigo_seq', 11, true);


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 12, true);


--
-- Name: livros_codlivro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livros_codlivro_seq', 1, true);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (codigo);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: livros livros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_pkey PRIMARY KEY (codlivro);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (codproduto);


--
-- PostgreSQL database dump complete
--

