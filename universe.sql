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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_moon_in_millions integer,
    age_in_billions_of_years integer,
    distance_from_earth numeric
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_moon_in_millions integer,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_moon_in_millions integer,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_moon_in_millions integer,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_moon_in_millions integer,
    age_in_billions_of_years integer,
    distance_from_earth numeric
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy (M31)', 'The Andromeda Galaxy is the nearest major galaxy to the Milky Way, and it is on a collision course with our galaxy, expected to merge in about 4.5 billion years.', false, false, 3, 4, 10);
INSERT INTO public.galaxy VALUES (2, 'Sombrero Galaxy (M104)', 'Known for its bright nucleus and prominent dust lane, the Sombrero Galaxy resembles a wide-brimmed hat, hence its name.', false, false, 29, 13, 29);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy (M33)', 'The Triangulum Galaxy is a smaller spiral galaxy, part of the Local Group, and a neighbor to the Milky Way and Andromeda galaxies.', true, false, 3, 10, 3);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud (LMC)', 'The LMC is a satellite galaxy of the Milky Way, visible from the Southern Hemisphere, known for its irregular shape and vibrant star-forming regions.', true, false, 163, 13, 163);
INSERT INTO public.galaxy VALUES (5, 'Sculptor Galaxy (NGC 253)', 'Also known as the Silver Coin Galaxy, it is one of the brightest galaxies visible from Earth and is notable for its high rate of star formation.', false, false, 11, 10, 11);
INSERT INTO public.galaxy VALUES (6, 'Messier 87 (M87)', 'A giant elliptical galaxy in the Virgo Cluster, known for its massive black hole and the jet of matter it emits.', false, true, 54, 13, 54);
INSERT INTO public.galaxy VALUES (7, 'Mercurry', 'The smallest planet in our Solar System and closest to the Sun.', false, false, 77, 14, 77);
INSERT INTO public.galaxy VALUES (8, 'Venuss', 'Known for its thick, toxic atmosphere and extreme surface temperatures.', false, false, 38, 14, 38);
INSERT INTO public.galaxy VALUES (9, 'Earthh', 'The only known planet to support life, with a diverse ecosystem.', true, false, 3, 14, 0);
INSERT INTO public.galaxy VALUES (10, 'Marss', 'Known as the "Red Planet" due to its reddish appearance, with potential for past water flow.', true, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (11, 'Jupiiter', 'The largest planet in our Solar System, known for its Great Red Spot and many moons.', false, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (12, 'Saturrn', 'Known for its prominent ring system and numerous moons.', false, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (13, 'Mercurny', 'The smallest planet in our Solar System and closest to the Sun.', false, false, 77, 14, 77);
INSERT INTO public.galaxy VALUES (14, 'Venusn', 'Known for its thick, toxic atmosphere and extreme surface temperatures.', false, false, 38, 14, 38);
INSERT INTO public.galaxy VALUES (15, 'Earthn', 'The only known planet to support life, with a diverse ecosystem.', true, false, 3, 14, 0);
INSERT INTO public.galaxy VALUES (16, 'Marsn', 'Known as the "Red Planet" due to its reddish appearance, with potential for past water flow.', true, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (17, 'Jupitern', 'The largest planet in our Solar System, known for its Great Red Spot and many moons.', false, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (18, 'Saturnn', 'Known for its prominent ring system and numerous moons.', false, false, 2, 14, 2);
INSERT INTO public.galaxy VALUES (19, 'Uranusn', 'An ice giant with a unique sideways rotation and a faint ring system.', false, false, 3, 14, 3);
INSERT INTO public.galaxy VALUES (20, 'Neptunen', 'The farthest known planet in our Solar System, characterized by strong winds and storms.', false, false, 4, 14, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The only natural satelite of Earth, known for its phases', false, false, 0, 14, 0, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'An icy moon with a subsurface ocean, a prime candidate for extraterrestrial life.', true, false, 6, 14, 6, 2);
INSERT INTO public.moon VALUES (3, 'Ganymade', 'The largest moon in the Solar System, larger than Mercury.', false, false, 6, 14, 6, 3);
INSERT INTO public.moon VALUES (4, 'Callisto', 'A heavily cratered moon, one of the oldest landscapes in the Solar System.', false, false, 6, 14, 6, 4);
INSERT INTO public.moon VALUES (5, 'Lo', 'The most volcanically active body in the Solar System.', false, false, 6, 14, 6, 5);
INSERT INTO public.moon VALUES (6, 'Titan', 'The second-largest moon in the Solar System, with a thick atmosphere and lakes of liquid methane.', true, false, 1, 14, 1, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'An icy moon with geysers that shoot water vapor and ice particles into space, suggesting a subsurface ocean.', true, false, 1, 14, 1, 7);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Known for its large crater, making it resemble the "Death Star" from Star Wars.', false, false, 1, 14, 1, 8);
INSERT INTO public.moon VALUES (9, 'Rhea', 'A moon with a heavily cratered surface and wispy white streaks.', false, false, 1, 14, 1, 9);
INSERT INTO public.moon VALUES (10, 'Dione', 'Features a mix of heavily cratered and smooth plains, with bright ice cliffs.', false, false, 1, 14, 1, 10);
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune largest moon, with a retrograde orbit and active geysers.', false, false, 4, 14, 4, 11);
INSERT INTO public.moon VALUES (12, 'Oberon', 'The second-largest moon of Uranus, with a heavily cratered surface.', false, false, 3, 14, 3, 12);
INSERT INTO public.moon VALUES (13, 'Titania', 'The largest moon of Uranus, featuring large canyons and fault lines.', false, false, 3, 14, 3, 13);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Notable for its young surface with few craters and many fault valleys.', false, false, 3, 14, 3, 14);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'The darkest of Uranus moons, with a heavily cratered surface.', false, false, 3, 14, 3, 15);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Known for its extreme and varied surface features, including cliffs and ridges.', false, false, 4, 14, 4, 16);
INSERT INTO public.moon VALUES (17, 'Phobos', 'The larger and closer of Mars two moons, with a heavily cratered surface.', false, false, 4, 14, 4, 17);
INSERT INTO public.moon VALUES (18, 'Deimos', 'The smaller and more distant of Mars two moons, with a smooth, dusty surface.', true, false, 1, 14, 1, 18);
INSERT INTO public.moon VALUES (19, 'Charon', 'The largest moon of Pluto, roughly half the size of its parent planet, forming a binary system.', false, false, 1, 14, 1, 19);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'A small, irregularly shaped moon with a sponge-like appearance due to its porous surface.', true, false, 20, 14, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our Solar System and closest to the Sun.', false, false, 77, 14, 77, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Known for its thick, toxic atmosphere and extreme surface temperatures.', false, false, 38, 14, 38, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'The only known planet to support life, with a diverse ecosystem.', true, false, 3, 14, 0, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the "Red Planet" due to its reddish appearance, with potential for past water flow.', true, false, 2, 14, 2, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in our Solar System, known for its Great Red Spot and many moons.', false, false, 2, 14, 2, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Known for its prominent ring system and numerous moons.', false, false, 2, 14, 2, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a unique sideways rotation and a faint ring system.', false, false, 3, 14, 3, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The farthest known planet in our Solar System, characterized by strong winds and storms.', false, false, 4, 14, 4, 8);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'An exoplanet orbiting the red dwarf star Proxima Centauri, potentially in the habitable zone.', true, false, 4, 14, 4, 9);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'An exoplanet located in the habitable zone of a Sun-like star, often called Earth cousin.', true, false, 1, 14, 1, 10);
INSERT INTO public.planet VALUES (11, 'Trappist-1e', 'One of seven Earth-sized planets orbiting the ultracool dwarf star TRAPPIST-1, within the habitable zone.', true, false, 39, 14, 39, 11);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 'An exoplanet thought to be in the habitable zone of the red dwarf star Gliese 581, though its existence is debated.', true, false, 20, 14, 20, 12);
INSERT INTO public.planet VALUES (13, 'Titannia', 'The largest moon of Uranus, featuring large canyons and fault lines.', false, false, 3, 14, 3, 13);
INSERT INTO public.planet VALUES (14, 'Ariell', 'Notable for its young surface with few craters and many fault valleys.', false, false, 3, 14, 3, 14);
INSERT INTO public.planet VALUES (15, 'Umbriell', 'The darkest of Uranus moons, with a heavily cratered surface.', false, false, 3, 14, 3, 15);
INSERT INTO public.planet VALUES (16, 'Mirandam', 'Known for its extreme and varied surface features, including cliffs and ridges.', false, false, 4, 14, 4, 16);
INSERT INTO public.planet VALUES (17, 'Phobons', 'The larger and closer of Mars two moons, with a heavily cratered surface.', false, false, 4, 14, 4, 17);
INSERT INTO public.planet VALUES (18, 'Deimosn', 'The smaller and more distant of Mars two moons, with a smooth, dusty surface.', true, false, 1, 14, 1, 18);
INSERT INTO public.planet VALUES (19, 'Charonn', 'The largest moon of Pluto, roughly half the size of its parent planet, forming a binary system.', false, false, 1, 14, 1, 19);
INSERT INTO public.planet VALUES (20, 'Hyperionn', 'A small, irregularly shaped moon with a sponge-like appearance due to its porous surface.', true, false, 20, 14, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 'Antares is the brightest star in the constellation of Scorpius. It has the Bayer designation α Scorpii, which is Latinised to Alpha Scorpii.', false, true, 1, 15, 1, 1);
INSERT INTO public.star VALUES (2, 'Aldebaran', 'Aldebaran is a star located in the zodiac constellation of Taurus.', false, true, 2, 12, 2, 2);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Arcturus is the brightest star in the northern constellation of Boötes.', false, true, 1, 10, 3, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation of Orion', false, true, 2, 5, 4, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'Rigel is a star in the celestial bodies', false, true, 2, 11, 5, 5);
INSERT INTO public.star VALUES (6, 'Canopus', 'Canopus is a moving star', false, true, 1, 2, 6, 6);
INSERT INTO public.star VALUES (7, 'Urannus', 'An ice giant with a unique sideways rotation and a faint ring system.', false, false, 3, 14, 3, 7);
INSERT INTO public.star VALUES (8, 'Neptunee', 'The farthest known planet in our Solar System, characterized by strong winds and storms.', false, false, 4, 14, 4, 8);
INSERT INTO public.star VALUES (9, 'Proxima bb', 'An exoplanet orbiting the red dwarf star Proxima Centauri, potentially in the habitable zone.', true, false, 4, 14, 4, 9);
INSERT INTO public.star VALUES (10, 'Kepler-4552b', 'An exoplanet located in the habitable zone of a Sun-like star, often called Earth cousin.', true, false, 1, 14, 1, 10);
INSERT INTO public.star VALUES (11, 'Trappist-1ee', 'One of seven Earth-sized planets orbiting the ultracool dwarf star TRAPPIST-1, within the habitable zone.', true, false, 39, 14, 39, 11);
INSERT INTO public.star VALUES (12, 'Gliese 581gg', 'An exoplanet thought to be in the habitable zone of the red dwarf star Gliese 581, though its existence is debated.', true, false, 20, 14, 20, 12);
INSERT INTO public.star VALUES (13, 'Moonn', 'The only natural satelite of Earth, known for its phases', false, false, 0, 14, 0, 13);
INSERT INTO public.star VALUES (14, 'Europan', 'An icy moon with a subsurface ocean, a prime candidate for extraterrestrial life.', true, false, 6, 14, 6, 14);
INSERT INTO public.star VALUES (15, 'Ganymaden', 'The largest moon in the Solar System, larger than Mercury.', false, false, 6, 14, 6, 15);
INSERT INTO public.star VALUES (16, 'Calliston', 'A heavily cratered moon, one of the oldest landscapes in the Solar System.', false, false, 6, 14, 6, 16);
INSERT INTO public.star VALUES (17, 'Lon', 'The most volcanically active body in the Solar System.', false, false, 6, 14, 6, 17);
INSERT INTO public.star VALUES (18, 'Titann', 'The second-largest moon in the Solar System, with a thick atmosphere and lakes of liquid methane.', true, false, 1, 14, 1, 18);
INSERT INTO public.star VALUES (19, 'Enceladuss', 'An icy moon with geysers that shoot water vapor and ice particles into space, suggesting a subsurface ocean.', true, false, 1, 14, 1, 19);
INSERT INTO public.star VALUES (20, 'Mimass', 'Known for its large crater, making it resemble the "Death Star" from Star Wars.', false, false, 1, 14, 1, 20);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', 'The star at the center of our Solar System, providing light and heat essential for life on Earth.', false, false, 1, 15, 1);
INSERT INTO public.sun VALUES (2, 'Proxima', 'The brightest star in the night sky, located in the constellation Canis Major.', false, false, 2, 12, 2);
INSERT INTO public.sun VALUES (3, 'Sirius A', 'Arcturus is the brightest star in the northern constellation of Boötes.', false, true, 1, 10, 3);
INSERT INTO public.sun VALUES (4, 'Alpha Cenatauri A', 'A star similar to the Sun, part of the Alpha Centauri star system.', false, true, 2, 12, 4);
INSERT INTO public.sun VALUES (5, 'Vega', 'A bright star in the constellation Lyra, known for being one of the most luminous stars in the vicinity of the Sun.', false, true, 2, 11, 5);
INSERT INTO public.sun VALUES (6, 'Sun', 'Sun is a moving star', false, true, 1, 4, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 6, true);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key1 UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

