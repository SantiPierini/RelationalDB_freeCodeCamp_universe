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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_to_milyway integer,
    mass numeric(10,10),
    unica integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_to_earth integer,
    mass numeric(10,10),
    unica integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_to_earth integer,
    mass numeric(10,10),
    light_spectrum_analisis text,
    habitable_zone boolean NOT NULL,
    unica integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    name character varying(45) NOT NULL,
    orbit_distance numeric(10,10) NOT NULL,
    purpose text,
    unica integer,
    satelites_id integer NOT NULL
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_satelites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_satelites_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_satelites_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    columndistance_to_sun integer,
    mass numeric(10,10),
    black_hole boolean NOT NULL,
    unica integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_satelites_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '001', 200, 0.0320000000, NULL);
INSERT INTO public.galaxy VALUES (2, '002', 201, 0.0340000000, NULL);
INSERT INTO public.galaxy VALUES (3, '003', 202, 0.0350000000, NULL);
INSERT INTO public.galaxy VALUES (4, '004', 204, 0.0360000000, NULL);
INSERT INTO public.galaxy VALUES (5, '005', 224, 0.0260000000, NULL);
INSERT INTO public.galaxy VALUES (6, '006', 2334, 0.0236000000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (2, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (3, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (4, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (5, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (6, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (7, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (8, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (9, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (10, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (11, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (12, 3, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (13, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (14, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (15, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (16, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (17, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (18, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (19, 2, 'lune', 250, 0.0100000000, NULL);
INSERT INTO public.moon VALUES (20, 1, 'lune', 250, 0.0100000000, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'pepe', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (2, 1, 'pepito', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (3, 2, 'pepiito', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (4, 1, 'pepitsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (5, 1, 'pepdsfitsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (6, 2, 'pepdsfitsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (7, 2, 'pepdsfiwtsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (8, 2, 'pepdswefiwtsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (9, 2, 'pepdswefiwtsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (10, 2, 'pepdweswefiwtsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (11, 2, 'pepdweswefiwwewetsso', 200, 0.0100000000, NULL, false, NULL);
INSERT INTO public.planet VALUES (12, 3, 'peiwtsso', 200, 0.0100000000, NULL, false, NULL);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES ('jose', 0.0020000000, 'josesear', NULL, 1);
INSERT INTO public.satelites VALUES ('Alvaro', 0.0020000000, 'alvorear', NULL, 2);
INSERT INTO public.satelites VALUES ('carmen', 0.0020000000, 'carmenear', NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'peter', 2334, 0.0236000000, false, NULL);
INSERT INTO public.star VALUES (2, 2, 'peeter', 2334, 0.0236000000, false, NULL);
INSERT INTO public.star VALUES (3, 3, 'peeteer', 2334, 0.0236000000, true, NULL);
INSERT INTO public.star VALUES (4, 4, 'blackpeeteer', 2334, 0.0236000000, true, NULL);
INSERT INTO public.star VALUES (5, 5, 'blackypeter', 2334, 0.0236000000, true, NULL);
INSERT INTO public.star VALUES (6, 3, 'black_MJ', 2334, 0.0236000000, false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_satelites_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unica_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unica_key UNIQUE (unica);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unica_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unica_key UNIQUE (unica);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unica_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unica_key UNIQUE (unica);


--
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: satelites satelites_unica_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_unica_key UNIQUE (unica);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unica_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unica_key UNIQUE (unica);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

