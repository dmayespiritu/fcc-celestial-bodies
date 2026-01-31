--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: deity; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.deity (
    deity_id integer NOT NULL,
    name character varying(20),
    energy_number integer NOT NULL,
    year integer NOT NULL,
    moon_phase character varying(40)
);


ALTER TABLE public.deity OWNER TO freecodecamp;

--
-- Name: deity_deity_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.deity_deity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deity_deity_id_seq OWNER TO freecodecamp;

--
-- Name: deity_deity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.deity_deity_id_seq OWNED BY public.deity.deity_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    type text,
    energy text,
    is_awakened boolean,
    is_aligned boolean,
    vibration_level integer NOT NULL,
    lucky_number integer NOT NULL,
    "time" numeric(7,3)
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
    name character varying(50),
    phase text,
    compass text,
    spell text NOT NULL,
    star_sign text NOT NULL,
    on_weekday boolean,
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
    name character varying(50),
    sigil character varying(20),
    element character varying(20),
    spell character varying(20),
    witch_habitable boolean NOT NULL,
    moon_ruled boolean NOT NULL,
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
    name character varying(50),
    sigil character varying(20),
    moon_phase character varying(50),
    ritual character varying(50),
    active boolean NOT NULL,
    lunar_blessed boolean NOT NULL,
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
-- Name: deity deity_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deity ALTER COLUMN deity_id SET DEFAULT nextval('public.deity_deity_id_seq'::regclass);


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
-- Data for Name: deity; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.deity VALUES (1, 'Hekate', 333, 120, 'Full Moon');
INSERT INTO public.deity VALUES (2, 'Aphrodite', 888, 140, 'Waxing Moon');
INSERT INTO public.deity VALUES (3, 'Lilith', 666, 110, 'Dark Moon');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Aurora Prime', 'Spiral', 'Light', true, false, 888, 8, 8.200);
INSERT INTO public.galaxy VALUES (2, 'Nyx Hollow', 'Void', 'Shadow', false, false, 333, 3, 3.600);
INSERT INTO public.galaxy VALUES (3, 'Solara Veil', 'Celestial Realm', 'Balance', true, true, 777, 7, 7.200);
INSERT INTO public.galaxy VALUES (4, 'Astryx Core', 'Nebula', 'Chaos', true, false, 555, 5, 5.500);
INSERT INTO public.galaxy VALUES (5, 'Luminara Drift', 'Spiral', 'Light', true, true, 999, 9, 9.100);
INSERT INTO public.galaxy VALUES (6, 'Umbra Echo', 'Dark Expanse', 'Shadow', false, true, 444, 4, 4.900);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Blood Moon', 'Full', '12.5', 'Release', 'Scorpio', false, 1);
INSERT INTO public.moon VALUES (2, 'Silver Moon', 'Waxing', '25.0', 'Attraction', 'Taurus', true, 2);
INSERT INTO public.moon VALUES (3, 'Ash Moon', 'Waning', '37.5', 'Banishing', 'Capricorn', false, 3);
INSERT INTO public.moon VALUES (4, 'Witch Moon', 'New', '50.0', 'Intention', 'Pisces', true, 4);
INSERT INTO public.moon VALUES (5, 'Veil Moon', 'Crescent', '62.5', 'Spirit Contact', 'Cancer', false, 5);
INSERT INTO public.moon VALUES (6, 'Bone Moon', 'Full', '75.0', 'Anscestor Honor', 'Virgo', true, 6);
INSERT INTO public.moon VALUES (7, 'Thorn Moon', 'Waning', '87.5', 'Protection', 'Aries', false, 1);
INSERT INTO public.moon VALUES (8, 'Mirror Moon', 'Waxing', '100.0', 'Self-reflect', 'Libra', true, 2);
INSERT INTO public.moon VALUES (9, 'Shadow Moon', 'Eclipse', '112.5', 'Shadow Work', 'Scorpio', false, 3);
INSERT INTO public.moon VALUES (10, 'Dawn Moon', 'New', '125.0', 'New Beginnings', 'Leo', true, 4);
INSERT INTO public.moon VALUES (11, 'Oracle Moon', 'Full', '137.5', 'Divination', 'Acquarius', false, 5);
INSERT INTO public.moon VALUES (12, 'Root Moon', 'Waning', '150.0', 'Grounding', 'Taurus', true, 6);
INSERT INTO public.moon VALUES (13, 'Starless Moon', 'Dark', '162.5', 'Silence Ritual', 'Capricorn', false, 1);
INSERT INTO public.moon VALUES (14, 'Tide Moon', 'Waxing', '175.0', 'Emotional Healing', 'Cancer', true, 2);
INSERT INTO public.moon VALUES (15, 'Ember Moon', 'Full', '187.5', 'Passion', 'Aries', false, 3);
INSERT INTO public.moon VALUES (16, 'Mist Moon', 'Crescent', '200.0', 'Lucid Dreaming', 'Pisces', true, 4);
INSERT INTO public.moon VALUES (17, 'Crown Moon', 'Full', '212.5', 'Higher Wisdom', 'Sagittarius', false, 5);
INSERT INTO public.moon VALUES (18, 'Hollow Moon', 'Waning', '225.0', 'Release', 'Virgo', true, 6);
INSERT INTO public.moon VALUES (19, 'Night Moon', 'New', '237.4', 'Rest and Renewal', 'Acquarius', false, 1);
INSERT INTO public.moon VALUES (20, 'Frost Moon', 'Full', '250.0', 'Boundary Setting', 'Gemini', true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury Cleanse', 'Water', 'Cleansing', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus Potion', 'Fire', 'Attraction', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth Healing', 'Air', 'Protection', true, false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars Curse', 'Fire', 'Binding', false, true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter Power', 'Water', 'Manifestation', true, false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn Light', 'Fire', 'Divination', false, true, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus Renewal', 'Air', 'Cleansing', true, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune Glow', 'Fire', 'Hexing', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto Energy', 'Earth', 'Healing', true, false, 4);
INSERT INTO public.planet VALUES (10, 'Quars', 'Quars Love', 'Water', 'Love', false, true, 2);
INSERT INTO public.planet VALUES (11, 'Ruby', 'Ruby Rise', 'Fire', 'Strength', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Wintra', 'Wintra Reflect', 'Air', 'Reflect', false, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solara', 'Sola Protection', 'Veil Moon', 'Protection and Cleanse', true, true, 1);
INSERT INTO public.star VALUES (2, 'Nyxflare', 'Nyx War', 'Blood Moon', 'Defense and Protect', true, false, 2);
INSERT INTO public.star VALUES (3, 'Aurelion', 'Aure Light', 'Oracle Moon', 'Manifestation', false, true, 3);
INSERT INTO public.star VALUES (4, 'Vortexa', 'Vorta Divination', 'Hollow Moon', 'Divination', false, true, 4);
INSERT INTO public.star VALUES (5, 'Lumis', 'Lumi Rest', 'Night Moon', 'Release', true, false, 5);
INSERT INTO public.star VALUES (6, 'Eclipsa', 'Eclipsa Rebirth', 'Crown Moon', 'Attraction', false, true, 6);


--
-- Name: deity_deity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.deity_deity_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


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
-- Name: deity deity_moon_phase_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deity
    ADD CONSTRAINT deity_moon_phase_key UNIQUE (moon_phase);


--
-- Name: deity deity_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deity
    ADD CONSTRAINT deity_pkey PRIMARY KEY (deity_id);


--
-- Name: galaxy galaxy_lucky_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_lucky_number_key UNIQUE (lucky_number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_vibration_level_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_vibration_level_key UNIQUE (vibration_level);


--
-- Name: moon moon_compass_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_compass_key UNIQUE (compass);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_sigil_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sigil_key UNIQUE (sigil);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sigil_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sigil_key UNIQUE (sigil);


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

