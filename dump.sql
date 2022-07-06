--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 13.7

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
-- Name: columns; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.columns (
    _id integer NOT NULL,
    "columnName" text,
    "tableId" integer,
    type text DEFAULT 'string'::text NOT NULL
);


ALTER TABLE public.columns OWNER TO admin;

--
-- Name: columns__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.columns__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.columns__id_seq OWNER TO admin;

--
-- Name: columns__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.columns__id_seq OWNED BY public.columns._id;


--
-- Name: p2_anstellungen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_anstellungen (
    _id integer NOT NULL,
    name character varying(255),
    von character varying(255),
    bis character varying(255),
    "j#1_fk" integer
);


ALTER TABLE public.p2_anstellungen OWNER TO admin;

--
-- Name: p2_anstellungen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_anstellungen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_anstellungen__id_seq OWNER TO admin;

--
-- Name: p2_anstellungen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_anstellungen__id_seq OWNED BY public.p2_anstellungen._id;


--
-- Name: p2_einrichtungen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_einrichtungen (
    _id integer NOT NULL,
    name character varying(255),
    adresse character varying(255),
    webadresse character varying(255),
    email character varying(255),
    ort character varying(255),
    plz character varying(255),
    raum character varying(255)
);


ALTER TABLE public.p2_einrichtungen OWNER TO admin;

--
-- Name: p2_einrichtungen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_einrichtungen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_einrichtungen__id_seq OWNER TO admin;

--
-- Name: p2_einrichtungen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_einrichtungen__id_seq OWNED BY public.p2_einrichtungen._id;


--
-- Name: p2_komission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_komission (
    _id integer NOT NULL,
    name character varying(255),
    bezeichnung character varying(255),
    grndung character varying(255),
    auflsung character varying(255),
    "j#1_fk" integer,
    "j#10_fk" integer
);


ALTER TABLE public.p2_komission OWNER TO admin;

--
-- Name: p2_komission__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_komission__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_komission__id_seq OWNER TO admin;

--
-- Name: p2_komission__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_komission__id_seq OWNED BY public.p2_komission._id;


--
-- Name: p2_komissionsmitgliedschaften; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_komissionsmitgliedschaften (
    _id integer NOT NULL,
    name character varying(255),
    von character varying(255),
    bis character varying(255),
    rolle character varying(255),
    "j#1_fk" integer,
    "j#5_fk" integer
);


ALTER TABLE public.p2_komissionsmitgliedschaften OWNER TO admin;

--
-- Name: p2_komissionsmitgliedschaften__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_komissionsmitgliedschaften__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_komissionsmitgliedschaften__id_seq OWNER TO admin;

--
-- Name: p2_komissionsmitgliedschaften__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_komissionsmitgliedschaften__id_seq OWNED BY public.p2_komissionsmitgliedschaften._id;


--
-- Name: p2_new; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_new (
    _id integer NOT NULL,
    name character varying(255),
    nachname character varying(255),
    vorname character varying(255),
    titel character varying(255),
    email character varying(255),
    "j#1_fk" integer,
    "j#7_fk" integer,
    "j#9_fk" integer,
    "j#12_fk" integer,
    "j#13_fk" integer,
    "j#14_fk" integer
);


ALTER TABLE public.p2_new OWNER TO admin;

--
-- Name: p2_new__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_new__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_new__id_seq OWNER TO admin;

--
-- Name: p2_new__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_new__id_seq OWNED BY public.p2_new._id;


--
-- Name: p2_personaldetails; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p2_personaldetails (
    _id integer NOT NULL,
    name character varying(255),
    adresse character varying(255),
    plz character varying(255),
    ort character varying(255)
);


ALTER TABLE public.p2_personaldetails OWNER TO admin;

--
-- Name: p2_personaldetails__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p2_personaldetails__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p2_personaldetails__id_seq OWNER TO admin;

--
-- Name: p2_personaldetails__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p2_personaldetails__id_seq OWNED BY public.p2_personaldetails._id;


--
-- Name: p3_anstellungen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p3_anstellungen (
    _id integer NOT NULL,
    name character varying(255),
    bezeichnung character varying(255),
    von character varying(255),
    bis_anstellung character varying(255),
    "j#1_fk" integer,
    status character varying(255),
    "imm-bescheinigung" character varying(255)
);


ALTER TABLE public.p3_anstellungen OWNER TO admin;

--
-- Name: p3_anstellungen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p3_anstellungen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p3_anstellungen__id_seq OWNER TO admin;

--
-- Name: p3_anstellungen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p3_anstellungen__id_seq OWNED BY public.p3_anstellungen._id;


--
-- Name: p3_einrichtungen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p3_einrichtungen (
    _id integer NOT NULL,
    name character varying(255),
    strae character varying(255),
    plz character varying(255),
    ort character varying(255)
);


ALTER TABLE public.p3_einrichtungen OWNER TO admin;

--
-- Name: p3_einrichtungen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p3_einrichtungen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p3_einrichtungen__id_seq OWNER TO admin;

--
-- Name: p3_einrichtungen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p3_einrichtungen__id_seq OWNED BY public.p3_einrichtungen._id;


--
-- Name: p3_kommissionen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p3_kommissionen (
    _id integer NOT NULL,
    name character varying(255),
    grndung character varying(255),
    auflsung character varying(255)
);


ALTER TABLE public.p3_kommissionen OWNER TO admin;

--
-- Name: p3_kommissionen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p3_kommissionen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p3_kommissionen__id_seq OWNER TO admin;

--
-- Name: p3_kommissionen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p3_kommissionen__id_seq OWNED BY public.p3_kommissionen._id;


--
-- Name: p3_kommissionsmitgliedschaften; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p3_kommissionsmitgliedschaften (
    _id integer NOT NULL,
    name character varying(255),
    von character varying(255),
    bis character varying(255),
    rolle character varying(255),
    "j#1_fk" integer,
    "j#17_fk" integer
);


ALTER TABLE public.p3_kommissionsmitgliedschaften OWNER TO admin;

--
-- Name: p3_kommissionsmitgliedschaften__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p3_kommissionsmitgliedschaften__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p3_kommissionsmitgliedschaften__id_seq OWNER TO admin;

--
-- Name: p3_kommissionsmitgliedschaften__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p3_kommissionsmitgliedschaften__id_seq OWNED BY public.p3_kommissionsmitgliedschaften._id;


--
-- Name: p3_personen; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p3_personen (
    _id integer NOT NULL,
    name character varying(255),
    titel character varying(255),
    nachname character varying(255),
    vorname character varying(255),
    email character varying(255),
    "j#1_fk" integer,
    "j#19_fk" integer,
    "j#20_fk" integer,
    "j#21_fk" integer,
    "j#22_fk" integer,
    "j#23_fk" integer,
    "j#24_fk" integer,
    "j#25_fk" integer,
    "j#26_fk" integer
);


ALTER TABLE public.p3_personen OWNER TO admin;

--
-- Name: p3_personen__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p3_personen__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p3_personen__id_seq OWNER TO admin;

--
-- Name: p3_personen__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p3_personen__id_seq OWNED BY public.p3_personen._id;


--
-- Name: p4_studierende; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.p4_studierende (
    _id integer NOT NULL,
    name character varying(255),
    vorname character varying(255),
    bewerbungsstatus character varying(255),
    "e-mail" character varying(255),
    abschlussnote character varying(255)
);


ALTER TABLE public.p4_studierende OWNER TO admin;

--
-- Name: p4_studierende__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.p4_studierende__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p4_studierende__id_seq OWNER TO admin;

--
-- Name: p4_studierende__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.p4_studierende__id_seq OWNED BY public.p4_studierende._id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.projects (
    _id integer NOT NULL,
    "projectName" text,
    "ownerId" integer
);


ALTER TABLE public.projects OWNER TO admin;

--
-- Name: projects__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.projects__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects__id_seq OWNER TO admin;

--
-- Name: projects__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.projects__id_seq OWNED BY public.projects._id;


--
-- Name: projecttables; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.projecttables (
    _id integer NOT NULL,
    "projectId" integer,
    "tableId" integer
);


ALTER TABLE public.projecttables OWNER TO admin;

--
-- Name: projecttables__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.projecttables__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projecttables__id_seq OWNER TO admin;

--
-- Name: projecttables__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.projecttables__id_seq OWNED BY public.projecttables._id;


--
-- Name: tables; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.tables (
    _id integer NOT NULL,
    key text NOT NULL,
    name text,
    "ownerId" integer
);


ALTER TABLE public.tables OWNER TO admin;

--
-- Name: tables__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.tables__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tables__id_seq OWNER TO admin;

--
-- Name: tables__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.tables__id_seq OWNED BY public.tables._id;


--
-- Name: userprojects; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.userprojects (
    _id integer NOT NULL,
    "userId" integer,
    "projectId" integer
);


ALTER TABLE public.userprojects OWNER TO admin;

--
-- Name: userprojects__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.userprojects__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprojects__id_seq OWNER TO admin;

--
-- Name: userprojects__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.userprojects__id_seq OWNED BY public.userprojects._id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    _id integer NOT NULL,
    email text,
    password text
);


ALTER TABLE public.users OWNER TO admin;

--
-- Name: users__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users__id_seq OWNER TO admin;

--
-- Name: users__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users__id_seq OWNED BY public.users._id;


--
-- Name: view_columns; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.view_columns (
    _id integer NOT NULL,
    view_id integer NOT NULL,
    join_id integer,
    column_id integer NOT NULL,
    function text,
    "userPrimary" integer DEFAULT 0 NOT NULL,
    _kind text DEFAULT 'standard'::text NOT NULL,
    "displayName" text,
    editable integer DEFAULT 1,
    editor text,
    formatter text,
    width character varying(32),
    "minWidth" character varying(32),
    "maxWidth" character varying(32),
    "cellClass" character varying(255),
    "headerCellClass" character varying(255),
    "summaryCellClass" character varying(255),
    "summaryFormatter" character varying(255),
    "groupFormatter" character varying(255),
    "colSpan" character varying(255),
    frozen integer,
    resizable integer,
    sortable integer,
    "sortDescendingFirst" integer,
    "renderFormatter" integer DEFAULT 0,
    "editOnClick" integer DEFAULT 0,
    "commitOnOutsideClick" integer DEFAULT 0,
    "onCellKeyDown" character varying(255),
    "onNavigation" character varying(255),
    "headerRenderer" character varying(255)
);


ALTER TABLE public.view_columns OWNER TO admin;

--
-- Name: view_columns__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.view_columns__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.view_columns__id_seq OWNER TO admin;

--
-- Name: view_columns__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.view_columns__id_seq OWNED BY public.view_columns._id;


--
-- Name: view_joins; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.view_joins (
    _id integer NOT NULL,
    view_id integer NOT NULL,
    base_id integer NOT NULL,
    base_type integer NOT NULL,
    "on" text NOT NULL
);


ALTER TABLE public.view_joins OWNER TO admin;

--
-- Name: view_joins__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.view_joins__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.view_joins__id_seq OWNER TO admin;

--
-- Name: view_joins__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.view_joins__id_seq OWNED BY public.view_joins._id;


--
-- Name: views; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.views (
    _id integer NOT NULL,
    name text NOT NULL,
    base_id integer NOT NULL,
    base_type integer NOT NULL,
    user_id integer,
    row_options text NOT NULL
);


ALTER TABLE public.views OWNER TO admin;

--
-- Name: views__id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.views__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.views__id_seq OWNER TO admin;

--
-- Name: views__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.views__id_seq OWNED BY public.views._id;


--
-- Name: columns _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.columns ALTER COLUMN _id SET DEFAULT nextval('public.columns__id_seq'::regclass);


--
-- Name: p2_anstellungen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_anstellungen ALTER COLUMN _id SET DEFAULT nextval('public.p2_anstellungen__id_seq'::regclass);


--
-- Name: p2_einrichtungen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_einrichtungen ALTER COLUMN _id SET DEFAULT nextval('public.p2_einrichtungen__id_seq'::regclass);


--
-- Name: p2_komission _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_komission ALTER COLUMN _id SET DEFAULT nextval('public.p2_komission__id_seq'::regclass);


--
-- Name: p2_komissionsmitgliedschaften _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_komissionsmitgliedschaften ALTER COLUMN _id SET DEFAULT nextval('public.p2_komissionsmitgliedschaften__id_seq'::regclass);


--
-- Name: p2_new _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_new ALTER COLUMN _id SET DEFAULT nextval('public.p2_new__id_seq'::regclass);


--
-- Name: p2_personaldetails _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_personaldetails ALTER COLUMN _id SET DEFAULT nextval('public.p2_personaldetails__id_seq'::regclass);


--
-- Name: p3_anstellungen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_anstellungen ALTER COLUMN _id SET DEFAULT nextval('public.p3_anstellungen__id_seq'::regclass);


--
-- Name: p3_einrichtungen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_einrichtungen ALTER COLUMN _id SET DEFAULT nextval('public.p3_einrichtungen__id_seq'::regclass);


--
-- Name: p3_kommissionen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_kommissionen ALTER COLUMN _id SET DEFAULT nextval('public.p3_kommissionen__id_seq'::regclass);


--
-- Name: p3_kommissionsmitgliedschaften _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_kommissionsmitgliedschaften ALTER COLUMN _id SET DEFAULT nextval('public.p3_kommissionsmitgliedschaften__id_seq'::regclass);


--
-- Name: p3_personen _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_personen ALTER COLUMN _id SET DEFAULT nextval('public.p3_personen__id_seq'::regclass);


--
-- Name: p4_studierende _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p4_studierende ALTER COLUMN _id SET DEFAULT nextval('public.p4_studierende__id_seq'::regclass);


--
-- Name: projects _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projects ALTER COLUMN _id SET DEFAULT nextval('public.projects__id_seq'::regclass);


--
-- Name: projecttables _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projecttables ALTER COLUMN _id SET DEFAULT nextval('public.projecttables__id_seq'::regclass);


--
-- Name: tables _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tables ALTER COLUMN _id SET DEFAULT nextval('public.tables__id_seq'::regclass);


--
-- Name: userprojects _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.userprojects ALTER COLUMN _id SET DEFAULT nextval('public.userprojects__id_seq'::regclass);


--
-- Name: users _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users ALTER COLUMN _id SET DEFAULT nextval('public.users__id_seq'::regclass);


--
-- Name: view_columns _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.view_columns ALTER COLUMN _id SET DEFAULT nextval('public.view_columns__id_seq'::regclass);


--
-- Name: view_joins _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.view_joins ALTER COLUMN _id SET DEFAULT nextval('public.view_joins__id_seq'::regclass);


--
-- Name: views _id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.views ALTER COLUMN _id SET DEFAULT nextval('public.views__id_seq'::regclass);


--
-- Data for Name: columns; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.columns (_id, "columnName", "tableId", type) FROM stdin;
16	_id	4	increments
17	name	4	string
19	nachname	4	string
20	vorname	4	string
21	titel	4	string
22	email	4	string
23	_id	5	increments
24	name	5	string
25	bezeichnung	5	string
26	grndung	5	string
27	auflsung	5	string
28	_id	6	increments
29	name	6	string
30	von	6	string
32	bis	6	string
33	_id	7	increments
34	name	7	string
35	adresse	7	string
36	webadresse	7	string
37	email	7	string
38	ort	7	string
39	plz	7	string
40	raum	7	string
41	_id	8	increments
42	name	8	string
43	von	8	string
44	bis	8	string
45	rolle	8	string
46	j#1_fk	8	integer
47	j#5_fk	8	integer
48	j#1_fk	4	integer
49	j#1_fk	6	integer
50	j#7_fk	4	integer
51	j#1_fk	5	integer
52	j#10_fk	5	integer
53	j#9_fk	4	integer
54	j#12_fk	4	integer
55	_id	9	increments
56	name	9	string
57	adresse	9	string
58	plz	9	string
59	ort	9	string
60	j#13_fk	4	integer
61	j#14_fk	4	integer
62	_id	10	increments
63	name	10	string
64	titel	10	string
65	nachname	10	string
66	vorname	10	string
67	email	10	string
68	_id	11	increments
69	name	11	string
70	bezeichnung	11	string
71	von	11	string
72	bis_anstellung	11	string
73	_id	12	increments
74	name	12	string
75	strae	12	string
76	plz	12	string
77	ort	12	string
78	j#1_fk	11	integer
79	_id	13	increments
80	name	13	string
81	_id	14	increments
82	name	14	string
83	grndung	14	string
84	auflsung	14	string
85	von	13	string
86	bis	13	string
87	rolle	13	string
88	j#1_fk	13	integer
89	j#17_fk	13	integer
90	status	11	string
91	j#1_fk	10	integer
92	j#19_fk	10	integer
93	j#20_fk	10	integer
94	j#21_fk	10	integer
95	j#22_fk	10	integer
96	j#23_fk	10	integer
97	j#24_fk	10	integer
99	j#25_fk	10	integer
100	j#26_fk	10	integer
101	imm-bescheinigung	11	string
102	_id	15	increments
103	name	15	string
104	vorname	15	string
105	bewerbungsstatus	15	string
106	e-mail	15	string
107	abschlussnote	15	string
\.


--
-- Data for Name: p2_anstellungen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_anstellungen (_id, name, von, bis, "j#1_fk") FROM stdin;
1	Geschäftsführer	01.10.2019	\N	1
2	Studentische Hilfskraft (ungeprüft)	01.10.2020	31.10.2020	5
\.


--
-- Data for Name: p2_einrichtungen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_einrichtungen (_id, name, adresse, webadresse, email, ort, plz, raum) FROM stdin;
1	Fakultät Mathematik Informatik	Im Neuenheimer Feld 205	mathinf.uni-heidelberg.de	dekanat@mathinf.uni-heidelberg.de	Heidelberg	69120	1/106
2	Medizinische Fakultät	Theodor-Kutzer-Ufer 1-3	umm.uni-heidelberg.de	@medma.uni-heidelberg.de	Mannheim	68167	\N
3	Prüfungsamt Mathematik	Im Neuenheimer Feld 205	mathinf.uni-heidelberg.de/de/examcreditsmath	pruefungen.mathematik@mathinf.uni-heidelberg.de	Heidelberg	69120	1/104
4	Prüfungsamt Informatik	Im Neuenheimer Feld 205	mathinf.uni-heidelberg.de/de/examcreditscs	sekretariat@informatik.uni-heidelberg.de	Heidelberg	69120	1/308
5	Institut für technische Informatik	Im Neuenheimer Feld 368	ziti.uni-heidelberg.de	web@ziti.uni-heidelberg.de	Heidelberg	69120	\N
6	Mathematisches Institut	Im Neuenheimer Feld 205	mathi.uni-heidelberg.de/	\N	Heidelberg	69210	\N
7	Institut für Angewandte Informatik	Im Neuenheimer Feld 205	mathinf.uni-heidelberg.de/de/ifi	\N	Heidelberg	69120	\N
\.


--
-- Data for Name: p2_komission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_komission (_id, name, bezeichnung, grndung, auflsung, "j#1_fk", "j#10_fk") FROM stdin;
1	Großer Fakultätsrat	kom01	\N	\N	1	1
\.


--
-- Data for Name: p2_komissionsmitgliedschaften; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_komissionsmitgliedschaften (_id, name, von, bis, rolle, "j#1_fk", "j#5_fk") FROM stdin;
1	1	01.10.2019	\N	Geschäftsführer	2	1
\.


--
-- Data for Name: p2_new; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_new (_id, name, nachname, vorname, titel, email, "j#1_fk", "j#7_fk", "j#9_fk", "j#12_fk", "j#13_fk", "j#14_fk") FROM stdin;
3	dk457	Kirchholtes	Raphael	\N	kirchholtes@stud.uni-heidelberg.de	\N	\N	2	\N	\N	\N
2	js001	Schmidt	Jan-Philip	Dr.	jan-philip.schmidt@mathinf.uni-heidelberg.de	1	1	1	1	1	\N
\.


--
-- Data for Name: p2_personaldetails; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p2_personaldetails (_id, name, adresse, plz, ort) FROM stdin;
1	jps0001	\N	\N	\N
2	rki0002	Christophstraße 33	69214	Eppelheim
\.


--
-- Data for Name: p3_anstellungen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p3_anstellungen (_id, name, bezeichnung, von, bis_anstellung, "j#1_fk", status, "imm-bescheinigung") FROM stdin;
3	rk123-03	Wissenschaftliche Hilfskraft (geprüft)	01.03.2021	30.09.2022	1	unterzeichnet	\N
7	js123-01	Geschäftsführer der Fakultät	01.10.2019	\N	1	unterzeichnet	\N
8	mg123-01	Professor	01.10.2005	\N	6	unterzeichnet	\N
9	mg123-02	Geschäftsführender Direktor	01.10.2018		6	unterzeichnet	\N
10	pk123-01	Prüfungsamt	01.10.2010	\N	2	unterzeichnet	\N
4	kf123-01	Wissenschaftliche Hilfskraft (ungeprüft)	01.10.2021	30.09.2022	1	unterzeichnet	\N
2	rk123-02	Wissenschaftliche Hilfskraft (geprüft)	01.11.2020	31.03.2021	4	unterzeichnet	
1	rk123-00	Wissenschaftliche Hilfskraft (ungeprüft)	01.10.2020	31.10.2020	4	unterzeichnet	
5	nf123-01	Wissenschaftliche Hilfskraft (ungeprüft)	01.10.2021	30.09.2022	1	unterzeichnet	fehlt
6	ls123-01	Wissenschaftliche Hilfskraft (ungeprüft)	01.10.2021	30.09.2022	1	nicht unterzeichnet	fehlt
\.


--
-- Data for Name: p3_einrichtungen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p3_einrichtungen (_id, name, strae, plz, ort) FROM stdin;
1	Fakultät Mathematik Informatik	Im Neuenheimer Feld 205	69120	Heidelberg
2	Prüfungsamt Mathematik	Im Neuenheimer Feld 205	69120	Heidelberg
3	Prüfungsamt Informatik	Im Neuenheimer Feld 205	69120	Heidelberg
4	Institut für technische Informatik	Im Neuenheimer Feld 368	69120	Heidelberg
5	Mathematisches Institut	Im Neuenheimer Feld 205	69120	Heidelberg
6	Institut für Informatik	Im Neuenheimer Feld 205	69120	Heidelberg
\.


--
-- Data for Name: p3_kommissionen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p3_kommissionen (_id, name, grndung, auflsung) FROM stdin;
1	Großer Fakultätsrat	\N	\N
4	AG: Dekanat	\N	\N
3	AG: Datenbank	01.09.2021	\N
2	AG: Homepage	01.03.2021	01.09.2021
\.


--
-- Data for Name: p3_kommissionsmitgliedschaften; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p3_kommissionsmitgliedschaften (_id, name, von, bis, rolle, "j#1_fk", "j#17_fk") FROM stdin;
9	000009	01.09.2021	01.10.2022	Projektleitung	4	\N
8	000008	01.09.2021	01.10.2022	Projektleitung	3	\N
1	000001	01.10.2021	31.03.2021	Vorstand	1	1
2	000002	01.10.2021	31.03.2021	Vorsitz	1	\N
10	000010	01.04.2022	30.09.2022	Redaktion	2	\N
3	000003	01.10.2021	31.03.2021	Mitglied	1	\N
4	000004	01.04.2022	30.09.2022	Vorstand	1	\N
5	000005	01.04.2022	30.09.2022	Vorsitz	1	\N
6	000006	01.04.2022	30.09.2022	Mitglied	1	\N
7	000007	01.09.2021	01.10.2022	EntwicklerIn	3	\N
\.


--
-- Data for Name: p3_personen; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p3_personen (_id, name, titel, nachname, vorname, email, "j#1_fk", "j#19_fk", "j#20_fk", "j#21_fk", "j#22_fk", "j#23_fk", "j#24_fk", "j#25_fk", "j#26_fk") FROM stdin;
14	lz123	\N	Zuber	Leonie	zuber@stud.uni-heidelberg.de	\N	\N	\N	\N	\N	10	\N	\N	\N
1	js123	Dr.	Schmidt	Jan-Philip	jan-philip.schmidt@uni-heidelberg.de	7	4	\N	\N	\N	4	\N	\N	\N
9	pk123	\N	Kiesel	Petra	pruefungen.mathematik@mathinf.uni-heidelberg.de	10	\N	\N	\N	\N	\N	\N	\N	\N
2	cs123	Dr.	Schnörr	Christoph	schnoerr@math.uni-heidelberg.de	\N	5	\N	\N	\N	5	\N	\N	\N
3	aa123	Dr.	Andrzejak	Artur	artur.andrzejak@informatik.uni-heidelberg.de	\N	8	\N	\N	\N	8	\N	\N	\N
4	mb123	Dr.	Banagl	Markus	banagl@mathi.uni-heidelberg.de	\N	6	\N	\N	\N	6	\N	\N	\N
7	jj123	Dr.	Johannes	Jan	johannes@mathi.uni-heidelberg.de	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	hf123	Dr.	Fröning	Holger	holger.froening@ziti.uni-heidelberg.de	\N	3	\N	\N	\N	3	\N	\N	\N
6	ov123	Dr.	Venjakob	Otmar	venjakob@mathi.uni-heidelberg.de	\N	6	\N	\N	\N	6	\N	\N	\N
8	mg123	Dr.	Gertz	Michael	gertz@informatik.uni-heidelberg.de	8	6	\N	\N	\N	6	\N	\N	\N
10	nf123	\N	Funk	Nikita-Nick	funk@stud.uni-heidelberg.de	5	7	\N	\N	\N	7	\N	\N	\N
11	ls123	\N	Schulte	Luis	schulte@stud.uni-heidelberg.de	6	7	\N	\N	\N	7	\N	\N	\N
12	kf123	\N	Folger	Killian	folger@stud.uni-heidelberg.de	4	7	\N	\N	\N	7	\N	\N	\N
13	rk123	B.Sc.	Kirchholtes	Raphael	kirchholtes@stud.uni-heidelberg.de	3	7	\N	\N	\N	7	\N	\N	\N
15	jf123	Dr.	Fuhrmann	Jan	fuhrmann@mathi.uni-heidelberg.de	\N	9	\N	\N	\N	9	\N	\N	\N
\.


--
-- Data for Name: p4_studierende; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.p4_studierende (_id, name, vorname, bewerbungsstatus, "e-mail", abschlussnote) FROM stdin;
1	\N	\N	\N	\N	\N
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.projects (_id, "projectName", "ownerId") FROM stdin;
3	Personaldatenbank	1
2	Test-DB	1
4	new	1
\.


--
-- Data for Name: projecttables; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.projecttables (_id, "projectId", "tableId") FROM stdin;
4	2	4
5	2	5
6	2	6
7	2	7
8	2	8
9	2	9
10	3	10
11	3	11
12	3	12
13	3	13
14	3	14
15	4	15
\.


--
-- Data for Name: tables; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.tables (_id, key, name, "ownerId") FROM stdin;
4	p2_new	new	1
5	p2_komission	komission	1
6	p2_anstellungen	anstellungen	1
7	p2_einrichtungen	einrichtungen	1
8	p2_komissionsmitgliedschaften	komissionsmitgliedschaften	1
9	p2_personaldetails	personaldetails	1
10	p3_personen	personen	1
11	p3_anstellungen	anstellungen	1
12	p3_einrichtungen	einrichtungen	1
13	p3_kommissionsmitgliedschaften	kommissionsmitgliedschaften	1
14	p3_kommissionen	kommissionen	1
15	p4_studierende	studierende	1
\.


--
-- Data for Name: userprojects; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.userprojects (_id, "userId", "projectId") FROM stdin;
2	1	2
3	1	3
4	1	4
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (_id, email, password) FROM stdin;
1	admin@dekanat.de	$argon2i$v=19$m=4096,t=3,p=1$vzOdnV+KUtQG3va/nlOOxg$vzo1JP16rQKYmXzQgYT9VjUXUXPA6cWHHAvXutrRHtM
\.


--
-- Data for Name: view_columns; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.view_columns (_id, view_id, join_id, column_id, function, "userPrimary", _kind, "displayName", editable, editor, formatter, width, "minWidth", "maxWidth", "cellClass", "headerCellClass", "summaryCellClass", "summaryFormatter", "groupFormatter", "colSpan", frozen, resizable, sortable, "sortDescendingFirst", "renderFormatter", "editOnClick", "commitOnOutsideClick", "onCellKeyDown", "onNavigation", "headerRenderer") FROM stdin;
1	1	\N	1	\N	0	standard	ID	1	number	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
2	1	\N	2	\N	1	standard	Nachname	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
3	1	\N	3	\N	0	standard	Vorname	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
4	1	\N	5	\N	0	standard	Stellung	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
5	1	\N	4	\N	0	standard	Titel	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
6	2	\N	2	\N	1	standard	Nachname	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
7	2	\N	1	\N	0	standard	ID	1	number	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
8	2	\N	3	\N	0	standard	Vorname	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
9	2	\N	4	\N	0	standard	Stellung	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
10	2	\N	5	\N	0	standard	Titel	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
12	3	\N	7	\N	1	standard	Name	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
11	3	\N	6	\N	0	standard	ID	1	number	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
13	3	\N	8	\N	0	standard	Kürzel	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
14	3	\N	9	\N	0	standard	Typ	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
15	3	\N	10	\N	0	standard	FK/Math/Inf	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
16	4	\N	11	\N	0	standard	ID	1	number	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
17	4	\N	13	\N	0	standard	Kürzel	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
18	4	\N	12	\N	1	standard	Name	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
19	4	\N	14	\N	0	standard	Typ	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
20	4	\N	15	\N	0	standard	FK/Math/Inf	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
21	5	\N	12	\N	1	standard	Rolle	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
22	5	\N	11	\N	0	standard	ID	1	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
23	6	\N	21	\N	1	standard	Rolle	1	string	string	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
24	6	\N	22	\N	0	standard	ID	1	number	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
25	5	1	2	\N	0	link	Nachname	0	\N	linkColumn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
26	5	2	12	\N	0	link	Organ	0	\N	linkColumn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
29	7	\N	16	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
30	7	\N	17	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
32	8	\N	29	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
38	7	\N	19	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
40	8	\N	38	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
41	7	\N	20	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
42	8	\N	41	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
44	7	\N	21	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
45	8	\N	44	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
47	7	\N	22	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
49	8	\N	47	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
50	10	\N	24	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
51	10	\N	23	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
52	11	\N	51	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
54	10	\N	25	\N	0	standard	Bezeichnung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
459	48	\N	284	\N	0	lookup	Bezeichnung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
31	8	\N	30	\N	1	standard	Uni-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
56	10	\N	26	\N	0	standard	Gründung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
57	11	\N	56	\N	0	standard	Gründung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
58	10	\N	27	\N	0	standard	Auflösung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
59	11	\N	58	\N	0	standard	Auflösung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
61	12	\N	28	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
60	12	\N	29	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
63	13	\N	61	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
64	12	\N	30	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
65	13	\N	64	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
458	48	\N	228	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
68	12	\N	32	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
69	13	\N	68	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
70	14	\N	34	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
71	14	\N	33	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
72	15	\N	71	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
73	15	\N	70	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
74	14	\N	35	\N	0	standard	Adresse	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
465	48	\N	357	\N	0	lookup	Rolle	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
76	14	\N	36	\N	0	standard	Webadresse	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
77	15	\N	76	\N	0	standard	Webadresse	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
78	14	\N	37	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
62	13	\N	60	\N	1	standard	Bezeichnung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
471	49	\N	290	\N	0	lookup	bis (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
55	11	\N	54	\N	0	standard	ID (intern)	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
53	11	\N	50	\N	1	standard	Kommission	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
475	49	\N	230	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
489	50	\N	102	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
492	51	\N	490	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
493	50	\N	104	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
494	51	\N	493	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
495	50	\N	105	\N	0	standard	Bewerbungsstatus	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
79	15	\N	78	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
75	15	\N	74	\N	0	standard	Straße	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
80	14	\N	38	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
81	15	\N	80	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
82	14	\N	39	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
83	15	\N	82	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
84	14	\N	40	\N	0	standard	Raum	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
85	15	\N	84	\N	0	standard	Raum	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
86	16	\N	42	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
87	16	\N	41	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
89	17	\N	87	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
88	17	\N	86	\N	1	standard	Mitglieds-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
90	16	\N	43	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
91	17	\N	90	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
92	16	\N	44	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
93	17	\N	92	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
94	16	\N	45	\N	0	standard	Rolle	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
95	17	\N	94	\N	0	standard	Rolle	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
96	16	4	30	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
97	17	\N	96	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
98	16	5	50	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
99	17	\N	98	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
109	12	7	70	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
110	13	\N	109	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
114	12	7	74	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
115	13	\N	114	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
116	12	7	82	\N	0	lookup	PLZ	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
117	13	\N	116	\N	0	lookup	PLZ	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
118	12	7	80	\N	0	lookup	Ort	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
119	13	\N	118	\N	0	lookup	Ort	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
126	7	8	86	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
127	8	\N	126	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
129	7	8	90	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
130	8	\N	129	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
132	10	9	86	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
133	11	\N	132	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
134	10	10	50	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
135	11	\N	134	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
136	7	8	92	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
137	8	\N	136	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
139	7	11	60	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
140	8	\N	139	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
154	19	\N	55	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
155	19	\N	56	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
156	20	\N	154	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
158	19	\N	57	\N	0	standard	Adresse	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
159	20	\N	158	\N	0	standard	Adresse	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
160	19	\N	58	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
161	20	\N	160	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
162	19	\N	59	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
163	20	\N	162	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
157	20	\N	155	\N	1	standard	Personal-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
164	7	11	109	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
165	8	\N	164	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
168	21	\N	44	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
169	21	\N	30	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
170	21	\N	29	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
171	21	\N	41	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
172	21	\N	38	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
173	21	\N	47	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
174	21	\N	139	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
175	21	\N	136	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
176	21	\N	126	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
177	21	\N	129	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
178	21	\N	164	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
179	22	\N	29	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
180	22	\N	30	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
181	22	\N	44	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
182	22	\N	129	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
183	22	\N	47	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
184	22	\N	126	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
185	22	\N	41	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
186	22	\N	38	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
187	22	\N	136	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
188	22	\N	139	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
189	22	\N	164	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
449	25	15	250	\N	0	lookup	PLZ	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
450	26	\N	449	\N	0	lookup	PLZ	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
460	48	\N	282	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
476	49	\N	232	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
480	49	\N	349	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
490	50	\N	103	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
491	51	\N	489	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
190	7	13	86	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
197	22	\N	194	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
461	48	\N	232	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
477	49	\N	286	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
479	49	\N	373	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
496	51	\N	495	\N	0	standard	Bewerbungsstatus	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
497	50	\N	106	\N	0	standard	E-Mail	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
498	51	\N	497	\N	0	standard	E-Mail	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
499	50	\N	107	\N	0	standard	Abschlussnote	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
500	51	\N	499	\N	0	standard	Abschlussnote	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
191	8	\N	190	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
453	48	\N	222	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
462	48	\N	286	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
463	48	\N	288	\N	0	lookup	von (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
464	48	\N	349	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
483	25	\N	101	\N	0	standard	Imm-Bescheinigung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
484	26	\N	483	\N	0	standard	Imm-Bescheinigung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
192	21	\N	190	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
454	48	\N	223	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
469	49	\N	228	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
468	49	\N	284	\N	0	lookup	Bezeichnung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
478	49	\N	288	\N	0	lookup	von (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
485	23	18	483	\N	0	lookup	Imm-Bescheinigung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
193	22	\N	190	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
209	8	\N	206	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
218	7	14	158	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
455	48	\N	230	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
466	48	\N	365	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
470	49	\N	226	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
474	49	\N	222	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
482	49	\N	357	\N	0	lookup	Rolle	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
486	49	\N	485	\N	0	lookup	Imm-Bescheinigung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
194	7	13	90	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
196	21	\N	194	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
457	48	\N	226	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
467	48	\N	373	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
472	49	\N	223	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
487	24	\N	485	\N	0	lookup	Imm-Bescheinigung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
195	8	\N	194	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
206	7	13	98	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
207	22	\N	206	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
208	21	\N	206	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
210	7	13	92	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
211	8	\N	210	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
212	22	\N	210	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
213	21	\N	210	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
214	7	14	155	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
215	8	\N	214	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
216	22	\N	214	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
217	21	\N	214	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
219	8	\N	218	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
220	22	\N	218	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
221	21	\N	218	\N	0	lookup	Adresse	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
222	23	\N	63	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
223	23	\N	62	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
225	24	\N	223	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
224	24	\N	222	\N	1	standard	Uni-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
226	23	\N	64	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
227	24	\N	226	\N	0	standard	Titel	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
228	23	\N	65	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
229	24	\N	228	\N	0	standard	Nachname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
230	23	\N	66	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
231	24	\N	230	\N	0	standard	Vorname	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
232	23	\N	67	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
233	24	\N	232	\N	0	standard	Email	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
234	25	\N	68	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
235	25	\N	69	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
236	26	\N	234	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
237	26	\N	235	\N	1	standard	Vertrags-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
238	25	\N	70	\N	0	standard	Bezeichnung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
239	26	\N	238	\N	0	standard	Bezeichnung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
240	25	\N	71	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
268	31	\N	84	\N	0	standard	Auflösung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
241	26	\N	240	\N	0	standard	von (Anstellung)	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
242	25	\N	72	\N	0	standard	bis (Anstellung)	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
243	26	\N	242	\N	0	standard	bis (Anstellung)	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
244	27	\N	73	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
245	27	\N	74	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
247	28	\N	244	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
246	28	\N	245	\N	1	standard	Einrichtung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
248	27	\N	75	\N	0	standard	Straße	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
249	28	\N	248	\N	0	standard	Straße	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
250	27	\N	76	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
251	28	\N	250	\N	0	standard	PLZ	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
252	27	\N	77	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
253	28	\N	252	\N	0	standard	Ort	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
254	25	15	245	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
255	26	\N	254	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
256	25	15	248	\N	0	lookup	Straße	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
257	26	\N	256	\N	0	lookup	Straße	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
258	29	\N	79	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
259	29	\N	80	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
260	30	\N	258	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
262	31	\N	82	\N	1	standard	Name	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
263	31	\N	81	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
265	32	\N	263	\N	0	standard	ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
264	32	\N	262	\N	1	standard	Kommission	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
266	31	\N	83	\N	0	standard	Gründung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
267	32	\N	266	\N	0	standard	Gründung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
269	32	\N	268	\N	0	standard	Auflösung	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
261	30	\N	259	\N	1	standard	Mitglieds-ID	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
270	29	\N	85	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
271	30	\N	270	\N	0	standard	von	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
272	29	\N	86	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
273	30	\N	272	\N	0	standard	bis	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
274	29	\N	87	\N	0	standard	Rolle	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
275	30	\N	274	\N	0	standard	Rolle	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
276	29	16	262	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
277	30	\N	276	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
280	25	\N	90	\N	0	standard	Status	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
281	26	\N	280	\N	0	standard	Vertragsstatus	1	string	standard	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	\N	\N	\N
282	23	18	235	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
284	23	18	238	\N	0	lookup	Bezeichnung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
285	24	\N	284	\N	0	lookup	Bezeichnung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
286	23	18	254	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
287	24	\N	286	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
289	24	\N	288	\N	0	lookup	von	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
290	23	18	242	\N	0	lookup	bis (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
291	24	\N	290	\N	0	lookup	bis (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
283	24	\N	282	\N	0	link	Vertrags-ID	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
456	48	\N	290	\N	0	lookup	bis (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
473	49	\N	282	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
481	49	\N	365	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
488	48	\N	485	\N	0	lookup	Imm-Bescheinigung	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
288	23	18	240	\N	0	lookup	von (Anstellung)	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
349	23	23	259	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
350	24	\N	349	\N	0	link	Name	1	string	link	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
357	23	23	274	\N	0	lookup	Rolle	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
359	24	\N	357	\N	0	lookup	Rolle	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
365	23	23	276	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
368	24	\N	365	\N	0	lookup	Name	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
373	23	23	272	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
376	24	\N	373	\N	0	lookup	bis	0	string	lookup	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	\N	\N	\N
\.


--
-- Data for Name: view_joins; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.view_joins (_id, view_id, base_id, base_type, "on") FROM stdin;
2	5	3	1	[14,"=",11]
3	1	3	1	[15,"=",11]
4	16	7	1	[46,"=",29]
13	7	16	1	[60,"=",87]
20	23	31	1	[93,"=",263]
21	23	25	1	[94,"=",234]
25	23	25	1	[99,"=",234]
5	16	10	1	[47,"=",51]
14	7	19	1	[61,"=",154]
22	23	29	1	[95,"=",258]
26	23	25	1	[100,"=",234]
6	7	12	1	[48,"=",61]
15	25	27	1	[78,"=",244]
23	23	29	1	[96,"=",258]
7	12	14	1	[49,"=",71]
16	29	31	1	[88,"=",263]
24	23	29	1	[97,"=",258]
8	7	16	1	[50,"=",87]
17	29	23	1	[89,"=",223]
9	10	16	1	[51,"=",87]
18	23	25	1	[91,"=",234]
10	10	10	1	[52,"=",51]
19	23	29	1	[92,"=",258]
11	7	12	1	[53,"=",61]
12	7	14	1	[54,"=",71]
1	5	1	1	[13,"=",1]
\.


--
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.views (_id, name, base_id, base_type, user_id, row_options) FROM stdin;
1	Personen	1	0	\N	{"conditions":[],"groupColumns":[],"sortColumns":[]}
2	Standard	1	1	\N	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":1,"joinId":0},"order":"asc"}]}
3	Organe	2	0	\N	{"conditions":[],"groupColumns":[],"sortColumns":[]}
4	Standard	3	1	\N	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":6,"joinId":0},"order":"asc"}]}
5	Rollen	3	0	\N	{"conditions":[],"groupColumns":[],"sortColumns":[]}
6	Standard	5	1	\N	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":11,"joinId":0},"order":"asc"}]}
8	Standard	7	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":29,"joinId":null},"order":"asc"}]}
7	Personen	4	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
11	Standard	10	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":51,"joinId":null},"order":"asc"}]}
12	Anstellungen	6	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
13	Standard	12	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":61,"joinId":null},"order":"asc"}]}
14	Einrichtungen	7	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
15	Standard	14	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":71,"joinId":null},"order":"asc"}]}
17	Standard	16	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":87,"joinId":null},"order":"asc"}]}
10	Kommission	5	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
16	Kommissionsmitgliedschaften	8	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
19	Personaldetails	9	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
20	Standard	19	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":154,"joinId":null},"order":"asc"}]}
21	Hiwis	7	1	1	{"conditions":[{"left":{"parentColumnId":139,"joinId":null},"operator":"LIKE","right":"%Hilfskraf%"}],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":29,"joinId":null},"order":"asc"}]}
22	Fakultätsvorstand	7	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":29,"joinId":null},"order":"asc"}]}
23	Personen	10	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
24	Standard	23	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":223,"joinId":null},"order":"asc"}]}
25	Anstellungen	11	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
26	Standard	25	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":234,"joinId":null},"order":"asc"}]}
27	Einrichtungen	12	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
28	Standard	27	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":244,"joinId":null},"order":"asc"}]}
29	Kommissionsmitgliedschaften	13	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
30	Standard	29	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":258,"joinId":null},"order":"asc"}]}
31	Kommissionen	14	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
32	Standard	31	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":263,"joinId":null},"order":"asc"}]}
49	Großer Fakultätsrat	23	1	1	{"conditions":[{"left":{"parentColumnId":365,"joinId":null},"operator":"LIKE","right":"%%%%%Großer Fakultätsra%%%%%"}],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":223,"joinId":null},"order":"asc"}]}
48	Hiwi	23	1	1	{"conditions":[{"left":{"parentColumnId":485,"joinId":null},"operator":"=","right":"fehlt"}],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":223,"joinId":null},"order":"asc"}]}
50	Studierende	15	0	1	{"conditions":[],"groupColumns":[],"sortColumns":[]}
51	Standard	50	1	1	{"conditions":[],"groupColumns":[],"sortColumns":[{"column":{"parentColumnId":489,"joinId":null},"order":"asc"}]}
\.


--
-- Name: columns__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.columns__id_seq', 107, true);


--
-- Name: p2_anstellungen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_anstellungen__id_seq', 2, true);


--
-- Name: p2_einrichtungen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_einrichtungen__id_seq', 7, true);


--
-- Name: p2_komission__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_komission__id_seq', 1, true);


--
-- Name: p2_komissionsmitgliedschaften__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_komissionsmitgliedschaften__id_seq', 1, true);


--
-- Name: p2_new__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_new__id_seq', 3, true);


--
-- Name: p2_personaldetails__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p2_personaldetails__id_seq', 2, true);


--
-- Name: p3_anstellungen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p3_anstellungen__id_seq', 10, true);


--
-- Name: p3_einrichtungen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p3_einrichtungen__id_seq', 6, true);


--
-- Name: p3_kommissionen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p3_kommissionen__id_seq', 4, true);


--
-- Name: p3_kommissionsmitgliedschaften__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p3_kommissionsmitgliedschaften__id_seq', 10, true);


--
-- Name: p3_personen__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p3_personen__id_seq', 15, true);


--
-- Name: p4_studierende__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.p4_studierende__id_seq', 1, true);


--
-- Name: projects__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.projects__id_seq', 4, true);


--
-- Name: projecttables__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.projecttables__id_seq', 15, true);


--
-- Name: tables__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.tables__id_seq', 15, true);


--
-- Name: userprojects__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.userprojects__id_seq', 4, true);


--
-- Name: users__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users__id_seq', 1, true);


--
-- Name: view_columns__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.view_columns__id_seq', 500, true);


--
-- Name: view_joins__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.view_joins__id_seq', 26, true);


--
-- Name: views__id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.views__id_seq', 51, true);


--
-- Name: columns columns_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT columns_pkey PRIMARY KEY (_id);


--
-- Name: p2_anstellungen p2_anstellungen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_anstellungen
    ADD CONSTRAINT p2_anstellungen_pkey PRIMARY KEY (_id);


--
-- Name: p2_einrichtungen p2_einrichtungen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_einrichtungen
    ADD CONSTRAINT p2_einrichtungen_pkey PRIMARY KEY (_id);


--
-- Name: p2_komission p2_komission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_komission
    ADD CONSTRAINT p2_komission_pkey PRIMARY KEY (_id);


--
-- Name: p2_komissionsmitgliedschaften p2_komissionsmitgliedschaften_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_komissionsmitgliedschaften
    ADD CONSTRAINT p2_komissionsmitgliedschaften_pkey PRIMARY KEY (_id);


--
-- Name: p2_new p2_new_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_new
    ADD CONSTRAINT p2_new_pkey PRIMARY KEY (_id);


--
-- Name: p2_personaldetails p2_personaldetails_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p2_personaldetails
    ADD CONSTRAINT p2_personaldetails_pkey PRIMARY KEY (_id);


--
-- Name: p3_anstellungen p3_anstellungen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_anstellungen
    ADD CONSTRAINT p3_anstellungen_pkey PRIMARY KEY (_id);


--
-- Name: p3_einrichtungen p3_einrichtungen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_einrichtungen
    ADD CONSTRAINT p3_einrichtungen_pkey PRIMARY KEY (_id);


--
-- Name: p3_kommissionen p3_kommissionen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_kommissionen
    ADD CONSTRAINT p3_kommissionen_pkey PRIMARY KEY (_id);


--
-- Name: p3_kommissionsmitgliedschaften p3_kommissionsmitgliedschaften_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_kommissionsmitgliedschaften
    ADD CONSTRAINT p3_kommissionsmitgliedschaften_pkey PRIMARY KEY (_id);


--
-- Name: p3_personen p3_personen_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p3_personen
    ADD CONSTRAINT p3_personen_pkey PRIMARY KEY (_id);


--
-- Name: p4_studierende p4_studierende_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.p4_studierende
    ADD CONSTRAINT p4_studierende_pkey PRIMARY KEY (_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (_id);


--
-- Name: projecttables projecttables_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projecttables
    ADD CONSTRAINT projecttables_pkey PRIMARY KEY (_id);


--
-- Name: tables tables_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (_id);


--
-- Name: userprojects userprojects_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.userprojects
    ADD CONSTRAINT userprojects_pkey PRIMARY KEY (_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (_id);


--
-- Name: view_columns view_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.view_columns
    ADD CONSTRAINT view_columns_pkey PRIMARY KEY (_id);


--
-- Name: view_joins view_joins_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.view_joins
    ADD CONSTRAINT view_joins_pkey PRIMARY KEY (_id);


--
-- Name: views views_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (_id);


--
-- Name: columns columns_tableId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT "columns_tableId_fkey" FOREIGN KEY ("tableId") REFERENCES public.tables(_id);


--
-- Name: projects projects_ownerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT "projects_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public.users(_id);


--
-- Name: projecttables projecttables_projectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projecttables
    ADD CONSTRAINT "projecttables_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES public.projects(_id);


--
-- Name: projecttables projecttables_tableId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.projecttables
    ADD CONSTRAINT "projecttables_tableId_fkey" FOREIGN KEY ("tableId") REFERENCES public.tables(_id);


--
-- Name: tables tables_ownerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tables
    ADD CONSTRAINT "tables_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public.users(_id);


--
-- Name: userprojects userprojects_projectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.userprojects
    ADD CONSTRAINT "userprojects_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES public.projects(_id);


--
-- Name: userprojects userprojects_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.userprojects
    ADD CONSTRAINT "userprojects_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(_id);


--
-- PostgreSQL database dump complete
--

-- CHANGES TO BRING UP TO DATE WITH CURRENT SCHEMA

-- add new meta columns
ALTER TABLE public.view_columns ADD COLUMN "_cellContentType" text;
ALTER TABLE public.view_columns ADD COLUMN "__columnIndex__" integer;

-- create index columns
ALTER TABLE public.p2_new ADD COLUMN index integer;
ALTER TABLE public.p2_komission ADD COLUMN index integer;
ALTER TABLE public.p2_anstellungen ADD COLUMN index integer;
ALTER TABLE public.p2_einrichtungen ADD COLUMN index integer;
ALTER TABLE public.p2_komissionsmitgliedschaften ADD COLUMN index integer;
ALTER TABLE public.p2_personaldetails ADD COLUMN index integer;
ALTER TABLE public.p3_personen ADD COLUMN index integer;
ALTER TABLE public.p3_anstellungen ADD COLUMN index integer;
ALTER TABLE public.p3_einrichtungen ADD COLUMN index integer;
ALTER TABLE public.p3_kommissionsmitgliedschaften ADD COLUMN index integer;
ALTER TABLE public.p3_kommissionen ADD COLUMN index integer;
ALTER TABLE public.p4_studierende ADD COLUMN index integer;

INSERT INTO public.columns AS c("columnName", "tableId", type)
SELECT 'index', t._id, 'integer' FROM public.tables t;

INSERT INTO public.view_columns AS vc(
  view_id, column_id, _kind, "displayName",
  editable, "__columnIndex__", "_cellContentType")
SELECT v._id, c._id, 'index', 'Index', 0, 1, 'number'
FROM (SELECT _id, "tableId" FROM public.columns WHERE "columnName"='index') AS c
INNER JOIN public.tables t ON c."tableId"=t._id
INNER JOIN public.views v ON v.base_id=t._id AND v.base_type=0;

INSERT INTO public.view_columns AS vc(
  view_id, column_id, _kind, "displayName",
  editable, "__columnIndex__", "_cellContentType")
SELECT v._id, c._id, 'index', 'Index', 0, 1, 'number'
FROM (SELECT _id, view_id FROM public.view_columns WHERE "_kind"='index') AS c
INNER JOIN public.views t ON t._id=c.view_id
INNER JOIN public.views v ON v.base_id=t._id AND v.base_type=1;

-- you can't start a sequence at 1, so we have to subtract 1. if you do
-- setval(seq, 1), then nextval is 2, and you can't do setval(0), so then
-- we have to subtract 2. d'oh.
CREATE SEQUENCE public.ks_row_index START 2;

UPDATE public.p2_new SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p2_komission SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p2_anstellungen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p2_einrichtungen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p2_komissionsmitgliedschaften
  SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p2_personaldetails SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p3_anstellungen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p3_einrichtungen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p3_kommissionsmitgliedschaften
  SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p3_kommissionen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p3_personen SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);
UPDATE public.p4_studierende SET index=nextval('public.ks_row_index')-2;
SELECT setval('public.ks_row_index', 1);

DROP SEQUENCE public.ks_row_index;

-- update view column metadata
UPDATE public.view_columns SET "_cellContentType"='string';
UPDATE public.view_columns SET "_cellContentType"='number'
  WHERE "displayName" IN ('ID', 'Index');
UPDATE public.view_columns SET "minWidth"=128
  WHERE "displayName" != 'ID';
UPDATE public.view_columns SET width=80 WHERE "displayName"='ID';

-- for the column indices, we have an especially vile hack:
UPDATE public.view_columns vc1
  SET "__columnIndex__"=0
  WHERE "displayName"='ID';
UPDATE public.view_columns vc1
  SET "__columnIndex__"=1
  WHERE "displayName"='Index';
-- We count the number of columns with a smaller ID, thus creating an ascending
-- index from 1 to n.
UPDATE public.view_columns vc1
  SET "__columnIndex__" =
    (SELECT count(*) FROM public.view_columns vc2
      WHERE vc1.view_id=vc2.view_id AND vc2._id<=vc1._id
      AND "displayName" NOT IN ('ID', 'Index')) + 1
WHERE "displayName" NOT IN ('ID', 'Index');

-- remove garbage views and columns
