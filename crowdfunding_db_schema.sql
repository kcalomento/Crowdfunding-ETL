--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

-- Started on 2025-01-06 12:25:11

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
-- TOC entry 216 (class 1259 OID 41093)
-- Name: campaign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campaign (
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name character varying NOT NULL,
    description text,
    goal text,
    pledged text,
    outcome text,
    backers_count integer,
    country character varying,
    currency character varying,
    launch_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    staff_pick boolean,
    spotlight boolean,
    category_id character varying NOT NULL,
    subcategory_id character varying
);


ALTER TABLE public.campaign OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41100)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id character varying NOT NULL,
    category character varying NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 41086)
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    contact_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 41105)
-- Name: subcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategory (
    subcategory_id character varying NOT NULL,
    subcategory character varying NOT NULL
);


ALTER TABLE public.subcategory OWNER TO postgres;

--
-- TOC entry 4849 (class 0 OID 41093)
-- Dependencies: 216
-- Data for Name: campaign; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campaign (cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, staff_pick, spotlight, category_id, subcategory_id) FROM stdin;



--
-- TOC entry 4850 (class 0 OID 41100)
-- Dependencies: 217
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, category) FROM stdin;



--
-- TOC entry 4848 (class 0 OID 41086)
-- Dependencies: 215
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (contact_id, first_name, last_name, email) FROM stdin;



--
-- TOC entry 4851 (class 0 OID 41105)
-- Dependencies: 218
-- Data for Name: subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subcategory (subcategory_id, subcategory) FROM stdin;



--
-- TOC entry 4702 (class 2606 OID 41099)
-- Name: campaign campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (cf_id);


--
-- TOC entry 4700 (class 2606 OID 41092)
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (contact_id);


--
-- TOC entry 4704 (class 2606 OID 41111)
-- Name: subcategory subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id);


-- Completed on 2025-01-06 12:25:11

--
-- PostgreSQL database dump complete
--

