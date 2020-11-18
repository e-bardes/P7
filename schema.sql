--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- TOC entry 203 (class 1259 OID 429564)
-- Name: book_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_entity (
    id integer NOT NULL,
    end_of_loaning_date timestamp without time zone,
    loan_extended boolean NOT NULL,
    name character varying(255),
    summary character varying(1000)
);


ALTER TABLE public.book_entity OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 429562)
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
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 202
-- Name: book_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_entity_id_seq OWNED BY public.book_entity.id;


--
-- TOC entry 205 (class 1259 OID 429575)
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
-- TOC entry 206 (class 1259 OID 429584)
-- Name: user_entity_book_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_entity_book_list (
    user_entity_id integer NOT NULL,
    book_list_id integer NOT NULL
);


ALTER TABLE public.user_entity_book_list OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 429573)
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
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 204
-- Name: user_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_entity_id_seq OWNED BY public.user_entity.id;


--
-- TOC entry 2699 (class 2604 OID 429567)
-- Name: book_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_entity ALTER COLUMN id SET DEFAULT nextval('public.book_entity_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 429578)
-- Name: user_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity ALTER COLUMN id SET DEFAULT nextval('public.user_entity_id_seq'::regclass);


--
-- TOC entry 2702 (class 2606 OID 429572)
-- Name: book_entity book_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_entity
    ADD CONSTRAINT book_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2706 (class 2606 OID 429588)
-- Name: user_entity_book_list uk_1ys7ystnx4benndgxrw396xg9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity_book_list
    ADD CONSTRAINT uk_1ys7ystnx4benndgxrw396xg9 UNIQUE (book_list_id);


--
-- TOC entry 2704 (class 2606 OID 429583)
-- Name: user_entity user_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT user_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 429594)
-- Name: user_entity_book_list fk5022wd2byp8vdu0og45mpwk3j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity_book_list
    ADD CONSTRAINT fk5022wd2byp8vdu0og45mpwk3j FOREIGN KEY (user_entity_id) REFERENCES public.user_entity(id);


--
-- TOC entry 2707 (class 2606 OID 429589)
-- Name: user_entity_book_list fkc4d4igan4eynbrskfqorpfu94; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity_book_list
    ADD CONSTRAINT fkc4d4igan4eynbrskfqorpfu94 FOREIGN KEY (book_list_id) REFERENCES public.book_entity(id);


-- Completed on 2020-11-17 15:27:58

--
-- PostgreSQL database dump complete
--

