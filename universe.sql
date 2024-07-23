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
-- Name: cosmos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmos (
    cosmos_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.cosmos OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmos_cosmos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmos_cosmos_id_seq OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmos_cosmos_id_seq OWNED BY public.cosmos.cosmos_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_year integer,
    galaxy_types text
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
    name character varying(30) NOT NULL,
    distance_from_planet_in_milion_of_km numeric(5,2),
    age_in_milion_of_years integer,
    description text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth_in_milion_of_km numeric(10,2),
    age_in_milion_of_years integer,
    description text,
    has_life boolean,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_milion_of_years integer,
    description text,
    is_dead boolean,
    galaxy_id integer
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
-- Name: cosmos cosmos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos ALTER COLUMN cosmos_id SET DEFAULT nextval('public.cosmos_cosmos_id_seq'::regclass);


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
-- Data for Name: cosmos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmos VALUES (1, 'Cosmic Web', 'The large scale structure of the universe, consisting of filaments and voids.');
INSERT INTO public.cosmos VALUES (2, 'Observable Universe', 'The part of the universe that can be seen from Earth.');
INSERT INTO public.cosmos VALUES (3, 'Dark Matter', 'A form of matter thought to account for approximately 85% of the matter in the universe.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', 13700, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group and the third-largest galaxy in the group.', 13000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', 'A duo of irregular dwarf galaxies visible from the southern hemisphere.', 1400, 'Irregular');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'A supergiant elliptical galaxy in the constellation Virgo.', 24000, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Known for its bright nucleus, large central bulge, and a prominent dust lane in its inclined disk.', 9800, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0.38, 4500, 'The Moon of Earth.', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.01, 4600, 'One of Mars moons, very close to the planet.', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.02, 4600, 'The smaller of Mars two moons.', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 0.42, 4500, 'One of Jupiter''s moons, most volcanically active body in the solar system.', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 0.67, 4500, 'A moon of Jupiter with a smooth, icy surface.', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1.07, 4500, 'The largest moon in the solar system, orbits Jupiter.', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 1.88, 4500, 'A heavily cratered moon orbiting Jupiter.', NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 1.22, 4500, 'Largest moon of Saturn, has a thick atmosphere.', NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.53, 4500, 'The second largest moon of Saturn.', NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 3.56, 4500, 'A moon of Saturn known for its two-tone coloration.', NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', 0.13, 4500, 'One of Uranus'' moons, known for its unique surface features.', NULL);
INSERT INTO public.moon VALUES (12, 'Ariel', 0.19, 4500, 'A moon of Uranus.', NULL);
INSERT INTO public.moon VALUES (13, 'Umbriel', 0.27, 4500, 'A moon of Uranus with a dark surface.', NULL);
INSERT INTO public.moon VALUES (14, 'Titania', 0.44, 4500, 'The largest moon of Uranus.', NULL);
INSERT INTO public.moon VALUES (15, 'Oberon', 0.58, 4500, 'A moon of Uranus, second largest.', NULL);
INSERT INTO public.moon VALUES (16, 'Triton', 0.35, 4500, 'The largest moon of Neptune, orbits in a retrograde direction.', NULL);
INSERT INTO public.moon VALUES (17, 'Charon', 0.02, 4500, 'The largest moon of Pluto, part of a binary system with Pluto.', NULL);
INSERT INTO public.moon VALUES (18, 'Nix', 0.05, 4500, 'A small moon of Pluto.', NULL);
INSERT INTO public.moon VALUES (19, 'Hydra', 0.07, 4500, 'Another small moon of Pluto.', NULL);
INSERT INTO public.moon VALUES (20, 'Kerberos', 0.06, 4500, 'A moon of Pluto, discovered in 2011.', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 91.69, 4500, 'The smallest planet in our solar system and nearest to the Sun.', false, 6);
INSERT INTO public.planet VALUES (2, 'Venus', 41.40, 4600, 'Second planet from the Sun with a toxic atmosphere.', false, 6);
INSERT INTO public.planet VALUES (4, 'Mars', 78.34, 4500, 'Known as the Red Planet, it has the tallest volcano in the solar system.', false, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628.30, 4567, 'The largest planet in our solar system.', false, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 1275.00, 4500, 'Famous for its stunning rings, made mostly of ice.', false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 2724.00, 4500, 'Known for its unique blue-green color, caused by methane in the atmosphere.', false, 6);
INSERT INTO public.planet VALUES (8, 'Neptune', 4351.00, 4500, 'The farthest planet from the Sun in our solar system.', false, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', 5870.00, 4500, 'A dwarf planet in the Kuiper belt, known for its heart-shaped glacier.', false, 6);
INSERT INTO public.planet VALUES (10, 'Eris', 14500.00, 4500, 'One of the largest known dwarf planets in our solar system.', false, 6);
INSERT INTO public.planet VALUES (11, 'Makemake', 6800.00, 4500, 'A dwarf planet, one of the largest objects in the Kuiper belt.', false, 6);
INSERT INTO public.planet VALUES (12, 'Haumea', 6500.00, 4500, 'A dwarf planet known for its elongated shape and fast rotation.', false, 6);
INSERT INTO public.planet VALUES (3, 'Earth', 0.00, 4500, 'Our home planet, the only place known to support life.', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 'The Sun is the star at the center of the Solar System.', false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 5400, 'The closest star system to the Solar System.', false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8000, 'A red supergiant star in the constellation of Orion.', false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 242, 'The brightest star in the Earth''s night sky.', false, 1);
INSERT INTO public.star VALUES (5, 'Vega', 455, 'The fifth-brightest star in the night sky and the second-brightest star in the northern celestial hemisphere.', false, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4800, 'A red dwarf, the closest known star to the Sun.', false, 1);


--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmos_cosmos_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cosmos cosmos_cosmos_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_cosmos_id_key UNIQUE (cosmos_id);


--
-- Name: cosmos cosmos_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_id PRIMARY KEY (cosmos_id);


--
-- Name: cosmos cosmos_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


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
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

