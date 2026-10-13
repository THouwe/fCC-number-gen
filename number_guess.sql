--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    nr_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (36, 12, 792);
INSERT INTO public.games VALUES (37, 12, 708);
INSERT INTO public.games VALUES (38, 13, 822);
INSERT INTO public.games VALUES (39, 13, 70);
INSERT INTO public.games VALUES (40, 12, 350);
INSERT INTO public.games VALUES (41, 12, 37);
INSERT INTO public.games VALUES (42, 12, 440);
INSERT INTO public.games VALUES (43, 14, 9);
INSERT INTO public.games VALUES (44, 14, 8);
INSERT INTO public.games VALUES (45, 15, 63);
INSERT INTO public.games VALUES (46, 15, 157);
INSERT INTO public.games VALUES (47, 16, 82);
INSERT INTO public.games VALUES (48, 16, 158);
INSERT INTO public.games VALUES (49, 15, 335);
INSERT INTO public.games VALUES (50, 15, 261);
INSERT INTO public.games VALUES (51, 15, 873);
INSERT INTO public.games VALUES (52, 17, 302);
INSERT INTO public.games VALUES (53, 17, 65);
INSERT INTO public.games VALUES (54, 18, 433);
INSERT INTO public.games VALUES (55, 18, 260);
INSERT INTO public.games VALUES (56, 17, 642);
INSERT INTO public.games VALUES (57, 17, 999);
INSERT INTO public.games VALUES (58, 17, 474);
INSERT INTO public.games VALUES (59, 19, 810);
INSERT INTO public.games VALUES (60, 19, 867);
INSERT INTO public.games VALUES (61, 20, 614);
INSERT INTO public.games VALUES (62, 20, 724);
INSERT INTO public.games VALUES (63, 19, 763);
INSERT INTO public.games VALUES (64, 19, 483);
INSERT INTO public.games VALUES (65, 19, 857);
INSERT INTO public.games VALUES (66, 21, 263);
INSERT INTO public.games VALUES (67, 21, 163);
INSERT INTO public.games VALUES (68, 22, 659);
INSERT INTO public.games VALUES (69, 22, 711);
INSERT INTO public.games VALUES (70, 21, 270);
INSERT INTO public.games VALUES (71, 21, 146);
INSERT INTO public.games VALUES (72, 21, 706);
INSERT INTO public.games VALUES (73, 23, 683);
INSERT INTO public.games VALUES (74, 23, 363);
INSERT INTO public.games VALUES (75, 24, 814);
INSERT INTO public.games VALUES (76, 24, 488);
INSERT INTO public.games VALUES (77, 23, 644);
INSERT INTO public.games VALUES (78, 23, 274);
INSERT INTO public.games VALUES (79, 23, 734);
INSERT INTO public.games VALUES (80, 25, 892);
INSERT INTO public.games VALUES (81, 25, 586);
INSERT INTO public.games VALUES (82, 26, 969);
INSERT INTO public.games VALUES (83, 26, 972);
INSERT INTO public.games VALUES (84, 25, 740);
INSERT INTO public.games VALUES (85, 25, 36);
INSERT INTO public.games VALUES (86, 25, 200);
INSERT INTO public.games VALUES (87, 27, 132);
INSERT INTO public.games VALUES (88, 27, 41);
INSERT INTO public.games VALUES (89, 28, 388);
INSERT INTO public.games VALUES (90, 28, 117);
INSERT INTO public.games VALUES (91, 27, 629);
INSERT INTO public.games VALUES (92, 27, 834);
INSERT INTO public.games VALUES (93, 27, 611);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (12, 'user_1791933462804');
INSERT INTO public.users VALUES (13, 'user_1791933462803');
INSERT INTO public.users VALUES (14, 'Tom');
INSERT INTO public.users VALUES (15, 'user_1791933623517');
INSERT INTO public.users VALUES (16, 'user_1791933623516');
INSERT INTO public.users VALUES (17, 'user_1791933701648');
INSERT INTO public.users VALUES (18, 'user_1791933701647');
INSERT INTO public.users VALUES (19, 'user_1791933742364');
INSERT INTO public.users VALUES (20, 'user_1791933742363');
INSERT INTO public.users VALUES (21, 'user_1791933745915');
INSERT INTO public.users VALUES (22, 'user_1791933745914');
INSERT INTO public.users VALUES (23, 'user_1791933748700');
INSERT INTO public.users VALUES (24, 'user_1791933748699');
INSERT INTO public.users VALUES (25, 'user_1791933900410');
INSERT INTO public.users VALUES (26, 'user_1791933900409');
INSERT INTO public.users VALUES (27, 'user_1791933945380');
INSERT INTO public.users VALUES (28, 'user_1791933945379');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 93, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


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

