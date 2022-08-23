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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (545, 2018, 'Final', 547, 548, 2, 4);
INSERT INTO public.games VALUES (546, 2018, 'Third Place', 549, 550, 0, 2);
INSERT INTO public.games VALUES (547, 2018, 'Semi-Final', 548, 550, 1, 2);
INSERT INTO public.games VALUES (548, 2018, 'Semi-Final', 547, 549, 0, 1);
INSERT INTO public.games VALUES (549, 2018, 'Quarter-Final', 548, 556, 2, 3);
INSERT INTO public.games VALUES (550, 2018, 'Quarter-Final', 550, 558, 0, 2);
INSERT INTO public.games VALUES (551, 2018, 'Quarter-Final', 549, 560, 1, 2);
INSERT INTO public.games VALUES (552, 2018, 'Quarter-Final', 547, 562, 0, 2);
INSERT INTO public.games VALUES (553, 2018, 'Eighth-Final', 550, 564, 1, 2);
INSERT INTO public.games VALUES (554, 2018, 'Eighth-Final', 558, 566, 0, 1);
INSERT INTO public.games VALUES (555, 2018, 'Eighth-Final', 549, 568, 2, 3);
INSERT INTO public.games VALUES (556, 2018, 'Eighth-Final', 560, 570, 0, 2);
INSERT INTO public.games VALUES (557, 2018, 'Eighth-Final', 548, 572, 1, 2);
INSERT INTO public.games VALUES (558, 2018, 'Eighth-Final', 556, 574, 1, 2);
INSERT INTO public.games VALUES (559, 2018, 'Eighth-Final', 562, 576, 1, 2);
INSERT INTO public.games VALUES (560, 2018, 'Eighth-Final', 547, 578, 3, 4);
INSERT INTO public.games VALUES (561, 2014, 'Final', 579, 578, 0, 1);
INSERT INTO public.games VALUES (562, 2014, 'Third Place', 581, 560, 0, 3);
INSERT INTO public.games VALUES (563, 2014, 'Semi-Final', 578, 581, 0, 1);
INSERT INTO public.games VALUES (564, 2014, 'Semi-Final', 579, 560, 1, 7);
INSERT INTO public.games VALUES (565, 2014, 'Quarter-Final', 581, 588, 0, 1);
INSERT INTO public.games VALUES (566, 2014, 'Quarter-Final', 578, 549, 0, 1);
INSERT INTO public.games VALUES (567, 2014, 'Quarter-Final', 560, 564, 1, 2);
INSERT INTO public.games VALUES (568, 2014, 'Quarter-Final', 579, 547, 0, 1);
INSERT INTO public.games VALUES (569, 2014, 'Eighth-Final', 560, 596, 1, 2);
INSERT INTO public.games VALUES (570, 2014, 'Eighth-Final', 564, 562, 0, 2);
INSERT INTO public.games VALUES (571, 2014, 'Eighth-Final', 547, 600, 0, 2);
INSERT INTO public.games VALUES (572, 2014, 'Eighth-Final', 579, 602, 1, 2);
INSERT INTO public.games VALUES (573, 2014, 'Eighth-Final', 581, 570, 1, 2);
INSERT INTO public.games VALUES (574, 2014, 'Eighth-Final', 588, 606, 1, 2);
INSERT INTO public.games VALUES (575, 2014, 'Eighth-Final', 578, 566, 0, 1);
INSERT INTO public.games VALUES (576, 2014, 'Eighth-Final', 549, 610, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (547, 'France');
INSERT INTO public.teams VALUES (548, 'Croatia');
INSERT INTO public.teams VALUES (549, 'Belgium');
INSERT INTO public.teams VALUES (550, 'England');
INSERT INTO public.teams VALUES (556, 'Russia');
INSERT INTO public.teams VALUES (558, 'Sweden');
INSERT INTO public.teams VALUES (560, 'Brazil');
INSERT INTO public.teams VALUES (562, 'Uruguay');
INSERT INTO public.teams VALUES (564, 'Colombia');
INSERT INTO public.teams VALUES (566, 'Switzerland');
INSERT INTO public.teams VALUES (568, 'Japan');
INSERT INTO public.teams VALUES (570, 'Mexico');
INSERT INTO public.teams VALUES (572, 'Denmark');
INSERT INTO public.teams VALUES (574, 'Spain');
INSERT INTO public.teams VALUES (576, 'Portugal');
INSERT INTO public.teams VALUES (578, 'Argentina');
INSERT INTO public.teams VALUES (579, 'Germany');
INSERT INTO public.teams VALUES (581, 'Netherlands');
INSERT INTO public.teams VALUES (588, 'Costa Rica');
INSERT INTO public.teams VALUES (596, 'Chile');
INSERT INTO public.teams VALUES (600, 'Nigeria');
INSERT INTO public.teams VALUES (602, 'Algeria');
INSERT INTO public.teams VALUES (606, 'Greece');
INSERT INTO public.teams VALUES (610, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 576, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 610, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fkopteam; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkopteam FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fkwinteam; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkwinteam FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

