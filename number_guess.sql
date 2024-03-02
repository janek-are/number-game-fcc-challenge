--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer,
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 6, 752);
INSERT INTO public.games VALUES (2, 6, 733);
INSERT INTO public.games VALUES (3, 7, 667);
INSERT INTO public.games VALUES (4, 7, 545);
INSERT INTO public.games VALUES (5, 6, 178);
INSERT INTO public.games VALUES (6, 6, 658);
INSERT INTO public.games VALUES (7, 6, 703);
INSERT INTO public.games VALUES (8, 8, 796);
INSERT INTO public.games VALUES (9, 8, 356);
INSERT INTO public.games VALUES (10, 9, 572);
INSERT INTO public.games VALUES (11, 9, 968);
INSERT INTO public.games VALUES (12, 8, 963);
INSERT INTO public.games VALUES (13, 8, 443);
INSERT INTO public.games VALUES (14, 8, 764);
INSERT INTO public.games VALUES (15, 10, 452);
INSERT INTO public.games VALUES (16, 10, 837);
INSERT INTO public.games VALUES (17, 11, 975);
INSERT INTO public.games VALUES (18, 11, 332);
INSERT INTO public.games VALUES (19, 10, 266);
INSERT INTO public.games VALUES (20, 10, 873);
INSERT INTO public.games VALUES (21, 10, 983);
INSERT INTO public.games VALUES (22, 12, 763);
INSERT INTO public.games VALUES (23, 12, 370);
INSERT INTO public.games VALUES (24, 13, 629);
INSERT INTO public.games VALUES (25, 13, 397);
INSERT INTO public.games VALUES (26, 12, 239);
INSERT INTO public.games VALUES (27, 12, 96);
INSERT INTO public.games VALUES (28, 12, 427);
INSERT INTO public.games VALUES (29, 14, 173);
INSERT INTO public.games VALUES (30, 14, 478);
INSERT INTO public.games VALUES (31, 15, 581);
INSERT INTO public.games VALUES (32, 15, 668);
INSERT INTO public.games VALUES (33, 14, 886);
INSERT INTO public.games VALUES (34, 14, 279);
INSERT INTO public.games VALUES (35, 14, 101);
INSERT INTO public.games VALUES (36, 16, 974);
INSERT INTO public.games VALUES (37, 16, 674);
INSERT INTO public.games VALUES (38, 17, 115);
INSERT INTO public.games VALUES (39, 17, 851);
INSERT INTO public.games VALUES (40, 16, 600);
INSERT INTO public.games VALUES (41, 16, 959);
INSERT INTO public.games VALUES (42, 16, 734);
INSERT INTO public.games VALUES (43, 20, 527);
INSERT INTO public.games VALUES (44, 20, 39);
INSERT INTO public.games VALUES (45, 21, 289);
INSERT INTO public.games VALUES (46, 21, 680);
INSERT INTO public.games VALUES (47, 20, 520);
INSERT INTO public.games VALUES (48, 20, 213);
INSERT INTO public.games VALUES (49, 20, 299);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Janek');
INSERT INTO public.users VALUES (2, 'user_1709389715307');
INSERT INTO public.users VALUES (3, 'user_1709389715306');
INSERT INTO public.users VALUES (4, 'user_1709389754804');
INSERT INTO public.users VALUES (5, 'user_1709389754803');
INSERT INTO public.users VALUES (6, 'user_1709390061914');
INSERT INTO public.users VALUES (7, 'user_1709390061913');
INSERT INTO public.users VALUES (8, 'user_1709390152916');
INSERT INTO public.users VALUES (9, 'user_1709390152915');
INSERT INTO public.users VALUES (10, 'user_1709390213417');
INSERT INTO public.users VALUES (11, 'user_1709390213416');
INSERT INTO public.users VALUES (12, 'user_1709390282756');
INSERT INTO public.users VALUES (13, 'user_1709390282755');
INSERT INTO public.users VALUES (14, 'user_1709390316447');
INSERT INTO public.users VALUES (15, 'user_1709390316446');
INSERT INTO public.users VALUES (16, 'user_1709390347846');
INSERT INTO public.users VALUES (17, 'user_1709390347845');
INSERT INTO public.users VALUES (18, 'Junak');
INSERT INTO public.users VALUES (19, 'Karol');
INSERT INTO public.users VALUES (20, 'user_1709390516084');
INSERT INTO public.users VALUES (21, 'user_1709390516083');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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
-- PostgreSQL database dump complete
--

