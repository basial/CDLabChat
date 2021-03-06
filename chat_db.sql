--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: barbaralitwinska; Tablespace: 
--

CREATE TABLE messages (
    id integer NOT NULL,
    text character varying(255),
    author character varying(255),
    topic_id integer
);


ALTER TABLE messages OWNER TO barbaralitwinska;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: barbaralitwinska
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messages_id_seq OWNER TO barbaralitwinska;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barbaralitwinska
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: barbaralitwinska; Tablespace: 
--

CREATE TABLE topics (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE topics OWNER TO barbaralitwinska;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: barbaralitwinska
--

CREATE SEQUENCE topics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topics_id_seq OWNER TO barbaralitwinska;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barbaralitwinska
--

ALTER SEQUENCE topics_id_seq OWNED BY topics.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: barbaralitwinska
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: barbaralitwinska
--

ALTER TABLE ONLY topics ALTER COLUMN id SET DEFAULT nextval('topics_id_seq'::regclass);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: barbaralitwinska
--

COPY messages (id, text, author, topic_id) FROM stdin;
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barbaralitwinska
--

SELECT pg_catalog.setval('messages_id_seq', 1, false);


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: barbaralitwinska
--

COPY topics (id, name) FROM stdin;
\.


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barbaralitwinska
--

SELECT pg_catalog.setval('topics_id_seq', 1, false);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: barbaralitwinska; Tablespace: 
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: topics_pkey; Type: CONSTRAINT; Schema: public; Owner: barbaralitwinska; Tablespace: 
--

ALTER TABLE ONLY topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: barbaralitwinska
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM barbaralitwinska;
GRANT ALL ON SCHEMA public TO barbaralitwinska;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

