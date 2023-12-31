toc.dat                                                                                             0000600 0004000 0002000 00000005055 14543737232 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       '                {            perntodo    16.1    16.1     µ           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         τ           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         Φ           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Θ           1262    16398    perntodo    DATABASE     â   CREATE DATABASE perntodo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE perntodo;
                postgres    false         ╪            1259    16400    todo    TABLE     c   CREATE TABLE public.todo (
    todo_id integer NOT NULL,
    description character varying(255)
);
    DROP TABLE public.todo;
       public         heap    postgres    false         ╫            1259    16399    todo_todo_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.todo_todo_id_seq;
       public          postgres    false    216         Ω           0    0    todo_todo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public.todo.todo_id;
          public          postgres    false    215         P           2604    16403    todo todo_id    DEFAULT     l   ALTER TABLE ONLY public.todo ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);
 ;   ALTER TABLE public.todo ALTER COLUMN todo_id DROP DEFAULT;
       public          postgres    false    215    216    216         π          0    16400    todo 
   TABLE DATA           4   COPY public.todo (todo_id, description) FROM stdin;
    public          postgres    false    216       4835.dat δ           0    0    todo_todo_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.todo_todo_id_seq', 6, true);
          public          postgres    false    215         R           2606    16405    todo todo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    216                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4835.dat                                                                                            0000600 0004000 0002000 00000000062 14543737232 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	hope this inserting todo works
6	work done
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000005221 14543737232 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

DROP DATABASE perntodo;
--
-- Name: perntodo; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE perntodo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE perntodo OWNER TO postgres;

\connect perntodo

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
-- Name: todo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.todo (
    todo_id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.todo OWNER TO postgres;

--
-- Name: todo_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.todo_todo_id_seq OWNER TO postgres;

--
-- Name: todo_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public.todo.todo_id;


--
-- Name: todo todo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todo ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.todo (todo_id, description) FROM stdin;
\.
COPY public.todo (todo_id, description) FROM '$$PATH$$/4835.dat';

--
-- Name: todo_todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todo_todo_id_seq', 6, true);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
