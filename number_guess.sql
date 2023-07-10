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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(50) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('user_1688993060582', 2, 397);
INSERT INTO public.number_guess VALUES ('user_1688993939818', 2, 330);
INSERT INTO public.number_guess VALUES ('user_1688992851566', 2, 524);
INSERT INTO public.number_guess VALUES ('user_1688993060583', 4, 166);
INSERT INTO public.number_guess VALUES ('user_1688992851567', 5, 287);
INSERT INTO public.number_guess VALUES ('user_1688993154695', 2, 477);
INSERT INTO public.number_guess VALUES ('user_1688992861466', 2, 81);
INSERT INTO public.number_guess VALUES ('user_1688993939819', 5, 377);
INSERT INTO public.number_guess VALUES ('user_1688992861467', 5, 267);
INSERT INTO public.number_guess VALUES ('user_1688993154696', 4, 105);
INSERT INTO public.number_guess VALUES ('user_1688992922638', 2, 140);
INSERT INTO public.number_guess VALUES ('user_1688993176058', 2, 4);
INSERT INTO public.number_guess VALUES ('user_1688992922639', 5, 257);
INSERT INTO public.number_guess VALUES ('user_1688992952257', 2, 291);
INSERT INTO public.number_guess VALUES ('user_1688993176059', 4, 240);
INSERT INTO public.number_guess VALUES ('user_1688993202075', NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1688993202074', NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1688992952258', 5, 532);
INSERT INTO public.number_guess VALUES ('user_1688993515706', NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1688993515705', NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1688993020495', 2, 553);
INSERT INTO public.number_guess VALUES ('user_1688993525738', 2, 152);
INSERT INTO public.number_guess VALUES ('user_1688993020496', 5, 483);
INSERT INTO public.number_guess VALUES ('user_1688993034098', 1, 512);
INSERT INTO public.number_guess VALUES ('user_1688993525739', 5, 153);
INSERT INTO public.number_guess VALUES ('user_1688993034099', 5, 285);
INSERT INTO public.number_guess VALUES ('user_1688993043394', 2, 57);
INSERT INTO public.number_guess VALUES ('user_1688993582329', 2, 4);
INSERT INTO public.number_guess VALUES ('user_1688993043395', 4, 152);
INSERT INTO public.number_guess VALUES ('user_1688993582330', 4, 402);
INSERT INTO public.number_guess VALUES ('user_1688993715805', 2, 581);
INSERT INTO public.number_guess VALUES ('user_1688993715806', 5, 134);
INSERT INTO public.number_guess VALUES ('a', 6, 1);
INSERT INTO public.number_guess VALUES ('user_1688993851777', 2, 363);
INSERT INTO public.number_guess VALUES ('user_1688993851778', 5, 35);


--
-- Name: number_guess number_guess_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

