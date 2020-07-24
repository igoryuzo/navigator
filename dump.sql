--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.13
-- Dumped by pg_dump version 9.6.13

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.records (
    id integer NOT NULL,
    user_id integer NOT NULL,
    stock_id integer NOT NULL,
    stock_symbol character(20) NOT NULL,
    stock_name character varying,
    fair_value character varying,
    investment_name character varying,
    star_rating character varying,
    analyst_rating character varying,
    comment text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.records OWNER TO postgres;

--
-- Name: records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_id_seq OWNER TO postgres;

--
-- Name: records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.records_id_seq OWNED BY public.records.id;


--
-- Name: stocks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stocks (
    id integer NOT NULL,
    ticker character varying(255),
    name character varying(255),
    market character varying(255),
    locale character varying(255),
    type character varying(255),
    currency character varying(255),
    active character varying(255),
    primaryexchange character varying(255),
    updated character varying(255),
    codes character varying(255),
    url character varying(255),
    "createdAt" timestamp without time zone DEFAULT now()
);


ALTER TABLE public.stocks OWNER TO postgres;

--
-- Name: stocks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stocks_id_seq OWNER TO postgres;

--
-- Name: stocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stocks_id_seq OWNED BY public.stocks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    user_name character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records ALTER COLUMN id SET DEFAULT nextval('public.records_id_seq'::regclass);


--
-- Name: stocks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stocks ALTER COLUMN id SET DEFAULT nextval('public.stocks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.records (id, user_id, stock_id, stock_symbol, stock_name, fair_value, investment_name, star_rating, analyst_rating, comment, created_at) FROM stdin;
1	1	1	A                   	Agilent Technologies Inc	69.00	-	-	-		2020-07-24 17:30:25.782239
2	1	2	AA                  	Alcoa Corp	0	-	-	-	Fair value not available	2020-07-24 17:30:45.082205
3	1	3	WADV                	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:30:57.087804
4	1	4	WING                	Wingstop Inc	93.95	-	-	-		2020-07-24 17:31:11.945287
5	1	5	WINH                	Winha International Group Ltd	0.25	-	-	-		2020-07-24 17:31:31.634663
6	1	6	WINMQ               	Windstream Holdings Inc	—	-	-	-		2020-07-24 17:31:46.976105
7	1	7	WINR                	Simplicity Esports and Gaming Co Ordinary Shares	1.31	-	-	-		2020-07-24 17:32:02.895725
8	1	8	WINS                	Wins Finance Holdings Inc	34.89	-	-	-		2020-07-24 17:32:17.825106
9	1	9	WINT                	Windtree Therapeutics Inc	8.56	-	-	-		2020-07-24 17:32:32.688828
10	1	10	WIPKF               	Winpak Ltd	33.10	-	-	-		2020-07-24 17:32:47.291362
11	1	11	WIRE                	Encore Wire Corp	48.17	-	-	-		2020-07-24 17:33:02.087486
12	1	12	WIRX                	Wireless Xcessories Group Inc	0.01	-	-	-		2020-07-24 17:33:17.280369
13	1	13	WISA                	Summit Wireless Technologies Inc Ordinary Shares	2.76	-	-	-		2020-07-24 17:33:32.59872
14	1	14	WISH                	Wright Investors" Service Holdings Inc	0.56	-	-	-		2020-07-24 17:33:47.529538
15	1	15	WISM                	Wiseman Global Ltd	3.03	-	-	-		2020-07-24 17:34:02.46546
16	1	16	WISRF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:34:13.566586
17	1	17	WIX                 	Wix.com Ltd	194.47	-	-	-		2020-07-24 17:34:28.26454
18	1	18	WIZD                	Wizard Entertainment Inc	1.30	-	-	-		2020-07-24 17:34:43.885628
19	1	19	WIZP                	Wize Pharma Inc	0.18	-	-	-		2020-07-24 17:34:58.364959
20	1	20	WJRYF               	West Japan Railway Co	95.73	-	-	-		2020-07-24 17:35:13.004049
21	1	21	WJXFF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:35:24.161584
22	1	22	WK                  	Workiva Inc Class A	—	-	-	-		2020-07-24 17:35:39.150911
23	1	23	WKAPF               	Wijaya Karya (Persero) Tbk	0	-	-	-	Fair value not available	2020-07-24 17:35:58.040221
24	1	24	WKCMF               	Wacker Chemie AG	107.55	-	-	-		2020-07-24 17:36:12.852094
25	1	25	WKGBF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:36:23.971135
26	1	26	WKHS                	Workhorse Group Inc	11.47	-	-	-		2020-07-24 17:36:38.643371
27	1	27	WKKHF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:36:50.255346
28	1	28	WKLDF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:37:01.93247
29	1	29	WKLN                	Walker Lane Exploration Inc	0.10	-	-	-		2020-07-24 17:37:17.832452
30	1	30	WKPYF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:37:28.986172
31	1	31	WKRCF               	Wacker Neuson SE	21.79	-	-	-		2020-07-24 17:37:44.32881
32	1	32	WKULF               	Weekend Unlimited Industries Inc	0.11	-	-	-		2020-07-24 17:37:59.532307
33	1	33	WKYN                	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:38:11.061811
34	1	34	WLAB                	White Label Liquid Inc	0.06	-	-	-		2020-07-24 17:38:26.257955
35	1	35	WLAN                	Wialan Technologies Inc	0.00	-	-	-		2020-07-24 17:38:41.414022
36	1	36	WLBMF               	Wallbridge Mining Co Ltd	0.66	-	-	-		2020-07-24 17:38:56.107485
37	1	37	WLCGF               	Welcia Holdings Co Ltd	0	-	-	-	Fair value not available	2020-07-24 17:39:15.298753
38	1	38	WLDBF               	WildBrain Ltd	1.38	-	-	-		2020-07-24 17:39:30.484451
39	1	39	WLDCF               	ICC International Cannabis Corp	0.03	-	-	-		2020-07-24 17:39:45.494641
40	1	40	WLDFF               	Wildflower Brands Inc	0.18	-	-	-		2020-07-24 17:40:00.486359
41	1	41	WLDN                	Willdan Group Inc	28.14	-	-	-		2020-07-24 17:40:15.066266
42	1	42	WLFC                	Willis Lease Finance Corp	37.02	-	-	-		2020-07-24 17:40:30.456915
43	1	43	WLFFF               	-	0	-	-	-	No result in autocomplete search	2020-07-24 17:40:42.075472
44	1	44	WLGCX               	-	0	Ivy Large Cap Growth Fund Class C	3	-		2020-07-24 17:41:21.437975
45	1	45	WLK                 	Westlake Chemical Corp	64.92	-	-	-		2020-07-24 17:41:37.751016
\.


--
-- Name: records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.records_id_seq', 45, true);


--
-- Data for Name: stocks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stocks (id, ticker, name, market, locale, type, currency, active, primaryexchange, updated, codes, url, "createdAt") FROM stdin;
1	A	Agilent Technologies Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-23	{"cik":"0001090872","figiuid":"EQ0087231700001000","scfigi":"BBG001SCTQY4","cfigi":"BBG000C2V3D6","figi":"BBG000C2V3D6"}	https://api.polygon.io/v2/tickers/A	2020-07-24 12:17:27.044205
2	AA	Alcoa Corporation	STOCKS	US	CS	USD	true	NYE	2020-07-23	{"cik":"0001675149","figiuid":"EQ0000000045469815","scfigi":"BBG00B3T3HF1","cfigi":"BBG00B3T3HD3","figi":"BBG00B3T3HD3"}	https://api.polygon.io/v2/tickers/AA	2020-07-24 12:17:27.044205
3	WADV	Wireless Advantage Inc Common Stock	STOCKS	US	CS	USD	true	GREY	2020-03-30	{"figiuid":"EQ0010295500001000","scfigi":"BBG001S87270","cfigi":"BBG000DKG4K2","figi":"BBG000DKG4K2"}	https://api.polygon.io/v2/tickers/WADV	2020-07-24 12:17:27.044205
4	WING	Wingstop Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001636222","figiuid":"EQ0000000042905982","scfigi":"BBG008N298X9","cfigi":"BBG008N298Y8","figi":"BBG008N298Y8"}	https://api.polygon.io/v2/tickers/WING	2020-07-24 12:17:27.044205
5	WINH	Winha International Group Ltd. Common	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000031602236","scfigi":"BBG00580DPY2","cfigi":"BBG00580DPZ1","figi":"BBG00580DPZ1"}	https://api.polygon.io/v2/tickers/WINH	2020-07-24 12:17:27.044205
6	WINMQ	Windstream Holdings, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0113583000001000","scfigi":"BBG001S8THP3","cfigi":"BBG000BFJ645","figi":"BBG000BFJ645"}	https://api.polygon.io/v2/tickers/WINMQ	2020-07-24 12:17:27.044205
7	WINR	Simplicity Esports & Gaming Co Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000058050020","scfigi":"BBG00H4FV5C5","cfigi":"BBG00H4FV5B6","figi":"BBG00H4FV5B6"}	https://api.polygon.io/v2/tickers/WINR	2020-07-24 12:17:27.044205
8	WINS	Wins Finance Holdings Inc. Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001640251","figiuid":"EQ0000000044597813","scfigi":"BBG009R5H625","cfigi":"BBG009R5H046","figi":"BBG009R5H046"}	https://api.polygon.io/v2/tickers/WINS	2020-07-24 12:17:27.044205
9	WINT	Windtree Therapeutics, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000946486","figiuid":"EQ0017113800001000","scfigi":"BBG001SBFPB8","cfigi":"BBG000JMNPX3","figi":"BBG000JMNPX3"}	https://api.polygon.io/v2/tickers/WINT	2020-07-24 12:17:27.044205
10	WIPKF	Winpak Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000496938","scfigi":"BBG001S60X73","cfigi":"BBG000DKHJQ2","figi":"BBG000DKHJQ2"}	https://api.polygon.io/v2/tickers/WIPKF	2020-07-24 12:17:27.044205
11	WIRE	Encore Wire Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000850460","figiuid":"EQ0010784800001000","scfigi":"BBG001S70TC4","cfigi":"BBG000CQCCK6","figi":"BBG000CQCCK6"}	https://api.polygon.io/v2/tickers/WIRE	2020-07-24 12:17:27.044205
12	WIRX	Wireless Xcessories Group Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001005504","figiuid":"EQ0017176800001000","scfigi":"BBG001S68ZF1","cfigi":"BBG000C2NWL2","figi":"BBG000C2NWL2"}	https://api.polygon.io/v2/tickers/WIRX	2020-07-24 12:17:27.044205
13	WISA	Summit Wireless Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001682149","figiuid":"EQ0000000064369328","scfigi":"BBG00KLHTKR9","cfigi":"BBG00KLHTJY4","figi":"BBG00KLHTJY4"}	https://api.polygon.io/v2/tickers/WISA	2020-07-24 12:17:27.044205
14	WISH	Wright Investors Service Holdings , Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001279715","figiuid":"EQ0000000001271639","scfigi":"BBG001SMC2J0","cfigi":"BBG000Q7GQ73","figi":"BBG000Q7GQ73"}	https://api.polygon.io/v2/tickers/WISH	2020-07-24 12:17:27.044205
15	WISM	Wiseman Global Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000069503961","scfigi":"BBG00MGSBZ93","cfigi":"BBG00MGSBYF9","figi":"BBG00MGSBYF9"}	https://api.polygon.io/v2/tickers/WISM	2020-07-24 12:17:27.044205
16	WISRF	WINSTON RES INC CDA Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000052283800","scfigi":"BBG0027F0520","cfigi":"BBG00F0JYHW4","figi":"BBG00F0JYHW4"}	https://api.polygon.io/v2/tickers/WISRF	2020-07-24 12:17:27.044205
17	WIX	Wix.com Ltd. Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001576789","figiuid":"EQ0000000031965658","scfigi":"BBG004336Q89","cfigi":"BBG005CM7J89","figi":"BBG005CM7J89"}	https://api.polygon.io/v2/tickers/WIX	2020-07-24 12:17:27.044205
18	WIZD	Wizard Entertainment, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001162896","figiuid":"EQ0000000006403627","scfigi":"BBG001T2Y6H2","cfigi":"BBG000KLG7V3","figi":"BBG000KLG7V3"}	https://api.polygon.io/v2/tickers/WIZD	2020-07-24 12:17:27.044205
19	WIZP	Wize Pharma, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001218683","figiuid":"EQ0000000005850670","scfigi":"BBG001ST7265","cfigi":"BBG000R6WR47","figi":"BBG000R6WR47"}	https://api.polygon.io/v2/tickers/WIZP	2020-07-24 12:17:27.044205
20	WJRYF	West Japan Railway Co Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001187122","scfigi":"BBG001S95ZJ4","cfigi":"BBG000PRD1N0","figi":"BBG000PRD1N0"}	https://api.polygon.io/v2/tickers/WJRYF	2020-07-24 12:17:27.044205
21	WJXFF	Wajax Corp. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001813468","scfigi":"BBG001S903G3","cfigi":"BBG000FC9X77","figi":"BBG000FC9X77"}	https://api.polygon.io/v2/tickers/WJXFF	2020-07-24 12:17:27.044205
22	WK	Workiva Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001445305","figiuid":"EQ0000000038276223","scfigi":"BBG007BVZ8J7","cfigi":"BBG007BVZ8H9","figi":"BBG007BVZ8H9"}	https://api.polygon.io/v2/tickers/WK	2020-07-24 12:17:27.044205
23	WKAPF	PT WIJAYA KARYA PERSERO TBK Ordinary Shares  Indonesia(ID )	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000081240418","scfigi":"BBG001S942W3","cfigi":"BBG00RB9W3C3","figi":"BBG00RB9W3C3"}	https://api.polygon.io/v2/tickers/WKAPF	2020-07-24 12:17:27.044205
24	WKCMF	Wacker Chemie Ag Muenchen Ordinary Shares (Germany)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002455079","scfigi":"BBG001S6K2G9","cfigi":"BBG000Q4XW50","figi":"BBG000Q4XW50"}	https://api.polygon.io/v2/tickers/WKCMF	2020-07-24 12:17:27.044205
25	WKGBF	Walker Greenbank Plc Ordinary Shares (United Kingdom)	STOCKS	US	CS	GBP	true	OTC	2020-06-24	{"figiuid":"EQ0011248600001001","scfigi":"BBG001S63NZ1","cfigi":"BBG000CZCFF5","figi":"BBG000CZCFF5"}	https://api.polygon.io/v2/tickers/WKGBF	2020-07-24 12:17:27.044205
26	WKHS	Workhorse Group, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001425287","figiuid":"EQ0000000008309601","scfigi":"BBG001SD7PS5","cfigi":"BBG000BDPB15","figi":"BBG000BDPB15"}	https://api.polygon.io/v2/tickers/WKHS	2020-07-24 12:17:27.044205
27	WKKHF	Wong S Kong King Holdings Ltd Ordinary Shares (Bermuda)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001175132","scfigi":"BBG001S6JD95","cfigi":"BBG000C19X74","figi":"BBG000C19X74"}	https://api.polygon.io/v2/tickers/WKKHF	2020-07-24 12:17:27.044205
28	WKLDF	West Kirkland Mining Inc. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000020287889","scfigi":"BBG001STLSK6","cfigi":"BBG002457GK4","figi":"BBG002457GK4"}	https://api.polygon.io/v2/tickers/WKLDF	2020-07-24 12:17:27.044205
29	WKLN	Walker Lane Exploration, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001413659","figiuid":"EQ0000000005850386","scfigi":"BBG001ST7087","cfigi":"BBG000R6V0T0","figi":"BBG000R6V0T0"}	https://api.polygon.io/v2/tickers/WKLN	2020-07-24 12:17:27.044205
30	WKPYF	Waskita Karya Persero Tbk Pt Shs Series B Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000065167481","scfigi":"BBG001SPBB86","cfigi":"BBG00KZZ3069","figi":"BBG00KZZ3069"}	https://api.polygon.io/v2/tickers/WKPYF	2020-07-24 12:17:27.044205
31	WKRCF	Wacker Neuson SE Namen-Akt (Germany)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000006669109","scfigi":"BBG001SLLS23","cfigi":"BBG000VM6CD9","figi":"BBG000VM6CD9"}	https://api.polygon.io/v2/tickers/WKRCF	2020-07-24 12:17:27.044205
32	WKULF	Weekend Unlimited Industries Inc. Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000069797676","scfigi":"BBG005ZKQV99","cfigi":"BBG00MK2PL19","figi":"BBG00MK2PL19"}	https://api.polygon.io/v2/tickers/WKULF	2020-07-24 12:17:27.044205
33	WKYN	WebSky, Inc. New Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001284068","figiuid":"EQ0015695300001000","scfigi":"BBG001SDGWS0","cfigi":"BBG000L9GPM9","figi":"BBG000L9GPM9"}	https://api.polygon.io/v2/tickers/WKYN	2020-07-24 12:17:27.044205
34	WLAB	White Label Liquid, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001385901","figiuid":"EQ0000000007332190","scfigi":"BBG001SNX2Y8","cfigi":"BBG000BLCXM0","figi":"BBG000BLCXM0"}	https://api.polygon.io/v2/tickers/WLAB	2020-07-24 12:17:27.044205
35	WLAN	Wialan Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001549678","figiuid":"EQ0010347200001000","scfigi":"BBG001S6WZS0","cfigi":"BBG000CJ2412","figi":"BBG000CJ2412"}	https://api.polygon.io/v2/tickers/WLAN	2020-07-24 12:17:27.044205
36	WLBMF	Wallbridge Mining Co Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0149708000001001","scfigi":"BBG001SFPRR7","cfigi":"BBG000C6B6P9","figi":"BBG000C6B6P9"}	https://api.polygon.io/v2/tickers/WLBMF	2020-07-24 12:17:27.044205
37	WLCGF	Welcia Holdings Co Ltd Ordinary Shares (Japan)	STOCKS	US	CS	JPY	true	OTC	2020-06-24	{"figiuid":"EQ0000000080887655","scfigi":"BBG001T3BPG4","cfigi":"BBG00R4G1CX6","figi":"BBG00R4G1CX6"}	https://api.polygon.io/v2/tickers/WLCGF	2020-07-24 12:17:27.044205
38	WLDBF	WILDBRAIN LTD COM VAR VTG (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000038217288","scfigi":"BBG001SQRQ20","cfigi":"BBG007BC2Z23","figi":"BBG007BC2Z23"}	https://api.polygon.io/v2/tickers/WLDBF	2020-07-24 12:17:27.044205
39	WLDCF	ICC Intl Cannabis Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000067016783","scfigi":"BBG001SR92H5","cfigi":"BBG00LLPC894","figi":"BBG00LLPC894"}	https://api.polygon.io/v2/tickers/WLDCF	2020-07-24 12:17:27.044205
40	WLDFF	Wildflower Brands Inc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000054578714","scfigi":"BBG001S5XJJ7","cfigi":"BBG00FVV6RG0","figi":"BBG00FVV6RG0"}	https://api.polygon.io/v2/tickers/WLDFF	2020-07-24 12:17:27.044205
41	WLDN	Willdan Group, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001370450","figiuid":"EQ0000000002726510","scfigi":"BBG001SNM0H3","cfigi":"BBG000Q1CKB8","figi":"BBG000Q1CKB8"}	https://api.polygon.io/v2/tickers/WLDN	2020-07-24 12:17:27.044205
42	WLFC	Willis Lease Finance Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001018164","figiuid":"EQ0019422400001000","scfigi":"BBG001S934S5","cfigi":"BBG000H105D2","figi":"BBG000H105D2"}	https://api.polygon.io/v2/tickers/WLFC	2020-07-24 12:17:27.044205
43	WLFFF	Wolfden Res Corp Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000056597724","scfigi":"BBG002VXMVQ7","cfigi":"BBG00GNDTLQ4","figi":"BBG00GNDTLQ4"}	https://api.polygon.io/v2/tickers/WLFFF	2020-07-24 12:17:27.044205
44	WLGC	WordLogic Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001139614","figiuid":"EQ0000000000251360","scfigi":"BBG001SKX050","cfigi":"BBG000NSCB95","figi":"BBG000NSCB95"}	https://api.polygon.io/v2/tickers/WLGC	2020-07-24 12:17:27.044205
45	WLK	Westlake Chemical Corporation	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001262823","figiuid":"EQ0000000000705647","scfigi":"BBG001SHVYF4","cfigi":"BBG000PXZFW2","figi":"BBG000PXZFW2"}	https://api.polygon.io/v2/tickers/WLK	2020-07-24 12:17:27.044205
46	WLL	Whiting Petroleum Corporation	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001255474","figiuid":"EQ0000000000688466","scfigi":"BBG001SFJN11","cfigi":"BBG000PX3XC0","figi":"BBG000PX3XC0"}	https://api.polygon.io/v2/tickers/WLL	2020-07-24 12:17:27.044205
47	WLLSF	Wilh. Wilhelmsen Holding ASA Ordinary Shares (Norway)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000057755552","scfigi":"BBG001S6H9X9","cfigi":"BBG00H1V8HZ8","figi":"BBG00H1V8HZ8"}	https://api.polygon.io/v2/tickers/WLLSF	2020-07-24 12:17:27.044205
48	WLMIF	Wilmar International Ltd Ordinary Shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002573516","scfigi":"BBG001SB93F0","cfigi":"BBG000G864W4","figi":"BBG000G864W4"}	https://api.polygon.io/v2/tickers/WLMIF	2020-07-24 12:17:27.044205
49	WLMS	Williams Industrial Services Group Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001136294","figiuid":"EQ0000000005669796","scfigi":"BBG001SRY1V3","cfigi":"BBG000Q934W4","figi":"BBG000Q934W4"}	https://api.polygon.io/v2/tickers/WLMS	2020-07-24 12:17:27.044205
50	WLOLQ	Winland Ocean Shipping Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003702155","scfigi":"BBG001STX658","cfigi":"BBG000RMHVZ6","figi":"BBG000RMHVZ6"}	https://api.polygon.io/v2/tickers/WLOLQ	2020-07-24 12:17:27.044205
51	WLRMF	Aloro Mng Corp Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000011412007","scfigi":"BBG001SVD147","cfigi":"BBG001731MH5","figi":"BBG001731MH5"}	https://api.polygon.io/v2/tickers/WLRMF	2020-07-24 12:17:30.028889
52	WLSI	Wellstar International, Inc.Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001346248","figiuid":"EQ0000000000623939","scfigi":"BBG001SK5KB0","cfigi":"BBG000LVR1M1","figi":"BBG000LVR1M1"}	https://api.polygon.io/v2/tickers/WLSI	2020-07-24 12:17:30.028889
53	WLTNF	Wilton Res Inc Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000048948835","scfigi":"BBG001T3D8C4","cfigi":"BBG00CMNZ1K5","figi":"BBG00CMNZ1K5"}	https://api.polygon.io/v2/tickers/WLTNF	2020-07-24 12:17:30.028889
54	WLTW	Willis Towers Watson Public Limited Company Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001140536","figiuid":"EQ0174976000001000","scfigi":"BBG001SHY2Q9","cfigi":"BBG000DB3KT1","figi":"BBG000DB3KT1"}	https://api.polygon.io/v2/tickers/WLTW	2020-07-24 12:17:30.028889
55	WLWHF	Woolworths Holdings Ltd Ordinary Shares (South Africa)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001098215","figiuid":"EQ0000000001743751","scfigi":"BBG001SB8VT4","cfigi":"BBG000HML8N6","figi":"BBG000HML8N6"}	https://api.polygon.io/v2/tickers/WLWHF	2020-07-24 12:17:30.028889
56	WLYW	Wally World Media Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000027892723","scfigi":"BBG003RSB4B9","cfigi":"BBG003RSB3L0","figi":"BBG003RSB3L0"}	https://api.polygon.io/v2/tickers/WLYW	2020-07-24 12:17:30.028889
57	WLYYF	Well Health Technologies Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000062776872","scfigi":"BBG002Z98D73","cfigi":"BBG00K1HRKL9","figi":"BBG00K1HRKL9"}	https://api.polygon.io/v2/tickers/WLYYF	2020-07-24 12:17:30.028889
58	WM	Waste Management, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000823768","figiuid":"EQ0010757000001000","scfigi":"BBG001S5XH47","cfigi":"BBG000BWVSR1","figi":"BBG000BWVSR1"}	https://api.polygon.io/v2/tickers/WM	2020-07-24 12:17:30.028889
59	WMAL	Worlds Mall, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001592592","figiuid":"EQ0000000036842009","scfigi":"BBG006X0Z3B2","cfigi":"BBG006X0Z395","figi":"BBG006X0Z395"}	https://api.polygon.io/v2/tickers/WMAL	2020-07-24 12:17:30.028889
60	WMB	Williams Companies Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000107263","figiuid":"EQ0010166100001000","scfigi":"BBG001S5XH10","cfigi":"BBG000BWVCP8","figi":"BBG000BWVCP8"}	https://api.polygon.io/v2/tickers/WMB	2020-07-24 12:17:30.028889
61	WMCB	Willamette Community Bank Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000825815","scfigi":"BBG001SDTCV6","cfigi":"BBG000C3DYW5","figi":"BBG000C3DYW5"}	https://api.polygon.io/v2/tickers/WMCB	2020-07-24 12:17:30.028889
62	WMDH	WMD Holdings Group Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0732684800001000","scfigi":"BBG001SFCVJ1","cfigi":"BBG000CGWVC3","figi":"BBG000CGWVC3"}	https://api.polygon.io/v2/tickers/WMDH	2020-07-24 12:17:30.028889
63	WMDL	Worldmodal Network Services Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001029140","figiuid":"EQ0017022900001000","scfigi":"BBG001SDX2D3","cfigi":"BBG000LL3H62","figi":"BBG000LL3H62"}	https://api.polygon.io/v2/tickers/WMDL	2020-07-24 12:17:30.028889
64	WMELF	Westmount Energy Ltd Ordinary Shares (Jersey)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000073976689","scfigi":"BBG001S69JM8","cfigi":"BBG00NVBTCJ2","figi":"BBG00NVBTCJ2"}	https://api.polygon.io/v2/tickers/WMELF	2020-07-24 12:17:30.028889
65	WMG	Warner Music Group Corp. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000081924168","scfigi":"BBG00RP2T9V3","cfigi":"BBG00RP2T9T6","figi":"BBG00RP2T9T6"}	https://api.polygon.io/v2/tickers/WMG	2020-07-24 12:17:30.028889
66	WMGEF	Winchester Minerals & Gold Exploration Ltd Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0010821700001003","scfigi":"BBG001S7VV80","cfigi":"BBG000HTY2G8","figi":"BBG000HTY2G8"}	https://api.polygon.io/v2/tickers/WMGEF	2020-07-24 12:17:30.028889
67	WMGI	Wright Medical Group N.V. Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001492658","figiuid":"EQ0000000010393146","scfigi":"BBG001S7Z510","cfigi":"BBG000BBXJV0","figi":"BBG000BBXJV0"}	https://api.polygon.io/v2/tickers/WMGI	2020-07-24 12:17:30.028889
68	WMGPF	Williams Grand Prix Holdings Plc, Wantage German Cert Ordinary Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000056772462","scfigi":"BBG001V0BD29","cfigi":"BBG00GPXLLJ4","figi":"BBG00GPXLLJ4"}	https://api.polygon.io/v2/tickers/WMGPF	2020-07-24 12:17:30.028889
69	WMGR	Wellness Matrix Group, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000020716518","scfigi":"BBG0027NFWH2","cfigi":"BBG0027NFVR3","figi":"BBG0027NFVR3"}	https://api.polygon.io/v2/tickers/WMGR	2020-07-24 12:17:30.028889
70	WMGTF	Wilmington Group Plc Ordinary Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000060023100","scfigi":"BBG001S8PH77","cfigi":"BBG00HYZBDJ6","figi":"BBG00HYZBDJ6"}	https://api.polygon.io/v2/tickers/WMGTF	2020-07-24 12:17:30.028889
71	WMHH	Watermark Group, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001510333","figiuid":"EQ0000000021915000","scfigi":"BBG002GB4G49","cfigi":"BBG002GB4FD1","figi":"BBG002GB4FD1"}	https://api.polygon.io/v2/tickers/WMHH	2020-07-24 12:17:30.028889
72	WMHI	World Mobile Holdings, Inc.  Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001501275","figiuid":"EQ0000000002547097","scfigi":"BBG001S9BDX0","cfigi":"BBG000BFNWC4","figi":"BBG000BFNWC4"}	https://api.polygon.io/v2/tickers/WMHI	2020-07-24 12:17:30.028889
73	WMK	Weis Markets, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000105418","figiuid":"EQ0010163400001000","scfigi":"BBG001S5XH56","cfigi":"BBG000BWW509","figi":"BBG000BWW509"}	https://api.polygon.io/v2/tickers/WMK	2020-07-24 12:17:30.028889
74	WMLLF	Wealth Minerals Ltd. Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0017904500001001","scfigi":"BBG001SD4C43","cfigi":"BBG000L5HRL3","figi":"BBG000L5HRL3"}	https://api.polygon.io/v2/tickers/WMLLF	2020-07-24 12:17:30.028889
75	WMMVF	Wal-mart de Mexico S A B de C V Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0013612500001002","scfigi":"BBG001S7WV70","cfigi":"BBG000BK6KY4","figi":"BBG000BK6KY4"}	https://api.polygon.io/v2/tickers/WMMVF	2020-07-24 12:17:30.028889
76	WMNNF	European Cobalt Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000020814581","scfigi":"BBG001TSXYW8","cfigi":"BBG00286MN26","figi":"BBG00286MN26"}	https://api.polygon.io/v2/tickers/WMNNF	2020-07-24 12:17:30.028889
77	WMPN	William Penn Bancorp, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001420821","figiuid":"EQ0000000006068118","scfigi":"BBG001T1P5J4","cfigi":"BBG000V7V1J2","figi":"BBG000V7V1J2"}	https://api.polygon.io/v2/tickers/WMPN	2020-07-24 12:17:30.028889
78	WMRSF	Westminster Res Ltd Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000010388129","scfigi":"BBG001S7YZD2","cfigi":"BBG000BD7KL3","figi":"BBG000BD7KL3"}	https://api.polygon.io/v2/tickers/WMRSF	2020-07-24 12:17:30.028889
79	WMS	ADVANCED DRAINAGE SYSTEMS, INC.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001604028","figiuid":"EQ0000000001736409","scfigi":"BBG001SH4LQ0","cfigi":"BBG000G7CDN9","figi":"BBG000G7CDN9"}	https://api.polygon.io/v2/tickers/WMS	2020-07-24 12:17:30.028889
80	WMSI	Williams Industries, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000107294","figiuid":"EQ0010786600001000","scfigi":"BBG001S5XH83","cfigi":"BBG000BWX1N2","figi":"BBG000BWX1N2"}	https://api.polygon.io/v2/tickers/WMSI	2020-07-24 12:17:30.028889
81	WMT	Walmart Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000104169","figiuid":"EQ0010161600001000","scfigi":"BBG001S5XH92","cfigi":"BBG000BWXBC2","figi":"BBG000BWXBC2"}	https://api.polygon.io/v2/tickers/WMT	2020-07-24 12:17:30.028889
82	WMTN	Westmountain Gold, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001421601","figiuid":"EQ0000000009249343","scfigi":"BBG001SS22W3","cfigi":"BBG000BTCB69","figi":"BBG000BTCB69"}	https://api.polygon.io/v2/tickers/WMTN	2020-07-24 12:17:30.028889
83	WMWWF	West Wits Mining Ltd, Armadale Vic Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000080641325","scfigi":"BBG001SQTC10","cfigi":"BBG00R2CCDJ9","figi":"BBG00R2CCDJ9"}	https://api.polygon.io/v2/tickers/WMWWF	2020-07-24 12:17:30.028889
84	WNARF	Western Areas NL Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003266196","scfigi":"BBG001S60XH2","cfigi":"BBG000FZ4581","figi":"BBG000FZ4581"}	https://api.polygon.io/v2/tickers/WNARF	2020-07-24 12:17:30.028889
85	WNBD	Winning Brands Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001114898","figiuid":"EQ0017043900001000","scfigi":"BBG001SDVL07","cfigi":"BBG000LKCV81","figi":"BBG000LKCV81"}	https://api.polygon.io/v2/tickers/WNBD	2020-07-24 12:17:30.028889
86	WNC	Wabash National Corp.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000879526","figiuid":"EQ0010161100001000","scfigi":"BBG001S6W2K1","cfigi":"BBG000CGM9H8","figi":"BBG000CGM9H8"}	https://api.polygon.io/v2/tickers/WNC	2020-07-24 12:17:30.028889
87	WNCG	Wyncrest Group, Inc. NEW Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001318174","figiuid":"EQ0000000000047698","scfigi":"BBG001SFSC97","cfigi":"BBG000CTY0N9","figi":"BBG000CTY0N9"}	https://api.polygon.io/v2/tickers/WNCG	2020-07-24 12:17:30.028889
88	WNCNF	Wincanton PLC Ordinary Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0096904900001001","scfigi":"BBG001SHYLM1","cfigi":"BBG000DMZK49","figi":"BBG000DMZK49"}	https://api.polygon.io/v2/tickers/WNCNF	2020-07-24 12:17:30.028889
89	WNCP	Wineco Productions Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0022595100001000","scfigi":"BBG001SB54H0","cfigi":"BBG000BYBKR6","figi":"BBG000BYBKR6"}	https://api.polygon.io/v2/tickers/WNCP	2020-07-24 12:17:30.028889
90	WNDLF	Wendel Investissement ACT (France) EUR	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0011543200001001","scfigi":"BBG001S69110","cfigi":"BBG000BZC8K6","figi":"BBG000BZC8K6"}	https://api.polygon.io/v2/tickers/WNDLF	2020-07-24 12:17:30.028889
91	WNDW	SolarWindow Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001071840","figiuid":"EQ0038634200001000","scfigi":"BBG001S9KS76","cfigi":"BBG000BQT8M6","figi":"BBG000BQT8M6"}	https://api.polygon.io/v2/tickers/WNDW	2020-07-24 12:17:30.028889
92	WNEB	Western New England Bancorp, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001157647","figiuid":"EQ0175298300001000","scfigi":"BBG001SFXCR1","cfigi":"BBG000C3KGT0","figi":"BBG000C3KGT0"}	https://api.polygon.io/v2/tickers/WNEB	2020-07-24 12:17:30.028889
93	WNGFF	Wongs International Holdings Ltd Ordinary Shares (Bermuda)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000053405921","scfigi":"BBG001S6JDC1","cfigi":"BBG00FGRNLC4","figi":"BBG00FGRNLC4"}	https://api.polygon.io/v2/tickers/WNGFF	2020-07-24 12:17:30.028889
94	WNGRF	Weston George Ltd Pfd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0011095500001001","scfigi":"BBG001S60WZ4","cfigi":"BBG000CS5RD5","figi":"BBG000CS5RD5"}	https://api.polygon.io/v2/tickers/WNGRF	2020-07-24 12:17:30.028889
95	WNMLA	Winmill & Co Incorporated Class A Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000052234","figiuid":"EQ0013228000002000","scfigi":"BBG001SCNXX6","cfigi":"BBG000BPSGY8","figi":"BBG000BPSGY8"}	https://api.polygon.io/v2/tickers/WNMLA	2020-07-24 12:17:30.028889
96	WNRC	Wenr Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0020211300001000","scfigi":"BBG001S6Z2X4","cfigi":"BBG000BF1R57","figi":"BBG000BF1R57"}	https://api.polygon.io/v2/tickers/WNRC	2020-07-24 12:17:30.028889
97	WNRP	West Suburban Bancorp, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000805080","figiuid":"EQ0084062000001000","scfigi":"BBG001S921B0","cfigi":"BBG000BJZ9X1","figi":"BBG000BJZ9X1"}	https://api.polygon.io/v2/tickers/WNRP	2020-07-24 12:17:30.028889
98	WNTR	Worldwide Diversified Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001334831","figiuid":"EQ0000000003368455","scfigi":"BBG001SRC8Y9","cfigi":"BBG000PSGS29","figi":"BBG000PSGS29"}	https://api.polygon.io/v2/tickers/WNTR	2020-07-24 12:17:30.028889
99	WNWG	Wentworth Energy, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001138932","figiuid":"EQ0000000001175388","scfigi":"BBG001SC5KR1","cfigi":"BBG000BTQP63","figi":"BBG000BTQP63"}	https://api.polygon.io/v2/tickers/WNWG	2020-07-24 12:17:30.028889
100	WNXDF	Diebold Nixdorf AG Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001179738","scfigi":"BBG001SKK7B2","cfigi":"BBG000Q23JZ3","figi":"BBG000Q23JZ3"}	https://api.polygon.io/v2/tickers/WNXDF	2020-07-24 12:17:30.028889
101	WOAM	World Am, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001107522","figiuid":"EQ0031310100001000","scfigi":"BBG001S94547","cfigi":"BBG000BNSL90","figi":"BBG000BNSL90"}	https://api.polygon.io/v2/tickers/WOAM	2020-07-24 12:17:31.996295
102	WOBK	WOODSBORO BK MD Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001404744","scfigi":"BBG001SMS1X9","cfigi":"BBG000QFMX82","figi":"BBG000QFMX82"}	https://api.polygon.io/v2/tickers/WOBK	2020-07-24 12:17:31.996295
103	WODI	WOD Retail Solutions Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000704366","figiuid":"EQ0013296100001000","scfigi":"BBG001S9BDC3","cfigi":"BBG000BM1HJ9","figi":"BBG000BM1HJ9"}	https://api.polygon.io/v2/tickers/WODI	2020-07-24 12:17:31.996295
104	WOFA	Wisdom Homes of America, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001281198","figiuid":"EQ0000000001717463","scfigi":"BBG001SNW8R4","cfigi":"BBG000G9LS89","figi":"BBG000G9LS89"}	https://api.polygon.io/v2/tickers/WOFA	2020-07-24 12:17:31.996295
105	WOGI	World Oil Group, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001431679","figiuid":"EQ0000000010445425","scfigi":"BBG001T8ZLS3","cfigi":"BBG000R1DQZ7","figi":"BBG000R1DQZ7"}	https://api.polygon.io/v2/tickers/WOGI	2020-07-24 12:17:31.996295
106	WOIIF	ABILENE OIL & GAS LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000027627806","scfigi":"BBG001S6M4R1","cfigi":"BBG003Q61KJ5","figi":"BBG003Q61KJ5"}	https://api.polygon.io/v2/tickers/WOIIF	2020-07-24 12:17:31.996295
107	WOLTF	Wolters Kluwer NV Ordinary shares (Netherlands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003832431","scfigi":"BBG001S69TQ2","cfigi":"BBG000GYZ3F6","figi":"BBG000GYZ3F6"}	https://api.polygon.io/v2/tickers/WOLTF	2020-07-24 12:17:31.996295
108	WOLV	Wolverine Technologies Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001424404","figiuid":"EQ0000000008170447","scfigi":"BBG001SSY5L3","cfigi":"BBG000BX2RM8","figi":"BBG000BX2RM8"}	https://api.polygon.io/v2/tickers/WOLV	2020-07-24 12:17:31.996295
109	WOLWF	Woolworths Ltd Ord Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001559127","figiuid":"EQ0011314800001002","scfigi":"BBG001S64CC9","cfigi":"BBG000C0MB24","figi":"BBG000C0MB24"}	https://api.polygon.io/v2/tickers/WOLWF	2020-07-24 12:17:31.996295
110	WONEF	WEQ Hldgs Inc Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000031433901","scfigi":"BBG001SRB4Z8","cfigi":"BBG0055QVZL0","figi":"BBG0055QVZL0"}	https://api.polygon.io/v2/tickers/WONEF	2020-07-24 12:17:31.996295
111	WOPEF	Woodside Pete Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0011314700001004","scfigi":"BBG001S5NBN0","cfigi":"BBG000C0M028","figi":"BBG000C0M028"}	https://api.polygon.io/v2/tickers/WOPEF	2020-07-24 12:17:31.996295
112	WOR	WORTHINGTON INDUSTRIES, INC. COMMON SHARES	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000108516","figiuid":"EQ0010178500001000","scfigi":"BBG001S6XN51","cfigi":"BBG000HL7499","figi":"BBG000HL7499"}	https://api.polygon.io/v2/tickers/WOR	2020-07-24 12:17:31.996295
113	WORC	Wake Up Now, Inc. New Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0015906600001000","scfigi":"BBG001S89RX4","cfigi":"BBG000DNTVD0","figi":"BBG000DNTVD0"}	https://api.polygon.io/v2/tickers/WORC	2020-07-24 12:17:31.996295
114	WORK	Slack Technologies, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001764925","figiuid":"EQ0000000038482828","scfigi":"BBG007G7V532","cfigi":"BBG007G7V505","figi":"BBG007G7V505"}	https://api.polygon.io/v2/tickers/WORK	2020-07-24 12:17:31.996295
115	WORX	SCWorx Corp. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000051287265","scfigi":"BBG00DLMHF70","cfigi":"BBG00DLMHF89","figi":"BBG00DLMHF89"}	https://api.polygon.io/v2/tickers/WORX	2020-07-24 12:17:31.996295
116	WOSCF	Ferguson Plc New Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000075012215","scfigi":"BBG00NZ6VPK5","cfigi":"BBG00P5M4V07","figi":"BBG00P5M4V07"}	https://api.polygon.io/v2/tickers/WOSCF	2020-07-24 12:17:31.996295
117	WOSSF	Water Oasis Group Limited Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000260185","scfigi":"BBG001SGKBZ6","cfigi":"BBG000NTY4W9","figi":"BBG000NTY4W9"}	https://api.polygon.io/v2/tickers/WOSSF	2020-07-24 12:17:31.996295
118	WOW	WideOpenWest, Inc. Common Stock	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001701051","figiuid":"EQ0000000055736581","scfigi":"BBG00GBB6WG3","cfigi":"BBG00GBB6WF4","figi":"BBG00GBB6WF4"}	https://api.polygon.io/v2/tickers/WOW	2020-07-24 12:17:31.996295
119	WOWI	Metro One Telecommunications, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000920990","figiuid":"EQ0019424700001000","scfigi":"BBG001S6DVT9","cfigi":"BBG000BJD590","figi":"BBG000BJD590"}	https://api.polygon.io/v2/tickers/WOWI	2020-07-24 12:17:31.996295
120	WOWMF	WOW Unlimited Media Inc Common Shares  (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000068549225","scfigi":"BBG001SKP1M8","cfigi":"BBG00M4Z88X7","figi":"BBG00M4Z88X7"}	https://api.polygon.io/v2/tickers/WOWMF	2020-07-24 12:17:31.996295
121	WOWU	WOWI, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0010741300001000","scfigi":"BBG001S9CKN4","cfigi":"BBG000F37H47","figi":"BBG000F37H47"}	https://api.polygon.io/v2/tickers/WOWU	2020-07-24 12:17:31.996295
122	WPCZF	Blue Star Gold Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000025611507","scfigi":"BBG001T6BJD4","cfigi":"BBG0036H4QB5","figi":"BBG0036H4QB5"}	https://api.polygon.io/v2/tickers/WPCZF	2020-07-24 12:17:31.996295
123	WPEC	Wei Pai Electronic Commerce Company Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000044308680","scfigi":"BBG009LVJTM0","cfigi":"BBG009LVJTN9","figi":"BBG009LVJTN9"}	https://api.polygon.io/v2/tickers/WPEC	2020-07-24 12:17:31.996295
124	WPFH	World Poker Fund Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001205332","figiuid":"EQ0000000002641202","scfigi":"BBG001SR9W89","cfigi":"BBG000PR5X04","figi":"BBG000PR5X04"}	https://api.polygon.io/v2/tickers/WPFH	2020-07-24 12:17:31.996295
125	WPGHF	WPG HOLDING CO LTD Ordinary Shares Taiwan(TW )	STOCKS	US	CS	TWD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003159301","scfigi":"BBG001SML4N1","cfigi":"BBG000QRZP52","figi":"BBG000QRZP52"}	https://api.polygon.io/v2/tickers/WPGHF	2020-07-24 12:17:31.996295
126	WPHM	Winston Pharmaceuticals, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001302554","figiuid":"EQ0000000001362443","scfigi":"BBG001SMK988","cfigi":"BBG000QBWKW1","figi":"BBG000QBWKW1"}	https://api.polygon.io/v2/tickers/WPHM	2020-07-24 12:17:31.996295
127	WPKS	World Poker Store, Inc. (The) Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001313638","figiuid":"EQ0141409800001000","scfigi":"BBG001SF0T63","cfigi":"BBG000BRF3K2","figi":"BBG000BRF3K2"}	https://api.polygon.io/v2/tickers/WPKS	2020-07-24 12:17:31.996295
128	WPM	Wheaton Precious Metals Corp. Common Stock	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001323404","figiuid":"EQ0000000001353342","scfigi":"BBG001S6DSP0","cfigi":"BBG000PVRDL2","figi":"BBG000PVRDL2"}	https://api.polygon.io/v2/tickers/WPM	2020-07-24 12:17:31.996295
129	WPMLF	Western Pacific Minerals Ltd Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003394362","scfigi":"BBG001SJ4LS4","cfigi":"BBG000RJNM04","figi":"BBG000RJNM04"}	https://api.polygon.io/v2/tickers/WPMLF	2020-07-24 12:17:31.996295
130	WPNNF	FIRST RESPONDER TECHNOLOGIES INC Common Shares  Canada(CA )	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000082386852","scfigi":"BBG00QB42GC0","cfigi":"BBG00S1M10V2","figi":"BBG00S1M10V2"}	https://api.polygon.io/v2/tickers/WPNNF	2020-07-24 12:17:31.996295
131	WPNTF	WARPAINT LONDON PLC Common Shares  United Kingdom(GB )	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000079806662","scfigi":"BBG00FB2K596","cfigi":"BBG00QRNLQJ1","figi":"BBG00QRNLQJ1"}	https://api.polygon.io/v2/tickers/WPNTF	2020-07-24 12:17:31.996295
132	WPPGF	WPP plc Ordinary Shares (Jersey)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000093851","scfigi":"BBG001S63QP5","cfigi":"BBG000D6VSK3","figi":"BBG000D6VSK3"}	https://api.polygon.io/v2/tickers/WPPGF	2020-07-24 12:17:31.996295
133	WPRT	Westport Fuel Systems Inc Common Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001370416","figiuid":"EQ0000000000089656","scfigi":"BBG001S5PTW9","cfigi":"BBG000P9D329","figi":"BBG000P9D329"}	https://api.polygon.io/v2/tickers/WPRT	2020-07-24 12:17:31.996295
134	WPUR	WaterPure International, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001363488","figiuid":"EQ0000000003165384","scfigi":"BBG001SSJLN3","cfigi":"BBG000QS6V86","figi":"BBG000QS6V86"}	https://api.polygon.io/v2/tickers/WPUR	2020-07-24 12:17:31.996295
135	WPX	WPX Energy, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001518832","figiuid":"EQ0000000017323545","scfigi":"BBG001V16YX3","cfigi":"BBG001NY45K9","figi":"BBG001NY45K9"}	https://api.polygon.io/v2/tickers/WPX	2020-07-24 12:17:31.996295
136	WQNI	WQN, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001089932","figiuid":"EQ0096101500001000","scfigi":"BBG001SD0DX3","cfigi":"BBG000BZ8FY0","figi":"BBG000BZ8FY0"}	https://api.polygon.io/v2/tickers/WQNI	2020-07-24 12:17:31.996295
137	WQTEF	Weiqiao Textile Company Ltd Shs H (China)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001020664","scfigi":"BBG001SBTW91","cfigi":"BBG000MCM2S9","figi":"BBG000MCM2S9"}	https://api.polygon.io/v2/tickers/WQTEF	2020-07-24 12:17:31.996295
138	WRB	W.R. Berkley Corporation	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000011544","figiuid":"EQ0010245700001000","scfigi":"BBG001S5P463","cfigi":"BBG000BD1HP2","figi":"BBG000BD1HP2"}	https://api.polygon.io/v2/tickers/WRB	2020-07-24 12:17:31.996295
139	WRCDF	Wirecard Ag, Berlin Ordinary shares (Germany)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000006535319","scfigi":"BBG001SFTTS8","cfigi":"BBG000KMT1D0","figi":"BBG000KMT1D0"}	https://api.polygon.io/v2/tickers/WRCDF	2020-07-24 12:17:31.996295
140	WRFRF	Wharf Real Estate Investment Co Ltd	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000067168352","scfigi":"BBG00HMNRYB1","cfigi":"BBG00LN7JKL4","figi":"BBG00LN7JKL4"}	https://api.polygon.io/v2/tickers/WRFRF	2020-07-24 12:17:31.996295
141	WRFX	Worldflix, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001452537","figiuid":"EQ0000000026224552","scfigi":"BBG0039FXC98","cfigi":"BBG0039FXBK7","figi":"BBG0039FXBK7"}	https://api.polygon.io/v2/tickers/WRFX	2020-07-24 12:17:31.996295
142	WRGL	Warrior Girl Corp Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001356451","scfigi":"BBG001SMJCK9","cfigi":"BBG000QBFBY8","figi":"BBG000QBFBY8"}	https://api.polygon.io/v2/tickers/WRGL	2020-07-24 12:17:31.996295
143	WRHLF	WORLD HIGH LIFE PLC Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000083583255","scfigi":"BBG00Q727G70","cfigi":"BBG00SY436B3","figi":"BBG00SY436B3"}	https://api.polygon.io/v2/tickers/WRHLF	2020-07-24 12:17:31.996295
144	WRIT	WRIT Media Group, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001413547","figiuid":"EQ0000000008759399","scfigi":"BBG001T58DV3","cfigi":"BBG000NQCTX3","figi":"BBG000NQCTX3"}	https://api.polygon.io/v2/tickers/WRIT	2020-07-24 12:17:31.996295
145	WRIV	White River Bancshares Co Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002032887","scfigi":"BBG001SPJPS5","cfigi":"BBG000JM5PD5","figi":"BBG000JM5PD5"}	https://api.polygon.io/v2/tickers/WRIV	2020-07-24 12:17:31.996295
146	WRK	WestRock Company	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001732845","figiuid":"EQ0000000043006308","scfigi":"BBG008NXC581","cfigi":"BBG008NXC572","figi":"BBG008NXC572"}	https://api.polygon.io/v2/tickers/WRK	2020-07-24 12:17:31.996295
147	WRLD	World Acceptance Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000108385","figiuid":"EQ0010789000001000","scfigi":"BBG001S6H6C8","cfigi":"BBG000C3G9J2","figi":"BBG000C3G9J2"}	https://api.polygon.io/v2/tickers/WRLD	2020-07-24 12:17:31.996295
148	WRMA	Wiremedia Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001619191","scfigi":"BBG001SLLZM5","cfigi":"BBG000PPV083","figi":"BBG000PPV083"}	https://api.polygon.io/v2/tickers/WRMA	2020-07-24 12:17:31.996295
149	WRN	Western Copper and Gold Corporation	STOCKS	US	CS	USD	true	AMX	2020-06-24	{"cik":"0001364125","figiuid":"EQ0000000002535613","scfigi":"BBG001SR0KP5","cfigi":"BBG000PLGM27","figi":"BBG000PLGM27"}	https://api.polygon.io/v2/tickers/WRN	2020-07-24 12:17:31.996295
150	WROCF	White Rock Minerals Limited Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000085062242","scfigi":"BBG001T8V4Z7","cfigi":"BBG00V4VH679","figi":"BBG00V4VH679"}	https://api.polygon.io/v2/tickers/WROCF	2020-07-24 12:17:31.996295
151	WRPSF	Western Pacific Resources Corp Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000010949034","scfigi":"BBG001T63RJ9","cfigi":"BBG0014SQYB6","figi":"BBG0014SQYB6"}	https://api.polygon.io/v2/tickers/WRPSF	2020-07-24 12:17:34.025337
152	WRRI	Wari, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000042090358","scfigi":"BBG008F5LJC6","cfigi":"BBG008F5LJB7","figi":"BBG008F5LJB7"}	https://api.polygon.io/v2/tickers/WRRI	2020-07-24 12:17:34.025337
153	WRRNF	Westcore Energy Ltd Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000007910011","scfigi":"BBG001SV1514","cfigi":"BBG000RPJW76","figi":"BBG000RPJW76"}	https://api.polygon.io/v2/tickers/WRRNF	2020-07-24 12:17:34.025337
154	WRRZF	WALKER RIV RES CORP Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000049869265","scfigi":"BBG002R0NXV3","cfigi":"BBG00D0HDGY6","figi":"BBG00D0HDGY6"}	https://api.polygon.io/v2/tickers/WRRZF	2020-07-24 12:17:34.025337
155	WRTBF	Wartsila Corporation Ordinary Shares (Finland)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000079293","scfigi":"BBG001S77XL8","cfigi":"BBG000BXSFC7","figi":"BBG000BXSFC7"}	https://api.polygon.io/v2/tickers/WRTBF	2020-07-24 12:17:34.025337
156	WRTC	Wrap Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000056203311","scfigi":"BBG00GGSY962","cfigi":"BBG00GGSY953","figi":"BBG00GGSY953"}	https://api.polygon.io/v2/tickers/WRTC	2020-07-24 12:17:34.025337
157	WRTTF	WUSTENROT & WURTTEMBERGISCHE AG Ordinary Shares	STOCKS	US	CS	EUR	true	OTC	2020-06-24	{"figiuid":"EQ0000000000428414","scfigi":"BBG001SD7J90","cfigi":"BBG000D93SD6","figi":"BBG000D93SD6"}	https://api.polygon.io/v2/tickers/WRTTF	2020-07-24 12:17:34.025337
158	WSBC	WesBanco, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000203596","figiuid":"EQ0010789800001000","scfigi":"BBG001S5XJR8","cfigi":"BBG000BX0BJ9","figi":"BBG000BX0BJ9"}	https://api.polygon.io/v2/tickers/WSBC	2020-07-24 12:17:34.025337
159	WSBF	Waterstone Financial, Inc. Common Stock (MD)	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001569994","figiuid":"EQ0000000001808484","scfigi":"BBG001SNPYP7","cfigi":"BBG000FRZWN9","figi":"BBG000FRZWN9"}	https://api.polygon.io/v2/tickers/WSBF	2020-07-24 12:17:34.025337
160	WSC	WillScot Mobile Mini Holdings Corp. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001647088","figiuid":"EQ0000000045221751","scfigi":"BBG00B0FS9V7","cfigi":"BBG00B0FS947","figi":"BBG00B0FS947"}	https://api.polygon.io/v2/tickers/WSC	2020-07-24 12:17:34.025337
161	WSCC	Waterside Capital Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000924095","figiuid":"EQ0031332900001000","scfigi":"BBG001S90GN6","cfigi":"BBG000BNBP26","figi":"BBG000BNBP26"}	https://api.polygon.io/v2/tickers/WSCC	2020-07-24 12:17:34.025337
162	WSCO	Wall Street Media Co, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001473490","figiuid":"EQ0000000016990900","scfigi":"BBG001V0S733","cfigi":"BBG001KTQ949","figi":"BBG001KTQ949"}	https://api.polygon.io/v2/tickers/WSCO	2020-07-24 12:17:34.025337
163	WSCRF	North American Nickel, Inc. Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000795800","figiuid":"EQ0000000003053364","scfigi":"BBG001S5ZQG2","cfigi":"BBG000H525R6","figi":"BBG000H525R6"}	https://api.polygon.io/v2/tickers/WSCRF	2020-07-24 12:17:34.025337
164	WSFGQ	WSB Financial Group, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001372791","figiuid":"EQ0000000002372684","scfigi":"BBG001SP6D06","cfigi":"BBG000HG8444","figi":"BBG000HG8444"}	https://api.polygon.io/v2/tickers/WSFGQ	2020-07-24 12:17:34.025337
165	WSFL	Woodstock Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001095373","figiuid":"EQ0000000000400558","scfigi":"BBG001S7S9N6","cfigi":"BBG000BD6GL3","figi":"BBG000BD6GL3"}	https://api.polygon.io/v2/tickers/WSFL	2020-07-24 12:17:34.025337
166	WSFS	WSFS Financial Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000828944","figiuid":"EQ0010707500001000","scfigi":"BBG001S5XJX1","cfigi":"BBG000BX1C88","figi":"BBG000BX1C88"}	https://api.polygon.io/v2/tickers/WSFS	2020-07-24 12:17:34.025337
167	WSFT	Wikisoft Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001393781","figiuid":"EQ0756772100001000","scfigi":"BBG001SBPLG1","cfigi":"BBG000BRC496","figi":"BBG000BRC496"}	https://api.polygon.io/v2/tickers/WSFT	2020-07-24 12:17:34.025337
168	WSGF	World Series of Golf, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001389879","figiuid":"EQ0000000003478582","scfigi":"BBG001ST9G35","cfigi":"BBG000R8D9B6","figi":"BBG000R8D9B6"}	https://api.polygon.io/v2/tickers/WSGF	2020-07-24 12:17:34.025337
169	WSHE	GreenLink International Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001129120","figiuid":"EQ0174566300001000","scfigi":"BBG001SHC611","cfigi":"BBG000D2STN1","figi":"BBG000D2STN1"}	https://api.polygon.io/v2/tickers/WSHE	2020-07-24 12:17:34.025337
170	WSHP	Wasatch Pharmaceutical, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000037848","figiuid":"EQ0018614800001000","scfigi":"BBG001SH6P16","cfigi":"BBG000NKS0F2","figi":"BBG000NKS0F2"}	https://api.polygon.io/v2/tickers/WSHP	2020-07-24 12:17:34.025337
171	WSIOF	Wasion Holdings Ltd Ordinary Shares (Cayman Islands)	STOCKS	US	CS	HKD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002654251","scfigi":"BBG001SK4JV2","cfigi":"BBG000PS6Z42","figi":"BBG000PS6Z42"}	https://api.polygon.io/v2/tickers/WSIOF	2020-07-24 12:17:34.025337
172	WSKEF	Wisekey International Holdings Ltd. Ordinary Shares (Switzerland)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000053013380","scfigi":"BBG001SRXJ09","cfigi":"BBG00FB4QFC0","figi":"BBG00FB4QFC0"}	https://api.polygon.io/v2/tickers/WSKEF	2020-07-24 12:17:34.025337
173	WSM	Williams-Sonoma, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000719955","figiuid":"EQ0010790500001000","scfigi":"BBG001SBW7S1","cfigi":"BBG000FSMWC3","figi":"BBG000FSMWC3"}	https://api.polygon.io/v2/tickers/WSM	2020-07-24 12:17:34.025337
174	WSML	Williamsville Sears Management, Inc. Common Stock	STOCKS	US	CS	CHF	true	OTC	2020-06-24	{"figiuid":"EQ0000000011337812","scfigi":"BBG001TCLRG9","cfigi":"BBG0016RPRJ4","figi":"BBG0016RPRJ4"}	https://api.polygon.io/v2/tickers/WSML	2020-07-24 12:17:34.025337
175	WSO	Watsco, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000105016","figiuid":"EQ0010790700002000","scfigi":"BBG001S82CQ2","cfigi":"BBG000DJN7L9","figi":"BBG000DJN7L9"}	https://api.polygon.io/v2/tickers/WSO	2020-07-24 12:17:34.025337
176	WSO.B	Watsco, Inc. Class B	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000105016","figiuid":"EQ0010790700003000","scfigi":"BBG001S5XK13","cfigi":"BBG000BX1R49","figi":"BBG000BX1R49"}	https://api.polygon.io/v2/tickers/WSO.B	2020-07-24 12:17:34.025337
177	WSOUF	Washington Hsoul Pattison & Co Ltd (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000070199936","scfigi":"BBG001S649N4","cfigi":"BBG00MPW1N38","figi":"BBG00MPW1N38"}	https://api.polygon.io/v2/tickers/WSOUF	2020-07-24 12:17:34.025337
178	WSPCF	W-SCOPE CORP, Kawasaki Common Shares  (Japan)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000082093837","scfigi":"BBG00282PFW6","cfigi":"BBG00RR4P139","figi":"BBG00RR4P139"}	https://api.polygon.io/v2/tickers/WSPCF	2020-07-24 12:17:34.025337
179	WSPOF	WSP Global Inc Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000005416002","scfigi":"BBG001SCKDG2","cfigi":"BBG000BJZ7X5","figi":"BBG000BJZ7X5"}	https://api.polygon.io/v2/tickers/WSPOF	2020-07-24 12:17:34.025337
180	WSRC	Western Sierra Resource Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0081854200001000","scfigi":"BBG001SFS896","cfigi":"BBG000CY4H27","figi":"BBG000CY4H27"}	https://api.polygon.io/v2/tickers/WSRC	2020-07-24 12:17:34.025337
181	WSRLF	WISR LTD ORDINARY FULLY PAID (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000082220598","scfigi":"BBG001S6NFB2","cfigi":"BBG00RTXT095","figi":"BBG00RTXT095"}	https://api.polygon.io/v2/tickers/WSRLF	2020-07-24 12:17:34.025337
182	WSRRF	Harrys Manufacturing Inc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000010474801","scfigi":"BBG001SPQ8T4","cfigi":"BBG000BMQC67","figi":"BBG000BMQC67"}	https://api.polygon.io/v2/tickers/WSRRF	2020-07-24 12:17:34.025337
183	WSRUF	Waseco Resources Inc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002713825","scfigi":"BBG001SG4G01","cfigi":"BBG000Q7HDM4","figi":"BBG000Q7HDM4"}	https://api.polygon.io/v2/tickers/WSRUF	2020-07-24 12:17:34.025337
184	WSSE	Wallstreet Secs Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001365888","scfigi":"BBG001SMKX67","cfigi":"BBG000QC2458","figi":"BBG000QC2458"}	https://api.polygon.io/v2/tickers/WSSE	2020-07-24 12:17:34.025337
185	WSSH	West Shore Bank Corporation Mi Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0170606200001000","scfigi":"BBG001SFRR22","cfigi":"BBG000C1S4V0","figi":"BBG000C1S4V0"}	https://api.polygon.io/v2/tickers/WSSH	2020-07-24 12:17:34.025337
186	WST	West Pharmaceutical Services, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000105770","figiuid":"EQ0010163900001000","scfigi":"BBG001S5XK22","cfigi":"BBG000BX24N8","figi":"BBG000BX24N8"}	https://api.polygon.io/v2/tickers/WST	2020-07-24 12:17:34.025337
187	WSTG	Wayside Technology Group, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000945983","figiuid":"EQ0017108900001000","scfigi":"BBG001S5T4D1","cfigi":"BBG000BCJVD7","figi":"BBG000BCJVD7"}	https://api.polygon.io/v2/tickers/WSTG	2020-07-24 12:17:34.025337
188	WSTL	Westell Technologies, Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001002135","figiuid":"EQ0017924400001000","scfigi":"BBG001S8M2Y3","cfigi":"BBG000FPKH98","figi":"BBG000FPKH98"}	https://api.polygon.io/v2/tickers/WSTL	2020-07-24 12:17:34.025337
189	WSTM	HRSoft Inc.  Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001095266","figiuid":"EQ0088349600001000","scfigi":"BBG001S94KL5","cfigi":"BBG000C6QMQ7","figi":"BBG000C6QMQ7"}	https://api.polygon.io/v2/tickers/WSTM	2020-07-24 12:17:34.025337
190	WSTN	Westlin Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001283016","figiuid":"EQ0010430900001000","scfigi":"BBG001SGX399","cfigi":"BBG000JLFGT9","figi":"BBG000JLFGT9"}	https://api.polygon.io/v2/tickers/WSTN	2020-07-24 12:17:34.025337
191	WSTRF	Western Uranium & Vanadium Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000048465760","scfigi":"BBG001T3QK97","cfigi":"BBG00CFV69F6","figi":"BBG00CFV69F6"}	https://api.polygon.io/v2/tickers/WSTRF	2020-07-24 12:17:34.025337
192	WSTTF	WESTPORTS HLDGS BHD Ordinary Shares (Malaysia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000045676705","scfigi":"BBG004LN6GV1","cfigi":"BBG00B599153","figi":"BBG00B599153"}	https://api.polygon.io/v2/tickers/WSTTF	2020-07-24 12:17:34.025337
193	WSVC	Wayne Svcs Legacy Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000084850121","scfigi":"BBG00TYNV8M2","cfigi":"BBG00TYNV7V4","figi":"BBG00TYNV7V4"}	https://api.polygon.io/v2/tickers/WSVC	2020-07-24 12:17:34.025337
194	WTBA	West Bancorporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001166928","figiuid":"EQ0013267200001000","scfigi":"BBG001S5R194","cfigi":"BBG000BB0WY4","figi":"BBG000BB0WY4"}	https://api.polygon.io/v2/tickers/WTBA	2020-07-24 12:17:34.025337
195	WTBCF	Whitbread PLC Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0011252700002004","scfigi":"BBG001S6NGL9","cfigi":"BBG000CQCDD2","figi":"BBG000CQCDD2"}	https://api.polygon.io/v2/tickers/WTBCF	2020-07-24 12:17:34.025337
196	WTBFA	W T B Financial Corp Cl-A Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001478956","figiuid":"EQ0014803000002000","scfigi":"BBG001S80NB6","cfigi":"BBG000CDRWK5","figi":"BBG000CDRWK5"}	https://api.polygon.io/v2/tickers/WTBFA	2020-07-24 12:17:34.025337
197	WTBFB	W T B Financial Corp Cl-B Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001478956","figiuid":"EQ0014803000003000","scfigi":"BBG001SF9DJ5","cfigi":"BBG000M081B1","figi":"BBG000M081B1"}	https://api.polygon.io/v2/tickers/WTBFB	2020-07-24 12:17:34.025337
198	WTCG	W Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000924396","figiuid":"EQ0015935600001000","scfigi":"BBG001SJHY48","cfigi":"BBG000P34484","figi":"BBG000P34484"}	https://api.polygon.io/v2/tickers/WTCG	2020-07-24 12:17:34.025337
199	WTCHF	Wisetech Global Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000056141947","scfigi":"BBG00CJZ0G18","cfigi":"BBG00GFPK1V3","figi":"BBG00GFPK1V3"}	https://api.polygon.io/v2/tickers/WTCHF	2020-07-24 12:17:34.025337
200	WTCRF	Western Troy Capital Resources Inc Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000003482011","scfigi":"BBG001S6TNL8","cfigi":"BBG000GBGHZ4","figi":"BBG000GBGHZ4"}	https://api.polygon.io/v2/tickers/WTCRF	2020-07-24 12:17:34.025337
201	WTCZF	Copper Lake Resources Ltd. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000006513033","scfigi":"BBG001SBWB48","cfigi":"BBG000FT3KC8","figi":"BBG000FT3KC8"}	https://api.polygon.io/v2/tickers/WTCZF	2020-07-24 12:17:36.420758
202	WTECQ	Westech Capital Corp Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000869688","figiuid":"EQ0081070300001000","scfigi":"BBG001SJ6QB9","cfigi":"BBG000DPKHT8","figi":"BBG000DPKHT8"}	https://api.polygon.io/v2/tickers/WTECQ	2020-07-24 12:17:36.420758
203	WTER	The Alkaline Water Company Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001532390","figiuid":"EQ0000000020678027","scfigi":"BBG0027DMWX8","cfigi":"BBG0027DMW59","figi":"BBG0027DMW59"}	https://api.polygon.io/v2/tickers/WTER	2020-07-24 12:17:36.420758
204	WTFC	Wintrust Financial Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001015328","figiuid":"EQ0019459300001000","scfigi":"BBG001S945T0","cfigi":"BBG000HD3DW5","figi":"BBG000HD3DW5"}	https://api.polygon.io/v2/tickers/WTFC	2020-07-24 12:17:36.420758
205	WTGRF	Westgold Resources Ltd Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000095341","scfigi":"BBG001S7MPP4","cfigi":"BBG000C0BCF0","figi":"BBG000C0BCF0"}	https://api.polygon.io/v2/tickers/WTGRF	2020-07-24 12:17:36.420758
206	WTHEF	Wing Tai Holdings Ltd Ordinary Shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001197774","scfigi":"BBG001S6NTL1","cfigi":"BBG000C1HS30","figi":"BBG000C1HS30"}	https://api.polygon.io/v2/tickers/WTHEF	2020-07-24 12:17:36.420758
207	WTHVF	Westhaven Gold Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000036052541","scfigi":"BBG001TCWDG8","cfigi":"BBG006Q4MNP7","figi":"BBG006Q4MNP7"}	https://api.polygon.io/v2/tickers/WTHVF	2020-07-24 12:17:36.420758
208	WTI	W&T Offshore, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001288403","figiuid":"EQ0000000001100412","scfigi":"BBG001SLLWL3","cfigi":"BBG000FFFQR6","figi":"BBG000FFFQR6"}	https://api.polygon.io/v2/tickers/WTI	2020-07-24 12:17:36.420758
209	WTII	Water Technologies International,Inc Common Stock	STOCKS	US	CS	EUR	true	OTC	2020-06-24	{"figiuid":"EQ0000000002685413","scfigi":"BBG001SCV6N7","cfigi":"BBG000BKL1P9","figi":"BBG000BKL1P9"}	https://api.polygon.io/v2/tickers/WTII	2020-07-24 12:17:36.420758
210	WTKN	WellTek Incorporated. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001456453","figiuid":"EQ0000000008672064","scfigi":"BBG001T54MF5","cfigi":"BBG000NCPC94","figi":"BBG000NCPC94"}	https://api.polygon.io/v2/tickers/WTKN	2020-07-24 12:17:36.420758
211	WTLC	Western Metals Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0012664700001000","scfigi":"BBG001S7J849","cfigi":"BBG000BLRLS4","figi":"BBG000BLRLS4"}	https://api.polygon.io/v2/tickers/WTLC	2020-07-24 12:17:36.420758
212	WTLLF	Water Intelligence PLC Ordinary Shares  (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000079662866","scfigi":"BBG001SDSW61","cfigi":"BBG00QPVZ3X5","figi":"BBG00QPVZ3X5"}	https://api.polygon.io/v2/tickers/WTLLF	2020-07-24 12:17:36.420758
213	WTM	White Mountains Insurance Group Ltd.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000776867","figiuid":"EQ0010061800001000","scfigi":"BBG001SBLRT8","cfigi":"BBG000G7PNS8","figi":"BBG000G7PNS8"}	https://api.polygon.io/v2/tickers/WTM	2020-07-24 12:17:36.420758
214	WTNW	Water Now Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000060587863","scfigi":"BBG00J53GZR2","cfigi":"BBG00J53GZQ3","figi":"BBG00J53GZQ3"}	https://api.polygon.io/v2/tickers/WTNW	2020-07-24 12:17:36.420758
215	WTRE	Watford Holdings Ltd. Common Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000071798159","scfigi":"BBG00N73VG69","cfigi":"BBG00N73VFG0","figi":"BBG00N73VFG0"}	https://api.polygon.io/v2/tickers/WTRE	2020-07-24 12:17:36.420758
216	WTRG	Essential Utilities, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"figiuid":"EQ0010117100001000","scfigi":"BBG001S5VFD3","cfigi":"BBG000BRMJN6","figi":"BBG000BRMJN6"}	https://api.polygon.io/v2/tickers/WTRG	2020-07-24 12:17:36.420758
217	WTRH	Waitr Holdings Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000049883865","scfigi":"BBG00D0L7DL5","cfigi":"BBG00D0L7DK6","figi":"BBG00D0L7DK6"}	https://api.polygon.io/v2/tickers/WTRH	2020-07-24 12:17:36.420758
218	WTRNF	Western Res Corp Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000056172208","scfigi":"BBG00GD4K008","cfigi":"BBG00GFSSCX3","figi":"BBG00GFSSCX3"}	https://api.polygon.io/v2/tickers/WTRNF	2020-07-24 12:17:36.420758
219	WTRO	Wi-Tron, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001016151","figiuid":"EQ0019686600001000","scfigi":"BBG001S9H8V7","cfigi":"BBG000HX4DK3","figi":"BBG000HX4DK3"}	https://api.polygon.io/v2/tickers/WTRO	2020-07-24 12:17:36.420758
220	WTS	Watts Water Technologies, Inc. Class A	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000795403","figiuid":"EQ0010777900002000","scfigi":"BBG001S6N6Y7","cfigi":"BBG000C4Z6C2","figi":"BBG000C4Z6C2"}	https://api.polygon.io/v2/tickers/WTS	2020-07-24 12:17:36.420758
221	WTSHF	Westshore Terminals Investment Corporation Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0020283700001001","scfigi":"BBG001S8QLQ6","cfigi":"BBG000CZ78J3","figi":"BBG000CZ78J3"}	https://api.polygon.io/v2/tickers/WTSHF	2020-07-24 12:17:36.420758
222	WTT	Wireless Telecom Group, Inc.	STOCKS	US	CS	USD	true	AMX	2020-06-24	{"cik":"0000878828","figiuid":"EQ0010563600001000","scfigi":"BBG001S81N52","cfigi":"BBG000DHZ4H2","figi":"BBG000DHZ4H2"}	https://api.polygon.io/v2/tickers/WTT	2020-07-24 12:17:36.420758
223	WTTR	Select Energy Services, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001693256","figiuid":"EQ0000000055302281","scfigi":"BBG00G4Y2F27","cfigi":"BBG00G4Y2DC1","figi":"BBG00G4Y2DC1"}	https://api.polygon.io/v2/tickers/WTTR	2020-07-24 12:17:36.420758
224	WTWB	West Town Bancorp, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000042059368","scfigi":"BBG008F2WR15","cfigi":"BBG008F2WR06","figi":"BBG008F2WR06"}	https://api.polygon.io/v2/tickers/WTWB	2020-07-24 12:17:36.420758
225	WTXR	West Texas Resources, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000021398437","scfigi":"BBG002B661H2","cfigi":"BBG002B660R3","figi":"BBG002B660R3"}	https://api.polygon.io/v2/tickers/WTXR	2020-07-24 12:17:36.420758
226	WU	The Western Union Company	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001365135","figiuid":"EQ0000000002612568","scfigi":"BBG001SR0YK0","cfigi":"BBG000BB5373","figi":"BBG000BB5373"}	https://api.polygon.io/v2/tickers/WU	2020-07-24 12:17:36.420758
227	WUHN	Wuhan General Group (China), Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000842694","figiuid":"EQ0031398200001000","scfigi":"BBG001S6THK2","cfigi":"BBG000BDYBQ8","figi":"BBG000BDYBQ8"}	https://api.polygon.io/v2/tickers/WUHN	2020-07-24 12:17:36.420758
228	WUXIF	WUXI APPTEC CO LTD REGISTERED SHARES H 02359 (China)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000080189479","scfigi":"BBG00MP10HC0","cfigi":"BBG00QXL3W50","figi":"BBG00QXL3W50"}	https://api.polygon.io/v2/tickers/WUXIF	2020-07-24 12:17:36.420758
229	WUYI	China WuYi Mountain, Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000052536368","scfigi":"BBG00F416T63","cfigi":"BBG00F416SG4","figi":"BBG00F416SG4"}	https://api.polygon.io/v2/tickers/WUYI	2020-07-24 12:17:36.420758
230	WVAW	West Virginia Wtr Co Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0014803600001000","scfigi":"BBG001S7WM70","cfigi":"BBG000C3SXG9","figi":"BBG000C3SXG9"}	https://api.polygon.io/v2/tickers/WVAW	2020-07-24 12:17:36.420758
231	WVE	Wave Life Sciences Ltd. Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001631574","figiuid":"EQ0000000045761428","scfigi":"BBG00B642V63","cfigi":"BBG00B642V54","figi":"BBG00B642V54"}	https://api.polygon.io/v2/tickers/WVE	2020-07-24 12:17:36.420758
232	WVFC	WVS Financial Corp. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000910679","figiuid":"EQ0012659300001000","scfigi":"BBG001S6Z3N3","cfigi":"BBG000BGFBS0","figi":"BBG000BGFBS0"}	https://api.polygon.io/v2/tickers/WVFC	2020-07-24 12:17:36.420758
233	WVVEF	WorldVest Equity, Inc. Common Stock (British Virgin Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0020225500001000","scfigi":"BBG001SG15B6","cfigi":"BBG000CJXKT2","figi":"BBG000CJXKT2"}	https://api.polygon.io/v2/tickers/WVVEF	2020-07-24 12:17:36.420758
234	WVVI	Willamette Valley Vineyards, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000838875","figiuid":"EQ0015470100001000","scfigi":"BBG001S88SJ9","cfigi":"BBG000DKVGL7","figi":"BBG000DKVGL7"}	https://api.polygon.io/v2/tickers/WVVI	2020-07-24 12:17:36.420758
235	WW	WW International, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000105319","figiuid":"EQ0096897500001000","scfigi":"BBG001SFWZR1","cfigi":"BBG000DY6735","figi":"BBG000DY6735"}	https://api.polygon.io/v2/tickers/WW	2020-07-24 12:17:36.420758
236	WWD	Woodward, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000108312","figiuid":"EQ0013267400001000","scfigi":"BBG001S6YZC5","cfigi":"BBG000BD53V2","figi":"BBG000BD53V2"}	https://api.polygon.io/v2/tickers/WWD	2020-07-24 12:17:36.420758
237	WWDH	Worldwide Holdings Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000839430","figiuid":"EQ0019803000001000","scfigi":"BBG001SGGDL2","cfigi":"BBG000MZ9JM2","figi":"BBG000MZ9JM2"}	https://api.polygon.io/v2/tickers/WWDH	2020-07-24 12:17:36.420758
238	WWE	World Wrestling Entertainment	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001091907","figiuid":"EQ0096099400001000","scfigi":"BBG001S7W1P6","cfigi":"BBG000F5YH15","figi":"BBG000F5YH15"}	https://api.polygon.io/v2/tickers/WWE	2020-07-24 12:17:36.420758
239	WWEXF	WAI CAP INVTS CORP  Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000006852429","scfigi":"BBG001S6L7S4","cfigi":"BBG000G9W925","figi":"BBG000G9W925"}	https://api.polygon.io/v2/tickers/WWEXF	2020-07-24 12:17:36.420758
240	WWII	World Of Wireless International Telecom, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001349365","figiuid":"EQ0000000001163101","scfigi":"BBG001SM08B8","cfigi":"BBG000Q034W3","figi":"BBG000Q034W3"}	https://api.polygon.io/v2/tickers/WWII	2020-07-24 12:17:36.420758
241	WWIN	AllyMe Group, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001657045","figiuid":"EQ0000000048042744","scfigi":"BBG00C78S9W3","cfigi":"BBG00C78S9V4","figi":"BBG00C78S9V4"}	https://api.polygon.io/v2/tickers/WWIN	2020-07-24 12:17:36.420758
242	WWIO	Wowio Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000010392590","scfigi":"BBG001T8VR04","cfigi":"BBG000R0KB48","figi":"BBG000R0KB48"}	https://api.polygon.io/v2/tickers/WWIO	2020-07-24 12:17:36.420758
243	WWLNF	Worldline SA Ordinary Shares (France)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000049973327","scfigi":"BBG006N9S457","cfigi":"BBG00D1MQ164","figi":"BBG00D1MQ164"}	https://api.polygon.io/v2/tickers/WWLNF	2020-07-24 12:17:36.420758
244	WWNG	WW Energy, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001298314","figiuid":"EQ0022555600001000","scfigi":"BBG001S9ZH01","cfigi":"BBG000BVTS23","figi":"BBG000BVTS23"}	https://api.polygon.io/v2/tickers/WWNG	2020-07-24 12:17:36.420758
245	WWNTF	Want Want China Holdings Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000008421360","scfigi":"BBG001T0XCB0","cfigi":"BBG000RHNHS9","figi":"BBG000RHNHS9"}	https://api.polygon.io/v2/tickers/WWNTF	2020-07-24 12:17:36.420758
246	WWPW	Wind Works Power Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001273507","figiuid":"EQ0000000001479561","scfigi":"BBG001SH9YZ7","cfigi":"BBG000GN6HM3","figi":"BBG000GN6HM3"}	https://api.polygon.io/v2/tickers/WWPW	2020-07-24 12:17:36.420758
247	WWR	Westwater Resources, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000839470","figiuid":"EQ0010756400001000","scfigi":"BBG001S61BN2","cfigi":"BBG000C04VB0","figi":"BBG000C04VB0"}	https://api.polygon.io/v2/tickers/WWR	2020-07-24 12:17:36.420758
248	WWRL	World Wireless Communications, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001031744","figiuid":"EQ0018742300001000","scfigi":"BBG001SF8Q52","cfigi":"BBG000LZ2M25","figi":"BBG000LZ2M25"}	https://api.polygon.io/v2/tickers/WWRL	2020-07-24 12:17:36.420758
249	WWSG	Worldwide Strategies Incorporated Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001342792","figiuid":"EQ0031313800001000","scfigi":"BBG001SHSFX9","cfigi":"BBG000FV9415","figi":"BBG000FV9415"}	https://api.polygon.io/v2/tickers/WWSG	2020-07-24 12:17:36.420758
250	WWST	World Wide Stone Corp Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000841123","figiuid":"EQ0018621200001000","scfigi":"BBG001S6YZL5","cfigi":"BBG000BS1708","figi":"BBG000BS1708"}	https://api.polygon.io/v2/tickers/WWST	2020-07-24 12:17:36.420758
251	WWW	Wolverine World Wide, Inc.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000110471","figiuid":"EQ0010167100001000","scfigi":"BBG001S5XKW9","cfigi":"BBG000BX2YN2","figi":"BBG000BX2YN2"}	https://api.polygon.io/v2/tickers/WWW	2020-07-24 12:17:40.951033
252	WXIBF	Wuxi Biologics Cayman Inc Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000059704712","scfigi":"BBG00GTY47J8","cfigi":"BBG00HW3DBG4","figi":"BBG00HW3DBG4"}	https://api.polygon.io/v2/tickers/WXIBF	2020-07-24 12:17:40.951033
253	WXMN	Waxman Industries, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000105096","figiuid":"EQ0010162900001000","scfigi":"BBG001SH7MN8","cfigi":"BBG000JMCRH9","figi":"BBG000JMCRH9"}	https://api.polygon.io/v2/tickers/WXMN	2020-07-24 12:17:40.951033
254	WYCC	Worry Free Holdings Company Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000021830098","scfigi":"BBG002F3DKS3","cfigi":"BBG002F3DK12","figi":"BBG002F3DK12"}	https://api.polygon.io/v2/tickers/WYCC	2020-07-24 12:17:40.951033
255	WYGPF	WORLEY LTD Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000000461394","scfigi":"BBG001SK7S58","cfigi":"BBG000FDHN23","figi":"BBG000FDHN23"}	https://api.polygon.io/v2/tickers/WYGPF	2020-07-24 12:17:40.951033
256	WYND	Wyndham Destinations, Inc. Common Stock	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001361658","figiuid":"EQ0000000002673263","scfigi":"BBG001SN4127","cfigi":"BBG000PV2L86","figi":"BBG000PV2L86"}	https://api.polygon.io/v2/tickers/WYND	2020-07-24 12:17:40.951033
257	WYNMF	Wynn Macau Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001480134","figiuid":"EQ0000000009290207","scfigi":"BBG001T5MDN6","cfigi":"BBG000PTX528","figi":"BBG000PTX528"}	https://api.polygon.io/v2/tickers/WYNMF	2020-07-24 12:17:40.951033
258	WYNN	Wynn Resorts, Limited Common stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001174922","figiuid":"EQ0000000000206133","scfigi":"BBG001SJZ2V8","cfigi":"BBG000LD9JQ8","figi":"BBG000LD9JQ8"}	https://api.polygon.io/v2/tickers/WYNN	2020-07-24 12:17:40.951033
259	WYPH	Waypoint Biomedical Holdings, Inc. New Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001333118","figiuid":"EQ0000000000306764","scfigi":"BBG001SL3GQ3","cfigi":"BBG000P36FP8","figi":"BBG000P36FP8"}	https://api.polygon.io/v2/tickers/WYPH	2020-07-24 12:17:40.951033
260	WYY	WidePoint Corporation	STOCKS	US	CS	USD	true	AMX	2020-06-24	{"cik":"0001034760","figiuid":"EQ0010585800001000","scfigi":"BBG001S9FYN1","cfigi":"BBG000HRY432","figi":"BBG000HRY432"}	https://api.polygon.io/v2/tickers/WYY	2020-07-24 12:17:40.951033
261	WZHUF	Wenzhou Kangning Hosp Co Ltd. Registered Shares H (China)	STOCKS	US	CS	CNY	true	OTC	2020-06-24	{"figiuid":"EQ0000000061952057","scfigi":"BBG00B8MTS14","cfigi":"BBG00JQ5L1M8","figi":"BBG00JQ5L1M8"}	https://api.polygon.io/v2/tickers/WZHUF	2020-07-24 12:17:40.951033
262	WZZAF	Wizz Air Holdings PLC Ordinary Shares (Jersey)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000055046924","scfigi":"BBG006K4W3S3","cfigi":"BBG00FZYHHB5","figi":"BBG00FZYHHB5"}	https://api.polygon.io/v2/tickers/WZZAF	2020-07-24 12:17:40.951033
263	X	United States Steel Corporation	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001163302","figiuid":"EQ0010158200001000","scfigi":"BBG001S5XL75","cfigi":"BBG000BX3TD3","figi":"BBG000BX3TD3"}	https://api.polygon.io/v2/tickers/X	2020-07-24 12:17:40.951033
264	XAARF	Xaar Plc Ord Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001107960","scfigi":"BBG001SBB0X3","cfigi":"BBG000H03211","figi":"BBG000H03211"}	https://api.polygon.io/v2/tickers/XAARF	2020-07-24 12:17:40.951033
265	XAIR	Beyond Air, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000045571634","scfigi":"BBG00B4QYL63","cfigi":"BBG00B4QYL72","figi":"BBG00B4QYL72"}	https://api.polygon.io/v2/tickers/XAIR	2020-07-24 12:17:40.951033
266	XALL	Xalles Holdings Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000031158260","scfigi":"BBG004X81R79","cfigi":"BBG004X81R60","figi":"BBG004X81R60"}	https://api.polygon.io/v2/tickers/XALL	2020-07-24 12:17:40.951033
267	XANAF	Xanadu Mines Ltd, Ordinary Shares (Austrailia)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000022112463","scfigi":"BBG001T2DZN4","cfigi":"BBG002H4VNN8","figi":"BBG002H4VNN8"}	https://api.polygon.io/v2/tickers/XANAF	2020-07-24 12:17:40.951033
268	XAUMF	GOLDMONEY INC Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000044147157","scfigi":"BBG003PQ6PD2","cfigi":"BBG009L6T8X8","figi":"BBG009L6T8X8"}	https://api.polygon.io/v2/tickers/XAUMF	2020-07-24 12:17:40.951033
269	XBIO	Xenetic Biosciences, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001534525","figiuid":"EQ0000000020905724","scfigi":"BBG0028WJY38","cfigi":"BBG0028WJXC0","figi":"BBG0028WJXC0"}	https://api.polygon.io/v2/tickers/XBIO	2020-07-24 12:17:40.951033
270	XBIT	XBiotech Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001626878","figiuid":"EQ0000000040910373","scfigi":"BBG0081S8D48","cfigi":"BBG0081S8D39","figi":"BBG0081S8D39"}	https://api.polygon.io/v2/tickers/XBIT	2020-07-24 12:17:40.951033
271	XBOR	Cross Border Resources, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001373485","figiuid":"EQ0000000003319266","scfigi":"BBG001SP1W09","cfigi":"BBG000GXYZB2","figi":"BBG000GXYZB2"}	https://api.polygon.io/v2/tickers/XBOR	2020-07-24 12:17:40.951033
272	XCAN	Yutudao Marine Biotechnology Inc. Common Stock	STOCKS	US	CS	EUR	true	OTC	2020-06-24	{"figiuid":"EQ0000000005706255","scfigi":"BBG001T215H0","cfigi":"BBG000VBWV88","figi":"BBG000VBWV88"}	https://api.polygon.io/v2/tickers/XCAN	2020-07-24 12:17:40.951033
273	XCLL	XcelMobility Inc.  Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001465509","figiuid":"EQ0000000010267848","scfigi":"BBG001T8P9B9","cfigi":"BBG000QWPF81","figi":"BBG000QWPF81"}	https://api.polygon.io/v2/tickers/XCLL	2020-07-24 12:17:40.951033
274	XCOMQ	Xtera Communications, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001122051","figiuid":"EQ0000000000727899","scfigi":"BBG001SJQLY3","cfigi":"BBG000KSBVH6","figi":"BBG000KSBVH6"}	https://api.polygon.io/v2/tickers/XCOMQ	2020-07-24 12:17:40.951033
275	XCPL	XCPCNL Business Services Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001331275","figiuid":"EQ0000000006131192","scfigi":"BBG001T2HMF8","cfigi":"BBG000FB0FQ6","figi":"BBG000FB0FQ6"}	https://api.polygon.io/v2/tickers/XCPL	2020-07-24 12:17:40.951033
276	XCPT	XCana Petroleum, Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0014813500001000","scfigi":"BBG001SC68G9","cfigi":"BBG000K1BR75","figi":"BBG000K1BR75"}	https://api.polygon.io/v2/tickers/XCPT	2020-07-24 12:17:40.951033
277	XCRP	Xcorporeal, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000752789","figiuid":"EQ0010402600001000","scfigi":"BBG001S6LSV4","cfigi":"BBG000C4HX24","figi":"BBG000C4HX24"}	https://api.polygon.io/v2/tickers/XCRP	2020-07-24 12:17:40.951033
278	XCUR	Exicure, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000057062052","scfigi":"BBG00GTJCSC3","cfigi":"BBG00GTJCSB4","figi":"BBG00GTJCSB4"}	https://api.polygon.io/v2/tickers/XCUR	2020-07-24 12:17:40.951033
279	XDNCF	XD INC USD ORD SHS (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000084999203","scfigi":"BBG00QTN1L57","cfigi":"BBG00V30NX45","figi":"BBG00V30NX45"}	https://api.polygon.io/v2/tickers/XDNCF	2020-07-24 12:17:40.951033
280	XDSL	mPhase Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0000825322","figiuid":"EQ0020206100001000","scfigi":"BBG001S9V128","cfigi":"BBG000BS6981","figi":"BBG000BS6981"}	https://api.polygon.io/v2/tickers/XDSL	2020-07-24 12:17:40.951033
281	XEBEF	Xebec Adsorption (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002508046","scfigi":"BBG001SKGBX4","cfigi":"BBG000R5PGL2","figi":"BBG000R5PGL2"}	https://api.polygon.io/v2/tickers/XEBEF	2020-07-24 12:17:40.951033
282	XEC	CIMAREX ENERGY CO	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001168054","figiuid":"EQ0000000000342930","scfigi":"BBG001SG41F8","cfigi":"BBG000D6L294","figi":"BBG000D6L294"}	https://api.polygon.io/v2/tickers/XEC	2020-07-24 12:17:40.951033
283	XEL	Xcel Energy Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000072903","figiuid":"EQ0141968900001000","scfigi":"BBG001S7F0X8","cfigi":"BBG000BCTQ65","figi":"BBG000BCTQ65"}	https://api.polygon.io/v2/tickers/XEL	2020-07-24 12:17:40.951033
284	XELA	Exela Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001620179","figiuid":"EQ0000000041495803","scfigi":"BBG008839J97","cfigi":"BBG008839HK8","figi":"BBG008839HK8"}	https://api.polygon.io/v2/tickers/XELA	2020-07-24 12:17:40.951033
285	XELB	Xcel Brands, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001083220","figiuid":"EQ0116955000001000","scfigi":"BBG001S5PTK2","cfigi":"BBG000BB0JR1","figi":"BBG000BB0JR1"}	https://api.polygon.io/v2/tickers/XELB	2020-07-24 12:17:40.951033
286	XENE	Xenon Pharmaceuticals Inc. Common Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001582313","figiuid":"EQ0000000037455887","scfigi":"BBG002VBMLS5","cfigi":"BBG0073DM784","figi":"BBG0073DM784"}	https://api.polygon.io/v2/tickers/XENE	2020-07-24 12:17:40.951033
287	XENO	Xeno Transplants Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001333077","figiuid":"EQ0000000002444362","scfigi":"BBG001SQSCJ2","cfigi":"BBG000NXR3G8","figi":"BBG000NXR3G8"}	https://api.polygon.io/v2/tickers/XENO	2020-07-24 12:17:40.951033
288	XENT	Intersect ENT, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001271214","figiuid":"EQ0000000016787059","scfigi":"BBG001V0GP09","cfigi":"BBG001J41G83","figi":"BBG001J41G83"}	https://api.polygon.io/v2/tickers/XENT	2020-07-24 12:17:40.951033
289	XEPRF	Xemplar Energy New Corp Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001865854","scfigi":"BBG001S618P7","cfigi":"BBG000LFQM32","figi":"BBG000LFQM32"}	https://api.polygon.io/v2/tickers/XEPRF	2020-07-24 12:17:40.951033
290	XERS	Xeris Pharmaceuticals, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001346302","figiuid":"EQ0000000021396617","scfigi":"BBG002B5ZKX2","cfigi":"BBG002B5ZKT7","figi":"BBG002B5ZKT7"}	https://api.polygon.io/v2/tickers/XERS	2020-07-24 12:17:40.951033
291	XFCH	X-Factor Communications Holdings, Inc. Common	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001517653","figiuid":"EQ0000000019460413","scfigi":"BBG001YFCSJ1","cfigi":"BBG001YFCRR4","figi":"BBG001YFCRR4"}	https://api.polygon.io/v2/tickers/XFCH	2020-07-24 12:17:40.951033
292	XFLS	Xfuels Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001518548","figiuid":"EQ0000000017493093","scfigi":"BBG001V1CVB6","cfigi":"BBG001PM50X9","figi":"BBG001PM50X9"}	https://api.polygon.io/v2/tickers/XFLS	2020-07-24 12:17:40.951033
293	XFOR	X4 Pharmaceuticals, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000016768296","scfigi":"BBG001TCY1B7","cfigi":"BBG001J1CYH8","figi":"BBG001J1CYH8"}	https://api.polygon.io/v2/tickers/XFOR	2020-07-24 12:17:40.951033
294	XFTB	XFIT BRANDS INC Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001623554","figiuid":"EQ0000000041302514","scfigi":"BBG008694X63","cfigi":"BBG008694X54","figi":"BBG008694X54"}	https://api.polygon.io/v2/tickers/XFTB	2020-07-24 12:17:40.951033
295	XGEN	NexGen Holdings Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0010248300001000","scfigi":"BBG001SDX225","cfigi":"BBG000HBPDZ2","figi":"BBG000HBPDZ2"}	https://api.polygon.io/v2/tickers/XGEN	2020-07-24 12:17:40.951033
296	XGN	Exagen Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001274737","figiuid":"EQ0000000011441437","scfigi":"BBG001TCQVF6","cfigi":"BBG00178FZY1","figi":"BBG00178FZY1"}	https://api.polygon.io/v2/tickers/XGN	2020-07-24 12:17:40.951033
297	XHFNF	Xinhua Finance Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001461345","scfigi":"BBG001SL3NP9","cfigi":"BBG000P3MLM0","figi":"BBG000P3MLM0"}	https://api.polygon.io/v2/tickers/XHFNF	2020-07-24 12:17:40.951033
298	XHUA	Xinhua  China Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001104904","figiuid":"EQ0117975200001000","scfigi":"BBG001SHKJC2","cfigi":"BBG000D5F104","figi":"BBG000D5F104"}	https://api.polygon.io/v2/tickers/XHUA	2020-07-24 12:17:40.951033
299	XIACF	Xiaomi Corp Common Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000067549008","scfigi":"BBG00KVR9RT1","cfigi":"BBG00LSL9WL3","figi":"BBG00LSL9WL3"}	https://api.polygon.io/v2/tickers/XIACF	2020-07-24 12:17:40.951033
300	XINXF	New Wk SE Ordinary Shares (Germany Federal Republic)	STOCKS	US	CS	EUR	true	OTC	2020-06-24	{"figiuid":"EQ0000000068164310","scfigi":"BBG001SP5023","cfigi":"BBG00LZFHXH2","figi":"BBG00LZFHXH2"}	https://api.polygon.io/v2/tickers/XINXF	2020-07-24 12:17:40.951033
301	XITO	XENOUS HLDGS INC Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000047316464","scfigi":"BBG00BTFXPQ0","cfigi":"BBG00BTFXPP1","figi":"BBG00BTFXPP1"}	https://api.polygon.io/v2/tickers/XITO	2020-07-24 12:17:44.235187
302	XJGTF	Xinjiang Tianye Water Saving Irrigation System Company Ltd Shares H (China)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000002810276","scfigi":"BBG001SFTL41","cfigi":"BBG000LSVL12","figi":"BBG000LSVL12"}	https://api.polygon.io/v2/tickers/XJGTF	2020-07-24 12:17:44.235187
303	XJNGF	Xinjiang Goldwind Science Ordinary Shares H (China)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000016873573","scfigi":"BBG001T5HY56","cfigi":"BBG001K92SK9","figi":"BBG001K92SK9"}	https://api.polygon.io/v2/tickers/XJNGF	2020-07-24 12:17:44.235187
304	XLEFF	XXL Energy Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0010925600001001","scfigi":"BBG001SB3614","cfigi":"BBG000HCL7K3","figi":"BBG000HCL7K3"}	https://api.polygon.io/v2/tickers/XLEFF	2020-07-24 12:17:44.235187
305	XLMDF	XLMEDIA PLC Ordinary Shares USD0.000001 (Jersey)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000046171055","scfigi":"BBG00645QMN8","cfigi":"BBG00BDMG9D1","figi":"BBG00BDMG9D1"}	https://api.polygon.io/v2/tickers/XLMDF	2020-07-24 12:17:44.235187
306	XLNX	Xilinx, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000743988","figiuid":"EQ0010794700001000","scfigi":"BBG001S62S63","cfigi":"BBG000C0F570","figi":"BBG000C0F570"}	https://api.polygon.io/v2/tickers/XLNX	2020-07-24 12:17:44.235187
307	XLPI	Xcelplus International Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001308045","figiuid":"EQ0000000001006226","scfigi":"BBG001SK3VD6","cfigi":"BBG000LPY896","figi":"BBG000LPY896"}	https://api.polygon.io/v2/tickers/XLPI	2020-07-24 12:17:44.235187
308	XLRM	XLR Medical Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001138608","figiuid":"EQ0000000000441867","scfigi":"BBG001SK0K43","cfigi":"BBG000DQYM10","figi":"BBG000DQYM10"}	https://api.polygon.io/v2/tickers/XLRM	2020-07-24 12:17:44.235187
309	XLRN	Acceleron Pharma Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001280600","figiuid":"EQ0000000010599734","scfigi":"BBG001T95WZ2","cfigi":"BBG000R5HWZ1","figi":"BBG000R5HWZ1"}	https://api.polygon.io/v2/tickers/XLRN	2020-07-24 12:17:44.235187
310	XLSCF	Xlife Sciences Ag Common Stock (Switzerland)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000079405122","scfigi":"BBG00QFVY4G4","cfigi":"BBG00QKXJKZ4","figi":"BBG00QKXJKZ4"}	https://api.polygon.io/v2/tickers/XLSCF	2020-07-24 12:17:44.235187
311	XLWH	Xinliwang International Holdings Company Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0020267200001000","scfigi":"BBG001S9FSV5","cfigi":"BBG000BN1Q25","figi":"BBG000BN1Q25"}	https://api.polygon.io/v2/tickers/XLWH	2020-07-24 12:17:44.235187
312	XMET	Xxstream Entertainment Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000001700750","scfigi":"BBG001SNSYW6","cfigi":"BBG000G0SHR4","figi":"BBG000G0SHR4"}	https://api.polygon.io/v2/tickers/XMET	2020-07-24 12:17:44.235187
313	XMEX	Xemex Group Inc. Common stock	STOCKS	US	CS	GBX	true	OTC	2020-06-24	{"figiuid":"EQ0088951300001000","scfigi":"BBG001SD3CY1","cfigi":"BBG000C0JF56","figi":"BBG000C0JF56"}	https://api.polygon.io/v2/tickers/XMEX	2020-07-24 12:17:44.235187
314	XMMRF	Xmrealty AB Ordinary Shares  (Sweden)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000061251225","scfigi":"BBG006XVTG22","cfigi":"BBG00JDTZ742","figi":"BBG00JDTZ742"}	https://api.polygon.io/v2/tickers/XMMRF	2020-07-24 12:17:44.235187
315	XMTTF	Xmet, Inc. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000011517375","scfigi":"BBG001T1Y3V5","cfigi":"BBG001818NH9","figi":"BBG001818NH9"}	https://api.polygon.io/v2/tickers/XMTTF	2020-07-24 12:17:44.235187
316	XNCR	Xencor, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001326732","figiuid":"EQ0000000020615271","scfigi":"BBG0026ZG4X9","cfigi":"BBG0026ZG4W0","figi":"BBG0026ZG4W0"}	https://api.polygon.io/v2/tickers/XNCR	2020-07-24 12:17:44.235187
317	XNDA	XINDA INTERNATIONAL CORP.   Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001624985","figiuid":"EQ0000000039259610","scfigi":"BBG007K9S546","cfigi":"BBG007K9S537","figi":"BBG007K9S537"}	https://api.polygon.io/v2/tickers/XNDA	2020-07-24 12:17:44.235187
318	XNGIF	Xingda International Holdings Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000025229589","scfigi":"BBG001SJV0F4","cfigi":"BBG003449PW0","figi":"BBG003449PW0"}	https://api.polygon.io/v2/tickers/XNGIF	2020-07-24 12:17:44.235187
319	XNGSF	ENN Energy Holdings Ltd. Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0728199100001002","scfigi":"BBG001SHXTM5","cfigi":"BBG000J29CK6","figi":"BBG000J29CK6"}	https://api.polygon.io/v2/tickers/XNGSF	2020-07-24 12:17:44.235187
320	XNNHQ	Xenonics Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001289550","figiuid":"EQ0037696400001000","scfigi":"BBG001SC5P36","cfigi":"BBG000CDJH45","figi":"BBG000CDJH45"}	https://api.polygon.io/v2/tickers/XNNHQ	2020-07-24 12:17:44.235187
321	XNYIF	Xinyi Solar Holdings Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000070126792","scfigi":"BBG001XVDJ24","cfigi":"BBG00MNY8DD0","figi":"BBG00MNY8DD0"}	https://api.polygon.io/v2/tickers/XNYIF	2020-07-24 12:17:44.235187
322	XOG	Extraction Oil & Gas, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001655020","figiuid":"EQ0000000037528285","scfigi":"BBG0074B4RK9","cfigi":"BBG0074B4RJ1","figi":"BBG0074B4RJ1"}	https://api.polygon.io/v2/tickers/XOG	2020-07-24 12:17:44.235187
323	XOM	Exxon Mobil Corporation	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000034088","figiuid":"EQ0010054600001000","scfigi":"BBG001S69V32","cfigi":"BBG000GZQ728","figi":"BBG000GZQ728"}	https://api.polygon.io/v2/tickers/XOM	2020-07-24 12:17:44.235187
324	XOMA	XOMA Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000791908","figiuid":"EQ0010795100001000","scfigi":"BBG001S5XLP5","cfigi":"BBG000BX4QV8","figi":"BBG000BX4QV8"}	https://api.polygon.io/v2/tickers/XOMA	2020-07-24 12:17:44.235187
325	XONE	The ExOne Company Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001561627","figiuid":"EQ0000000028085540","scfigi":"BBG003T67X53","cfigi":"BBG003T67W19","figi":"BBG003T67W19"}	https://api.polygon.io/v2/tickers/XONE	2020-07-24 12:17:44.235187
326	XP	XP Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001787425","figiuid":"EQ0000000080116567","scfigi":"BBG00QVJYHP4","cfigi":"BBG00QVJYGM9","figi":"BBG00QVJYGM9"}	https://api.polygon.io/v2/tickers/XP	2020-07-24 12:17:44.235187
327	XPDLF	Xpediator PLC Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000061210930","scfigi":"BBG00H5X76M9","cfigi":"BBG00JCWG6V9","figi":"BBG00JCWG6V9"}	https://api.polygon.io/v2/tickers/XPDLF	2020-07-24 12:17:44.235187
328	XPEL	XPEL, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"figiuid":"EQ0000000002831472","scfigi":"BBG001S6JQ87","cfigi":"BBG000R5XCX9","figi":"BBG000R5XCX9"}	https://api.polygon.io/v2/tickers/XPEL	2020-07-24 12:17:44.235187
329	XPER	Xperi Holding Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001690666","figiuid":"EQ0000000081270633","scfigi":"BBG00RBFBL78","cfigi":"BBG00RBFBL50","figi":"BBG00RBFBL50"}	https://api.polygon.io/v2/tickers/XPER	2020-07-24 12:17:44.235187
330	XPHYF	XPhyto Therapeutics Corporation Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000079170218","scfigi":"BBG00PVP58Z3","cfigi":"BBG00QHVVLF8","figi":"BBG00QHVVLF8"}	https://api.polygon.io/v2/tickers/XPHYF	2020-07-24 12:17:44.235187
331	XPL	Solitario Zinc Corp	STOCKS	US	CS	USD	true	AMX	2020-06-24	{"cik":"0000917225","figiuid":"EQ0000000000090881","scfigi":"BBG001S5QW79","cfigi":"BBG000P9HJF6","figi":"BBG000P9HJF6"}	https://api.polygon.io/v2/tickers/XPL	2020-07-24 12:17:44.235187
332	XPO	XPO LOGISTICS, INC.	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0001166003","figiuid":"EQ0735987300001000","scfigi":"BBG001SJW3C0","cfigi":"BBG000L5CJF3","figi":"BBG000L5CJF3"}	https://api.polygon.io/v2/tickers/XPO	2020-07-24 12:17:44.235187
333	XPPLF	XP Power Ltd Ordinary Shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0119790800001001","scfigi":"BBG001SFLF15","cfigi":"BBG000C2WYJ1","figi":"BBG000C2WYJ1"}	https://api.polygon.io/v2/tickers/XPPLF	2020-07-24 12:17:44.235187
334	XRAY	DENTSPLY SIRONA Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0000818479","figiuid":"EQ0010795600001000","scfigi":"BBG001S5XLV8","cfigi":"BBG000BX57K1","figi":"BBG000BX57K1"}	https://api.polygon.io/v2/tickers/XRAY	2020-07-24 12:17:44.235187
335	XREG	XR Energy Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000020988544","scfigi":"BBG00294N6M4","cfigi":"BBG00294N5V6","figi":"BBG00294N5V6"}	https://api.polygon.io/v2/tickers/XREG	2020-07-24 12:17:44.235187
336	XRESF	Xtierra Inc. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000009020549","scfigi":"BBG001SR82B2","cfigi":"BBG000W04GG6","figi":"BBG000W04GG6"}	https://api.polygon.io/v2/tickers/XRESF	2020-07-24 12:17:44.235187
337	XROLF	Xero Ltd. Ordinary Shares (New Zealand)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000016965756","scfigi":"BBG001STJD04","cfigi":"BBG001KNRBS0","figi":"BBG001KNRBS0"}	https://api.polygon.io/v2/tickers/XROLF	2020-07-24 12:17:44.235187
338	XRTEF	Xeros Technology Group Plc Common Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000072009918","scfigi":"BBG0064M4KY7","cfigi":"BBG00N9S9TT4","figi":"BBG00N9S9TT4"}	https://api.polygon.io/v2/tickers/XRTEF	2020-07-24 12:17:44.235187
339	XRTXF	Xortx Therapeutics Inc Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000064819430","scfigi":"BBG009J96Z06","cfigi":"BBG00KVK0YG4","figi":"BBG00KVK0YG4"}	https://api.polygon.io/v2/tickers/XRTXF	2020-07-24 12:17:44.235187
340	XRX	Xerox Holdings Corporation Common Stock	STOCKS	US	CS	USD	true	NYE	2020-06-24	{"cik":"0000108772","figiuid":"EQ0000000073016177","scfigi":"BBG00NNG2ZK6","cfigi":"BBG00NNG2ZJ8","figi":"BBG00NNG2ZJ8"}	https://api.polygon.io/v2/tickers/XRX	2020-07-24 12:17:44.235187
341	XRXH	XRX International Entertainment Holding Group Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000006889384","scfigi":"BBG001SZKQ72","cfigi":"BBG000C9N769","figi":"BBG000C9N769"}	https://api.polygon.io/v2/tickers/XRXH	2020-07-24 12:17:44.235187
342	XSHLF	XS Financial Inc Other Voting	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"figiuid":"EQ0000000023781356","scfigi":"BBG001T6YTG4","cfigi":"BBG002Y7F6Y5","figi":"BBG002Y7F6Y5"}	https://api.polygon.io/v2/tickers/XSHLF	2020-07-24 12:17:44.235187
343	XSNX	XSUNX, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001039466","figiuid":"EQ0034878700001000","scfigi":"BBG001SC0BS5","cfigi":"BBG000C6KC85","figi":"BBG000C6KC85"}	https://api.polygon.io/v2/tickers/XSNX	2020-07-24 12:17:44.235187
344	XSONF	Claxson Interactive Group, Inc. Ordinary Shares (British Virgin Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001132340","figiuid":"EQ0175209900001000","scfigi":"BBG001SJLKM3","cfigi":"BBG000DLMCJ7","figi":"BBG000DLMCJ7"}	https://api.polygon.io/v2/tickers/XSONF	2020-07-24 12:17:44.235187
345	XSPA	XpresSpa Group, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-06-24	{"cik":"0001410428","figiuid":"EQ0000000010465702","scfigi":"BBG001T90NF9","cfigi":"BBG000R263Y5","figi":"BBG000R263Y5"}	https://api.polygon.io/v2/tickers/XSPA	2020-07-24 12:17:44.235187
346	XSPT	XSport Global, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001628104","figiuid":"EQ0000000040402578","scfigi":"BBG007W2JFD6","cfigi":"BBG007W2JFC7","figi":"BBG007W2JFC7"}	https://api.polygon.io/v2/tickers/XSPT	2020-07-24 12:17:44.235187
347	XSVT	Xsovt Brands, Inc. Common Stock	STOCKS	US	CS	EUR	true	OTC	2020-06-24	{"figiuid":"EQ0000000007582747","scfigi":"BBG001T0KNZ4","cfigi":"BBG000D0GWB4","figi":"BBG000D0GWB4"}	https://api.polygon.io/v2/tickers/XSVT	2020-07-24 12:17:44.235187
348	XTEG	XT Energy Group, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000010521273","scfigi":"BBG001T933Q8","cfigi":"BBG000R3TWV7","figi":"BBG000R3TWV7"}	https://api.polygon.io/v2/tickers/XTEG	2020-07-24 12:17:44.235187
349	XTERF	Norvista Capital Corporation Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000063352","scfigi":"BBG001SJXHD7","cfigi":"BBG000DDY311","figi":"BBG000DDY311"}	https://api.polygon.io/v2/tickers/XTERF	2020-07-24 12:17:44.235187
350	XTGRF	Xtra-Gold Resources Corporation Common Stock (British Virgin Islands)	STOCKS	US	CS	USD	true	OTC	2020-06-24	{"cik":"0001288770","figiuid":"EQ0140902400001000","scfigi":"BBG001SKZ9Q6","cfigi":"BBG000F7D636","figi":"BBG000F7D636"}	https://api.polygon.io/v2/tickers/XTGRF	2020-07-24 12:17:44.235187
351	XTMM	Xtreme Motorsports International, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001121520","figiuid":"EQ0000000000072758","scfigi":"BBG001SK12R7","cfigi":"BBG000DR4322","figi":"BBG000DR4322"}	https://api.polygon.io/v2/tickers/XTMM	2020-07-24 12:17:46.113023
352	XTNT	Xtant Medical Holdings, Inc.	STOCKS	US	CS	USD	true	AMX	2020-07-01	{"cik":"0001453593","figiuid":"EQ0000000009536214","scfigi":"BBG001T6FJR5","cfigi":"BBG000Q44D18","figi":"BBG000Q44D18"}	https://api.polygon.io/v2/tickers/XTNT	2020-07-24 12:17:46.113023
353	XTPEF	Xtep International Holdings, Ltd. Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000012172878","scfigi":"BBG001SN2VH7","cfigi":"BBG00193D1R5","figi":"BBG00193D1R5"}	https://api.polygon.io/v2/tickers/XTPEF	2020-07-24 12:17:46.113023
354	XTPT	Xtra Energy Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0018661700001000","scfigi":"BBG001S8Y7V2","cfigi":"BBG000GNJ803","figi":"BBG000GNJ803"}	https://api.polygon.io/v2/tickers/XTPT	2020-07-24 12:17:46.113023
355	XTRM	Extreme Biodiesel, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001440280","figiuid":"EQ0000000008903686","scfigi":"BBG001T5G5H7","cfigi":"BBG000P2F0S0","figi":"BBG000P2F0S0"}	https://api.polygon.io/v2/tickers/XTRM	2020-07-24 12:17:46.113023
356	XTRRF	X-Terra Resources Inc. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000050734418","scfigi":"BBG005CWZZ53","cfigi":"BBG00DBK6999","figi":"BBG00DBK6999"}	https://api.polygon.io/v2/tickers/XTRRF	2020-07-24 12:17:46.113023
357	XVIPF	Xvivo Perfusion AB Ordinary Shares (Sweden)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000034061397","scfigi":"BBG003BZGWP8","cfigi":"BBG005YZ52Q5","figi":"BBG005YZ52Q5"}	https://api.polygon.io/v2/tickers/XVIPF	2020-07-24 12:17:46.113023
358	XXII	22nd Century Group Inc.	STOCKS	US	CS	USD	true	AMX	2020-07-01	{"cik":"0001347858","figiuid":"EQ0000000002808910","scfigi":"BBG001SQ4DP9","cfigi":"BBG000LS03D3","figi":"BBG000LS03D3"}	https://api.polygon.io/v2/tickers/XXII	2020-07-24 12:17:46.113023
359	XXMMF	XIMEN MINING CORP Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000009098457","scfigi":"BBG001T05L67","cfigi":"BBG000W1FM06","figi":"BBG000W1FM06"}	https://api.polygon.io/v2/tickers/XXMMF	2020-07-24 12:17:46.113023
360	XYIGF	Xinyi Glass Holdings Limited Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001747471","scfigi":"BBG001SJZZJ9","cfigi":"BBG000QW5521","figi":"BBG000QW5521"}	https://api.polygon.io/v2/tickers/XYIGF	2020-07-24 12:17:46.113023
361	XYL	Xylem Inc	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001524472","figiuid":"EQ0000000016530122","scfigi":"BBG001V05C73","cfigi":"BBG001D8R5D0","figi":"BBG001D8R5D0"}	https://api.polygon.io/v2/tickers/XYL	2020-07-24 12:17:46.113023
362	XYLTF	Sweet Natural Trading Co Limited Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000017898567","scfigi":"BBG001SV0515","cfigi":"BBG001R78JY5","figi":"BBG001R78JY5"}	https://api.polygon.io/v2/tickers/XYLTF	2020-07-24 12:17:46.113023
363	XYNH	Xynergy Holdings Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0000920749","figiuid":"EQ0015655600001000","scfigi":"BBG001S6XHB7","cfigi":"BBG000BQT1M1","figi":"BBG000BQT1M1"}	https://api.polygon.io/v2/tickers/XYNH	2020-07-24 12:17:46.113023
364	XYNO	Xynomic Pharmaceuticals Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000057909141","scfigi":"BBG00H3P9M32","cfigi":"BBG00H3P9M23","figi":"BBG00H3P9M23"}	https://api.polygon.io/v2/tickers/XYNO	2020-07-24 12:17:46.113023
365	XZJCF	MITSUI MINING & SMELTING CO LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000095383","scfigi":"BBG001S6FFS3","cfigi":"BBG000D73SC1","figi":"BBG000D73SC1"}	https://api.polygon.io/v2/tickers/XZJCF	2020-07-24 12:17:46.113023
366	Y	Alleghany Corporation	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0000775368","figiuid":"EQ0010003400001000","scfigi":"BBG001S5XM91","cfigi":"BBG000BX6BJ3","figi":"BBG000BX6BJ3"}	https://api.polygon.io/v2/tickers/Y	2020-07-24 12:17:46.113023
367	YACAF	Yancoal Australia Ltd Shs (Australia)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000026400890","scfigi":"BBG001TSLDR3","cfigi":"BBG003BVVT31","figi":"BBG003BVVT31"}	https://api.polygon.io/v2/tickers/YACAF	2020-07-24 12:17:46.113023
368	YAHOF	Z HLDGS CORP Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001180126","scfigi":"BBG001SB9FF3","cfigi":"BBG000H3XHD6","figi":"BBG000H3XHD6"}	https://api.polygon.io/v2/tickers/YAHOF	2020-07-24 12:17:46.113023
369	YAMCF	Yamaha Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000540894","scfigi":"BBG001S6FWW1","cfigi":"BBG000BXQDK5","figi":"BBG000BXQDK5"}	https://api.polygon.io/v2/tickers/YAMCF	2020-07-24 12:17:46.113023
370	YAMHF	Yamaha Motor Company Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001183858","scfigi":"BBG001S6FVF2","cfigi":"BBG000C1V4K8","figi":"BBG000C1V4K8"}	https://api.polygon.io/v2/tickers/YAMHF	2020-07-24 12:17:46.113023
371	YARAF	Yatra Capital Limited Ordinary Shares (Jersey)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000035234131","scfigi":"BBG001SS1GJ8","cfigi":"BBG006G06S00","figi":"BBG006G06S00"}	https://api.polygon.io/v2/tickers/YARAF	2020-07-24 12:17:46.113023
372	YASKF	Yaskawa Electric Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001183090","scfigi":"BBG001S6FMP1","cfigi":"BBG000C1R2K7","figi":"BBG000C1R2K7"}	https://api.polygon.io/v2/tickers/YASKF	2020-07-24 12:17:46.113023
373	YATRF	Yamato Holdings Co Ltd Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000372703","scfigi":"BBG001S6BP87","cfigi":"BBG000BZS062","figi":"BBG000BZS062"}	https://api.polygon.io/v2/tickers/YATRF	2020-07-24 12:17:46.113023
374	YAYO	YayYo, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000064733523","scfigi":"BBG00KTGG9M7","cfigi":"BBG00KTGG8X7","figi":"BBG00KTGG8X7"}	https://api.polygon.io/v2/tickers/YAYO	2020-07-24 12:17:46.113023
375	YBAO	YBCC, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0000822997","figiuid":"EQ0012659600001000","scfigi":"BBG001SB48V6","cfigi":"BBG000BR2Z52","figi":"BBG000BR2Z52"}	https://api.polygon.io/v2/tickers/YBAO	2020-07-24 12:17:46.113023
376	YBRHF	Yellow Brick Road Holdings Ltd (Australia)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000036756979","scfigi":"BBG001T0SN86","cfigi":"BBG006VZNPW8","figi":"BBG006VZNPW8"}	https://api.polygon.io/v2/tickers/YBRHF	2020-07-24 12:17:46.113023
377	YCBD	cbdMD, Inc. Common Stock	STOCKS	US	CS	USD	true	AMX	2020-07-01	{"cik":"0001644903","figiuid":"EQ0000000060425173","scfigi":"BBG00J3H4LJ6","cfigi":"BBG00J3H4KT7","figi":"BBG00J3H4KT7"}	https://api.polygon.io/v2/tickers/YCBD	2020-07-24 12:17:46.113023
378	YDRMF	YDX Innovation Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000054991241","scfigi":"BBG001T2P977","cfigi":"BBG00FZMHZ94","figi":"BBG00FZMHZ94"}	https://api.polygon.io/v2/tickers/YDRMF	2020-07-24 12:17:46.113023
379	YDVL	Yadkin Valley Company New Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001013266","figiuid":"EQ0013668800001000","scfigi":"BBG001S7TRN5","cfigi":"BBG000BJKHT4","figi":"BBG000BJKHT4"}	https://api.polygon.io/v2/tickers/YDVL	2020-07-24 12:17:46.113023
380	YDWAF	Yodogawa Steel Works Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001181946","scfigi":"BBG001S6FF03","cfigi":"BBG000C1NLW6","figi":"BBG000C1NLW6"}	https://api.polygon.io/v2/tickers/YDWAF	2020-07-24 12:17:46.113023
381	YECO	YULONG ECO-MATLS LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000040194182","scfigi":"BBG007RBRJG2","cfigi":"BBG007RBRJD5","figi":"BBG007RBRJD5"}	https://api.polygon.io/v2/tickers/YECO	2020-07-24 12:17:46.113023
382	YELEF	Yee Lee Corp BHD Shs (Malaysia)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001195766","scfigi":"BBG001S79DT2","cfigi":"BBG000C0R9Z8","figi":"BBG000C0R9Z8"}	https://api.polygon.io/v2/tickers/YELEF	2020-07-24 12:17:46.113023
383	YELP	YELP INC.	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001345016","figiuid":"EQ0000000009491916","scfigi":"BBG001T6C2W9","cfigi":"BBG000Q2HM09","figi":"BBG000Q2HM09"}	https://api.polygon.io/v2/tickers/YELP	2020-07-24 12:17:46.113023
384	YETI	YETI Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001670592","figiuid":"EQ0000000050460483","scfigi":"BBG00D8JC891","cfigi":"BBG00D8JC882","figi":"BBG00D8JC882"}	https://api.polygon.io/v2/tickers/YETI	2020-07-24 12:17:46.113023
385	YEWB	Yew Bio-Pharm Group Inc Common	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000005268719","scfigi":"BBG001T0XBW9","cfigi":"BBG000V12Z75","figi":"BBG000V12Z75"}	https://api.polygon.io/v2/tickers/YEWB	2020-07-24 12:17:46.113023
386	YEWTF	Environmental Waste International Inc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0018163000001001","scfigi":"BBG001S9YMH3","cfigi":"BBG000J76ZM5","figi":"BBG000J76ZM5"}	https://api.polygon.io/v2/tickers/YEWTF	2020-07-24 12:17:46.113023
387	YEXT	Yext, Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001614178","figiuid":"EQ0000000017230414","scfigi":"BBG001V12329","cfigi":"BBG001MKZGY7","figi":"BBG001MKZGY7"}	https://api.polygon.io/v2/tickers/YEXT	2020-07-24 12:17:46.113023
388	YFGSF	Yamaguchi Financial Group Inc Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000003044213","scfigi":"BBG001SNTP63","cfigi":"BBG000G355M4","figi":"BBG000G355M4"}	https://api.polygon.io/v2/tickers/YFGSF	2020-07-24 12:17:46.113023
389	YGEQF	Yageo Corp Ordinary Shares (Taiwan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0013040900001002","scfigi":"BBG001S7KCQ4","cfigi":"BBG000BQC0P8","figi":"BBG000BQC0P8"}	https://api.polygon.io/v2/tickers/YGEQF	2020-07-24 12:17:46.113023
390	YGRAF	Yangarra Res Ltd Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000002394145","scfigi":"BBG001SJY1J5","cfigi":"BBG000R3FJX9","figi":"BBG000R3FJX9"}	https://api.polygon.io/v2/tickers/YGRAF	2020-07-24 12:17:46.113023
391	YGTYF	SSLJ.com Limited Class A Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000060654884","scfigi":"BBG00J5HC109","cfigi":"BBG00J5HC092","figi":"BBG00J5HC092"}	https://api.polygon.io/v2/tickers/YGTYF	2020-07-24 12:17:46.113023
392	YGWAF	Yokogawa Bridge Corp Shs (Japan)	STOCKS	US	CS	JPY	true	OTC	2020-07-01	{"figiuid":"EQ0000000000089812","scfigi":"BBG001S6FGB9","cfigi":"BBG000BY35N2","figi":"BBG000BY35N2"}	https://api.polygon.io/v2/tickers/YGWAF	2020-07-24 12:17:46.113023
393	YGYI	Youngevity International, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0001569329","figiuid":"EQ0000000008703538","scfigi":"BBG001T55TL2","cfigi":"BBG000NGZNL6","figi":"BBG000NGZNL6"}	https://api.polygon.io/v2/tickers/YGYI	2020-07-24 12:17:46.113023
394	YHDT	You Han Data Tech Company Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000002409325","scfigi":"BBG001SQN0X7","cfigi":"BBG000NJBFZ8","figi":"BBG000NJBFZ8"}	https://api.polygon.io/v2/tickers/YHDT	2020-07-24 12:17:46.113023
395	YIGRF	Yixin Group Ltd. Common Shares Cayman Island (KY)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000074018548","scfigi":"BBG007WL1PB3","cfigi":"BBG00NW3F6J7","figi":"BBG00NW3F6J7"}	https://api.polygon.io/v2/tickers/YIGRF	2020-07-24 12:17:46.113023
396	YIPCF	Yips Chemical Holdings Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000067747","scfigi":"BBG001S6VCD8","cfigi":"BBG000BTVRY2","figi":"BBG000BTVRY2"}	https://api.polygon.io/v2/tickers/YIPCF	2020-07-24 12:17:46.113023
397	YIPI	Yippy, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001409136","figiuid":"EQ0000000004653226","scfigi":"BBG001SH5MD1","cfigi":"BBG000BRT9C3","figi":"BBG000BRT9C3"}	https://api.polygon.io/v2/tickers/YIPI	2020-07-24 12:17:46.113023
398	YITD	Yinhang Internet Technologies Development, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001494722","figiuid":"EQ0000000021809849","scfigi":"BBG002F06KW2","cfigi":"BBG002F06K16","figi":"BBG002F06K16"}	https://api.polygon.io/v2/tickers/YITD	2020-07-24 12:17:46.113023
399	YITYF	YIT OYJ Ordinary Shares (Finland)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001171162","scfigi":"BBG001SF79D2","cfigi":"BBG000PQ9HC4","figi":"BBG000PQ9HC4"}	https://api.polygon.io/v2/tickers/YITYF	2020-07-24 12:17:46.113023
400	YJGJ	Yijia Group Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000057456341","scfigi":"BBG00GXRNJ10","cfigi":"BBG00GXRNJ01","figi":"BBG00GXRNJ01"}	https://api.polygon.io/v2/tickers/YJGJ	2020-07-24 12:17:46.113023
401	YKLTF	Yakult Honsha Co Ltd Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0011516400001002","scfigi":"BBG001S6C3Z5","cfigi":"BBG000BWJPX4","figi":"BBG000BWJPX4"}	https://api.polygon.io/v2/tickers/YKLTF	2020-07-24 12:17:48.002351
402	YLDGF	Yanlord Land Group Ltd Ordinary Shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000002923339","scfigi":"BBG001SNHYZ5","cfigi":"BBG000Q7MLR5","figi":"BBG000Q7MLR5"}	https://api.polygon.io/v2/tickers/YLDGF	2020-07-24 12:17:48.002351
403	YLLWF	Yellow Hat Limited Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001188014","scfigi":"BBG001S6P7B8","cfigi":"BBG000PRL3C9","figi":"BBG000PRL3C9"}	https://api.polygon.io/v2/tickers/YLLWF	2020-07-24 12:17:48.002351
404	YLLXF	Yellow Cake Plc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000067016609","scfigi":"BBG00L33SXQ2","cfigi":"BBG00LLPBLF9","figi":"BBG00LLPBLF9"}	https://api.polygon.io/v2/tickers/YLLXF	2020-07-24 12:17:48.002351
405	YLWDF	YELLOW PAGES LTD  Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000027818938","scfigi":"BBG003QH2Q07","cfigi":"BBG003QTV6T2","figi":"BBG003QTV6T2"}	https://api.polygon.io/v2/tickers/YLWDF	2020-07-24 12:17:48.002351
406	YMAB	Y-mAbs Therapeutics, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0001722964","figiuid":"EQ0000000060348794","scfigi":"BBG00J2DBN04","cfigi":"BBG00J2DBMZ8","figi":"BBG00J2DBMZ8"}	https://api.polygon.io/v2/tickers/YMAB	2020-07-24 12:17:48.002351
407	YMAIF	Yoma Strategic Holdings Ltd Ordinary Shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000003177137","scfigi":"BBG001S6NR80","cfigi":"BBG000C4JQQ1","figi":"BBG000C4JQQ1"}	https://api.polygon.io/v2/tickers/YMAIF	2020-07-24 12:17:48.002351
408	YMATF	AZBIL CORP SHS (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000003778375","scfigi":"BBG001S6FQY2","cfigi":"BBG000GPZD81","figi":"BBG000GPZD81"}	https://api.polygon.io/v2/tickers/YMATF	2020-07-24 12:17:48.002351
409	YMDAF	Yamada Denki Co Ltd Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000089704","scfigi":"BBG001S6JHJ5","cfigi":"BBG000P9FKQ3","figi":"BBG000P9FKQ3"}	https://api.polygon.io/v2/tickers/YMDAF	2020-07-24 12:17:48.002351
410	YMTKF	Yamato Kogyo Co Ltd SHS (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001181938","scfigi":"BBG001S6FDX2","cfigi":"BBG000C1N980","figi":"BBG000C1N980"}	https://api.polygon.io/v2/tickers/YMTKF	2020-07-24 12:17:48.002351
411	YMZNF	YAMAZEN CORP Ordinary Shares Japan (JP )	STOCKS	US	CS	JPY	true	OTC	2020-07-01	{"figiuid":"EQ0000000001185677","scfigi":"BBG001S6FZ09","cfigi":"BBG000C1VSS7","figi":"BBG000C1VSS7"}	https://api.polygon.io/v2/tickers/YMZNF	2020-07-24 12:17:48.002351
412	YNAJF	Yantai North Andre Juice Co Ltd Ordinary Shs H (Hong Kong)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000992024","scfigi":"BBG001SD54L1","cfigi":"BBG000DP4FY4","figi":"BBG000DP4FY4"}	https://api.polygon.io/v2/tickers/YNAJF	2020-07-24 12:17:48.002351
413	YNDX	Yandex N.V. Class A Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0001513845","figiuid":"EQ0000000017314472","scfigi":"BBG001TBY593","cfigi":"BBG001NVJ6W4","figi":"BBG001NVJ6W4"}	https://api.polygon.io/v2/tickers/YNDX	2020-07-24 12:17:48.002351
414	YNGDF	Yingde Gases Group Co Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001501630","figiuid":"EQ0000000021603876","scfigi":"BBG001SV2586","cfigi":"BBG002CV4MT9","figi":"BBG002CV4MT9"}	https://api.polygon.io/v2/tickers/YNGDF	2020-07-24 12:17:48.002351
415	YNGFF	Veris Gold Corp. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000141767","scfigi":"BBG001S67MS7","cfigi":"BBG000BZ1S42","figi":"BBG000BZ1S42"}	https://api.polygon.io/v2/tickers/YNGFF	2020-07-24 12:17:48.002351
416	YNNHF	Yihai Intl Hldg Ltd Ordinary Shares (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000084627338","scfigi":"BBG00D7FS4J1","cfigi":"BBG00TQKGXF7","figi":"BBG00TQKGXF7"}	https://api.polygon.io/v2/tickers/YNNHF	2020-07-24 12:17:48.002351
417	YNSKF	King Stone Energy Grop Ltd. Ordinary Shares (Hong Kong)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000091048","scfigi":"BBG001S6PP19","cfigi":"BBG000BXQ0X9","figi":"BBG000BXQ0X9"}	https://api.polygon.io/v2/tickers/YNSKF	2020-07-24 12:17:48.002351
418	YNVYF	Ynvisible Interactive Inc. Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000087154","scfigi":"BBG001S7J304","cfigi":"BBG000JLNTG6","figi":"BBG000JLNTG6"}	https://api.polygon.io/v2/tickers/YNVYF	2020-07-24 12:17:48.002351
419	YOGA	YogaWorks, Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001703497","figiuid":"EQ0000000036756349","scfigi":"BBG006VZJLX1","cfigi":"BBG006VZJLW2","figi":"BBG006VZJLW2"}	https://api.polygon.io/v2/tickers/YOGA	2020-07-24 12:17:48.002351
420	YOJEF	YOJEE LTD Shs (Austrailia)	STOCKS	US	CS	AUD	true	OTC	2020-07-01	{"figiuid":"EQ0000000078879535","scfigi":"BBG001TCTY85","cfigi":"BBG00QDL7YR0","figi":"BBG00QDL7YR0"}	https://api.polygon.io/v2/tickers/YOJEF	2020-07-24 12:17:48.002351
421	YOKEF	Yokogawa Electric Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001183438","scfigi":"BBG001S6FQT8","cfigi":"BBG000C1S7T6","figi":"BBG000C1S7T6"}	https://api.polygon.io/v2/tickers/YOKEF	2020-07-24 12:17:48.002351
422	YONXF	Yonex Co Ltd Ordinary Shares (Japan)	STOCKS	US	CS	JPY	true	OTC	2020-07-01	{"figiuid":"EQ0000000001185397","scfigi":"BBG001S6TB89","cfigi":"BBG000C3NHP9","figi":"BBG000C3NHP9"}	https://api.polygon.io/v2/tickers/YONXF	2020-07-24 12:17:48.002351
423	YOOIF	Yangaroo Inc  Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000548210","scfigi":"BBG001SCLP01","cfigi":"BBG000K4CWX8","figi":"BBG000K4CWX8"}	https://api.polygon.io/v2/tickers/YOOIF	2020-07-24 12:17:48.002351
424	YORI	Yora International, Inc. New Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001248097","scfigi":"BBG001SM96T4","cfigi":"BBG000Q6C8T5","figi":"BBG000Q6C8T5"}	https://api.polygon.io/v2/tickers/YORI	2020-07-24 12:17:48.002351
425	YORUF	Yokohama Rubber Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001107952","scfigi":"BBG001S6FCN5","cfigi":"BBG000C0DF34","figi":"BBG000C0DF34"}	https://api.polygon.io/v2/tickers/YORUF	2020-07-24 12:17:48.002351
426	YORW	York Water Company (The) Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0000108985","figiuid":"EQ0017133400001000","scfigi":"BBG001S6YWZ7","cfigi":"BBG000BRZKC1","figi":"BBG000BRZKC1"}	https://api.polygon.io/v2/tickers/YORW	2020-07-24 12:17:48.002351
427	YPHDF	Ypsomed Hodling AG, Burgdorf Namen - AKT (Switzerland)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001380356","scfigi":"BBG001SC15W2","cfigi":"BBG000K11W93","figi":"BBG000K11W93"}	https://api.polygon.io/v2/tickers/YPHDF	2020-07-24 12:17:48.002351
428	YPPN	YAPPN CORP Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000019317965","scfigi":"BBG001XVY5K1","cfigi":"BBG001XVY5J3","figi":"BBG001XVY5J3"}	https://api.polygon.io/v2/tickers/YPPN	2020-07-24 12:17:48.002351
429	YRAIF	Yara International ASA Ordinary Shares (Norway)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001279956","figiuid":"EQ0000000001153857","scfigi":"BBG001SJL7Z8","cfigi":"BBG000PM0556","figi":"BBG000PM0556"}	https://api.polygon.io/v2/tickers/YRAIF	2020-07-24 12:17:48.002351
430	YRBAF	Yorbeau Resources, Inc. Class A Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0011101000002001","scfigi":"BBG001S60YL5","cfigi":"BBG000C0MND6","figi":"BBG000C0MND6"}	https://api.polygon.io/v2/tickers/YRBAF	2020-07-24 12:17:48.002351
431	YRCW	YRC Worldwide, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0000716006","figiuid":"EQ0010178700001000","scfigi":"BBG001S5XMC7","cfigi":"BBG000BX6PW7","figi":"BBG000BX6PW7"}	https://api.polygon.io/v2/tickers/YRCW	2020-07-24 12:17:48.002351
432	YRIV	Yangtze River Port & Logistics Ltd Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000010984528","scfigi":"BBG001T27067","cfigi":"BBG0015CHPJ1","figi":"BBG0015CHPJ1"}	https://api.polygon.io/v2/tickers/YRIV	2020-07-24 12:17:48.002351
433	YRKB	York Traditions Bank York County PA Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001425924","scfigi":"BBG001SMYKB4","cfigi":"BBG000QHYWL2","figi":"BBG000QHYWL2"}	https://api.polygon.io/v2/tickers/YRKB	2020-07-24 12:17:48.002351
434	YRLLF	Global UAV Technologies Ltd. Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0011062200001001","scfigi":"BBG001S6VCT1","cfigi":"BBG000CHN7Z9","figi":"BBG000CHN7Z9"}	https://api.polygon.io/v2/tickers/YRLLF	2020-07-24 12:17:48.002351
435	YSGG	1399 INTERNET TECHNOLOGY APPLICATION GROUP INC Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0015658000001000","scfigi":"BBG001S73F59","cfigi":"BBG000BTYN87","figi":"BBG000BTYN87"}	https://api.polygon.io/v2/tickers/YSGG	2020-07-24 12:17:48.002351
436	YSHCF	YESTAR HEALTHCARE HLDGS CO LTD Common Shares Cayman Islands(KY )	STOCKS	US	CS	HKD	true	OTC	2020-07-01	{"figiuid":"EQ0000000081809782","scfigi":"BBG005C9BW75","cfigi":"BBG00RM7RWW5","figi":"BBG00RM7RWW5"}	https://api.polygon.io/v2/tickers/YSHCF	2020-07-24 12:17:48.002351
437	YSHLF	Yangzijiang Shipbuilding Holdings Ltd Ordinary shares (Singapore)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000003471653","scfigi":"BBG001SPT287","cfigi":"BBG000R7XBP6","figi":"BBG000R7XBP6"}	https://api.polygon.io/v2/tickers/YSHLF	2020-07-24 12:17:48.002351
438	YSHOF	Yoshitake Inc Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000083390277","scfigi":"BBG001S673G2","cfigi":"BBG00SSR0H46","figi":"BBG00SSR0H46"}	https://api.polygon.io/v2/tickers/YSHOF	2020-07-24 12:17:48.002351
439	YSSCF	YSS Corp Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0011029800001001","scfigi":"BBG001S77MQ7","cfigi":"BBG000CYZ2L5","figi":"BBG000CYZ2L5"}	https://api.polygon.io/v2/tickers/YSSCF	2020-07-24 12:17:48.002351
440	YTEN	Yield10 Bioscience, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0001121702","figiuid":"EQ0732034000001000","scfigi":"BBG001SHY788","cfigi":"BBG000J1XKK3","figi":"BBG000J1XKK3"}	https://api.polygon.io/v2/tickers/YTEN	2020-07-24 12:17:48.002351
441	YTFD	Yacht Finders, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000003606532","scfigi":"BBG001SSVBZ8","cfigi":"BBG000QYHZ19","figi":"BBG000QYHZ19"}	https://api.polygon.io/v2/tickers/YTFD	2020-07-24 12:17:48.002351
442	YTHL	Yingtui Holdings Limited. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0019456400001000","scfigi":"BBG001SB1NH2","cfigi":"BBG000JB2R48","figi":"BBG000JB2R48"}	https://api.polygon.io/v2/tickers/YTHL	2020-07-24 12:17:48.002351
443	YTLCF	YTL Corp Berhad Ordinary Shares (Malaysia)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001195774","scfigi":"BBG001S6LV29","cfigi":"BBG000BX6579","figi":"BBG000BX6579"}	https://api.polygon.io/v2/tickers/YTLCF	2020-07-24 12:17:48.002351
444	YTLPF	Ytl Power International Bhd Ordinary Shares	STOCKS	US	CS	MYR	true	OTC	2020-07-01	{"figiuid":"EQ0022306600001001","scfigi":"BBG001S9TRW1","cfigi":"BBG000D19681","figi":"BBG000D19681"}	https://api.polygon.io/v2/tickers/YTLPF	2020-07-24 12:17:48.002351
445	YTRA	Yatra Online, Inc. Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0001516899","figiuid":"EQ0000000050712674","scfigi":"BBG00DBBP6T2","cfigi":"BBG00DBBP6R4","figi":"BBG00DBBP6R4"}	https://api.polygon.io/v2/tickers/YTRA	2020-07-24 12:17:48.002351
446	YTRGF	Y.T. Realty Group, Ltd. Ordinary Shares (Bermuda) HKD	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000271485","scfigi":"BBG001S6J4K2","cfigi":"BBG000BZDKQ2","figi":"BBG000BZDKQ2"}	https://api.polygon.io/v2/tickers/YTRGF	2020-07-24 12:17:48.002351
447	YUANF	Fincera Inc. Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001417370","figiuid":"EQ0000000005821105","scfigi":"BBG001SRK7N4","cfigi":"BBG000PYZZ47","figi":"BBG000PYZZ47"}	https://api.polygon.io/v2/tickers/YUANF	2020-07-24 12:17:48.002351
448	YUEIF	Yue Yuen Industrial (Holdings) Limited Ordinary Shares (Bermuda)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000000614970","scfigi":"BBG001S71HV8","cfigi":"BBG000BVGGL2","figi":"BBG000BVGGL2"}	https://api.polygon.io/v2/tickers/YUEIF	2020-07-24 12:17:48.002351
449	YUEXF	Yuexiu Property Co Ltd Ordinary Shares (Hong Kong)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001175541","scfigi":"BBG001S5RVW2","cfigi":"BBG000C1CND5","figi":"BBG000C1CND5"}	https://api.polygon.io/v2/tickers/YUEXF	2020-07-24 12:17:48.002351
450	YUGVF	Yougov plc London Ordinary Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000002920718","scfigi":"BBG001SCPT90","cfigi":"BBG000Q7DVP5","figi":"BBG000Q7DVP5"}	https://api.polygon.io/v2/tickers/YUGVF	2020-07-24 12:17:48.002351
451	YUHNF	YuHan Corporation Ordinary Shares (S. Korea)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000001188222","scfigi":"BBG001S6JYV4","cfigi":"BBG000C13HS2","figi":"BBG000C13HS2"}	https://api.polygon.io/v2/tickers/YUHNF	2020-07-24 12:17:50.58137
452	YUII	Yuhe International, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001047857","figiuid":"EQ0031377200001000","scfigi":"BBG001S80KV0","cfigi":"BBG000BKTR74","figi":"BBG000BKTR74"}	https://api.polygon.io/v2/tickers/YUII	2020-07-24 12:17:50.58137
453	YUM	Yum! Brands, Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001041061","figiuid":"EQ0030235900001000","scfigi":"BBG001S7JQ30","cfigi":"BBG000BH3GZ2","figi":"BBG000BH3GZ2"}	https://api.polygon.io/v2/tickers/YUM	2020-07-24 12:17:50.58137
454	YUMAQ	YUMA ENERGY INC NEW Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0010636100001000","scfigi":"BBG001S5VHK1","cfigi":"BBG000BRT032","figi":"BBG000BRT032"}	https://api.polygon.io/v2/tickers/YUMAQ	2020-07-24 12:17:50.58137
455	YUMC	Yum China Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	NYE	2020-07-01	{"cik":"0001673358","figiuid":"EQ0000000045897781","scfigi":"BBG00B8N0HH0","cfigi":"BBG00B8N0HG1","figi":"BBG00B8N0HG1"}	https://api.polygon.io/v2/tickers/YUMC	2020-07-24 12:17:50.58137
456	YUMM	Yummies Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001073748","figiuid":"EQ0174799700001000","scfigi":"BBG001SJCP60","cfigi":"BBG000DHFDN7","figi":"BBG000DHFDN7"}	https://api.polygon.io/v2/tickers/YUMM	2020-07-24 12:17:50.58137
457	YUMSF	DEMAE CAN CO LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000067791851","scfigi":"BBG001SD5TS9","cfigi":"BBG00LVGM7G6","figi":"BBG00LVGM7G6"}	https://api.polygon.io/v2/tickers/YUMSF	2020-07-24 12:17:50.58137
458	YUSG	YUS International Group Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"cik":"0001306035","figiuid":"EQ0000000002019914","scfigi":"BBG001SPH360","cfigi":"BBG000JHH5L8","figi":"BBG000JHH5L8"}	https://api.polygon.io/v2/tickers/YUSG	2020-07-24 12:17:50.58137
459	YUZHF	YUZHOU PROPERTIES COMPANY LIMITED Shs (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000081838361","scfigi":"BBG001T5SKH1","cfigi":"BBG00RML1MK7","figi":"BBG00RML1MK7"}	https://api.polygon.io/v2/tickers/YUZHF	2020-07-24 12:17:50.58137
460	YVR	Liquid Media Group Ltd. Common Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-07-01	{"cik":"0000884247","figiuid":"EQ0010861400001001","scfigi":"BBG001S5TSF6","cfigi":"BBG000CH3KX4","figi":"BBG000CH3KX4"}	https://api.polygon.io/v2/tickers/YVR	2020-07-24 12:17:50.58137
461	YWGRF	Yowie Group LTD Ordinary Shares (Australia)	STOCKS	US	CS	USD	true	OTC	2020-07-01	{"figiuid":"EQ0000000034547840","scfigi":"BBG001S7W7D6","cfigi":"BBG0065B1CZ0","figi":"BBG0065B1CZ0"}	https://api.polygon.io/v2/tickers/YWGRF	2020-07-24 12:17:50.58137
462	YWRLF	DIXIE GOLD INC Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000022570558","scfigi":"BBG002BK51T9","cfigi":"BBG002QBDLR2","figi":"BBG002QBDLR2"}	https://api.polygon.io/v2/tickers/YWRLF	2020-07-24 12:17:50.58137
463	YXOXF	Yoox SPA Ordinary Shares (Italy)	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000011464307","scfigi":"BBG001SMJB76","cfigi":"BBG0017CL7H6","figi":"BBG0017CL7H6"}	https://api.polygon.io/v2/tickers/YXOXF	2020-07-24 12:17:50.58137
464	YYYH	CHINA YANYUAN YUHUI NATL ED GROUP INC Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000001909273","scfigi":"BBG001SNSCX3","cfigi":"BBG000FYBB74","figi":"BBG000FYBB74"}	https://api.polygon.io/v2/tickers/YYYH	2020-07-24 12:17:50.58137
465	YZCFF	SINOPEC YIZHENG CHEM FIBRE CO LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0013564800001001","scfigi":"BBG001S6BKQ8","cfigi":"BBG000BZ6235","figi":"BBG000BZ6235"}	https://api.polygon.io/v2/tickers/YZCFF	2020-07-24 12:17:50.58137
466	YZCHF	Yanzhou Coal Mining Ltd Shares H (China)	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"cik":"0001048098","figiuid":"EQ0000000001175517","scfigi":"BBG001S80XC3","cfigi":"BBG000H3MSJ8","figi":"BBG000H3MSJ8"}	https://api.polygon.io/v2/tickers/YZCHF	2020-07-24 12:17:50.58137
467	YZOFF	Yangtze Optical Fibre & Cable Joint Stk Ltd Co Ordinary Shares (China)	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000061951937","scfigi":"BBG007JS4427","cfigi":"BBG00JQ5KX76","figi":"BBG00JQ5KX76"}	https://api.polygon.io/v2/tickers/YZOFF	2020-07-24 12:17:50.58137
468	YZZKF	Yamazaki Baking Ltd Ordinary Shares (Japan)	STOCKS	US	CS	JPY	true	OTC	2020-07-05	{"figiuid":"EQ0000000066252216","scfigi":"BBG001S6C3S3","cfigi":"BBG00LC43XR6","figi":"BBG00LC43XR6"}	https://api.polygon.io/v2/tickers/YZZKF	2020-07-24 12:17:50.58137
469	Z	Zillow Group, Inc. Class C Capital Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-05	{"cik":"0001617640","figiuid":"EQ0000000044356802","scfigi":"BBG009NRSWK2","cfigi":"BBG009NRSWJ4","figi":"BBG009NRSWJ4"}	https://api.polygon.io/v2/tickers/Z	2020-07-24 12:17:50.58137
470	ZAAG	ZA Group Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000001345873","scfigi":"BBG001SMH7G7","cfigi":"BBG000Q9T0W4","figi":"BBG000Q9T0W4"}	https://api.polygon.io/v2/tickers/ZAAG	2020-07-24 12:17:50.58137
471	ZADDF	ZADAR VENTURES LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000048012593","scfigi":"BBG00242BFX4","cfigi":"BBG00C6P91Q1","figi":"BBG00C6P91Q1"}	https://api.polygon.io/v2/tickers/ZADDF	2020-07-24 12:17:50.58137
472	ZAGG	ZAGG Inc Common Stock (Delaware)	STOCKS	US	CS	USD	true	NASDAQ	2020-07-05	{"cik":"0001296205","figiuid":"EQ0000000002737071","scfigi":"BBG001SN4PP9","cfigi":"BBG000DR8FW8","figi":"BBG000DR8FW8"}	https://api.polygon.io/v2/tickers/ZAGG	2020-07-24 12:17:50.58137
473	ZAHA	Zahav, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0081943200001000","scfigi":"BBG001S63HJ2","cfigi":"BBG000BBV873","figi":"BBG000BBV873"}	https://api.polygon.io/v2/tickers/ZAHA	2020-07-24 12:17:50.58137
474	ZAPNF	ZAPF CREATION AG Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000055984399","scfigi":"BBG001S901B2","cfigi":"BBG00GD9CG56","figi":"BBG00GD9CG56"}	https://api.polygon.io/v2/tickers/ZAPNF	2020-07-24 12:17:50.58137
475	ZARFF	Zargon Oil & Gas Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"figiuid":"EQ0000000001458844","scfigi":"BBG001S7H4C1","cfigi":"BBG000BVDP99","figi":"BBG000BVDP99"}	https://api.polygon.io/v2/tickers/ZARFF	2020-07-24 12:17:50.58137
476	ZAZA	ZAZA ENERGY CORP Common Stock undefined	STOCKS	US	CS	USD	true	OTC	2020-07-05	{"cik":"0001528393","figiuid":"EQ0010739800001000","scfigi":"BBG001S5WVK9","cfigi":"BBG000BVKR33","figi":"BBG000BVKR33"}	https://api.polygon.io/v2/tickers/ZAZA	2020-07-24 12:17:50.58137
477	ZBH	Zimmer Biomet Holdings, Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-19	{"cik":"0001136869","figiuid":"EQ0174863000001000","scfigi":"BBG001S7DQJ9","cfigi":"BBG000BKPL53","figi":"BBG000BKPL53"}	https://api.polygon.io/v2/tickers/ZBH	2020-07-24 12:17:50.58137
478	ZBISF	Zenabis Global Inc. Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000072099256","scfigi":"BBG001SFK4Y5","cfigi":"BBG00NB7C8L7","figi":"BBG00NB7C8L7"}	https://api.polygon.io/v2/tickers/ZBISF	2020-07-24 12:17:50.58137
479	ZBRA	Zebra Technologies Corporation Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0000877212","figiuid":"EQ0010798100002000","scfigi":"BBG001S6SX73","cfigi":"BBG000CC7LQ7","figi":"BBG000CC7LQ7"}	https://api.polygon.io/v2/tickers/ZBRA	2020-07-24 12:17:50.58137
480	ZCBD	Body Basics, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0019498200001000","scfigi":"BBG001S5NZ93","cfigi":"BBG000BB5YV8","figi":"BBG000BB5YV8"}	https://api.polygon.io/v2/tickers/ZCBD	2020-07-24 12:17:50.58137
481	ZCMD	Zhongchao Inc. Class A Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001785566","figiuid":"EQ0000000080237339","scfigi":"BBG00QYNF4Q1","cfigi":"BBG00QYNF3Y4","figi":"BBG00QYNF3Y4"}	https://api.polygon.io/v2/tickers/ZCMD	2020-07-24 12:17:50.58137
482	ZCOM	Impreso, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001108345","figiuid":"EQ0017071700001000","scfigi":"BBG001SD5137","cfigi":"BBG000LQ2QC5","figi":"BBG000LQ2QC5"}	https://api.polygon.io/v2/tickers/ZCOM	2020-07-24 12:17:50.58137
483	ZCPRF	Zinccorp Res Inc Common shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000006930702","scfigi":"BBG001T0RYC8","cfigi":"BBG000TYCGP7","figi":"BBG000TYCGP7"}	https://api.polygon.io/v2/tickers/ZCPRF	2020-07-24 12:17:50.58137
484	ZCRMF	Zincore Metals Inc Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000002987566","scfigi":"BBG001SPV5M1","cfigi":"BBG000QCW482","figi":"BBG000QCW482"}	https://api.polygon.io/v2/tickers/ZCRMF	2020-07-24 12:17:50.58137
485	ZDAOF	Zhidao International Holdings Ltd	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000067047694","scfigi":"BBG001S8FVQ6","cfigi":"BBG00LLXZJ34","figi":"BBG00LLXZJ34"}	https://api.polygon.io/v2/tickers/ZDAOF	2020-07-24 12:17:50.58137
486	ZDEC	Zenovia Digital Exchange Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000020744617","scfigi":"BBG0027T5CG5","cfigi":"BBG0027T5BQ6","figi":"BBG0027T5BQ6"}	https://api.polygon.io/v2/tickers/ZDEC	2020-07-24 12:17:50.58137
487	ZDEXF	Sintana Energy, Inc.  Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000011434929","scfigi":"BBG001S66HR0","cfigi":"BBG001768NZ9","figi":"BBG001768NZ9"}	https://api.polygon.io/v2/tickers/ZDEXF	2020-07-24 12:17:50.58137
488	ZDGE	Zedge, Inc.	STOCKS	US	CS	USD	true	AMX	2020-07-19	{"cik":"0001667313","figiuid":"EQ0000000045992663","scfigi":"BBG00B9QVTT9","cfigi":"BBG00B9QVTS0","figi":"BBG00B9QVTS0"}	https://api.polygon.io/v2/tickers/ZDGE	2020-07-24 12:17:50.58137
489	ZDGGF	Zoo Digital Group Plc Ordinary Shares (United Kingdom)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000000692910","scfigi":"BBG001SHZ8D9","cfigi":"BBG000FSR5L7","figi":"BBG000FSR5L7"}	https://api.polygon.io/v2/tickers/ZDGGF	2020-07-24 12:17:50.58137
490	ZDPY	Zoned Properties, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001279620","figiuid":"EQ0000000002260242","scfigi":"BBG001SNW4H4","cfigi":"BBG000MFVW88","figi":"BBG000MFVW88"}	https://api.polygon.io/v2/tickers/ZDPY	2020-07-24 12:17:50.58137
491	ZEN	ZENDESK INC	STOCKS	US	CS	USD	true	NYE	2020-07-19	{"cik":"0001463172","figiuid":"EQ0000000016710589","scfigi":"BBG006BJ1S81","cfigi":"BBG001HRFJG4","figi":"BBG001HRFJG4"}	https://api.polygon.io/v2/tickers/ZEN	2020-07-24 12:17:50.58137
492	ZENG	Zenergy International Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001384539","figiuid":"EQ0000000001781680","scfigi":"BBG001SKZ9J4","cfigi":"BBG000C2MG38","figi":"BBG000C2MG38"}	https://api.polygon.io/v2/tickers/ZENG	2020-07-24 12:17:50.58137
493	ZENO	Zenosense, Inc. (NV) Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000030622475","scfigi":"BBG004Q00JF4","cfigi":"BBG004Q00JD6","figi":"BBG004Q00JD6"}	https://api.polygon.io/v2/tickers/ZENO	2020-07-24 12:17:50.58137
494	ZENYF	Zen Graphene Solutions Ltd Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000022828448","scfigi":"BBG001TFBYY8","cfigi":"BBG002V3D8N7","figi":"BBG002V3D8N7"}	https://api.polygon.io/v2/tickers/ZENYF	2020-07-24 12:17:50.58137
495	ZEON	Zeons Corporation. Common Stock	STOCKS	US	CS	EUR	true	OTC	2020-07-19	{"figiuid":"EQ0022550500001000","scfigi":"BBG001SB72W5","cfigi":"BBG000BZ28N4","figi":"BBG000BZ28N4"}	https://api.polygon.io/v2/tickers/ZEON	2020-07-24 12:17:50.58137
496	ZEOOF	Zeon Corp. Tokyo Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000056561614","scfigi":"BBG001S6C9V6","cfigi":"BBG00GMD6SR4","figi":"BBG00GMD6SR4"}	https://api.polygon.io/v2/tickers/ZEOOF	2020-07-24 12:17:50.58137
497	ZEST	Ecoark Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001437491","figiuid":"EQ0000000006885023","scfigi":"BBG001S79PL3","cfigi":"BBG000BBH4W0","figi":"BBG000BBH4W0"}	https://api.polygon.io/v2/tickers/ZEST	2020-07-24 12:17:50.58137
498	ZEUCF	ZEU CRYPTO NETWORKS INC Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000081570116","scfigi":"BBG00JRJC6D6","cfigi":"BBG00RHN9NF5","figi":"BBG00RHN9NF5"}	https://api.polygon.io/v2/tickers/ZEUCF	2020-07-24 12:17:50.58137
499	ZEUS	Olympic Steel, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0000917470","figiuid":"EQ0012976700001000","scfigi":"BBG001S5XN26","cfigi":"BBG000BBFT75","figi":"BBG000BBFT75"}	https://api.polygon.io/v2/tickers/ZEUS	2020-07-24 12:17:50.58137
500	ZFPPF	Zambeef Product Plc Ordinary Shares (Zambia)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000021913132","scfigi":"BBG001S11351","cfigi":"BBG002G9YYG9","figi":"BBG002G9YYG9"}	https://api.polygon.io/v2/tickers/ZFPPF	2020-07-24 12:17:50.58137
501	ZFSVF	Zurich Insurance Group AG Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0096164200001001","scfigi":"BBG001SCHTR9","cfigi":"BBG000D3M9D0","figi":"BBG000D3M9D0"}	https://api.polygon.io/v2/tickers/ZFSVF	2020-07-24 12:17:52.835933
502	ZG	Zillow Group, Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001617640","figiuid":"EQ0000000006175662","scfigi":"BBG001T0LC50","cfigi":"BBG000D13GN8","figi":"BBG000D13GN8"}	https://api.polygon.io/v2/tickers/ZG	2020-07-24 12:17:52.835933
503	ZGBEF	2G Bio-Energietechnik AG, Heek Ordinary Shares (Federal Republic of Germany)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000032958456","scfigi":"BBG001SV7XL5","cfigi":"BBG005NTYFD4","figi":"BBG005NTYFD4"}	https://api.polygon.io/v2/tickers/ZGBEF	2020-07-24 12:17:52.835933
504	ZGCO	Ziegler Companies, Inc. (The) Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0000109312","figiuid":"EQ0010798300001000","scfigi":"BBG001S6VMH2","cfigi":"BBG000CG8F44","figi":"BBG000CG8F44"}	https://api.polygon.io/v2/tickers/ZGCO	2020-07-24 12:17:52.835933
505	ZGNX	Zogenix, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001375151","figiuid":"EQ0000000005942706","scfigi":"BBG001T25C81","cfigi":"BBG000VDC3G9","figi":"BBG000VDC3G9"}	https://api.polygon.io/v2/tickers/ZGNX	2020-07-24 12:17:52.835933
506	ZGSI	Zero Gravity Solutions, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001574186","figiuid":"EQ0000000003238175","scfigi":"BBG001SSW269","cfigi":"BBG000QZPVN2","figi":"BBG000QZPVN2"}	https://api.polygon.io/v2/tickers/ZGSI	2020-07-24 12:17:52.835933
507	ZGYH	Yunhong International Class A Ordinary Shares	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"figiuid":"EQ0000000077306619","scfigi":"BBG00PQ4RHV6","cfigi":"BBG00PQ4RH37","figi":"BBG00PQ4RH37"}	https://api.polygon.io/v2/tickers/ZGYH	2020-07-24 12:17:52.835933
508	ZHAOF	Zhaojin Mining Industry Co LTD Shs -H- (China)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000003142985","scfigi":"BBG001SN3M04","cfigi":"BBG000QQC9W5","figi":"BBG000QQC9W5"}	https://api.polygon.io/v2/tickers/ZHAOF	2020-07-24 12:17:52.835933
509	ZHCLF	Zenith Cap Corp Common Stock (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000084849781","scfigi":"BBG00TYNPTW2","cfigi":"BBG00TYNPT34","figi":"BBG00TYNPT34"}	https://api.polygon.io/v2/tickers/ZHCLF	2020-07-24 12:17:52.835933
510	ZHDM	Zhong Hui Dao Ming Copper Holding Ltd. Common shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000005079878","scfigi":"BBG001T0N0G2","cfigi":"BBG000TWJW42","figi":"BBG000TWJW42"}	https://api.polygon.io/v2/tickers/ZHDM	2020-07-24 12:17:52.835933
511	ZHEIF	ZHOU HEI YA INTL HLDGS CO LTD Shs (Cayman Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000081838389","scfigi":"BBG00F3CPP03","cfigi":"BBG00RML1YL0","figi":"BBG00RML1YL0"}	https://api.polygon.io/v2/tickers/ZHEIF	2020-07-24 12:17:52.835933
512	ZHEXF	Zhejiang Southeast Electric Power-B Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0022310900001003","scfigi":"BBG001S7V2G5","cfigi":"BBG000D1BMW6","figi":"BBG000D1BMW6"}	https://api.polygon.io/v2/tickers/ZHEXF	2020-07-24 12:17:52.835933
513	ZHSHF	ZHONGSHENG GROUP HOLDING LTD Ordinary Shares Cayman Islands(KY )	STOCKS	US	CS	HKD	true	OTC	2020-07-19	{"figiuid":"EQ0000000080887649","scfigi":"BBG001T5YF67","cfigi":"BBG00R4G14R1","figi":"BBG00R4G14R1"}	https://api.polygon.io/v2/tickers/ZHSHF	2020-07-24 12:17:52.835933
514	ZHUD	Zhuding International Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000008090326","scfigi":"BBG001T4BP54","cfigi":"BBG000LKB9M5","figi":"BBG000LKB9M5"}	https://api.polygon.io/v2/tickers/ZHUD	2020-07-24 12:17:52.835933
515	ZHUZF	Zhuzhou CRRC Times Electric Co., Ltd.   Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000003152760","scfigi":"BBG001SLMP91","cfigi":"BBG000QRFC44","figi":"BBG000QRFC44"}	https://api.polygon.io/v2/tickers/ZHUZF	2020-07-24 12:17:52.835933
516	ZHYLF	Zhaoheng Hydropower Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0000744695","figiuid":"EQ0017484500001000","scfigi":"BBG001S7GHW1","cfigi":"BBG000BYXQK6","figi":"BBG000BYXQK6"}	https://api.polygon.io/v2/tickers/ZHYLF	2020-07-24 12:17:52.835933
517	ZI	ZoomInfo Technologies Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001794515","figiuid":"EQ0000000082360362","scfigi":"BBG00S1HJ4F4","cfigi":"BBG00S1HJ3M8","figi":"BBG00S1HJ3M8"}	https://api.polygon.io/v2/tickers/ZI	2020-07-24 12:17:52.835933
518	ZICX	Zicix Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001513314","figiuid":"EQ0000000003798918","scfigi":"BBG001SV7S09","cfigi":"BBG000RT0R97","figi":"BBG000RT0R97"}	https://api.polygon.io/v2/tickers/ZICX	2020-07-24 12:17:52.835933
519	ZIJMF	Zijin Mining Group Co Ltd Ordinary Shares H (China)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000000896919","scfigi":"BBG001SG9D58","cfigi":"BBG000GTVX47","figi":"BBG000GTVX47"}	https://api.polygon.io/v2/tickers/ZIJMF	2020-07-24 12:17:52.835933
520	ZIMCF	ZIM Corporation Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001124160","figiuid":"EQ0000000000718239","scfigi":"BBG001SLZFT7","cfigi":"BBG000PZLKN1","figi":"BBG000PZLKN1"}	https://api.polygon.io/v2/tickers/ZIMCF	2020-07-24 12:17:52.835933
521	ZION	Zions Bancorporation N.A. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0000109380","figiuid":"EQ0010799200001000","scfigi":"BBG001S5XN80","cfigi":"BBG000BX9WL1","figi":"BBG000BX9WL1"}	https://api.polygon.io/v2/tickers/ZION	2020-07-24 12:17:52.835933
522	ZIOP	ZIOPHARM Oncology Inc Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001107421","figiuid":"EQ0000000001229505","scfigi":"BBG001SM7BJ6","cfigi":"BBG000FWCC57","figi":"BBG000FWCC57"}	https://api.polygon.io/v2/tickers/ZIOP	2020-07-24 12:17:52.835933
523	ZIPL	ZipLink, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001081393","figiuid":"EQ0034402400001000","scfigi":"BBG001SCLZJ9","cfigi":"BBG000CW0W22","figi":"BBG000CW0W22"}	https://api.polygon.io/v2/tickers/ZIPL	2020-07-24 12:17:52.835933
524	ZIVO	Zivo Bioscience, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001101026","figiuid":"EQ0117974200001000","scfigi":"BBG001SFKW19","cfigi":"BBG000BZDLX2","figi":"BBG000BZDLX2"}	https://api.polygon.io/v2/tickers/ZIVO	2020-07-24 12:17:52.835933
525	ZIXI	Zix Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0000855612","figiuid":"EQ0010208400001000","scfigi":"BBG001SD4BW4","cfigi":"BBG000H04C72","figi":"BBG000H04C72"}	https://api.polygon.io/v2/tickers/ZIXI	2020-07-24 12:17:52.835933
526	ZIZTF	Zip co Ltd Ordinary Fully Paid (Australia)	STOCKS	US	CS	AUD	true	OTC	2020-07-19	{"figiuid":"EQ0000000085460015","scfigi":"BBG001T62QK0","cfigi":"BBG00VHK2540","figi":"BBG00VHK2540"}	https://api.polygon.io/v2/tickers/ZIZTF	2020-07-24 12:17:52.835933
527	ZKIN	ZK International Group Co., Ltd Ordinary Share	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001687451","figiuid":"EQ0000000057024725","scfigi":"BBG00GSR8Y01","cfigi":"BBG00GSR8X94","figi":"BBG00GSR8X94"}	https://api.polygon.io/v2/tickers/ZKIN	2020-07-24 12:17:52.835933
528	ZLDAF	Zelira Therapeutics Ltd Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000054026642","scfigi":"BBG001SJGQT9","cfigi":"BBG00FNFTXS3","figi":"BBG00FNFTXS3"}	https://api.polygon.io/v2/tickers/ZLDAF	2020-07-24 12:17:52.835933
529	ZLDPF	Zealand Pharma A/S Ordinary Shares (Denmark)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001674988","figiuid":"EQ0000000020654529","scfigi":"BBG001SPVN33","cfigi":"BBG00276D1T6","figi":"BBG00276D1T6"}	https://api.polygon.io/v2/tickers/ZLDPF	2020-07-24 12:17:52.835933
530	ZLDSF	ZALANDO SE Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000039252416","scfigi":"BBG001XVXHG1","cfigi":"BBG007K9P1L9","figi":"BBG007K9P1L9"}	https://api.polygon.io/v2/tickers/ZLDSF	2020-07-24 12:17:52.835933
531	ZLIOF	ZoomLion Heavy Industry Science and Technology Co Ltd Ordinary Shares -H- (China)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000022195436","scfigi":"BBG001TG3QD5","cfigi":"BBG002N52R15","figi":"BBG002N52R15"}	https://api.polygon.io/v2/tickers/ZLIOF	2020-07-24 12:17:52.835933
532	ZLNWF	ZEAL NETWORK SE NA O N (Germany Federal Republic)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000082424910","scfigi":"BBG001SDRLJ2","cfigi":"BBG00S2JMYV1","figi":"BBG00S2JMYV1"}	https://api.polygon.io/v2/tickers/ZLNWF	2020-07-24 12:17:52.835933
533	ZLPSF	Zooplus AG, Unterfoehring Ordinary Shares (Germany)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000020992120","scfigi":"BBG001SG0M20","cfigi":"BBG00294NRM8","figi":"BBG00294NRM8"}	https://api.polygon.io/v2/tickers/ZLPSF	2020-07-24 12:17:52.835933
534	ZM	Zoom Video Communications, Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001585521","figiuid":"EQ0000000028353005","scfigi":"BBG0042V6JN7","cfigi":"BBG0042V6JM8","figi":"BBG0042V6JM8"}	https://api.polygon.io/v2/tickers/ZM	2020-07-24 12:17:52.835933
535	ZMDC	USA Zhimingde International Group Corporation. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001363343","figiuid":"EQ0000000002838539","scfigi":"BBG001SRNTC5","cfigi":"BBG000Q2FF79","figi":"BBG000Q2FF79"}	https://api.polygon.io/v2/tickers/ZMDC	2020-07-24 12:17:52.835933
536	ZMDTF	ZOOMD TECHNOLOGIES LTD COM (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000080041434","scfigi":"BBG005N1X2N4","cfigi":"BBG00QV40T05","figi":"BBG00QV40T05"}	https://api.polygon.io/v2/tickers/ZMDTF	2020-07-24 12:17:52.835933
537	ZMGD	Zamage Digital Art Imaging, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001492458","figiuid":"EQ0703276300001000","scfigi":"BBG001S9ND67","cfigi":"BBG000BMWR76","figi":"BBG000BMWR76"}	https://api.polygon.io/v2/tickers/ZMGD	2020-07-24 12:17:52.835933
538	ZMPLF	ZIMPLATS HLDGS LTD Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000000096116","scfigi":"BBG001SBZ343","cfigi":"BBG000F1DPS0","figi":"BBG000F1DPS0"}	https://api.polygon.io/v2/tickers/ZMPLF	2020-07-24 12:17:52.835933
539	ZMRK	Zalemark Holding Company Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001464687","figiuid":"EQ0000000000187377","scfigi":"BBG001SKML10","cfigi":"BBG000N40CR9","figi":"BBG000N40CR9"}	https://api.polygon.io/v2/tickers/ZMRK	2020-07-24 12:17:52.835933
540	ZMSPF	Zecotek Photonics Inc Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0010964500001001","scfigi":"BBG001SGLXW0","cfigi":"BBG000JQWNL2","figi":"BBG000JQWNL2"}	https://api.polygon.io/v2/tickers/ZMSPF	2020-07-24 12:17:52.835933
541	ZMTP	Zoom Telephonics Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001467761","figiuid":"EQ0000000007734528","scfigi":"BBG001T495P9","cfigi":"BBG000LDSKW7","figi":"BBG000LDSKW7"}	https://api.polygon.io/v2/tickers/ZMTP	2020-07-24 12:17:52.835933
542	ZMWYF	Zoomaway Travel, Inc. Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000053013254","scfigi":"BBG001S8PZG7","cfigi":"BBG00FB4P8X4","figi":"BBG00FB4P8X4"}	https://api.polygon.io/v2/tickers/ZMWYF	2020-07-24 12:17:52.835933
543	ZN	Zion Oil & Gas, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001131312","figiuid":"EQ0000000003109103","scfigi":"BBG001SSCT99","cfigi":"BBG000RFZLM7","figi":"BBG000RFZLM7"}	https://api.polygon.io/v2/tickers/ZN	2020-07-24 12:17:52.835933
544	ZNAE	Zane Interactive Publishng Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001030614","figiuid":"EQ0019946700001000","scfigi":"BBG001SFBF25","cfigi":"BBG000M1F871","figi":"BBG000M1F871"}	https://api.polygon.io/v2/tickers/ZNAE	2020-07-24 12:17:52.835933
545	ZNCM	Zunicom, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0000886912","figiuid":"EQ0017961300001000","scfigi":"BBG001S8PFX2","cfigi":"BBG000FZCKV3","figi":"BBG000FZCKV3"}	https://api.polygon.io/v2/tickers/ZNCM	2020-07-24 12:17:52.835933
546	ZNGA	Zynga Inc. Class A Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001439404","figiuid":"EQ0000000005934001","scfigi":"BBG001T24RN2","cfigi":"BBG000VD6768","figi":"BBG000VD6768"}	https://api.polygon.io/v2/tickers/ZNGA	2020-07-24 12:17:52.835933
547	ZNGGF	Zanaga Iron Ore Company Ltd Ordinary Shares (British Virgin Islands)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000067828039","scfigi":"BBG001TG1B22","cfigi":"BBG00LW7SFF2","figi":"BBG00LW7SFF2"}	https://api.polygon.io/v2/tickers/ZNGGF	2020-07-24 12:17:52.835933
548	ZNGYQ	Zenergy Brands, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000000153021","scfigi":"BBG001SFCYJ5","cfigi":"BBG000CS8SN9","figi":"BBG000CS8SN9"}	https://api.polygon.io/v2/tickers/ZNGYQ	2020-07-24 12:17:52.835933
549	ZNNC	Zann Corp. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001098329","figiuid":"EQ0031330100001000","scfigi":"BBG001SCS9H2","cfigi":"BBG000D0SVC2","figi":"BBG000D0SVC2"}	https://api.polygon.io/v2/tickers/ZNNC	2020-07-24 12:17:52.835933
550	ZNNMF	EEStor Corporation Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000002766317","scfigi":"BBG001S88CX8","cfigi":"BBG000BJ0148","figi":"BBG000BJ0148"}	https://api.polygon.io/v2/tickers/ZNNMF	2020-07-24 12:17:52.835933
551	ZNOGF	ZOONO GROUP LTD Ordinary Shares Fully Paid ( Australia)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0011280300001002","scfigi":"BBG001S6H5J3","cfigi":"BBG000CXYVB5","figi":"BBG000CXYVB5"}	https://api.polygon.io/v2/tickers/ZNOGF	2020-07-24 12:17:55.13956
552	ZNRG	Znergy, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000035362196","scfigi":"BBG006H202Q0","cfigi":"BBG006H202P1","figi":"BBG006H202P1"}	https://api.polygon.io/v2/tickers/ZNRG	2020-07-24 12:17:55.13956
553	ZNRGF	Z Energy Ltd Ordinary Shares (New Zealand)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000036399949","scfigi":"BBG001TB8823","cfigi":"BBG006T1N7F5","figi":"BBG006T1N7F5"}	https://api.polygon.io/v2/tickers/ZNRGF	2020-07-24 12:17:55.13956
554	ZNTL	Zentalis Pharmaceuticals, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001725160","figiuid":"EQ0000000080680372","scfigi":"BBG00R2K8TG4","cfigi":"BBG00R2K8TF5","figi":"BBG00R2K8TF5"}	https://api.polygon.io/v2/tickers/ZNTL	2020-07-24 12:17:55.13956
555	ZNXT	ZNext Mining Corporation Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001317716","figiuid":"EQ0000000000782471","scfigi":"BBG001SCCJ23","cfigi":"BBG000BV97H5","figi":"BBG000BV97H5"}	https://api.polygon.io/v2/tickers/ZNXT	2020-07-24 12:17:55.13956
556	ZNZBF	Zanzibar Gold Inc. Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000070524852","scfigi":"BBG00GH3HKD2","cfigi":"BBG00MSH9V14","figi":"BBG00MSH9V14"}	https://api.polygon.io/v2/tickers/ZNZBF	2020-07-24 12:17:55.13956
557	ZNZNF	Zinzino Holding AB Ordinary Shares B (Sweden)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000046698930","scfigi":"BBG001SL8J46","cfigi":"BBG00BL77LK0","figi":"BBG00BL77LK0"}	https://api.polygon.io/v2/tickers/ZNZNF	2020-07-24 12:17:55.13956
558	ZOEIF	Zoetic International PLC Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000043136418","scfigi":"BBG008D1Z612","cfigi":"BBG008RKH704","figi":"BBG008RKH704"}	https://api.polygon.io/v2/tickers/ZOEIF	2020-07-24 12:17:55.13956
559	ZOJIF	Zojirushi Corp Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000001185525","scfigi":"BBG001SDGZF7","cfigi":"BBG000C1VFG8","figi":"BBG000C1VFG8"}	https://api.polygon.io/v2/tickers/ZOJIF	2020-07-24 12:17:55.13956
560	ZOM	Zomedica Pharmaceuticals Corp.	STOCKS	US	CS	USD	true	AMX	2020-07-19	{"cik":"0001684144","figiuid":"EQ0000000050951652","scfigi":"BBG004H67DQ5","cfigi":"BBG00DGZC7Y0","figi":"BBG00DGZC7Y0"}	https://api.polygon.io/v2/tickers/ZOM	2020-07-24 12:17:55.13956
561	ZONNF	Nos SGPS SA Ordinary Shares (Portugal)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000021933109","scfigi":"BBG001S9RJ06","cfigi":"BBG002GDDKN5","figi":"BBG002GDDKN5"}	https://api.polygon.io/v2/tickers/ZONNF	2020-07-24 12:17:55.13956
562	ZONX	Zonzia Media, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0000356870","figiuid":"EQ0018639300001000","scfigi":"BBG001S77KY2","cfigi":"BBG000BWHPR3","figi":"BBG000BWHPR3"}	https://api.polygon.io/v2/tickers/ZONX	2020-07-24 12:17:55.13956
563	ZOXCF	Zeox Corporation Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0034917800001001","scfigi":"BBG001SBWH09","cfigi":"BBG000FK0SR7","figi":"BBG000FK0SR7"}	https://api.polygon.io/v2/tickers/ZOXCF	2020-07-24 12:17:55.13956
564	ZPAS	Zoompass Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001635748","figiuid":"EQ0000000042960835","scfigi":"BBG008NPQWH4","cfigi":"BBG008NPQWG5","figi":"BBG008NPQWG5"}	https://api.polygon.io/v2/tickers/ZPAS	2020-07-24 12:17:55.13956
565	ZPHYF	Zephyr Minerals Ltd Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000048674638","scfigi":"BBG001TCN6T9","cfigi":"BBG00CK5CY65","figi":"BBG00CK5CY65"}	https://api.polygon.io/v2/tickers/ZPHYF	2020-07-24 12:17:55.13956
566	ZPTAF	Surge Energy, Inc (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0034999800001001","scfigi":"BBG001SCY921","cfigi":"BBG000DMWX80","figi":"BBG000DMWX80"}	https://api.polygon.io/v2/tickers/ZPTAF	2020-07-24 12:17:55.13956
567	ZRMG	Shenzhen-ZhongRong Morgan Investment Holding Group Co., Ltd. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000020807342","scfigi":"BBG00284TDN3","cfigi":"BBG00284TCX4","figi":"BBG00284TCX4"}	https://api.polygon.io/v2/tickers/ZRMG	2020-07-24 12:17:55.13956
568	ZRSCF	Zoloto Resources Ltd. Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001341313","figiuid":"EQ0000000002702776","scfigi":"BBG001SP3K85","cfigi":"BBG000GZMJ71","figi":"BBG000GZMJ71"}	https://api.polygon.io/v2/tickers/ZRSCF	2020-07-24 12:17:55.13956
569	ZRSEF	Zur Rose Group AG (Switzerland) Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000068086390","scfigi":"BBG001T5NXJ6","cfigi":"BBG00LYCZZL0","figi":"BBG00LYCZZL0"}	https://api.polygon.io/v2/tickers/ZRSEF	2020-07-24 12:17:55.13956
570	ZRVT	Zurvita Holdings, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001408950","figiuid":"EQ0000000006582515","scfigi":"BBG001T2MQ18","cfigi":"BBG000FMZ425","figi":"BBG000FMZ425"}	https://api.polygon.io/v2/tickers/ZRVT	2020-07-24 12:17:55.13956
571	ZS	Zscaler, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001713683","figiuid":"EQ0000000025003540","scfigi":"BBG003338H61","cfigi":"BBG003338H34","figi":"BBG003338H34"}	https://api.polygon.io/v2/tickers/ZS	2020-07-24 12:17:55.13956
572	ZSAN	Zosano Pharma Corporation Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001587221","figiuid":"EQ0000000036698906","scfigi":"BBG006TL19Z9","cfigi":"BBG006TL19Y0","figi":"BBG006TL19Y0"}	https://api.polygon.io/v2/tickers/ZSAN	2020-07-24 12:17:55.13956
573	ZSHOF	Zensho Co Ltd Yokohama Ordinary Shares (Japan)	STOCKS	US	CS	JPY	true	OTC	2020-07-19	{"figiuid":"EQ0000000001184162","scfigi":"BBG001S8GWW6","cfigi":"BBG000C2DW79","figi":"BBG000C2DW79"}	https://api.polygon.io/v2/tickers/ZSHOF	2020-07-24 12:17:55.13956
574	ZSTN	ZST Digital Networks, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"cik":"0001403794","figiuid":"EQ0000000008632550","scfigi":"BBG001T53FJ7","cfigi":"BBG000N8D1G2","figi":"BBG000N8D1G2"}	https://api.polygon.io/v2/tickers/ZSTN	2020-07-24 12:17:55.13956
575	ZSYC	SMART CLOSET INC Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000003558226","scfigi":"BBG001SNT7H1","cfigi":"BBG000G1VRM1","figi":"BBG000G1VRM1"}	https://api.polygon.io/v2/tickers/ZSYC	2020-07-24 12:17:55.13956
576	ZTCOF	Zte Corporation Shares H (China)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000001575866","scfigi":"BBG001SG2NJ8","cfigi":"BBG000F93FR7","figi":"BBG000F93FR7"}	https://api.polygon.io/v2/tickers/ZTCOF	2020-07-24 12:17:55.13956
577	ZTLLF	Zonetail Inc Common Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000078743572","scfigi":"BBG008NYWM53","cfigi":"BBG00QB303Q8","figi":"BBG00QB303Q8"}	https://api.polygon.io/v2/tickers/ZTLLF	2020-07-24 12:17:55.13956
578	ZTMUF	Zimtu Capital Corp Ordinary Shares (Canada)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000016474839","scfigi":"BBG001S89W81","cfigi":"BBG001CYXYT7","figi":"BBG001CYXYT7"}	https://api.polygon.io/v2/tickers/ZTMUF	2020-07-24 12:17:55.13956
579	ZTNO	Zoom Technologies, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0011594100001000","scfigi":"BBG001S60PK5","cfigi":"BBG000BBL0P1","figi":"BBG000BBL0P1"}	https://api.polygon.io/v2/tickers/ZTNO	2020-07-24 12:17:55.13956
580	ZTS	ZOETIS INC.	STOCKS	US	CS	USD	true	NYE	2020-07-19	{"cik":"0001555280","figiuid":"EQ0000000026033823","scfigi":"BBG0039320P7","cfigi":"BBG0039320N9","figi":"BBG0039320N9"}	https://api.polygon.io/v2/tickers/ZTS	2020-07-24 12:17:55.13956
581	ZTSTF	Ztest Electronics Inc Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0018198900001001","scfigi":"BBG001S956V4","cfigi":"BBG000JQ1N81","figi":"BBG000JQ1N81"}	https://api.polygon.io/v2/tickers/ZTSTF	2020-07-24 12:17:55.13956
582	ZUKNF	Zuken Inc. Ordinary Shares (Japan)	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0011521800001001","scfigi":"BBG001S6J7Q9","cfigi":"BBG000BWJ9J6","figi":"BBG000BWJ9J6"}	https://api.polygon.io/v2/tickers/ZUKNF	2020-07-24 12:17:55.13956
583	ZULU	Zulu Tek Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0019467400001000","scfigi":"BBG001S7RS64","cfigi":"BBG000C2CKR4","figi":"BBG000C2CKR4"}	https://api.polygon.io/v2/tickers/ZULU	2020-07-24 12:17:55.13956
584	ZUMRF	ZoomerMedia Limited  Ordinary Shares	STOCKS	US	CS	USD	true	OTC	2020-07-19	{"figiuid":"EQ0000000002130901","scfigi":"BBG001SCZB89","cfigi":"BBG000L06LZ4","figi":"BBG000L06LZ4"}	https://api.polygon.io/v2/tickers/ZUMRF	2020-07-24 12:17:55.13956
585	ZUMZ	Zumiez Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-19	{"cik":"0001318008","figiuid":"EQ0000000001620392","scfigi":"BBG001SGPKJ9","cfigi":"BBG000PYX812","figi":"BBG000PYX812"}	https://api.polygon.io/v2/tickers/ZUMZ	2020-07-24 12:17:55.13956
586	ZUO	Zuora, Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-19	{"cik":"0001423774","figiuid":"EQ0000000007850291","scfigi":"BBG001SS0FH3","cfigi":"BBG000BT3HG5","figi":"BBG000BT3HG5"}	https://api.polygon.io/v2/tickers/ZUO	2020-07-24 12:17:55.13956
587	ZVLO	zvelo, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-20	{"figiuid":"EQ0031031700001001","scfigi":"BBG001S68CT7","cfigi":"BBG000C4PCM9","figi":"BBG000C4PCM9"}	https://api.polygon.io/v2/tickers/ZVLO	2020-07-24 12:17:55.13956
588	ZVO	Zovio Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-20	{"cik":"0001305323","figiuid":"EQ0000000001655571","scfigi":"BBG001SL6GW3","cfigi":"BBG000C3CQP1","figi":"BBG000C3CQP1"}	https://api.polygon.io/v2/tickers/ZVO	2020-07-24 12:17:55.13956
589	ZVTK	Zevotek, Inc.  Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-20	{"cik":"0001364208","figiuid":"EQ0000000003407622","scfigi":"BBG001ST24Z4","cfigi":"BBG000R3FGC8","figi":"BBG000R3FGC8"}	https://api.polygon.io/v2/tickers/ZVTK	2020-07-24 12:17:55.13956
590	ZVZZT	ZVZZT	STOCKS	US	CS	USD	true	NSD	2020-03-30	{"figiuid":"EQ0000000000402531","scfigi":"BBG00CMP0PZ9","cfigi":"BBG004G3QY40","figi":"BBG004G3QY40"}	https://api.polygon.io/v2/tickers/ZVZZT	2020-07-24 12:17:55.13956
591	ZWBC	GoldKey Corporation Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"cik":"0001010579","figiuid":"EQ0034866600001000","scfigi":"BBG001SDZ839","cfigi":"BBG000DQCF19","figi":"BBG000DQCF19"}	https://api.polygon.io/v2/tickers/ZWBC	2020-07-24 12:17:55.13956
592	ZWPEF	ZWIPE AS Ordinary Shares (Norway)	STOCKS	US	CS	NOK	true	OTC	2020-07-23	{"figiuid":"EQ0000000078219366","scfigi":"BBG005PC9Q52","cfigi":"BBG00Q3TX188","figi":"BBG00Q3TX188"}	https://api.polygon.io/v2/tickers/ZWPEF	2020-07-24 12:17:55.13956
593	ZWRR	Ziwira Inc Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"figiuid":"EQ0000000042535558","scfigi":"BBG008HNNM45","cfigi":"BBG008HNNM36","figi":"BBG008HNNM36"}	https://api.polygon.io/v2/tickers/ZWRR	2020-07-24 12:17:55.13956
594	ZYJT	Zhong Ya International Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"figiuid":"EQ0000000068476389","scfigi":"BBG00M4FNWP0","cfigi":"BBG00M4FNWN2","figi":"BBG00M4FNWN2"}	https://api.polygon.io/v2/tickers/ZYJT	2020-07-24 12:17:55.13956
595	ZYME	Zymeworks Inc.	STOCKS	US	CS	USD	true	NYE	2020-07-23	{"cik":"0001403752","figiuid":"EQ0000000055915659","scfigi":"BBG00247P1W0","cfigi":"BBG00GD15LJ5","figi":"BBG00GD15LJ5"}	https://api.polygon.io/v2/tickers/ZYME	2020-07-24 12:17:55.13956
596	ZYNE	Zynerba Pharmaceuticals, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-23	{"cik":"0001621443","figiuid":"EQ0000000038216160","scfigi":"BBG007BBS8C6","cfigi":"BBG007BBS8B7","figi":"BBG007BBS8B7"}	https://api.polygon.io/v2/tickers/ZYNE	2020-07-24 12:17:55.13956
597	ZYQG	ZYQC Group Holding Limited Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"figiuid":"EQ0000000016951885","scfigi":"BBG001V0Q5S2","cfigi":"BBG001KKQYK5","figi":"BBG001KKQYK5"}	https://api.polygon.io/v2/tickers/ZYQG	2020-07-24 12:17:55.13956
598	ZYRX	Zyrox Mining International, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"cik":"0001558740","figiuid":"EQ0000000002067363","scfigi":"BBG001SM8D74","cfigi":"BBG000CY5SN9","figi":"BBG000CY5SN9"}	https://api.polygon.io/v2/tickers/ZYRX	2020-07-24 12:17:55.13956
599	ZYXI	Zynex, Inc. Common Stock	STOCKS	US	CS	USD	true	NASDAQ	2020-07-23	{"cik":"0000846475","figiuid":"EQ0013695300001000","scfigi":"BBG001S7T7V0","cfigi":"BBG000BJBXZ2","figi":"BBG000BJBXZ2"}	https://api.polygon.io/v2/tickers/ZYXI	2020-07-24 12:17:55.13956
600	ZZHGF	Zhongan Online PC Ins Co Ltd. Ordinary Shares (China)	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"figiuid":"EQ0000000061436638","scfigi":"BBG0058ZKDT0","cfigi":"BBG00JHG67V8","figi":"BBG00JHG67V8"}	https://api.polygon.io/v2/tickers/ZZHGF	2020-07-24 12:17:55.13956
601	ZZLL	ZZLL Information Technology, Inc. Common Stock	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"cik":"0001365357","figiuid":"EQ0000000004550264","scfigi":"BBG001T019C1","cfigi":"BBG000TFJLY0","figi":"BBG000TFJLY0"}	https://api.polygon.io/v2/tickers/ZZLL	2020-07-24 12:17:56.933873
602	ZZZOF	Zinc One Resources, Inc. Common Shares	STOCKS	US	CS	USD	true	OTC	2020-07-23	{"figiuid":"EQ0000000010666808","scfigi":"BBG001STKXP1","cfigi":"BBG000WJ4YQ5","figi":"BBG000WJ4YQ5"}	https://api.polygon.io/v2/tickers/ZZZOF	2020-07-24 12:17:56.933873
\.


--
-- Name: stocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stocks_id_seq', 602, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, user_name) FROM stdin;
1	hankmoody789
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: records records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_pkey PRIMARY KEY (id);


--
-- Name: stocks stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

