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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: extras; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extras (
    extras_id integer NOT NULL,
    name character varying(30) NOT NULL,
    title character varying(30),
    al character varying(30),
    age integer
);


ALTER TABLE public.extras OWNER TO freecodecamp;

--
-- Name: extras_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extras_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extras_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extras_extra_id_seq OWNED BY public.extras.extras_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    alive boolean NOT NULL,
    distance integer NOT NULL,
    size numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    number_of_moons character varying(30) NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    ag integer,
    g integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_types character varying(30) NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    has_life character varying(30) NOT NULL,
    name character varying(100) NOT NULL,
    alive boolean NOT NULL,
    age integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extras extras_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras ALTER COLUMN extras_id SET DEFAULT nextval('public.extras_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extras; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extras VALUES (1, 'e', 'e', NULL, NULL);
INSERT INTO public.extras VALUES (2, 'y', 'i', NULL, NULL);
INSERT INTO public.extras VALUES (3, 'q', 'o', NULL, NULL);
INSERT INTO public.extras VALUES (4, 'n', 'm', NULL, NULL);
INSERT INTO public.extras VALUES (5, 'z', 'o', NULL, NULL);
INSERT INTO public.extras VALUES (6, 'a', 'p', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'nebula', 'd', true, 34, 45);
INSERT INTO public.galaxy VALUES (2, 'aminu', 'd', true, 34, 45);
INSERT INTO public.galaxy VALUES (3, 'adamu', 'e', false, 56, 76);
INSERT INTO public.galaxy VALUES (4, 'goa', 't', false, 56, 12);
INSERT INTO public.galaxy VALUES (5, 'tayo', 'et', true, 90, 12);
INSERT INTO public.galaxy VALUES (6, 'there', 'were', false, 98, 12);
INSERT INTO public.galaxy VALUES (7, 'all', 'or', true, 9, 1);
INSERT INTO public.galaxy VALUES (8, 'minu', 'dd', true, 34, 45);
INSERT INTO public.galaxy VALUES (9, 'adam', 'de', false, 56, 76);
INSERT INTO public.galaxy VALUES (10, 'gdoa', 'dt', false, 56, 12);
INSERT INTO public.galaxy VALUES (11, 'taydo', 'det', true, 90, 12);
INSERT INTO public.galaxy VALUES (12, 'therde', 'dwere', false, 98, 12);
INSERT INTO public.galaxy VALUES (13, 'aldl', 'dor', true, 9, 1);
INSERT INTO public.galaxy VALUES (14, 'e', 'e', true, 87, 12);
INSERT INTO public.galaxy VALUES (15, 'dd', 'ee', false, 56, 34);
INSERT INTO public.galaxy VALUES (16, 're', 'tr', true, 87, 65);
INSERT INTO public.galaxy VALUES (17, 'uo', 'yi', false, 79, 89);
INSERT INTO public.galaxy VALUES (18, 'er', 'ee', true, 79, 68);
INSERT INTO public.galaxy VALUES (19, 'rt', 'yt', false, 76, 89);
INSERT INTO public.galaxy VALUES (20, '34', '54', true, 89, 89);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '2', 'nebula', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'gg', 'dd', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'd', 'u', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', 'f', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'd', 'h', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'd', 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'dd', 'dd', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'a', 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'q', 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'q', 'u', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 't', 'y', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, '1', 'y', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'q', 't', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'y', 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 't', 'y', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'q', 'y', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'u', 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'u', 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'y', 'n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'u', 'i', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'jupyter', 'nebula', 1, NULL);
INSERT INTO public.planet VALUES (2, 'mars', 'mars', 2, NULL);
INSERT INTO public.planet VALUES (3, 'pluto', 'pluto', 3, NULL);
INSERT INTO public.planet VALUES (4, 'earth', 'earth', 4, NULL);
INSERT INTO public.planet VALUES (5, 'london', 'london', 5, NULL);
INSERT INTO public.planet VALUES (6, 'us', 'us', 6, NULL);
INSERT INTO public.planet VALUES (7, 'gh', 'gh', 7, NULL);
INSERT INTO public.planet VALUES (8, 'a', 'a', 8, NULL);
INSERT INTO public.planet VALUES (9, 's', 'q', 9, NULL);
INSERT INTO public.planet VALUES (10, 'e', 'e', 10, NULL);
INSERT INTO public.planet VALUES (11, 'q', '3', 11, NULL);
INSERT INTO public.planet VALUES (12, 'd', 'q', 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yes', 'nebula', true, 45, 1);
INSERT INTO public.star VALUES (2, 'No', 'adamu', false, 89, 2);
INSERT INTO public.star VALUES (3, 'Yes', 'tay', true, 90, 3);
INSERT INTO public.star VALUES (4, 'aa', 'nn', false, 4, 4);
INSERT INTO public.star VALUES (5, 'dd', 'a', true, 8, 5);
INSERT INTO public.star VALUES (6, 'q', 't', false, 9, 6);


--
-- Name: extras_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extras_extra_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: extras extras_extras_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_extras_id_key UNIQUE (extras_id);


--
-- Name: extras extras_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_name_key UNIQUE (name);


--
-- Name: extras extras_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extras_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

