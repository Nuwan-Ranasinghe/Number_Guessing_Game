--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 81, 2);
INSERT INTO public.games VALUES (3, 156, 2);
INSERT INTO public.games VALUES (4, 307, 3);
INSERT INTO public.games VALUES (5, 480, 3);
INSERT INTO public.games VALUES (6, 114, 2);
INSERT INTO public.games VALUES (7, 135, 2);
INSERT INTO public.games VALUES (8, 715, 2);
INSERT INTO public.games VALUES (9, 560, 4);
INSERT INTO public.games VALUES (10, 353, 4);
INSERT INTO public.games VALUES (11, 634, 5);
INSERT INTO public.games VALUES (12, 928, 5);
INSERT INTO public.games VALUES (13, 426, 4);
INSERT INTO public.games VALUES (14, 695, 4);
INSERT INTO public.games VALUES (15, 48, 4);
INSERT INTO public.games VALUES (16, 224, 6);
INSERT INTO public.games VALUES (17, 113, 6);
INSERT INTO public.games VALUES (18, 432, 7);
INSERT INTO public.games VALUES (19, 831, 7);
INSERT INTO public.games VALUES (20, 927, 6);
INSERT INTO public.games VALUES (21, 814, 6);
INSERT INTO public.games VALUES (22, 978, 6);
INSERT INTO public.games VALUES (23, 391, 8);
INSERT INTO public.games VALUES (24, 980, 8);
INSERT INTO public.games VALUES (25, 721, 9);
INSERT INTO public.games VALUES (26, 69, 9);
INSERT INTO public.games VALUES (27, 245, 8);
INSERT INTO public.games VALUES (28, 794, 8);
INSERT INTO public.games VALUES (29, 518, 8);
INSERT INTO public.games VALUES (30, 8, 1);
INSERT INTO public.games VALUES (31, 645, 10);
INSERT INTO public.games VALUES (32, 629, 10);
INSERT INTO public.games VALUES (33, 948, 11);
INSERT INTO public.games VALUES (34, 479, 11);
INSERT INTO public.games VALUES (35, 705, 10);
INSERT INTO public.games VALUES (36, 99, 10);
INSERT INTO public.games VALUES (37, 923, 10);
INSERT INTO public.games VALUES (38, 398, 12);
INSERT INTO public.games VALUES (39, 789, 12);
INSERT INTO public.games VALUES (40, 482, 13);
INSERT INTO public.games VALUES (41, 236, 13);
INSERT INTO public.games VALUES (42, 771, 12);
INSERT INTO public.games VALUES (43, 15, 12);
INSERT INTO public.games VALUES (44, 718, 12);
INSERT INTO public.games VALUES (45, 1000, 14);
INSERT INTO public.games VALUES (46, 475, 14);
INSERT INTO public.games VALUES (47, 92, 15);
INSERT INTO public.games VALUES (48, 322, 15);
INSERT INTO public.games VALUES (49, 502, 14);
INSERT INTO public.games VALUES (50, 912, 14);
INSERT INTO public.games VALUES (51, 847, 14);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Nuwan');
INSERT INTO public.users VALUES (2, 'user_1673372661609');
INSERT INTO public.users VALUES (3, 'user_1673372661608');
INSERT INTO public.users VALUES (4, 'user_1673372890297');
INSERT INTO public.users VALUES (5, 'user_1673372890296');
INSERT INTO public.users VALUES (6, 'user_1673373065170');
INSERT INTO public.users VALUES (7, 'user_1673373065169');
INSERT INTO public.users VALUES (8, 'user_1673373114545');
INSERT INTO public.users VALUES (9, 'user_1673373114544');
INSERT INTO public.users VALUES (10, 'user_1673373216309');
INSERT INTO public.users VALUES (11, 'user_1673373216308');
INSERT INTO public.users VALUES (12, 'user_1673373321072');
INSERT INTO public.users VALUES (13, 'user_1673373321071');
INSERT INTO public.users VALUES (14, 'user_1673373343965');
INSERT INTO public.users VALUES (15, 'user_1673373343964');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

