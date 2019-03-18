--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS alunos;
--
-- Name: alunos; Type: DATABASE; Schema: -; Owner: roberto
--

CREATE DATABASE alunos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE alunos OWNER TO roberto;

\connect alunos

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alunos; Type: TABLE; Schema: public; Owner: roberto
--

CREATE TABLE public.alunos (
    id integer NOT NULL,
    nome character varying(256) NOT NULL,
    idade integer,
    peso double precision,
    sexo boolean,
    curso integer,
    origem integer
);


ALTER TABLE public.alunos OWNER TO roberto;

--
-- Name: alunos_id_seq; Type: SEQUENCE; Schema: public; Owner: roberto
--

CREATE SEQUENCE public.alunos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alunos_id_seq OWNER TO roberto;

--
-- Name: alunos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roberto
--

ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;


--
-- Name: curso; Type: TABLE; Schema: public; Owner: roberto
--

CREATE TABLE public.curso (
    id integer NOT NULL,
    curso character varying(256)
);


ALTER TABLE public.curso OWNER TO roberto;

--
-- Name: curso_id_seq; Type: SEQUENCE; Schema: public; Owner: roberto
--

CREATE SEQUENCE public.curso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_id_seq OWNER TO roberto;

--
-- Name: curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roberto
--

ALTER SEQUENCE public.curso_id_seq OWNED BY public.curso.id;


--
-- Name: origem; Type: TABLE; Schema: public; Owner: roberto
--

CREATE TABLE public.origem (
    id integer NOT NULL,
    origem character varying(256)
);


ALTER TABLE public.origem OWNER TO roberto;

--
-- Name: origem_id_seq; Type: SEQUENCE; Schema: public; Owner: roberto
--

CREATE SEQUENCE public.origem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.origem_id_seq OWNER TO roberto;

--
-- Name: origem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roberto
--

ALTER SEQUENCE public.origem_id_seq OWNED BY public.origem.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.curso ALTER COLUMN id SET DEFAULT nextval('public.curso_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.origem ALTER COLUMN id SET DEFAULT nextval('public.origem_id_seq'::regclass);


--
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: roberto
--

INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (1, 'TCO', 28, 86.0999999999999943, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (2, 'GBTV', 20, 71, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (3, 'AO', 18, 99.5, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (4, 'RC', 26, 81, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (5, 'DSV', 19, 82, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (6, 'JLFN', 22, 80, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (7, 'GVM', 30, 62, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (8, 'GSSB', 20, 80, false, 2, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (9, 'GDM', 20, 60, true, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (10, 'GS', 22, 107, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (11, 'OFN', 19, 75, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (12, 'IMG', 21, 60.7999999999999972, true, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (13, 'BFG', 29, 65.0999999999999943, true, 1, 2);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (14, 'HFMG', 37, 52, true, 3, 2);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (15, 'AFP', 21, 115, true, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (16, 'AGM', 20, 70, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (17, 'EDC', 22, 95, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (18, 'MFSS', 21, 56, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (19, 'RCO', 27, 70.5, false, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (20, 'RCVN', 45, 75, true, 1, 2);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (21, 'KCOS', 38, 60, true, 1, 2);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (22, 'VMTFC', 22, 81, true, 1, 1);
INSERT INTO public.alunos (id, nome, idade, peso, sexo, curso, origem) VALUES (23, 'RASF', 21, 61, false, 1, 1);


--
-- Name: alunos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roberto
--

SELECT pg_catalog.setval('public.alunos_id_seq', 23, true);


--
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: roberto
--

INSERT INTO public.curso (id, curso) VALUES (1, 'Direito');
INSERT INTO public.curso (id, curso) VALUES (2, 'Ciências do Estado');
INSERT INTO public.curso (id, curso) VALUES (3, 'Educação Física');


--
-- Name: curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roberto
--

SELECT pg_catalog.setval('public.curso_id_seq', 3, true);


--
-- Data for Name: origem; Type: TABLE DATA; Schema: public; Owner: roberto
--

INSERT INTO public.origem (id, origem) VALUES (1, 'UFMG');
INSERT INTO public.origem (id, origem) VALUES (2, 'Público Externo');


--
-- Name: origem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roberto
--

SELECT pg_catalog.setval('public.origem_id_seq', 2, true);


--
-- Name: alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);


--
-- Name: curso_pkey; Type: CONSTRAINT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);


--
-- Name: origem_pkey; Type: CONSTRAINT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.origem
    ADD CONSTRAINT origem_pkey PRIMARY KEY (id);


--
-- Name: alunos_curso_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_curso_id_fk FOREIGN KEY (curso) REFERENCES public.curso(id);


--
-- Name: alunos_origem_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: roberto
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_origem_id_fk FOREIGN KEY (origem) REFERENCES public.origem(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

