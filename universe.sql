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
-- Name: g_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.g_type (
    g_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    have_visited boolean
);


ALTER TABLE public.g_type OWNER TO freecodecamp;

--
-- Name: g_type_g_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.g_type_g_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.g_type_g_type_id_seq OWNER TO freecodecamp;

--
-- Name: g_type_g_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.g_type_g_type_id_seq OWNED BY public.g_type.g_type_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    g_type_id integer NOT NULL,
    age_millyears numeric,
    distance_from_earth numeric,
    description text
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    diameter_in_km integer NOT NULL,
    tidally_locked boolean,
    description text
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
-- Name: p_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.p_type (
    p_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    have_visited integer
);


ALTER TABLE public.p_type OWNER TO freecodecamp;

--
-- Name: p_type_p_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.p_type_p_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_type_p_type_id_seq OWNER TO freecodecamp;

--
-- Name: p_type_p_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.p_type_p_type_id_seq OWNED BY public.p_type.p_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    p_type_id integer NOT NULL,
    year_discovered character varying(4),
    distance_from_earth numeric,
    description text
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
-- Name: s_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.s_type (
    s_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    have_visited boolean
);


ALTER TABLE public.s_type OWNER TO freecodecamp;

--
-- Name: s_type_s_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.s_type_s_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_type_s_type_id_seq OWNER TO freecodecamp;

--
-- Name: s_type_s_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.s_type_s_type_id_seq OWNED BY public.s_type.s_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    s_type_id integer NOT NULL,
    age_millyears numeric,
    distance_from_earth numeric,
    description text
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
-- Name: g_type g_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.g_type ALTER COLUMN g_type_id SET DEFAULT nextval('public.g_type_g_type_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: p_type p_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p_type ALTER COLUMN p_type_id SET DEFAULT nextval('public.p_type_p_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: s_type s_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.s_type ALTER COLUMN s_type_id SET DEFAULT nextval('public.s_type_s_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: g_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.g_type VALUES (1, 'Spiral', false);
INSERT INTO public.g_type VALUES (2, 'Elliptical', false);
INSERT INTO public.g_type VALUES (3, 'Irregular', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 0, 0, 'Large barred spiral galaxy, home to our Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 0, 5, 'Closest spiral galaxy to the Milky Way, on a collision course.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 1, 0, 3, 'A smaller spiral galaxy in the Local Group.');
INSERT INTO public.galaxy VALUES (4, 'Messier 87 (M87)', 2, 1781, 55, 'Hosts the first-ever photographed black hole, located in Virgo.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy (M51)', 1, 1773, 23, 'Interacting galaxy with a classic spiral structure in Canes Venatici.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy (M104)', 1, 1781, 28, 'Named for its hat-like appearance in Virgo.');
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud (LMC)', 3, 0, 163, 'Closest irregular galaxy, a satellite of the Milky Way.');
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud (SMC)', 3, 0, 200, 'Another irregular galaxy, a companion to the LMC.');
INSERT INTO public.galaxy VALUES (9, 'Messier 101 (M101)', 1, 1781, 21, 'Prominent face-on spiral galaxy in Ursa Major.');
INSERT INTO public.galaxy VALUES (10, 'Messier 33 (Triangulum Galaxy)', 1, 1764, 3, 'Member of the Local Group, the third-largest galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 8, 3474, true, 'Earths natural satellite.');
INSERT INTO public.moon VALUES (2, 'Phobos', 9, 22, true, 'closer to the planet.');
INSERT INTO public.moon VALUES (3, 'Deimos', 9, 14, true, 'irregular shape.');
INSERT INTO public.moon VALUES (4, 'Io', 10, 363, true, 'volcanic activity.');
INSERT INTO public.moon VALUES (5, 'Europa', 10, 312, true, 'hiding a subsurface ocean.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 10, 528, true, 'The largest moon.');
INSERT INTO public.moon VALUES (7, 'Callisto', 10, 480, true, 'heavily cratered surface.');
INSERT INTO public.moon VALUES (8, 'Titan', 11, 511, true, 'lakes of methane.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 11, 504, true, 'arer.');
INSERT INTO public.moon VALUES (10, 'Mimas', 11, 396, true, 'crater named Herschel.');
INSERT INTO public.moon VALUES (11, 'Tethys', 11, 102, true, 'impact feature called Odysseus.');
INSERT INTO public.moon VALUES (12, 'Dione', 11, 113, true, 'icy cliffs named "wisps."');
INSERT INTO public.moon VALUES (13, 'Rhea', 11, 157, true, '.');
INSERT INTO public.moon VALUES (14, 'Iapetus', 11, 1471, true, 'two-tone appearance, named Cassini Regio.');
INSERT INTO public.moon VALUES (15, 'Miranda', 12, 471, true, 'complex and varied terrain.');
INSERT INTO public.moon VALUES (16, 'Ariel', 12, 117, true, 'surface and few impact craters.');
INSERT INTO public.moon VALUES (17, 'Umbriel', 12, 119, true, ' cratered.');
INSERT INTO public.moon VALUES (18, 'Titania', 12, 158, true, 'verse geological features.');
INSERT INTO public.moon VALUES (19, 'Oberon', 12, 122, true, 'of old and young terrains.');
INSERT INTO public.moon VALUES (20, 'Triton', 13, 276, true, 'retrograde orbit.');


--
-- Data for Name: p_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.p_type VALUES (1, 'Terrestrial', 1);
INSERT INTO public.p_type VALUES (2, 'Hot Jupiter', 13);
INSERT INTO public.p_type VALUES (3, 'Super-Earth', 0);
INSERT INTO public.p_type VALUES (4, 'Gas Giant', 8);
INSERT INTO public.p_type VALUES (5, 'Ice Giant', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kepler-4b', 2, 2, '2011', 1020, 'another terrestrial exoplanet.');
INSERT INTO public.planet VALUES (2, 'Kepler-438b', 6, 1, '2010', 25, 'a potentially habitable exoplanet.');
INSERT INTO public.planet VALUES (3, 'HD 149143b', 7, 2, '2013', 1200, 'a super-Earth exoplanet.');
INSERT INTO public.planet VALUES (4, 'Pollux b', 8, 4, '2017', 2545, 'an exoplanet.');
INSERT INTO public.planet VALUES (5, 'XO-1b', 7, 2, '2014', 1772, 'within the habitable zone of its star.');
INSERT INTO public.planet VALUES (6, 'Mercury', 1, 1, '0', 0, 'rocky surface.');
INSERT INTO public.planet VALUES (7, 'Venus', 1, 1, '0', 0, 'hottest planet.');
INSERT INTO public.planet VALUES (8, 'Earth', 1, 1, '0', 0, 'Earth is the only known planet with abundant liquid water, diverse ecosystems, and the capacity to support life. It is the third planet from the Sun.');
INSERT INTO public.planet VALUES (9, 'Mars', 1, 1, '0', 0, 'evidence of past liquid water flows.');
INSERT INTO public.planet VALUES (10, 'Jupiter', 1, 4, '0', 0, 'composed of hydrogen and helium.');
INSERT INTO public.planet VALUES (11, 'Saturn', 1, 4, '0', 0, 'second-largest planet in our solar system.');
INSERT INTO public.planet VALUES (12, 'Uranus', 1, 5, '1781', 0, 'presence of methane in its atmosphere.');
INSERT INTO public.planet VALUES (13, 'Neptune', 1, 5, '1846', 0, 'system of dark spots resembling storms.');


--
-- Data for Name: s_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.s_type VALUES (1, 'G-type main-sequence star', false);
INSERT INTO public.s_type VALUES (2, 'A-type main-sequence star', false);
INSERT INTO public.s_type VALUES (3, 'K-type main-sequence star', false);
INSERT INTO public.s_type VALUES (4, 'M-type supergiant', false);
INSERT INTO public.s_type VALUES (5, 'B-type supergiant', false);
INSERT INTO public.s_type VALUES (6, 'F-type giant star', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 1, 4, 0, 'the center of our solar system, providing heat and light.');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 2, 200, 86, 'also known as the Dog Star, the brightest star in the night sky.');
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 1, 6, 47, 'the primary component of the Alpha Centauri binary system.');
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, 3, 6, 437, 'the secondary component of the Alpha Centauri binary system.');
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 4, 8, 65, 'a red supergiant in the constellation Orion, nearing the end of its life.');
INSERT INTO public.star VALUES (6, 'Vega', 1, 2, 455, 254, 'one of the brightest stars in the northern hemisphere.');
INSERT INTO public.star VALUES (7, 'Antares', 1, 4, 12, 550, 'a red supergiant star in the heart of the Scorpius constellation.');
INSERT INTO public.star VALUES (8, 'Pollux', 1, 3, 724, 37, 'one of the brightest stars in the constellation Gemini.');
INSERT INTO public.star VALUES (9, 'Rigel', 1, 5, 10, 860, 'the brightest star in the constellation Orion, known for its blue-white color.');
INSERT INTO public.star VALUES (10, 'Canopus', 1, 6, 71, 310, '2nd brightest star in the sky, in the constellation Carina.');


--
-- Name: g_type_g_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.g_type_g_type_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: p_type_p_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.p_type_p_type_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: s_type_s_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.s_type_s_type_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: g_type g_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.g_type
    ADD CONSTRAINT g_type_name_key UNIQUE (name);


--
-- Name: g_type g_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.g_type
    ADD CONSTRAINT g_type_pkey PRIMARY KEY (g_type_id);


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
-- Name: p_type p_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p_type
    ADD CONSTRAINT p_type_name_key UNIQUE (name);


--
-- Name: p_type p_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p_type
    ADD CONSTRAINT p_type_pkey PRIMARY KEY (p_type_id);


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
-- Name: s_type s_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.s_type
    ADD CONSTRAINT s_type_name_key UNIQUE (name);


--
-- Name: s_type s_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.s_type
    ADD CONSTRAINT s_type_pkey PRIMARY KEY (s_type_id);


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
-- Name: galaxy galaxy_g_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_g_type_id_fkey FOREIGN KEY (g_type_id) REFERENCES public.g_type(g_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_p_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_p_type_id_fkey FOREIGN KEY (p_type_id) REFERENCES public.p_type(p_type_id);


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
-- Name: star star_s_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_s_type_id_fkey FOREIGN KEY (s_type_id) REFERENCES public.s_type(s_type_id);


--
-- PostgreSQL database dump complete
--

