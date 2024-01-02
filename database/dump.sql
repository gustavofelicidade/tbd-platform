--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: Ban; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ban" (
    "Id" integer NOT NULL,
    "User" integer,
    "Date" timestamp without time zone,
    "EndDuration" date
);


ALTER TABLE public."Ban" OWNER TO postgres;

--
-- Name: Ban_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ban_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Ban_Id_seq" OWNER TO postgres;

--
-- Name: Ban_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ban_Id_seq" OWNED BY public."Ban"."Id";


--
-- Name: Buy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Buy" (
    "Id" integer NOT NULL,
    "SubscriptionType" integer,
    "User" integer,
    "Date" timestamp without time zone,
    "EndDuration" date
);


ALTER TABLE public."Buy" OWNER TO postgres;

--
-- Name: Buy_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Buy_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Buy_Id_seq" OWNER TO postgres;

--
-- Name: Buy_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Buy_Id_seq" OWNED BY public."Buy"."Id";


--
-- Name: Comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Comment" (
    "Id" integer NOT NULL,
    "Dislikes" integer,
    "Likes" integer,
    "Text" character varying NOT NULL
);


ALTER TABLE public."Comment" OWNER TO postgres;

--
-- Name: Comment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Comment_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Comment_Id_seq" OWNER TO postgres;

--
-- Name: Comment_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Comment_Id_seq" OWNED BY public."Comment"."Id";


--
-- Name: Dislike; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dislike" (
    "Id" integer NOT NULL,
    "Date" timestamp without time zone
);


ALTER TABLE public."Dislike" OWNER TO postgres;

--
-- Name: Dislike_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Dislike_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Dislike_Id_seq" OWNER TO postgres;

--
-- Name: Dislike_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Dislike_Id_seq" OWNED BY public."Dislike"."Id";


--
-- Name: Impact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Impact" (
    "Id" integer NOT NULL,
    "Description" character varying,
    "Title" character varying
);


ALTER TABLE public."Impact" OWNER TO postgres;

--
-- Name: Impact_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Impact_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Impact_Id_seq" OWNER TO postgres;

--
-- Name: Impact_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Impact_Id_seq" OWNED BY public."Impact"."Id";


--
-- Name: Like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Like" (
    "Id" integer NOT NULL,
    "Date" timestamp without time zone
);


ALTER TABLE public."Like" OWNER TO postgres;

--
-- Name: Like_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Like_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Like_Id_seq" OWNER TO postgres;

--
-- Name: Like_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Like_Id_seq" OWNED BY public."Like"."Id";


--
-- Name: Opportunities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Opportunities" (
    "Id" integer NOT NULL,
    "Risks" character varying[]
);


ALTER TABLE public."Opportunities" OWNER TO postgres;

--
-- Name: OpportunitiesConcepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OpportunitiesConcepts" (
    "Id" integer NOT NULL,
    "Countries" character varying[]
);


ALTER TABLE public."OpportunitiesConcepts" OWNER TO postgres;

--
-- Name: OpportunitiesConcepts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OpportunitiesConcepts_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OpportunitiesConcepts_Id_seq" OWNER TO postgres;

--
-- Name: OpportunitiesConcepts_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OpportunitiesConcepts_Id_seq" OWNED BY public."OpportunitiesConcepts"."Id";


--
-- Name: Opportunities_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Opportunities_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Opportunities_Id_seq" OWNER TO postgres;

--
-- Name: Opportunities_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Opportunities_Id_seq" OWNED BY public."Opportunities"."Id";


--
-- Name: PasswordHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PasswordHistory" (
    "Id" integer NOT NULL,
    "Password" character varying,
    "User" integer
);


ALTER TABLE public."PasswordHistory" OWNER TO postgres;

--
-- Name: PasswordHistory_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PasswordHistory_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PasswordHistory_Id_seq" OWNER TO postgres;

--
-- Name: PasswordHistory_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PasswordHistory_Id_seq" OWNED BY public."PasswordHistory"."Id";


--
-- Name: ProfessionalUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProfessionalUsers" (
    "Id" integer NOT NULL,
    "Users" integer[]
);


ALTER TABLE public."ProfessionalUsers" OWNER TO postgres;

--
-- Name: ProfessionalUsers_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProfessionalUsers_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProfessionalUsers_Id_seq" OWNER TO postgres;

--
-- Name: ProfessionalUsers_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProfessionalUsers_Id_seq" OWNED BY public."ProfessionalUsers"."Id";


--
-- Name: Risk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Risk" (
    "Id" integer NOT NULL,
    "Creator" integer,
    "Comments" integer,
    "Causes" character varying[],
    "Date" timestamp without time zone,
    "Description" character varying,
    "Effects" character varying[],
    "Industry" character varying,
    "Mitigations" character varying[],
    "Regions" character varying[],
    "RiskType" character varying,
    "Score" double precision,
    "Title" character varying,
    "Votes" integer
);


ALTER TABLE public."Risk" OWNER TO postgres;

--
-- Name: RiskProfile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RiskProfile" (
    "Id" integer NOT NULL,
    "Creator" integer,
    "Risks" integer,
    "Concepts" integer,
    "Impacts" integer,
    "Score" integer,
    "Detail" character varying
);


ALTER TABLE public."RiskProfile" OWNER TO postgres;

--
-- Name: RiskProfileConcepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RiskProfileConcepts" (
    "Id" integer NOT NULL,
    "Terminate" character varying,
    "Tolerate" character varying,
    "Transfer" character varying,
    "Treat" character varying
);


ALTER TABLE public."RiskProfileConcepts" OWNER TO postgres;

--
-- Name: RiskProfileConcepts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RiskProfileConcepts_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RiskProfileConcepts_Id_seq" OWNER TO postgres;

--
-- Name: RiskProfileConcepts_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RiskProfileConcepts_Id_seq" OWNED BY public."RiskProfileConcepts"."Id";


--
-- Name: RiskProfile_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RiskProfile_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RiskProfile_Id_seq" OWNER TO postgres;

--
-- Name: RiskProfile_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RiskProfile_Id_seq" OWNED BY public."RiskProfile"."Id";


--
-- Name: Risk_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Risk_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Risk_Id_seq" OWNER TO postgres;

--
-- Name: Risk_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Risk_Id_seq" OWNED BY public."Risk"."Id";


--
-- Name: Subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subscription" (
    "Id" integer NOT NULL,
    "Price" double precision,
    "Title" character varying
);


ALTER TABLE public."Subscription" OWNER TO postgres;

--
-- Name: Subscription_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Subscription_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Subscription_Id_seq" OWNER TO postgres;

--
-- Name: Subscription_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Subscription_Id_seq" OWNED BY public."Subscription"."Id";


--
-- Name: Team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Team" (
    "Id" integer NOT NULL,
    "Users" integer[]
);


ALTER TABLE public."Team" OWNER TO postgres;

--
-- Name: Team_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Team_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Team_Id_seq" OWNER TO postgres;

--
-- Name: Team_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Team_Id_seq" OWNED BY public."Team"."Id";


--
-- Name: Thread; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Thread" (
    "Id" integer NOT NULL,
    "Risks" character varying[]
);


ALTER TABLE public."Thread" OWNER TO postgres;

--
-- Name: ThreadConcepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ThreadConcepts" (
    "Id" integer NOT NULL,
    "Countries" character varying[]
);


ALTER TABLE public."ThreadConcepts" OWNER TO postgres;

--
-- Name: ThreadConcepts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ThreadConcepts_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ThreadConcepts_Id_seq" OWNER TO postgres;

--
-- Name: ThreadConcepts_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ThreadConcepts_Id_seq" OWNED BY public."ThreadConcepts"."Id";


--
-- Name: Thread_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Thread_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Thread_Id_seq" OWNER TO postgres;

--
-- Name: Thread_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Thread_Id_seq" OWNED BY public."Thread"."Id";


--
-- Name: Topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Topic" (
    "Id" integer NOT NULL,
    "Risks" integer[],
    "Title" character varying
);


ALTER TABLE public."Topic" OWNER TO postgres;

--
-- Name: Topic_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Topic_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Topic_Id_seq" OWNER TO postgres;

--
-- Name: Topic_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Topic_Id_seq" OWNED BY public."Topic"."Id";


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "Id" integer NOT NULL,
    "Password" character varying NOT NULL,
    "SubscriptionType" character varying NOT NULL,
    "Bio" character varying,
    "Email" character varying NOT NULL,
    "FirstName" character varying NOT NULL,
    "LastName" character varying NOT NULL,
    "ProfilePicture" bytea,
    "Username" character varying NOT NULL,
    "UserType" character varying NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Id_seq" OWNER TO postgres;

--
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Id_seq" OWNED BY public."User"."Id";


--
-- Name: VerifiedUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VerifiedUsers" (
    "Id" integer NOT NULL,
    "Users" integer[]
);


ALTER TABLE public."VerifiedUsers" OWNER TO postgres;

--
-- Name: VerifiedUsers_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VerifiedUsers_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."VerifiedUsers_Id_seq" OWNER TO postgres;

--
-- Name: VerifiedUsers_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VerifiedUsers_Id_seq" OWNED BY public."VerifiedUsers"."Id";


--
-- Name: Vote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Vote" (
    "Id" integer NOT NULL,
    "User" integer,
    "Risk" integer,
    "Value" boolean
);


ALTER TABLE public."Vote" OWNER TO postgres;

--
-- Name: Vote_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Vote_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Vote_Id_seq" OWNER TO postgres;

--
-- Name: Vote_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Vote_Id_seq" OWNED BY public."Vote"."Id";


--
-- Name: Ban Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ban" ALTER COLUMN "Id" SET DEFAULT nextval('public."Ban_Id_seq"'::regclass);


--
-- Name: Buy Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buy" ALTER COLUMN "Id" SET DEFAULT nextval('public."Buy_Id_seq"'::regclass);


--
-- Name: Comment Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment" ALTER COLUMN "Id" SET DEFAULT nextval('public."Comment_Id_seq"'::regclass);


--
-- Name: Dislike Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dislike" ALTER COLUMN "Id" SET DEFAULT nextval('public."Dislike_Id_seq"'::regclass);


--
-- Name: Impact Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impact" ALTER COLUMN "Id" SET DEFAULT nextval('public."Impact_Id_seq"'::regclass);


--
-- Name: Like Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Like" ALTER COLUMN "Id" SET DEFAULT nextval('public."Like_Id_seq"'::regclass);


--
-- Name: Opportunities Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Opportunities" ALTER COLUMN "Id" SET DEFAULT nextval('public."Opportunities_Id_seq"'::regclass);


--
-- Name: OpportunitiesConcepts Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OpportunitiesConcepts" ALTER COLUMN "Id" SET DEFAULT nextval('public."OpportunitiesConcepts_Id_seq"'::regclass);


--
-- Name: PasswordHistory Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PasswordHistory" ALTER COLUMN "Id" SET DEFAULT nextval('public."PasswordHistory_Id_seq"'::regclass);


--
-- Name: ProfessionalUsers Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfessionalUsers" ALTER COLUMN "Id" SET DEFAULT nextval('public."ProfessionalUsers_Id_seq"'::regclass);


--
-- Name: Risk Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Risk" ALTER COLUMN "Id" SET DEFAULT nextval('public."Risk_Id_seq"'::regclass);


--
-- Name: RiskProfile Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile" ALTER COLUMN "Id" SET DEFAULT nextval('public."RiskProfile_Id_seq"'::regclass);


--
-- Name: RiskProfileConcepts Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfileConcepts" ALTER COLUMN "Id" SET DEFAULT nextval('public."RiskProfileConcepts_Id_seq"'::regclass);


--
-- Name: Subscription Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subscription" ALTER COLUMN "Id" SET DEFAULT nextval('public."Subscription_Id_seq"'::regclass);


--
-- Name: Team Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Team" ALTER COLUMN "Id" SET DEFAULT nextval('public."Team_Id_seq"'::regclass);


--
-- Name: Thread Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Thread" ALTER COLUMN "Id" SET DEFAULT nextval('public."Thread_Id_seq"'::regclass);


--
-- Name: ThreadConcepts Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ThreadConcepts" ALTER COLUMN "Id" SET DEFAULT nextval('public."ThreadConcepts_Id_seq"'::regclass);


--
-- Name: Topic Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Topic" ALTER COLUMN "Id" SET DEFAULT nextval('public."Topic_Id_seq"'::regclass);


--
-- Name: User Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "Id" SET DEFAULT nextval('public."User_Id_seq"'::regclass);


--
-- Name: VerifiedUsers Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VerifiedUsers" ALTER COLUMN "Id" SET DEFAULT nextval('public."VerifiedUsers_Id_seq"'::regclass);


--
-- Name: Vote Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Vote" ALTER COLUMN "Id" SET DEFAULT nextval('public."Vote_Id_seq"'::regclass);


--
-- Data for Name: Ban; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ban" ("Id", "User", "Date", "EndDuration") FROM stdin;
\.


--
-- Data for Name: Buy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Buy" ("Id", "SubscriptionType", "User", "Date", "EndDuration") FROM stdin;
\.


--
-- Data for Name: Comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Comment" ("Id", "Dislikes", "Likes", "Text") FROM stdin;
\.


--
-- Data for Name: Dislike; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Dislike" ("Id", "Date") FROM stdin;
\.


--
-- Data for Name: Impact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Impact" ("Id", "Description", "Title") FROM stdin;
\.


--
-- Data for Name: Like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Like" ("Id", "Date") FROM stdin;
\.


--
-- Data for Name: Opportunities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Opportunities" ("Id", "Risks") FROM stdin;
\.


--
-- Data for Name: OpportunitiesConcepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OpportunitiesConcepts" ("Id", "Countries") FROM stdin;
\.


--
-- Data for Name: PasswordHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PasswordHistory" ("Id", "Password", "User") FROM stdin;
\.


--
-- Data for Name: ProfessionalUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProfessionalUsers" ("Id", "Users") FROM stdin;
\.


--
-- Data for Name: Risk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Risk" ("Id", "Creator", "Comments", "Causes", "Date", "Description", "Effects", "Industry", "Mitigations", "Regions", "RiskType", "Score", "Title", "Votes") FROM stdin;
\.


--
-- Data for Name: RiskProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RiskProfile" ("Id", "Creator", "Risks", "Concepts", "Impacts", "Score", "Detail") FROM stdin;
\.


--
-- Data for Name: RiskProfileConcepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RiskProfileConcepts" ("Id", "Terminate", "Tolerate", "Transfer", "Treat") FROM stdin;
\.


--
-- Data for Name: Subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subscription" ("Id", "Price", "Title") FROM stdin;
\.


--
-- Data for Name: Team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Team" ("Id", "Users") FROM stdin;
\.


--
-- Data for Name: Thread; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Thread" ("Id", "Risks") FROM stdin;
\.


--
-- Data for Name: ThreadConcepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ThreadConcepts" ("Id", "Countries") FROM stdin;
\.


--
-- Data for Name: Topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Topic" ("Id", "Risks", "Title") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("Id", "Password", "SubscriptionType", "Bio", "Email", "FirstName", "LastName", "ProfilePicture", "Username", "UserType") FROM stdin;
\.


--
-- Data for Name: VerifiedUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VerifiedUsers" ("Id", "Users") FROM stdin;
\.


--
-- Data for Name: Vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Vote" ("Id", "User", "Risk", "Value") FROM stdin;
\.


--
-- Name: Ban_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ban_Id_seq"', 1, false);


--
-- Name: Buy_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Buy_Id_seq"', 1, false);


--
-- Name: Comment_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Comment_Id_seq"', 1, false);


--
-- Name: Dislike_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Dislike_Id_seq"', 1, false);


--
-- Name: Impact_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Impact_Id_seq"', 1, false);


--
-- Name: Like_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Like_Id_seq"', 1, false);


--
-- Name: OpportunitiesConcepts_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OpportunitiesConcepts_Id_seq"', 1, false);


--
-- Name: Opportunities_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Opportunities_Id_seq"', 1, false);


--
-- Name: PasswordHistory_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PasswordHistory_Id_seq"', 1, false);


--
-- Name: ProfessionalUsers_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfessionalUsers_Id_seq"', 1, false);


--
-- Name: RiskProfileConcepts_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RiskProfileConcepts_Id_seq"', 1, false);


--
-- Name: RiskProfile_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RiskProfile_Id_seq"', 1, false);


--
-- Name: Risk_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Risk_Id_seq"', 1, false);


--
-- Name: Subscription_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Subscription_Id_seq"', 1, false);


--
-- Name: Team_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Team_Id_seq"', 1, false);


--
-- Name: ThreadConcepts_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ThreadConcepts_Id_seq"', 1, false);


--
-- Name: Thread_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Thread_Id_seq"', 1, false);


--
-- Name: Topic_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Topic_Id_seq"', 1, false);


--
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Id_seq"', 1, false);


--
-- Name: VerifiedUsers_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."VerifiedUsers_Id_seq"', 1, false);


--
-- Name: Vote_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Vote_Id_seq"', 1, false);


--
-- Name: Ban Ban_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ban"
    ADD CONSTRAINT "Ban_pkey" PRIMARY KEY ("Id");


--
-- Name: Buy Buy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buy"
    ADD CONSTRAINT "Buy_pkey" PRIMARY KEY ("Id");


--
-- Name: Comment Comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_pkey" PRIMARY KEY ("Id");


--
-- Name: Dislike Dislike_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dislike"
    ADD CONSTRAINT "Dislike_pkey" PRIMARY KEY ("Id");


--
-- Name: Impact Impact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impact"
    ADD CONSTRAINT "Impact_pkey" PRIMARY KEY ("Id");


--
-- Name: Like Like_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Like"
    ADD CONSTRAINT "Like_pkey" PRIMARY KEY ("Id");


--
-- Name: OpportunitiesConcepts OpportunitiesConcepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OpportunitiesConcepts"
    ADD CONSTRAINT "OpportunitiesConcepts_pkey" PRIMARY KEY ("Id");


--
-- Name: Opportunities Opportunities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Opportunities"
    ADD CONSTRAINT "Opportunities_pkey" PRIMARY KEY ("Id");


--
-- Name: PasswordHistory PasswordHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PasswordHistory"
    ADD CONSTRAINT "PasswordHistory_pkey" PRIMARY KEY ("Id");


--
-- Name: ProfessionalUsers ProfessionalUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfessionalUsers"
    ADD CONSTRAINT "ProfessionalUsers_pkey" PRIMARY KEY ("Id");


--
-- Name: RiskProfileConcepts RiskProfileConcepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfileConcepts"
    ADD CONSTRAINT "RiskProfileConcepts_pkey" PRIMARY KEY ("Id");


--
-- Name: RiskProfile RiskProfile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile"
    ADD CONSTRAINT "RiskProfile_pkey" PRIMARY KEY ("Id");


--
-- Name: Risk Risk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Risk"
    ADD CONSTRAINT "Risk_pkey" PRIMARY KEY ("Id");


--
-- Name: Subscription Subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subscription"
    ADD CONSTRAINT "Subscription_pkey" PRIMARY KEY ("Id");


--
-- Name: Team Team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Team"
    ADD CONSTRAINT "Team_pkey" PRIMARY KEY ("Id");


--
-- Name: ThreadConcepts ThreadConcepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ThreadConcepts"
    ADD CONSTRAINT "ThreadConcepts_pkey" PRIMARY KEY ("Id");


--
-- Name: Thread Thread_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Thread"
    ADD CONSTRAINT "Thread_pkey" PRIMARY KEY ("Id");


--
-- Name: Topic Topic_Title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Topic"
    ADD CONSTRAINT "Topic_Title_key" UNIQUE ("Title");


--
-- Name: Topic Topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Topic"
    ADD CONSTRAINT "Topic_pkey" PRIMARY KEY ("Id");


--
-- Name: User User_Email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_Email_key" UNIQUE ("Email");


--
-- Name: User User_Username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_Username_key" UNIQUE ("Username");


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");


--
-- Name: VerifiedUsers VerifiedUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VerifiedUsers"
    ADD CONSTRAINT "VerifiedUsers_pkey" PRIMARY KEY ("Id");


--
-- Name: Vote Vote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Vote"
    ADD CONSTRAINT "Vote_pkey" PRIMARY KEY ("Id");


--
-- Name: Buy Buy_SubscriptionType_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buy"
    ADD CONSTRAINT "Buy_SubscriptionType_fkey" FOREIGN KEY ("SubscriptionType") REFERENCES public."Subscription"("Id");


--
-- Name: Buy Buy_SubscriptionType_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buy"
    ADD CONSTRAINT "Buy_SubscriptionType_fkey1" FOREIGN KEY ("SubscriptionType") REFERENCES public."Subscription"("Id");


--
-- Name: RiskProfile RiskProfile_Concepts_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile"
    ADD CONSTRAINT "RiskProfile_Concepts_fkey" FOREIGN KEY ("Concepts") REFERENCES public."RiskProfileConcepts"("Id");


--
-- Name: RiskProfile RiskProfile_Concepts_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile"
    ADD CONSTRAINT "RiskProfile_Concepts_fkey1" FOREIGN KEY ("Concepts") REFERENCES public."RiskProfileConcepts"("Id");


--
-- Name: RiskProfile RiskProfile_Creator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile"
    ADD CONSTRAINT "RiskProfile_Creator_fkey" FOREIGN KEY ("Creator") REFERENCES public."User"("Id");


--
-- Name: RiskProfile RiskProfile_Creator_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RiskProfile"
    ADD CONSTRAINT "RiskProfile_Creator_fkey1" FOREIGN KEY ("Creator") REFERENCES public."User"("Id");


--
-- Name: Risk Risk_Creator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Risk"
    ADD CONSTRAINT "Risk_Creator_fkey" FOREIGN KEY ("Creator") REFERENCES public."User"("Id");


--
-- Name: Risk Risk_Creator_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Risk"
    ADD CONSTRAINT "Risk_Creator_fkey1" FOREIGN KEY ("Creator") REFERENCES public."User"("Id");


--
-- PostgreSQL database dump complete
--

