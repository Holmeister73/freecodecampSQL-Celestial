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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(30) NOT NULL,
    blackhole_id integer NOT NULL,
    mass_in_suns numeric,
    distance_in_lightyears numeric,
    is_supermassive boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_in_lightyears numeric,
    has_supermassive_center boolean,
    constellation text
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    earth_days_in_a_month numeric,
    mass_in_kgs numeric,
    belongs_to text,
    temperature_in_kelvins integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    earth_days_in_a_year numeric,
    number_of_moons integer,
    orbits_around text
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    mass_in_suns numeric,
    age_in_million_years numeric
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('M31*', 1, 30000000, 2500000, true);
INSERT INTO public.blackhole VALUES ('Powehi', 2, 6500000000, 53000000, true);
INSERT INTO public.blackhole VALUES ('Sagittarius A*', 3, 4300000, 27000, true);
INSERT INTO public.blackhole VALUES ('IL Lupi', 4, 9.4, 17000, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 3, 26000, true, 'Sagittarius');
INSERT INTO public.galaxy VALUES ('Andromeda', 4, 2500000, true, 'Andromeda');
INSERT INTO public.galaxy VALUES ('Eye of God', 5, 61000000, true, 'Eridanus');
INSERT INTO public.galaxy VALUES ('Bodes Galaxy', 6, 11800000, true, 'Ursa Major');
INSERT INTO public.galaxy VALUES ('Peekaboo Galaxy', 7, 22000000, false, 'Hydra');
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 8, 31000000, true, 'Virgo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Phobos', 1, 4, 0.32, 10600000000000000, 'Mars', 233);
INSERT INTO public.moon VALUES ('Deimos', 2, 4, 1.263, 1510000000000000, 'Mars', 233);
INSERT INTO public.moon VALUES ('Io', 3, 5, 1.769, 89320000000000000000000, 'Jupyter', 110);
INSERT INTO public.moon VALUES ('Europa', 4, 5, 3.551, 48000000000000000000000, 'Jupyter', 102);
INSERT INTO public.moon VALUES ('Ganymede', 5, 5, 7.155, 148000000000000000000000, 'Jupyter', 110);
INSERT INTO public.moon VALUES ('Callisto', 6, 5, 16.689, 107600000000000000000000, 'Jupyter', 134);
INSERT INTO public.moon VALUES ('Titan', 7, 6, 15.945, 134500000000000000000000, 'Saturn', 94);
INSERT INTO public.moon VALUES ('Moon', 8, 3, 27.322, 73460000000000000000000, 'Earth', 250);
INSERT INTO public.moon VALUES ('Phoebe', 9, 6, 550.565, 8312000000000000000, 'Saturn', 73);
INSERT INTO public.moon VALUES ('Janus', 10, 6, 0.695, 1894000000000000000, 'Saturn', 76);
INSERT INTO public.moon VALUES ('Hyperion', 11, 6, 21.276, 5551000000000000000, 'Saturn', 93);
INSERT INTO public.moon VALUES ('Mimas', 12, 6, 0.942, 37510000000000000000, 'Saturn', 64);
INSERT INTO public.moon VALUES ('Enceladus', 13, 6, 1.37, 108000000000000000000, 'Saturn', 75);
INSERT INTO public.moon VALUES ('Tethys', 14, 6, 1.888, 617500000000000000000, 'Saturn', 86);
INSERT INTO public.moon VALUES ('Dione', 15, 6, 2.737, 1095000000000000000000, 'Saturn', 87);
INSERT INTO public.moon VALUES ('Rhea', 16, 6, 4.518, 2306000000000000000000, 'Saturn', 76);
INSERT INTO public.moon VALUES ('Ariel', 17, 7, 2.520, 1233000000000000000000, 'Uranus', 60);
INSERT INTO public.moon VALUES ('Oberon', 18, 7, 13.463, 3110000000000000000000, 'Uranus', 75);
INSERT INTO public.moon VALUES ('Triton', 19, 8, 5.877, 21390000000000000000000, 'Neptune', 38);
INSERT INTO public.moon VALUES ('Galatea', 20, 8, 0.429, 1940000000000000000, 'Neptune', 51);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 8, 88, 0, 'Sun');
INSERT INTO public.planet VALUES ('Venus', 2, 8, 225, 0, 'Sun');
INSERT INTO public.planet VALUES ('Earth', 3, 8, 365, 1, 'Sun');
INSERT INTO public.planet VALUES ('Mars', 4, 8, 687, 2, 'Sun');
INSERT INTO public.planet VALUES ('Jupyter', 5, 8, 4333, 95, 'Sun');
INSERT INTO public.planet VALUES ('Saturn', 6, 8, 10759, 274, 'Sun');
INSERT INTO public.planet VALUES ('Uranus', 7, 8, 30687, 28, 'Sun');
INSERT INTO public.planet VALUES ('Neptune', 8, 8, 60190, 16, 'Sun');
INSERT INTO public.planet VALUES ('TRAPPIST-1b', 9, 7, 1.51, NULL, 'TRAPPIST-1');
INSERT INTO public.planet VALUES ('TRAPPIST-1c', 10, 7, 2.42, NULL, 'TRAPPIST-1');
INSERT INTO public.planet VALUES ('TRAPPIST-1d', 11, 7, 4.05, NULL, 'TRAPPIST-1');
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 12, 7, 6.10, NULL, 'TRAPPIST-1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 3, 2.063, 242);
INSERT INTO public.star VALUES ('Aldebaran', 2, 3, 1.16, 6400);
INSERT INTO public.star VALUES ('Antares', 3, 3, 15, 15);
INSERT INTO public.star VALUES ('Arcturus', 4, 3, 1.08, 7100);
INSERT INTO public.star VALUES ('Vega', 5, 3, 2.15, 700);
INSERT INTO public.star VALUES ('Betelgeuse', 6, 3, 16.5, 11);
INSERT INTO public.star VALUES ('TRAPPIST-1', 7, 3, 0.09, 7600);
INSERT INTO public.star VALUES ('Sun', 8, 3, 1, 4603);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

