--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-12-10 14:03:05

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 432419)
-- Name: book_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_entity (
    id integer NOT NULL,
    author character varying(255),
    name character varying(255),
    nb_copies_available integer NOT NULL,
    summary character varying(3000)
);


ALTER TABLE public.book_entity OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 432417)
-- Name: book_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.book_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_entity_id_seq OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 202
-- Name: book_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_entity_id_seq OWNED BY public.book_entity.id;


--
-- TOC entry 205 (class 1259 OID 432430)
-- Name: loan_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loan_entity (
    id integer NOT NULL,
    end_of_loaning_date timestamp without time zone,
    loan_extended boolean NOT NULL,
    book_id integer,
    user_id integer
);


ALTER TABLE public.loan_entity OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 432428)
-- Name: loan_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loan_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loan_entity_id_seq OWNER TO postgres;

--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 204
-- Name: loan_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loan_entity_id_seq OWNED BY public.loan_entity.id;


--
-- TOC entry 207 (class 1259 OID 432438)
-- Name: user_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_entity (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    username character varying(255)
);


ALTER TABLE public.user_entity OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 432436)
-- Name: user_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_entity_id_seq OWNER TO postgres;

--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_entity_id_seq OWNED BY public.user_entity.id;


--
-- TOC entry 2701 (class 2604 OID 432422)
-- Name: book_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_entity ALTER COLUMN id SET DEFAULT nextval('public.book_entity_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 432433)
-- Name: loan_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_entity ALTER COLUMN id SET DEFAULT nextval('public.loan_entity_id_seq'::regclass);


--
-- TOC entry 2703 (class 2604 OID 432441)
-- Name: user_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity ALTER COLUMN id SET DEFAULT nextval('public.user_entity_id_seq'::regclass);


--
-- TOC entry 2705 (class 2606 OID 432427)
-- Name: book_entity book_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_entity
    ADD CONSTRAINT book_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2707 (class 2606 OID 432435)
-- Name: loan_entity loan_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_entity
    ADD CONSTRAINT loan_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2709 (class 2606 OID 432446)
-- Name: user_entity user_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT user_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 432447)
-- Name: loan_entity fk4iqnlq9bjt97b0qxrc52aacd2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_entity
    ADD CONSTRAINT fk4iqnlq9bjt97b0qxrc52aacd2 FOREIGN KEY (book_id) REFERENCES public.book_entity(id);


--
-- TOC entry 2711 (class 2606 OID 432452)
-- Name: loan_entity fkn7vxe3kpnlxobw6vjci5np1q8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_entity
    ADD CONSTRAINT fkn7vxe3kpnlxobw6vjci5np1q8 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


-- Completed on 2020-12-10 14:03:05

--
-- PostgreSQL database dump complete
--

