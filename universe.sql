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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_million_of_years integer,
    description text,
    name character varying(255),
    size integer DEFAULT 111121212 NOT NULL
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
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    has_water boolean,
    planet_id integer NOT NULL,
    name character varying(255)
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    population numeric,
    star_id integer NOT NULL,
    name character varying(255)
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(255),
    distance_from_earth numeric,
    description text,
    size integer NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer,
    name character varying(255),
    size integer DEFAULT 0,
    width integer DEFAULT 120392093 NOT NULL
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1000, 'Spiral galaxy with a prominent central bulge', 'Milky Way', 111121212);
INSERT INTO public.galaxy VALUES (2, 1300, 'Elliptical galaxy with little interstellar matter', 'M87', 111121212);
INSERT INTO public.galaxy VALUES (3, 5000, 'Irregular galaxy with ongoing star formation', 'Large Magellanic Cloud', 111121212);
INSERT INTO public.galaxy VALUES (4, 2000, 'Barred spiral galaxy with a central bar structure', 'NGC 1300', 111121212);
INSERT INTO public.galaxy VALUES (5, 7000, 'Lenticular galaxy with a disk but no spiral arms', 'NGC 2787', 111121212);
INSERT INTO public.galaxy VALUES (6, 1500, 'Dwarf galaxy orbiting the Milky Way', 'Sagittarius Dwarf Spheroidal', 111121212);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, false, 4500, 384400, true, 3, 'Luna');
INSERT INTO public.moon VALUES (2, false, 4500, 181344, false, 3, 'Phobos');
INSERT INTO public.moon VALUES (3, false, 4500, 9377, false, 3, 'Deimos');
INSERT INTO public.moon VALUES (4, false, 5000, 1737300, false, 5, 'Io');
INSERT INTO public.moon VALUES (5, false, 5000, 422000, false, 5, 'Europa');
INSERT INTO public.moon VALUES (6, false, 5000, 671034, false, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, false, 5000, 1070400, false, 5, 'Callisto');
INSERT INTO public.moon VALUES (8, false, 6000, 421700, false, 6, 'Mimas');
INSERT INTO public.moon VALUES (9, false, 6000, 237948, false, 6, 'Enceladus');
INSERT INTO public.moon VALUES (10, false, 6000, 377396, false, 6, 'Tethys');
INSERT INTO public.moon VALUES (11, false, 6000, 527108, false, 6, 'Dione');
INSERT INTO public.moon VALUES (12, false, 6000, 1221930, false, 6, 'Rhea');
INSERT INTO public.moon VALUES (13, false, 6000, 1471226, false, 6, 'Titan');
INSERT INTO public.moon VALUES (14, false, 6000, 1352550, false, 6, 'Iapetus');
INSERT INTO public.moon VALUES (15, false, 6000, 188270, false, 7, 'Miranda');
INSERT INTO public.moon VALUES (16, false, 6000, 50000, false, 7, 'Ariel');
INSERT INTO public.moon VALUES (17, false, 6000, 60000, false, 7, 'Umbriel');
INSERT INTO public.moon VALUES (18, false, 6000, 90000, false, 7, 'Titania');
INSERT INTO public.moon VALUES (19, false, 6000, 120000, false, 7, 'Oberon');
INSERT INTO public.moon VALUES (20, false, 5500, 370300, false, 8, 'Triton');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, true, 4500, 0, 1, 'Mercury');
INSERT INTO public.planet VALUES (2, false, true, 4600, 0, 1, 'Venus');
INSERT INTO public.planet VALUES (3, false, true, 4500, 7.9, 1, 'Earth');
INSERT INTO public.planet VALUES (4, false, true, 4000, 0, 2, 'Mars');
INSERT INTO public.planet VALUES (5, false, false, 7000, 0, 2, 'Jupiter');
INSERT INTO public.planet VALUES (6, false, false, 6000, 0, 2, 'Saturn');
INSERT INTO public.planet VALUES (7, false, false, 5000, 0, 2, 'Uranus');
INSERT INTO public.planet VALUES (8, false, false, 5000, 0, 2, 'Neptune');
INSERT INTO public.planet VALUES (9, false, true, 4500, 0, 3, 'Kepler-186f');
INSERT INTO public.planet VALUES (10, false, true, 5000, 0, 3, 'Proxima Centauri b');
INSERT INTO public.planet VALUES (11, false, false, 6000, 0, 4, 'HD 189733b');
INSERT INTO public.planet VALUES (12, false, false, 5500, 0, 4, 'WASP-12b');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'ISS', 420000, 'The International Space Station orbits Earth.', 357);
INSERT INTO public.satellite VALUES (2, 'Hubble Space Telescope', 547000, 'A space telescope that has provided some of the most detailed images of distant galaxies, nebulae, and stars.', 13);
INSERT INTO public.satellite VALUES (3, 'Voyager 1', 22424000000, 'A space probe launched by NASA in 1977 to study the outer Solar System.', 722);
INSERT INTO public.satellite VALUES (4, 'Chang''e 5', 384000, 'A Chinese lunar exploration mission that successfully brought back lunar samples to Earth.', 363);
INSERT INTO public.satellite VALUES (5, 'Mars Reconnaissance Orbiter', 306000000, 'A spacecraft orbiting Mars that has provided high-resolution images and data about the Martian surface.', 636);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yellow dwarf star', true, 4600, 1.0, 1, 'Sun', 0, 120392093);
INSERT INTO public.star VALUES (2, 'Blue giant star with high luminosity', false, 3000, 10.5, 2, 'Betelgeuse', 0, 120392093);
INSERT INTO public.star VALUES (3, 'Red supergiant star in the constellation Orion', false, 8000, 640.0, 2, 'Antares', 0, 120392093);
INSERT INTO public.star VALUES (4, 'Binary star system with two main-sequence stars', true, 2000, 15.0, 3, 'Alpha Centauri', 0, 120392093);
INSERT INTO public.star VALUES (5, 'White dwarf star, remnant of a supernova explosion', true, 10000, 25.0, 4, 'Sirius B', 0, 120392093);
INSERT INTO public.star VALUES (6, 'Yellow hypergiant star, one of the largest known stars', false, 12000, 2000.0, 5, 'VY Canis Majoris', 0, 120392093);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

