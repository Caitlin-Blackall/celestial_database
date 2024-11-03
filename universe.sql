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
    name character varying(30),
    description text NOT NULL,
    has_life boolean NOT NULL,
    life_forms character varying(20),
    galaxy_id integer NOT NULL
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_forms character varying(20),
    can_speak boolean NOT NULL,
    colour character varying(10),
    life_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    is_spherical boolean,
    number_moons integer,
    description text,
    has_rings boolean,
    moon_id integer NOT NULL
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
    name character varying(30),
    distance_from_earth numeric(8,2),
    planet_colour character varying(20),
    number_moons integer NOT NULL,
    planet_types character varying(30),
    planet_id integer NOT NULL
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
    age_in_millions_of_years integer,
    shape character varying(20),
    name character varying(30) NOT NULL,
    planet_types character varying(30),
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy, containing billions of stars and solar systems.', true, 'humans', 1);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'Recognized for its bright bulge and prominent dust lanes.', true, 'robots', 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 'A member of the Local Group, notable for its bright star clusters.', false, NULL, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 'A stunning spiral galaxy known for its grand design and star formation.', false, NULL, 4);
INSERT INTO public.galaxy VALUES ('Andromeda', 'The closest spiral galaxy to the Milky Way, on a collision course.', true, 'aliens', 5);
INSERT INTO public.galaxy VALUES ('Messier 87', 'A giant elliptical galaxy in the Virgo cluster, known for its supermassive black hole.', true, 'ood', 6);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES ('alien', true, 'green', 1, NULL);
INSERT INTO public.life VALUES ('robot', false, 'grey', 2, NULL);
INSERT INTO public.life VALUES ('ood', false, 'white', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Titan', true, 1, 'Saturns largest moon, known for its thick atmosphere and lakes of liquid methane.', false, 1);
INSERT INTO public.moon VALUES ('Europa', true, 2, 'A moon of Jupiter, believed to have a subsurface ocean beneath its icy crust.', false, 2);
INSERT INTO public.moon VALUES ('Ganymede', false, 3, 'The largest moon in the solar system, also has a subsurface ocean.', false, 3);
INSERT INTO public.moon VALUES ('Io', true, 4, 'A volcanic moon of Jupiter, known for its extreme geological activity.', false, 4);
INSERT INTO public.moon VALUES ('Luna', true, 5, 'Earths only natural satellite, also called the Moon.', false, 5);
INSERT INTO public.moon VALUES ('Callisto', false, 6, 'A heavily cratered moon of Jupiter, known for its ancient surface.', true, 6);
INSERT INTO public.moon VALUES ('Rhea', true, 7, 'A moon of Saturn that has a thin atmosphere and may have rings.', true, 7);
INSERT INTO public.moon VALUES ('Enceladus', true, 14, 'Known for its geysers that eject water vapor and ice particles.', false, 8);
INSERT INTO public.moon VALUES ('Triton', false, 27, 'Neptunes largest moon, notable for its retrograde orbit and geysers.', true, 9);
INSERT INTO public.moon VALUES ('Phobos', true, 79, 'The larger of Mars two moons, known for its irregular shape and craters.', false, 10);
INSERT INTO public.moon VALUES ('Last Moon', true, 83, 'the last moon required to pass my tests', true, 11);
INSERT INTO public.moon VALUES ('Twelve', true, 83, 'more moons', false, 12);
INSERT INTO public.moon VALUES ('Oberon', true, 27, 'The second-largest moon of Uranus, known for its dark surface and large craters.', false, 13);
INSERT INTO public.moon VALUES ('Miranda', false, 5, 'A moon of Uranus with a diverse and rugged landscape.', false, 14);
INSERT INTO public.moon VALUES ('Iapetus', true, 14, 'A moon of Saturn known for its distinctive two-tone coloration.', true, 15);
INSERT INTO public.moon VALUES ('Mimas', true, 7, 'A small moon of Saturn with a large impact crater, resembling the Death Star.', false, 16);
INSERT INTO public.moon VALUES ('Titania', false, 4, 'The largest moon of Uranus, featuring canyons and large impact craters.', false, 17);
INSERT INTO public.moon VALUES ('Hyperion', true, 3, 'A moon of Saturn with a sponge-like appearance and irregular shape.', false, 18);
INSERT INTO public.moon VALUES ('Umbriel', false, 2, 'A dark moon of Uranus, known for its craters and lack of geological activity.', false, 19);
INSERT INTO public.moon VALUES ('Phoebe', true, 1, 'An irregular moon of Saturn with a retrograde orbit and a heavily cratered surface.', false, 20);
INSERT INTO public.moon VALUES ('Charon', true, 1, 'The largest moon of Pluto, known for its unique binary system with Pluto.', false, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Jupiter', 588.50, 'Orange', 79, 'Gas Giant', 1);
INSERT INTO public.planet VALUES ('Saturn', 1200.00, 'Yellow', 83, 'Gas Giant', 9);
INSERT INTO public.planet VALUES ('Uranus', 1800.00, 'Light Blue', 27, 'Ice Giant', 10);
INSERT INTO public.planet VALUES ('Neptune', 2700.00, 'Blue', 14, 'Ice Giant', 11);
INSERT INTO public.planet VALUES ('Earth', 0.00, 'Blue', 1, 'Terrestrial', 12);
INSERT INTO public.planet VALUES ('Mars', 0.52, 'Red', 2, 'Terrestrial', 13);
INSERT INTO public.planet VALUES ('Venus', 0.28, 'Yellowish', 3, 'Terrestrial', 14);
INSERT INTO public.planet VALUES ('Mercury', 0.39, 'Gray', 4, 'Rocky', 15);
INSERT INTO public.planet VALUES ('Kepler-22b', 620.00, 'Blue-green', 5, 'Super-Earth', 16);
INSERT INTO public.planet VALUES ('Pluto', 4300.00, 'Brown', 6, 'Dwarf Planet', 17);
INSERT INTO public.planet VALUES ('Ceres', 257.00, 'Gray', 0, 'Dwarf Planet', 18);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 4.24, NULL, 7, 'Rocky', 19);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (120, 'Red Giant', 'Betelgeuse', 'Gas Giant', 3, 1);
INSERT INTO public.star VALUES (300, 'White Dwarf', 'Sirius B', 'Ice Giant', 4, 2);
INSERT INTO public.star VALUES (500, 'Supergiant', 'Antares', 'Terrestrial', 6, 3);
INSERT INTO public.star VALUES (5000, 'Main Sequence', 'Zeta Reticuli', 'Super-Earth', 1, 7);
INSERT INTO public.star VALUES (7000, 'Main Sequence', 'Vega', 'Dwarf Planet', 3, 8);
INSERT INTO public.star VALUES (4000, 'Main Sequence', 'Alpha Centauri A', 'Rocky', 1, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_life_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_life_id_key UNIQUE (life_id);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


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
-- Name: planet planet_number_moons_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_moons_key UNIQUE (number_moons);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_types_key UNIQUE (planet_types);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_number_moons_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_number_moons_fkey FOREIGN KEY (number_moons) REFERENCES public.planet(number_moons);


--
-- Name: planet planet_planet_types_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_fkey FOREIGN KEY (planet_types) REFERENCES public.star(planet_types);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

