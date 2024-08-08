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
    name character varying(30) NOT NULL,
    description text,
    distance_megaparsecs numeric,
    solar_masses integer,
    num_exoplanets integer,
    galactic_collision boolean NOT NULL,
    galactic_halo boolean,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    category character varying(20)
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    volcanic_activity boolean,
    radius integer,
    orbital_period_days integer,
    atmospheric_pressure numeric,
    surface_gravity numeric,
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
    description text,
    has_life boolean NOT NULL,
    ring_system boolean,
    number_moons integer,
    orbital_period_days integer,
    atmospheric_pressure numeric,
    surface_gravity numeric,
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
    description text,
    supernova_potential boolean NOT NULL,
    binary_star boolean,
    surface_temp_k integer,
    solar_luminosity integer,
    radius numeric,
    stellar_age numeric,
    galaxy_id integer,
    star_type_id integer
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    size character varying(15),
    spectral_type character varying(15),
    size_classification character varying(15)
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (11, 'Andromeda', 'Spiral galaxy in the Local Group', 2.5, 800, 10, true, true, 1);
INSERT INTO public.galaxy VALUES (12, 'Milky Way', 'Barred spiral galaxy containing our solar system', 0.025, 100, 8, false, true, 2);
INSERT INTO public.galaxy VALUES (13, 'Triangulum', 'Spiral galaxy also in the Local Group', 3.0, 300, 5, false, false, 1);
INSERT INTO public.galaxy VALUES (14, 'Whirlpool Galaxy', 'Classic example of an interacting galaxy pair', 0.04, 160, 2, true, false, 1);
INSERT INTO public.galaxy VALUES (15, 'Messier 87', 'Giant elliptical galaxy in the Virgo Cluster', 16.4, 20000, 0, false, true, 2);
INSERT INTO public.galaxy VALUES (16, 'IC 1101', 'Largest known galaxy by stellar mass', 320, 1000000, 0, false, true, 1);
INSERT INTO public.galaxy VALUES (17, 'Cartwheel Galaxy', 'Ring galaxy resulting from a collision', 500, 200000, 0, true, false, 1);
INSERT INTO public.galaxy VALUES (18, 'M82', 'Irregular galaxy with strong starburst activity', 11.5, 40, 0, false, false, 3);
INSERT INTO public.galaxy VALUES (19, 'Large Magellanic Cloud', 'Irregular dwarf galaxy in the Milky Way''s halo', 0.163, 100, 0, false, false, 3);
INSERT INTO public.galaxy VALUES (20, 'Small Magellanic Cloud', 'Irregular dwarf galaxy in the Milky Way''s halo', 0.2, 20, 0, false, false, 3);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Galaxies with distinct spiral arms', 'Morphology');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'Galaxies with elliptical or round shapes', 'Morphology');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'Galaxies with irregular shapes', 'Morphology');
INSERT INTO public.galaxy_type VALUES (4, 'Lenticular', 'Intermediate between spiral and elliptical galaxies', 'Morphology');
INSERT INTO public.galaxy_type VALUES (5, 'Dwarf Elliptical', 'Small elliptical galaxies', 'Morphology');
INSERT INTO public.galaxy_type VALUES (6, 'Dwarf Irregular', 'Small irregular galaxies', 'Morphology');
INSERT INTO public.galaxy_type VALUES (7, 'Barred Spiral', 'Spiral galaxies with a bar-like structure', 'Morphology');
INSERT INTO public.galaxy_type VALUES (8, 'Ring', 'Galaxies with a prominent ring-like structure', 'Morphology');
INSERT INTO public.galaxy_type VALUES (9, 'Starburst', 'Galaxies with intense star formation', 'Activity');
INSERT INTO public.galaxy_type VALUES (10, 'AGN', 'Galaxies with active galactic nuclei', 'Activity');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (51, 'Moon', 'Earth''s natural satellite', false, false, 1737, 27, 0, 1.622, 3);
INSERT INTO public.moon VALUES (52, 'Europa', 'Icy moon of Jupiter with a possible subsurface ocean', true, true, 1561, 4, 0, 1.315, 4);
INSERT INTO public.moon VALUES (53, 'Ganymede', 'Largest moon in the solar system, a moon of Jupiter', false, false, 2631, 7, 0, 1.428, 4);
INSERT INTO public.moon VALUES (54, 'Callisto', 'Moon of Jupiter with a heavily cratered surface', false, false, 2410, 17, 0, 1.235, 4);
INSERT INTO public.moon VALUES (55, 'Titan', 'Largest moon of Saturn with a thick atmosphere', false, false, 2575, 16, 147000, 1.352, 5);
INSERT INTO public.moon VALUES (56, 'Enceladus', 'Moon of Saturn with active water geysers', true, true, 252, 1, 0, 0.113, 6);
INSERT INTO public.moon VALUES (57, 'Io', 'Volcanic moon of Jupiter with colorful surface features', false, true, 1821, 2, 0, 1.796, 7);
INSERT INTO public.moon VALUES (58, 'Phobos', 'Larger moon of Mars with irregular shape', false, false, 11, 0, 0, 0.0057, 8);
INSERT INTO public.moon VALUES (59, 'Deimos', 'Smaller moon of Mars with irregular shape', false, false, 6, 1, 0, 0.003, 8);
INSERT INTO public.moon VALUES (60, 'Charon', 'Largest moon of Pluto with a close binary system', false, false, 606, 6, 0, 0.278, 9);
INSERT INTO public.moon VALUES (61, 'Triton', 'Large moon of Neptune with a retrograde orbit', false, true, 1353, 6, 14, 0.779, 10);
INSERT INTO public.moon VALUES (62, 'Rhea', 'Second-largest moon of Saturn with a bright surface', false, false, 763, 5, 0, 0.264, 11);
INSERT INTO public.moon VALUES (63, 'Dione', 'Moon of Saturn with bright ice cliffs', false, false, 561, 3, 0, 0.232, 11);
INSERT INTO public.moon VALUES (64, 'Titania', 'Largest moon of Uranus with a cratered and fractured surface', false, false, 788, 9, 0, 0.379, 12);
INSERT INTO public.moon VALUES (65, 'Oberon', 'Second-largest moon of Uranus with dark terrain', false, false, 761, 13, 0, 0.346, 12);
INSERT INTO public.moon VALUES (66, 'Luna', 'Latin name for Earth''s moon', false, false, 1737, 27, 0, 1.622, 3);
INSERT INTO public.moon VALUES (67, 'Hyperion', 'Weirdly shaped moon of Saturn with sponge-like appearance', false, false, 135, 21, 0, 0.112, 6);
INSERT INTO public.moon VALUES (68, 'Phoebe', 'Irregular moon of Saturn with retrograde orbit', false, false, 107, 550, 0, 0.064, 6);
INSERT INTO public.moon VALUES (69, 'Ariel', 'Moon of Uranus with extensive grooved terrain', false, false, 579, 3, 0, 0.27, 12);
INSERT INTO public.moon VALUES (70, 'Umbriel', 'Dark moon of Uranus with old, heavily cratered surface', false, false, 585, 4, 0, 0.23, 12);
INSERT INTO public.moon VALUES (71, 'Miranda', 'Moon of Uranus with varied terrains and valleys', false, false, 236, 1, 0, 0.079, 12);
INSERT INTO public.moon VALUES (72, 'Iapetus', 'Two-toned moon of Saturn with bright and dark sides', false, false, 735, 79, 0, 0.223, 6);
INSERT INTO public.moon VALUES (73, 'Mimas', 'Smallest and heavily cratered moon of Saturn', false, false, 198, 1, 0, 0.063, 6);
INSERT INTO public.moon VALUES (74, 'Nereid', 'Irregular and distant moon of Neptune', false, false, 170, 360, 0, 0.0315, 10);
INSERT INTO public.moon VALUES (75, 'Oberon Sample', 'Second-largest moon of Uranus with dark terrain', false, false, 761, 13, 0, 0.346, 12);
INSERT INTO public.moon VALUES (76, 'Callirrhoe', 'Irregular moon of Jupiter with retrograde orbit', false, false, 9, 758, 0, 0.0071, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun with extreme temperature variations', false, false, 0, 88, 0, 3.7, 11);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun with a thick atmosphere', false, false, 0, 225, 92000, 8.87, 11);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet with diverse ecosystems', true, false, 1, 365, 101325, 9.81, 11);
INSERT INTO public.planet VALUES (4, 'Mars', 'The Red Planet with potential for exploration', false, false, 2, 687, 600, 3.72076, 12);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant with a prominent Great Red Spot', false, true, 79, 4331, 20000, 24.79, 13);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed planet known for its stunning ring system', false, true, 82, 10747, 1400, 10.44, 13);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant tipped on its side with a faint ring system', false, true, 27, 30685, 50, 8.69, 14);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant with a striking blue color', false, true, 14, 60190, 50000, 11.15, 14);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 'Exoplanet similar to Earth in the habitable zone', true, false, 0, 385, 101325, 14.54, 15);
INSERT INTO public.planet VALUES (10, 'Gliese 581d', 'Potentially habitable exoplanet in the Gliese 581 system', true, false, 0, 67, 100000, 9.2, 15);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 'Exoplanet orbiting Proxima Centauri, the closest known star to the Sun', true, false, 0, 11, 100000, 1.5, 16);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 'Exoplanet in the habitable zone of the ultracool dwarf star TRAPPIST-1', true, false, 0, 4, 800, 0.693, 17);
INSERT INTO public.planet VALUES (13, 'HD 40307g', 'Exoplanet in the habitable zone of the star HD 40307', true, false, 0, 198, 20000, 1.89, 18);
INSERT INTO public.planet VALUES (14, 'PSR B1257+12 C', 'Exoplanet orbiting a pulsar in the PSR B1257+12 system', false, false, 0, 67, 0, 0.21, 19);
INSERT INTO public.planet VALUES (15, 'Tau Ceti e', 'Exoplanet orbiting the nearby Sun-like star Tau Ceti', true, false, 0, 168, 10500, 1.78, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, 'Sun', 'Our solar system''s central star', false, false, 5778, 1, 695700, 4.6, 12, 1);
INSERT INTO public.star VALUES (12, 'Proxima Centauri', 'Red dwarf star in the Alpha Centauri system', false, true, 3042, 0, 167685, 4.85, 11, 5);
INSERT INTO public.star VALUES (13, 'Betelgeuse', 'Red supergiant star in Orion constellation', true, false, 3600, 100000, 1183000, 8.6, 12, 3);
INSERT INTO public.star VALUES (14, 'Sirius', 'Brightest star in Earth''s night sky', false, false, 9940, 24, 17000000, 0.2, 12, 1);
INSERT INTO public.star VALUES (15, 'Alpha Centauri A', 'Main star in the Alpha Centauri system', false, false, 5790, 1, 6944000000, 4.37, 11, 1);
INSERT INTO public.star VALUES (16, 'VY Canis Majoris', 'Red hypergiant star in Canis Major constellation', true, false, 3490, 450000, 142000000, 0.4, 13, 2);
INSERT INTO public.star VALUES (17, 'Polaris', 'North Star in the Ursa Minor constellation', false, false, 5820, 50, 46.2, 70, 12, 1);
INSERT INTO public.star VALUES (18, 'Aldebaran', 'Red giant star in Taurus constellation', false, false, 3910, 425, 4450000000, 1.2, 12, 3);
INSERT INTO public.star VALUES (19, 'Rigel', 'Brightest star in Orion constellation', false, false, 12100, 120000, 78.9, 10, 13, 1);
INSERT INTO public.star VALUES (20, 'Bellatrix', 'Blue giant star in Orion constellation', false, false, 22000, 30000, 6.7, 25, 20, 1);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'Main Sequence', 'Stars that are currently burning hydrogen', 'Medium', 'G2V', 'Average');
INSERT INTO public.star_type VALUES (2, 'Red Giant', 'Stars in later stages of evolution', 'Large', 'M0III', 'Giant');
INSERT INTO public.star_type VALUES (3, 'White Dwarf', 'Compact remnants of lower-mass stars', 'Small', 'DA', 'Dwarf');
INSERT INTO public.star_type VALUES (4, 'Red Dwarf', 'Cool and faint stars with long lifetimes', 'Small', 'M4V', 'Dwarf');
INSERT INTO public.star_type VALUES (5, 'Blue Giant', 'Massive and hot stars', 'Large', 'B0Ia', 'Giant');
INSERT INTO public.star_type VALUES (6, 'Supergiant', 'Extremely massive and luminous stars', 'Very Large', 'F0Ia', 'Giant');
INSERT INTO public.star_type VALUES (7, 'Subdwarf', 'Lower-luminosity stars', 'Small', 'sdM', 'Dwarf');
INSERT INTO public.star_type VALUES (8, 'Protostar', 'Early stage of star formation', 'Variable', 'M', 'Variable');
INSERT INTO public.star_type VALUES (9, 'Wolf-Rayet', 'Massive stars with strong stellar winds', 'Large', 'WC', 'Giant');
INSERT INTO public.star_type VALUES (10, 'Carbon Star', 'Cool stars with an excess of carbon', 'Variable', 'C', 'Variable');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 76, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 10, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: galaxy galaxy_galaxy_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_fk FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_fk FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- PostgreSQL database dump complete
--