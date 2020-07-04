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
    userid integer NOT NULL,
    stocksymbol character(20) NOT NULL,
    stockname character varying,
    fairvalue character varying,
    investmentname character varying,
    starrating character varying,
    analystrating character varying,
    comment text,
    createdat timestamp without time zone DEFAULT now()
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
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.records (id, userid, stocksymbol, stockname, fairvalue, investmentname, starrating, analystrating, comment, createdat) FROM stdin;
1	1	TXG                 	10x Genomics Inc Ordinary Shares - Class A	57.80	-	-	-		2020-06-29 10:31:28.977396
2	1	YI                  	111 Inc 1 ADR represents 2 Class Common stocks	7.23	-	-	-		2020-06-29 10:31:45.529613
3	1	PIH                 	1347 Property Insurance Holdings Inc	4.58	-	-	-		2020-06-29 10:32:02.839001
4	1	PIHPP               	1347 Property Insurance Holdings Inc Pref Share	26.20	-	-	-		2020-06-29 10:32:17.878977
5	1	TURN                	180 Degree Capital Corp	2.50	-	-	-		2020-06-29 10:32:33.481542
6	1	FLWS                	1-800-Flowers.com Inc Class A	19.39	-	-	-		2020-06-29 10:32:48.033829
7	1	BCOW                	1895 Bancorp of Wisconsin Inc Ordinary Shares	11.43	-	-	-		2020-06-29 10:33:03.854905
8	1	ONEM                	1Life Healthcare Inc Ordinary Shares	24.96	-	-	-		2020-06-29 10:33:19.460958
9	1	FCCY                	1st Constitution Bancorp	15.88	-	-	-		2020-06-29 10:33:34.983079
10	1	SRCE                	1st Source Corp	38.78	-	-	-		2020-06-29 10:33:49.568925
11	1	VNET                	-	0	-	-	-	No result in autocomplete search	2020-06-29 10:34:00.663306
12	1	VNET                	21Vianet Group Inc ADR	23.78	-	-	-		2020-06-29 10:34:18.838992
13	1	QFIN                	360 Finance Inc ADR	12.11	-	-	-		2020-06-29 10:34:39.411108
14	1	KRKR                	36KR Holdings Inc ADR	6.25	-	-	-		2020-06-29 10:34:59.671047
15	1	JOBS                	51job Inc ADR	67.58	-	-	-		2020-06-29 10:35:18.604215
16	1	ETNB                	89bio Inc Ordinary Shares	23.36	-	-	-		2020-06-29 10:35:35.218795
17	1	JFK                 	8i Enterprises Acquisition Corp	10.70	-	-	-		2020-06-29 10:35:51.891142
18	1	JFKKR               	-	0	-	-	-	No result in autocomplete search	2020-06-29 10:36:03.94861
19	1	JFKKU               	-	—	-	-	-		2020-06-29 10:36:23.243861
20	1	JFKKW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 10:36:35.288054
21	1	EGHT                	8x8 Inc	17.00	-	-	-		2020-06-29 10:36:50.719297
22	1	NMTR                	9 Meters Biopharma Inc	0.57	-	-	-		2020-06-29 10:37:05.678718
23	1	JFU                 	9F Inc ADR	6.83	-	-	-		2020-06-29 10:37:20.226097
24	1	AAON                	AAON Inc	40.33	-	-	-		2020-06-29 10:37:35.049616
25	1	ABEO                	Abeona Therapeutics Inc	4.15	-	-	-		2020-06-29 10:37:50.048747
26	1	ABMD                	Abiomed Inc	186.07	-	-	-		2020-06-29 10:38:05.708867
27	1	AXAS                	Abraxas Petroleum Corp	0.45	-	-	-		2020-06-29 10:38:20.957468
28	1	ACIU                	AC Immune SA	8.66	-	-	-		2020-06-29 10:38:36.074484
29	1	ACIA                	Acacia Communications Inc	62.26	-	-	-		2020-06-29 10:38:51.595304
30	1	ACTG                	Acacia Research Corp	4.59	-	-	-		2020-06-29 10:39:07.722911
31	1	ACHC                	Acadia Healthcare Co Inc	37.37	-	-	-		2020-06-29 10:39:22.654097
32	1	ACAD                	ACADIA Pharmaceuticals Inc	38.34	-	-	-		2020-06-29 10:39:37.503938
33	1	ACAM                	Acamar Partners Acquisition Corp Class A	9.54	-	-	-		2020-06-29 10:39:52.246171
34	1	ACAMU               	-	—	-	-	-		2020-06-29 10:40:07.323875
35	1	ACAMW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 10:40:18.954643
36	1	ACST                	Acasti Pharma Inc	0.55	-	-	-		2020-06-29 10:40:34.34314
37	1	AXDX                	Accelerate Diagnostics Inc	14.41	-	-	-		2020-06-29 10:40:49.021748
38	1	ACCPX               	-	0	American Century Core Plus Fund Class R	2	-		2020-06-29 11:04:36.053808
39	1	XLRN                	Acceleron Pharma Inc	74.26	-	-	-		2020-06-29 11:08:02.280938
40	1	ARAY                	Accuray Inc	3.08	-	-	-		2020-06-29 11:08:36.843803
41	1	ACRX                	AcelRx Pharmaceuticals Inc	1.21	-	-	-		2020-06-29 11:09:25.81306
42	1	ACER                	Acer Therapeutics Inc	4.75	-	-	-		2020-06-29 11:09:49.610172
43	1	ACHV                	Achieve Life Sciences Inc	0.67	-	-	-		2020-06-29 11:10:15.952605
44	1	ACIW                	ACI Worldwide Inc	28.06	-	-	-		2020-06-29 11:10:38.383783
45	1	ACRS                	Aclaris Therapeutics Inc	2.43	-	-	-		2020-06-29 11:11:14.754765
46	1	ACMR                	ACM Research Inc Class A	45.27	-	-	-		2020-06-29 11:11:38.778707
47	1	ACNB                	ACNB Corp	32.11	-	-	-		2020-06-29 11:12:02.035305
48	1	ACOR                	Acorda Therapeutics Inc	1.62	-	-	-		2020-06-29 11:12:23.204605
49	1	ACTT                	Whole Earth Brands Inc Ordinary Shares - Class A	8.93	-	-	-		2020-06-29 11:12:44.503005
50	1	ACTTU               	-	—	-	-	-		2020-06-29 11:13:02.812695
51	1	ACTTW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:13:14.693076
52	1	ATVI                	Activision Blizzard Inc	66.00	-	-	-		2020-06-29 11:13:34.476887
53	1	ADMS                	Adamas Pharmaceuticals Inc	3.69	-	-	-		2020-06-29 11:13:57.747813
54	1	ADMP                	Adamis Pharmaceuticals Corp	1.09	-	-	-		2020-06-29 11:14:16.843834
55	1	AHCO                	AdaptHealth Corp Ordinary Shares	17.76	-	-	-		2020-06-29 11:14:34.068904
56	1	ADAP                	Adaptimmune Therapeutics PLC ADR	9.62	-	-	-		2020-06-29 11:14:53.489531
57	1	ADPT                	Adaptive Biotechnologies Corp	33.52	-	-	-		2020-06-29 11:15:11.855307
58	1	ADXN                	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:15:22.947119
59	1	ADUS                	Addus HomeCare Corp	99.08	-	-	-		2020-06-29 11:15:39.93036
60	1	AEY                 	Addvantage Technologies Group Inc	5.05	-	-	-		2020-06-29 11:15:58.572462
61	1	IOTS                	Adesto Technologies Corp	13.34	-	-	-		2020-06-29 11:16:19.786333
62	1	ADIL                	Adial Pharmaceuticals Inc	1.57	-	-	-		2020-06-29 11:16:42.571456
63	1	ADILW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:16:54.5079
64	1	ADMA                	ADMA Biologics Inc	4.94	-	-	-		2020-06-29 11:17:12.744166
65	1	ADBE                	Adobe Inc	350.00	-	-	-		2020-06-29 11:17:32.671412
66	1	ADTN                	Adtran Inc	—	-	-	-		2020-06-29 11:17:52.177371
67	1	ADRO                	Aduro Biotech Inc	2.67	-	-	-		2020-06-29 11:18:09.388615
68	1	ADES                	Advanced Emissions Solutions Inc	6.85	-	-	-		2020-06-29 11:18:26.435405
69	1	AEIS                	Advanced Energy Industries Inc	70.10	-	-	-		2020-06-29 11:18:51.172426
70	1	AMD                 	Advanced Micro Devices Inc	25.00	-	-	-		2020-06-29 11:19:09.691995
71	1	ADXS                	Advaxis Inc	0.86	-	-	-		2020-06-29 11:19:29.130671
72	1	ADVM                	Adverum Biotechnologies Inc	18.11	-	-	-		2020-06-29 11:19:47.865504
73	1	DWEQ                	-	0	AdvisorShares DWA Alpha Equal Weight ETF	-	-		2020-06-29 11:20:12.537141
78	1	DWAW                	-	0	AdvisorShares DWA FSM All Cap World ETF	-	-		2020-06-29 11:35:35.462155
79	1	US00768Y4879        	-	0	AdvisorShares DWA FSM US Core ETF	-	-		2020-06-29 11:35:56.920471
80	1	DWMC                	-	0	AdvisorShares Dorsey Wright Micro-Cap ETF	-	-		2020-06-29 11:36:17.023198
81	1	DWSH                	-	0	AdvisorShares Dorsey Wright Short ETF	-	-		2020-06-29 11:37:18.566767
82	1	ACT                 	-	0	AdvisorShares Vice ETF	-	-		2020-06-29 11:37:40.596778
83	1	AEGN                	Aegion Corp Class A	17.27	-	-	-		2020-06-29 11:38:19.619083
84	1	AGLE                	Aeglea BioTherapeutics Inc	9.35	-	-	-		2020-06-29 11:38:38.910811
85	1	AEHR                	Aehr Test Systems	2.49	-	-	-		2020-06-29 11:38:56.399872
86	1	AMTX                	Aemetis Inc	1.27	-	-	-		2020-06-29 11:39:15.246204
87	1	AERI                	Aerie Pharmaceuticals Inc	18.15	-	-	-		2020-06-29 11:39:33.099669
88	1	AVAV                	AeroVironment Inc	75.06	-	-	-		2020-06-29 11:39:51.611174
89	1	ARPO                	Aerpio Pharmaceuticals Inc	1.52	-	-	-		2020-06-29 11:40:08.868189
90	1	AIH                 	Aesthetic Medical International Holdings Group Ltd ADR	7.09	-	-	-		2020-06-29 11:40:28.454599
91	1	AEZS                	AEterna Zentaris Inc	0.84	-	-	-		2020-06-29 11:40:47.168914
92	1	AEMD                	Aethlon Medical Inc	3.30	-	-	-		2020-06-29 11:41:07.425311
93	1	AFMD                	Affimed NV	4.49	-	-	-		2020-06-29 11:41:25.572206
94	1	AFYA                	Afya Ltd	20.04	-	-	-		2020-06-29 11:41:42.578857
95	1	AGBA                	AGBA Acquisition Ltd	9.91	-	-	-		2020-06-29 11:41:59.228825
96	1	AGBAR               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:42:10.637625
97	1	AGBAU               	-	—	-	-	-		2020-06-29 11:42:40.521419
98	1	AGBAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:42:51.894292
99	1	AGEN                	Agenus Inc	4.90	-	-	-		2020-06-29 11:43:10.684404
100	1	AGRX                	Agile Therapeutics Inc	3.80	-	-	-		2020-06-29 11:43:27.201804
101	1	AGYS                	Agilysys Inc	23.60	-	-	-		2020-06-29 11:43:44.20423
102	1	AGIO                	Agios Pharmaceuticals Inc	49.85	-	-	-		2020-06-29 11:44:03.601534
103	1	AGMH                	AGM Group Holdings Inc Class A	18.29	-	-	-		2020-06-29 11:44:21.559267
104	1	AGNC                	AGNC Investment Corp	14.76	-	-	-		2020-06-29 11:44:39.336787
105	1	AGNCM               	AGNC Investment Corp Pref Share	26.04	-	-	-		2020-06-29 11:44:57.598442
106	1	AGNCN               	AGNC Investment Corp Pref Share	26.52	-	-	-		2020-06-29 11:45:15.935994
107	1	AGNCO               	AGNC Investment Corp Pref Share	25.52	-	-	-		2020-06-29 11:45:32.811035
108	1	AGNCP               	AGNC Investment Corp Pref Share	24.41	-	-	-		2020-06-29 11:45:54.2646
109	1	AGFS                	AgroFresh Solutions Inc	3.95	-	-	-		2020-06-29 11:46:11.452014
110	1	AGFSW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:46:22.60424
111	1	AIKI                	AIkido Pharma Inc	0.96	-	-	-		2020-06-29 11:46:42.970504
112	1	ALRN                	Aileron Therapeutics Inc	1.27	-	-	-		2020-06-29 11:47:00.008084
113	1	AIMT                	Aimmune Therapeutics Inc	19.64	-	-	-		2020-06-29 11:47:17.856275
114	1	AIRT                	Air T Inc	17.19	-	-	-		2020-06-29 11:47:34.638099
115	1	AIRTP               	Air T Inc Pref Share	32.14	-	-	-		2020-06-29 11:47:51.582726
116	1	AIRTW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:48:03.800315
117	1	ATSG                	Air Transport Services Group Inc	24.96	-	-	-		2020-06-29 11:48:24.511607
118	1	AIRG                	Airgain Inc	13.83	-	-	-		2020-06-29 11:48:44.560533
119	1	ANTE                	AirNet Technology Inc ADR	1.37	-	-	-		2020-06-29 11:49:02.694442
120	1	AKAM                	Akamai Technologies Inc	70.00	-	-	-		2020-06-29 11:49:19.879382
121	1	AKTX                	Akari Therapeutics PLC ADR	2.30	-	-	-		2020-06-29 11:49:36.846783
122	1	AKCA                	Akcea Therapeutics Inc	15.55	-	-	-		2020-06-29 11:49:54.038182
123	1	AKBA                	Akebia Therapeutics Inc	15.20	-	-	-		2020-06-29 11:50:14.314868
124	1	KERN                	Akerna Corp Ordinary Shares - Class A	12.64	-	-	-		2020-06-29 11:50:32.357823
125	1	KERNW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:50:43.876606
126	1	AKRO                	Akero Therapeutics Inc	23.29	-	-	-		2020-06-29 11:51:02.844554
127	1	AKER                	Akers Biosciences Inc	5.86	-	-	-		2020-06-29 11:51:19.912224
128	1	AKTS                	Akoustis Technologies Inc	8.39	-	-	-		2020-06-29 11:52:47.78865
129	1	ALRM                	Alarm.com Holdings Inc	52.32	-	-	-		2020-06-29 11:53:05.370899
130	1	ALSK                	Alaska Communications Systems Group Inc	3.03	-	-	-		2020-06-29 11:53:23.673597
131	1	ALAC                	Alberton Acquisition Corp	10.42	-	-	-		2020-06-29 11:53:41.670932
132	1	ALACR               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:53:52.769529
133	1	ALACU               	-	—	-	-	-		2020-06-29 11:54:08.524232
134	1	ALACW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 11:54:20.02105
135	1	ALBO                	Albireo Pharma Inc	31.99	-	-	-		2020-06-29 11:54:39.229164
136	1	ALDX                	Aldeyra Therapeutics Inc	5.56	-	-	-		2020-06-29 11:55:04.653525
137	1	ALEC                	Alector Inc	22.45	-	-	-		2020-06-29 11:55:29.080254
138	1	ALRS                	Alerus Financial Corp	20.94	-	-	-		2020-06-29 11:55:51.841306
139	1	ALXN                	Alexion Pharmaceuticals Inc	155.00	-	-	-		2020-06-29 11:56:18.282566
140	1	ALCO                	Alico Inc	34.93	-	-	-		2020-06-29 11:56:36.283038
141	1	ALYA                	Alithya Group Inc	2.14	-	-	-		2020-06-29 11:56:55.193942
142	1	ALGN                	Align Technology Inc	175.00	-	-	-		2020-06-29 11:57:13.220264
143	1	ALIM                	Alimera Sciences Inc	8.73	-	-	-		2020-06-29 11:57:30.825132
144	1	ALYA                	Alithya Group Inc	2.14	-	-	-		2020-06-29 11:57:46.86987
145	1	ALJJ                	ALJ Regional Holdings Inc	1.16	-	-	-		2020-06-29 11:58:04.511949
146	1	ALKS                	Alkermes PLC	19.72	-	-	-		2020-06-29 11:58:20.097424
147	1	ALLK                	Allakos Inc	66.89	-	-	-		2020-06-29 11:58:37.179601
148	1	ABTX                	Allegiance Bancshares Inc	27.68	-	-	-		2020-06-29 11:58:53.31182
149	1	ALGT                	Allegiant Travel Co	134.67	-	-	-		2020-06-29 11:59:08.895091
150	1	ALNA                	Allena Pharmaceuticals Inc	1.75	-	-	-		2020-06-29 11:59:24.638376
151	1	ARLP                	Alliance Resource Partners LP	5.48	-	-	-		2020-06-29 11:59:39.565613
152	1	LNT                 	Alliant Energy Corp	47.00	-	-	-		2020-06-29 11:59:54.754496
153	1	AESE                	Allied Esports Entertainment Inc Ordinary Shares	3.75	-	-	-		2020-06-29 12:00:10.328765
154	1	AHPI                	Allied Healthcare Products Inc	16.86	-	-	-		2020-06-29 12:00:25.12486
155	1	AMOT                	Allied Motion Technologies Inc	39.73	-	-	-		2020-06-29 12:00:40.228316
156	1	ALLO                	Allogene Therapeutics Inc	36.62	-	-	-		2020-06-29 12:00:55.069859
157	1	ALLT                	Allot Ltd	11.79	-	-	-		2020-06-29 12:01:10.512139
314	1	ASTC                	Astrotech Corp	2.91	-	-	-		2020-06-29 13:24:52.324927
158	1	MDRX                	Allscripts Healthcare Solutions Inc	4.52	-	-	-		2020-06-29 12:01:25.772104
159	1	ALNY                	Alnylam Pharmaceuticals Inc	142.00	-	-	-		2020-06-29 12:01:41.046749
160	1	AOSL                	Alpha &amp Omega Semiconductor Ltd	14.16	-	-	-		2020-06-29 12:01:56.590016
161	1	GOOG                	Alphabet Inc Class C	1,400.00	-	-	-		2020-06-29 12:02:17.25942
162	1	GOOGL               	Alphabet Inc A	1,400.00	-	-	-		2020-06-29 12:02:35.804962
163	1	SMCP                	-	0	AlphaMark Actively Managed Small Cap ETF	1	-		2020-06-29 12:03:09.850843
164	1	ATEC                	Alphatec Holdings Inc	6.40	-	-	-		2020-06-29 12:03:25.354542
165	1	ALPN                	Alpine Immune Sciences Inc	9.29	-	-	-		2020-06-29 12:03:42.812892
166	1	ALTR                	Altair Engineering Inc Class A	35.20	-	-	-		2020-06-29 12:04:01.268826
167	1	ATHE                	Alterity Therapeutics Ltd ADR	0.86	-	-	-		2020-06-29 12:04:19.141907
168	1	ALT                 	Altimmune Inc	10.42	-	-	-		2020-06-29 12:04:35.663914
169	1	ASPS                	Altisource Portfolio Solutions SA	22.26	-	-	-		2020-06-29 12:04:53.536223
170	1	AIMC                	Altra Industrial Motion Corp	41.46	-	-	-		2020-06-29 12:05:11.997606
171	1	ALTM                	Altus Midstream Co Class A	1.09	-	-	-		2020-06-29 12:05:29.152979
172	1	AMAG                	AMAG Pharmaceuticals Inc	12.33	-	-	-		2020-06-29 12:05:46.74083
173	1	AMAL                	Amalgamated Bank Ordinary Shares Class A	19.03	-	-	-		2020-06-29 12:06:04.383666
174	1	AMRN                	Amarin Corp PLC ADR	9.06	-	-	-		2020-06-29 12:06:21.329292
175	1	AMRK                	A-Mark Precious Metals Inc	22.64	-	-	-		2020-06-29 12:06:38.970633
176	1	AMZN                	Amazon.com Inc	2,500.00	-	-	-		2020-06-29 12:06:57.105257
177	1	AMBC                	Ambac Financial Group Inc	18.38	-	-	-		2020-06-29 12:07:14.660925
178	1	AMBA                	Ambarella Inc	47.54	-	-	-		2020-06-29 12:08:03.04261
179	1	AMCX                	AMC Networks Inc A	46.00	-	-	-		2020-06-29 12:08:21.21276
180	1	AMCI                	AMCI Acquisition Corp Class A	9.82	-	-	-		2020-06-29 12:08:38.711128
181	1	AMCIU               	-	—	-	-	-		2020-06-29 12:08:53.733337
182	1	AMCIW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 12:09:05.140851
183	1	DOX                 	Amdocs Ltd	—	-	-	-		2020-06-29 12:09:20.290204
184	1	AMED                	Amedisys Inc	166.09	-	-	-		2020-06-29 12:09:36.652593
185	1	AMTB                	Amerant Bancorp Inc Ordinary Shares - Class A	18.32	-	-	-		2020-06-29 12:09:51.9346
186	1	AMTBB               	Amerant Bancorp Inc Class B	14.23	-	-	-		2020-06-29 12:10:06.696229
187	1	UHAL                	Amerco Inc	337.96	-	-	-		2020-06-29 12:10:21.869117
188	1	AMRH                	Ameri Holdings Inc	3.01	-	-	-		2020-06-29 12:10:37.401214
189	1	AMRHW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 12:10:48.96219
190	1	ATAX                	America First Multifamily Investors LP	5.22	-	-	-		2020-06-29 12:11:04.404325
191	1	AMOV                	America Movil SAB de CV ADR	18.00	-	-	-		2020-06-29 12:11:19.593549
192	1	AAL                 	American Airlines Group Inc	15.70	-	-	-		2020-06-29 12:11:35.606743
193	1	AFIN                	American Finance Trust Inc	12.20	-	-	-		2020-06-29 12:11:50.344755
194	1	AFINP               	American Finance Trust Inc Pref Share	37.10	-	-	-		2020-06-29 12:12:05.732558
195	1	AMNB                	American National Bankshares Inc	30.47	-	-	-		2020-06-29 12:12:20.905577
196	1	ANAT                	American National Insurance Co	92.49	-	-	-		2020-06-29 12:12:35.967629
197	1	APEI                	American Public Education Inc	30.94	-	-	-		2020-06-29 12:12:51.366562
198	1	AREC                	American Resources Corp	1.48	-	-	-		2020-06-29 12:13:06.40753
199	1	AMRB                	American River Bankshares	14.23	-	-	-		2020-06-29 12:13:21.834507
200	1	AMSWA               	American Software Inc Class A	15.40	-	-	-		2020-06-29 12:13:37.39447
201	1	AMSC                	American Superconductor Corp	9.04	-	-	-		2020-06-29 12:13:53.214757
202	1	AVCT                	American Virtual Cloud Technologies Inc	3.67	-	-	-		2020-06-29 12:14:11.736571
203	1	AVCTW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 12:14:22.877716
204	1	AMWD                	American Woodmark Corp	90.89	-	-	-		2020-06-29 12:14:43.608141
205	1	CRMT                	America"s Car-Mart Inc	107.67	-	-	-		2020-06-29 12:15:01.905916
206	1	ABCB                	Ameris Bancorp	26.33	-	-	-		2020-06-29 12:15:20.798957
207	1	AMSF                	AMERISAFE Inc	60.69	-	-	-		2020-06-29 12:15:38.926005
208	1	ASRV                	AmeriServ Financial Inc	4.14	-	-	-		2020-06-29 12:15:58.212252
209	1	ASRVP               	Ameriserv Financial Capital Trust I Pref Share	—	-	-	-		2020-06-29 12:16:16.023202
210	1	ATLO                	Ames National Corp	23.32	-	-	-		2020-06-29 12:16:32.721271
211	1	AMGN                	Amgen Inc	219.00	-	-	-		2020-06-29 12:16:51.043915
212	1	FOLD                	Amicus Therapeutics Inc	13.02	-	-	-		2020-06-29 12:17:09.575228
213	1	AMKR                	Amkor Technology Inc	15.56	-	-	-		2020-06-29 12:17:28.856611
214	1	AMPH                	Amphastar Pharmaceuticals Inc	22.89	-	-	-		2020-06-29 12:17:47.27116
215	1	IBUY                	-	0	Amplify Online Retail ETF	5	-		2020-06-29 12:18:21.304624
216	1	AMHC                	Amplitude Healthcare Acquisition Corp Ordinary Shares Class A	8.28	-	-	-		2020-06-29 12:18:38.966762
217	1	AMHCU               	-	—	-	-	-		2020-06-29 12:18:57.2104
218	1	AMHCW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 12:19:08.37615
219	1	ASYS                	Amtech Systems Inc	7.37	-	-	-		2020-06-29 12:19:23.290782
220	1	AMRS                	Amyris Inc	5.79	-	-	-		2020-06-29 12:19:41.445372
221	1	ADI                 	Analog Devices Inc	103.00	-	-	-		2020-06-29 12:19:58.713079
222	1	ANAB                	AnaptysBio Inc	34.97	-	-	-		2020-06-29 12:20:14.03844
223	1	AVXL                	Anavex Life Sciences Corp	4.92	-	-	-		2020-06-29 12:20:29.191675
224	1	ANCN                	Anchiano Therapeutics Ltd ADR	2.32	-	-	-		2020-06-29 12:20:44.774523
225	1	ANDA                	Andina Acquisition Corp III Ordinary Shares	9.91	-	-	-		2020-06-29 12:20:59.526677
228	1	ANDAR               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:00:47.158963
229	1	ANDAU               	-	—	-	-	-		2020-06-29 13:01:35.556255
230	1	ANDAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:01:47.588046
231	1	ANGI                	ANGI Homeservices Inc A	11.29	-	-	-		2020-06-29 13:02:06.214736
232	1	ANGO                	AngioDynamics Inc	13.35	-	-	-		2020-06-29 13:02:23.680041
233	1	ANIP                	ANI Pharmaceuticals Inc	42.76	-	-	-		2020-06-29 13:02:43.038682
234	1	ANIK                	Anika Therapeutics Inc	46.87	-	-	-		2020-06-29 13:03:00.401712
235	1	ANIX                	Anixa Biosciences Inc	2.70	-	-	-		2020-06-29 13:03:18.061952
236	1	ANPC                	AnPac Bio-Medical Science Co Ltd ADR	6.42	-	-	-		2020-06-29 13:03:33.931805
237	1	ANSS                	Ansys Inc	196.00	-	-	-		2020-06-29 13:03:52.645476
238	1	ATRS                	Antares Pharma Inc	2.90	-	-	-		2020-06-29 13:04:09.819663
239	1	ATEX                	Anterix Inc	42.06	-	-	-		2020-06-29 13:04:28.630085
240	1	APA                 	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:04:39.837782
241	1	APA                 	Apache Corp	15.00	-	-	-		2020-06-29 13:04:57.661935
242	1	APEX                	Apex Global Brands Inc	1.24	-	-	-		2020-06-29 13:05:12.748139
243	1	APXT                	Apex Technology Acquisition Corp Ordinary Shares - Class A	8.04	-	-	-		2020-06-29 13:05:27.801513
244	1	APXTU               	-	—	-	-	-		2020-06-29 13:05:44.119024
245	1	APXTW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:05:56.114208
246	1	APHA                	Aphria Inc	11.00	-	-	-		2020-06-29 13:06:11.944471
247	1	APOG                	Apogee Enterprises Inc	28.95	-	-	-		2020-06-29 13:06:27.484809
248	1	APEN                	Apollo Endosurgery Inc	2.50	-	-	-		2020-06-29 13:06:45.012801
249	1	AINV                	Apollo Investment Corp	12.53	-	-	-		2020-06-29 13:07:00.538344
250	1	AMEH                	Apollo Medical Holdings Inc	18.00	-	-	-		2020-06-29 13:07:16.415575
251	1	APPF                	AppFolio Inc A	100.98	-	-	-		2020-06-29 13:07:31.972184
252	1	APPN                	Appian Corp A	38.65	-	-	-		2020-06-29 13:07:47.366477
253	1	AAPL                	Apple Inc	240.00	-	-	-		2020-06-29 13:08:02.677409
254	1	APDN                	Applied DNA Sciences Inc	13.43	-	-	-		2020-06-29 13:08:17.892279
255	1	AGTC                	Applied Genetic Technologies Corp	9.37	-	-	-		2020-06-29 13:08:33.384902
256	1	AMAT                	Applied Materials Inc	65.00	-	-	-		2020-06-29 13:08:48.47579
257	1	AMTI                	Applied Molecular Transport Inc Ordinary Shares	24.40	-	-	-		2020-06-29 13:09:03.547947
258	1	AAOI                	Applied Optoelectronics Inc	14.57	-	-	-		2020-06-29 13:09:18.547186
259	1	APLT                	Applied Therapeutics Inc	36.86	-	-	-		2020-06-29 13:09:33.276268
260	1	APRE                	Aprea Therapeutics Inc	35.28	-	-	-		2020-06-29 13:09:48.50487
261	1	APVO                	Aptevo Therapeutics Inc	14.68	-	-	-		2020-06-29 13:10:03.707853
262	1	APTX                	Aptinyx Inc	5.95	-	-	-		2020-06-29 13:10:18.955579
263	1	APM                 	Aptorum Group Ltd Class A	3.88	-	-	-		2020-06-29 13:10:34.309412
264	1	APTO                	Aptose Biosciences Inc	6.27	-	-	-		2020-06-29 13:10:49.183709
265	1	APYX                	Apyx Medical Corp	7.77	-	-	-		2020-06-29 13:11:04.453557
266	1	AQMS                	Aqua Metals Inc	1.75	-	-	-		2020-06-29 13:11:19.187071
267	1	AQB                 	AquaBounty Technologies Inc	3.51	-	-	-		2020-06-29 13:11:34.519083
268	1	AQST                	Aquestive Therapeutics Inc	7.08	-	-	-		2020-06-29 13:11:49.573725
269	1	ARAV                	Aravive Inc	15.93	-	-	-		2020-06-29 13:12:05.288219
270	1	ABUS                	Arbutus Biopharma Corp	2.16	-	-	-		2020-06-29 13:12:21.468029
271	1	ABIO                	ARCA biopharma Inc	9.04	-	-	-		2020-06-29 13:12:36.700557
272	1	RKDA                	Arcadia Biosciences Inc	4.77	-	-	-		2020-06-29 13:12:52.035817
273	1	ARCB                	ArcBest Corp	28.75	-	-	-		2020-06-29 13:13:07.341406
274	1	ACGL                	Arch Capital Group Ltd	33.58	-	-	-		2020-06-29 13:13:23.482732
275	1	ACGLO               	Arch Capital Group Ltd Pref Share	29.89	-	-	-		2020-06-29 13:13:38.762476
276	1	ACGLP               	Arch Capital Group Ltd Pref Share	29.27	-	-	-		2020-06-29 13:13:54.000431
277	1	FUV                 	Arcimoto Inc	4.34	-	-	-		2020-06-29 13:14:09.135375
278	1	ARCE                	Arco Platform Ltd Class A	32.55	-	-	-		2020-06-29 13:15:02.253299
279	1	ARCT                	Arcturus Therapeutics Holdings Inc	37.45	-	-	-		2020-06-29 13:15:20.788206
280	1	ARQT                	Arcutis Biotherapeutics Inc Ordinary Shares	32.06	-	-	-		2020-06-29 13:15:38.608261
281	1	ARDX                	Ardelyx Inc	6.82	-	-	-		2020-06-29 13:15:54.204846
282	1	ARNA                	Arena Pharmaceuticals Inc	62.71	-	-	-		2020-06-29 13:16:10.177937
283	1	ARCC                	Ares Capital Corp	17.23	-	-	-		2020-06-29 13:16:25.785113
284	1	ARGX                	argenx SE ADR	174.53	-	-	-		2020-06-29 13:16:43.145089
285	1	ARDS                	Aridis Pharmaceuticals Inc	7.10	-	-	-		2020-06-29 13:16:58.244895
286	1	ARKR                	Ark Restaurants Corp	19.25	-	-	-		2020-06-29 13:17:13.650895
287	1	DWCR                	-	0	Arrow DWA Country Rotation ETF	-	-		2020-06-29 13:17:53.862482
288	1	DWAT                	-	0	Arrow DWA Tactical ETF	2	-		2020-06-29 13:18:12.387462
289	1	AROW                	Arrow Financial Corp	31.63	-	-	-		2020-06-29 13:18:27.732929
290	1	ARWR                	Arrowhead Pharmaceuticals Inc	28.61	-	-	-		2020-06-29 13:18:45.499579
291	1	ARTL                	Artelo Biosciences Inc	2.03	-	-	-		2020-06-29 13:19:01.201718
292	1	ARTLW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:19:12.314377
293	1	ARTNA               	Artesian Resources Corp Class A	35.74	-	-	-		2020-06-29 13:19:28.335107
294	1	ARTW                	Art"s-Way Manufacturing Co Inc	3.27	-	-	-		2020-06-29 13:19:44.089816
295	1	ARVN                	Arvinas Inc	29.99	-	-	-		2020-06-29 13:19:59.373048
296	1	ARYBU               	-	—	-	-	-		2020-06-29 13:20:14.285148
297	1	ARYA                	ARYA Sciences Acquisition Corp Ordinary Shares Class A	14.48	-	-	-		2020-06-29 13:20:29.311917
298	1	ARYAU               	-	—	-	-	-		2020-06-29 13:20:46.250898
299	1	ARYAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:20:57.776256
300	1	ASNA                	Ascena Retail Group Inc	4.38	-	-	-		2020-06-29 13:21:13.40951
301	1	ASND                	Ascendis Pharma A/S ADR	123.58	-	-	-		2020-06-29 13:21:29.407719
302	1	APWC                	Asia Pacific Wire &amp Cable Corp Ltd	1.59	-	-	-		2020-06-29 13:21:44.450913
303	1	ASLN                	ASLAN Pharmaceuticals Ltd ADR	2.08	-	-	-		2020-06-29 13:22:00.134428
304	1	ASML                	ASML Holding NV ADR	245.00	-	-	-		2020-06-29 13:22:16.500278
305	1	ASPU                	Aspen Group Inc	9.64	-	-	-		2020-06-29 13:22:31.541045
306	1	AZPN                	Aspen Technology Inc	114.00	-	-	-		2020-06-29 13:22:46.754376
307	1	AWH                 	Aspira Womens Health Inc	4.45	-	-	-		2020-06-29 13:23:02.136323
308	1	ASMB                	Assembly Biosciences Inc	26.12	-	-	-		2020-06-29 13:23:18.497301
309	1	ASRT                	Assertio Holdings Inc	1.43	-	-	-		2020-06-29 13:23:33.437295
310	1	ASFI                	Asta Funding Inc	14.93	-	-	-		2020-06-29 13:23:48.927902
311	1	ASTE                	Astec Industries Inc	46.10	-	-	-		2020-06-29 13:24:05.127367
312	1	ATRO                	Astronics Corp	15.41	-	-	-		2020-06-29 13:24:20.577163
313	1	ALOT                	AstroNova Inc	10.33	-	-	-		2020-06-29 13:24:36.520713
315	1	ASUR                	Asure Software Inc	8.12	-	-	-		2020-06-29 13:25:07.834698
316	1	AACG                	ATA Creativity Global ADR	1.95	-	-	-		2020-06-29 13:25:23.517867
317	1	ATRA                	Atara Biotherapeutics Inc	16.53	-	-	-		2020-06-29 13:25:38.975656
318	1	ATNX                	Athenex Inc	17.30	-	-	-		2020-06-29 13:25:54.618312
319	1	ATHX                	Athersys Inc	2.63	-	-	-		2020-06-29 13:26:10.650564
320	1	ATIF                	ATIF Holdings Ltd	1.53	-	-	-		2020-06-29 13:26:27.146373
321	1	AAME                	Atlantic American Corp	2.22	-	-	-		2020-06-29 13:26:44.587856
322	1	ACBI                	Atlantic Capital Bancshares Inc	14.50	-	-	-		2020-06-29 13:26:59.617249
323	1	AUB                 	Atlantic Union Bankshares Corp	26.74	-	-	-		2020-06-29 13:27:14.521918
324	1	AUBAP               	Atlantic Union Bankshares Corp Pref Share	30.91	-	-	-		2020-06-29 13:27:29.706901
325	1	AY                  	Atlantica Sustainable Infrastructure PLC	29.28	-	-	-		2020-06-29 13:27:44.94116
326	1	ATLC                	Atlanticus Holdings Corp	15.46	-	-	-		2020-06-29 13:28:00.065349
327	1	AAWW                	Atlas Air Worldwide Holdings Inc	50.90	-	-	-		2020-06-29 13:28:15.793352
328	1	AFH                 	Atlas Financial Holdings Inc	1.01	-	-	-		2020-06-29 13:29:10.094915
329	1	ATCX                	Atlas Technical Consultants Inc Ordinary Shares - Class A	10.04	-	-	-		2020-06-29 13:29:28.006614
330	1	ATCXW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 13:29:39.672246
331	1	TEAM                	Atlassian Corporation PLC A	150.00	-	-	-		2020-06-29 13:29:57.770976
332	1	ATNI                	ATN International Inc	66.13	-	-	-		2020-06-29 13:30:15.613087
333	1	ATOM                	Atomera Inc	9.17	-	-	-		2020-06-29 13:30:32.331058
334	1	ATOS                	Atossa Therapeutics Inc	4.53	-	-	-		2020-06-29 13:30:50.337031
335	1	BCEL                	Atreca Inc	22.66	-	-	-		2020-06-29 13:31:06.195193
336	1	ATRC                	AtriCure Inc	42.93	-	-	-		2020-06-29 13:31:24.401941
337	1	ATRI                	Atrion Corp	545.74	-	-	-		2020-06-29 13:31:43.550082
338	1	LIFE                	aTyr Pharma Inc	7.78	-	-	-		2020-06-29 13:32:02.454742
339	1	AUBN                	Auburn National Bancorp Inc	74.51	-	-	-		2020-06-29 13:32:21.34785
340	1	AUDC                	AudioCodes Ltd	28.04	-	-	-		2020-06-29 13:32:39.991048
341	1	AEYE                	AudioEye Inc	10.49	-	-	-		2020-06-29 13:32:56.450395
342	1	AUPH                	Aurinia Pharmaceuticals Inc	14.74	-	-	-		2020-06-29 13:33:14.313125
343	1	EARS                	Auris Medical Holding Ltd	1.48	-	-	-		2020-06-29 13:33:31.749444
344	1	JG                  	Aurora Mobile Ltd ADR	2.27	-	-	-		2020-06-29 13:33:50.161175
345	1	ADSK                	Autodesk Inc	198.00	-	-	-		2020-06-29 13:34:10.104359
346	1	AUTL                	Autolus Therapeutics PLC ADR	19.58	-	-	-		2020-06-29 13:34:29.046815
347	1	ADP                 	Automatic Data Processing Inc	136.00	-	-	-		2020-06-29 13:34:47.710897
348	1	AUTO                	AutoWeb Inc	2.30	-	-	-		2020-06-29 13:35:05.164726
349	1	AVDL                	Avadel Pharmaceuticals PLC ADR	8.78	-	-	-		2020-06-29 13:35:22.769659
350	1	AHIX                	Aluf Holdings Inc	0.00	-	-	-		2020-06-29 13:35:40.534251
351	1	AVCO                	Avalon Globocare Corp	1.93	-	-	-		2020-06-29 13:35:55.342531
352	1	ATXI                	Avenue Therapeutics Inc	9.93	-	-	-		2020-06-29 13:36:10.598128
353	1	AVEO                	AVEO Pharmaceuticals Inc	6.24	-	-	-		2020-06-29 13:36:25.643015
354	1	AVNW                	Aviat Networks Inc	23.41	-	-	-		2020-06-29 13:36:42.515868
355	1	CDMO                	Avid Bioservices Inc	6.89	-	-	-		2020-06-29 13:37:00.251949
356	1	CDMOP               	Avid Bioservices Inc Pref Share	29.47	-	-	-		2020-06-29 13:37:15.348088
357	1	AVID                	Avid Technology Inc	8.30	-	-	-		2020-06-29 13:37:31.092384
358	1	RNA                 	Avidity Biosciences Inc Ordinary Shares	22.71	-	-	-		2020-06-29 13:37:47.303968
359	1	AVGR                	Avinger Inc	0.58	-	-	-		2020-06-29 13:38:02.414581
360	1	CAR                 	Avis Budget Group Inc	33.01	-	-	-		2020-06-29 13:38:18.672186
361	1	RCEL                	Avita Medical Ltd ADR	6.75	-	-	-		2020-06-29 13:38:34.710921
362	1	AVT                 	Avnet Inc	38.00	-	-	-		2020-06-29 13:38:52.737987
363	1	AVRO                	Avrobio Inc	23.54	-	-	-		2020-06-29 13:39:10.594136
364	1	AWRE                	Aware Inc	3.56	-	-	-		2020-06-29 13:39:29.714692
365	1	ACLS                	Axcelis Technologies Inc	31.62	-	-	-		2020-06-29 13:39:47.665533
366	1	AXLA                	Axcella Health Inc	5.75	-	-	-		2020-06-29 13:40:05.513747
367	1	AXGN                	Axogen Inc	11.77	-	-	-		2020-06-29 13:40:21.785362
368	1	AAXN                	Axon Enterprise Inc	75.65	-	-	-		2020-06-29 13:40:39.263805
369	1	AXNX                	Axonics Modulation Technologies Inc	31.41	-	-	-		2020-06-29 13:40:54.865744
370	1	AXGT                	Axovant Gene Therapies Ltd	4.23	-	-	-		2020-06-29 13:41:12.716699
371	1	AXSM                	Axsome Therapeutics Inc	72.63	-	-	-		2020-06-29 13:41:28.014651
372	1	AXTI                	AXT Inc	6.55	-	-	-		2020-06-29 13:41:45.570731
373	1	AYLA                	Ayala Pharmaceuticals Inc Ordinary Shares	10.18	-	-	-		2020-06-29 13:42:03.531623
374	1	AYRO                	AYRO Inc Ordinary Shares	3.18	-	-	-		2020-06-29 13:42:21.111187
375	1	AYTU                	Aytu BioScience Inc	2.95	-	-	-		2020-06-29 13:42:39.511984
376	1	AZRX                	AzurRx BioPharma Inc	0.98	-	-	-		2020-06-29 13:43:00.316819
377	1	BCOM                	B Communications Ltd	3.34	-	-	-		2020-06-29 13:43:18.116251
378	1	RILY                	B. Riley Financial Inc	23.74	-	-	-		2020-06-29 13:44:44.911768
383	1	RILYG               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:18:48.319144
384	1	RILYH               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:18:59.755755
385	1	RILYI               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:19:11.069442
386	1	RILYM               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:19:22.347718
387	1	RILYN               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:19:34.319703
388	1	RILYO               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:19:46.004052
389	1	RILYP               	B. Riley Financial Inc Pref Share	25.78	-	-	-		2020-06-29 14:20:22.9062
390	1	RILYZ               	-	0	-	-	-	No result in autocomplete search	2020-06-29 14:20:34.171977
391	1	BOSC                	BOS Better Online Solutions Ltd	4.42	-	-	-		2020-06-29 14:20:52.299427
392	1	BIDU                	Baidu Inc ADR	191.00	-	-	-		2020-06-29 14:53:10.020765
393	1	BCPC                	Balchem Corp	86.00	-	-	-		2020-06-29 14:53:28.311407
394	1	BLDP                	Ballard Power Systems Inc	10.05	-	-	-		2020-06-29 14:54:37.998652
395	1	BANF                	BancFirst Corp	47.32	-	-	-		2020-06-29 14:54:56.42965
938	1	APPS                	Digital Turbine Inc	9.00	-	-	-		2020-06-30 10:35:23.050776
396	1	BANFP               	BFC Capital Trust II Pref Share	—	-	-	-		2020-06-29 14:55:11.824847
397	1	BCTF                	Bancorp 34 Inc	15.09	-	-	-		2020-06-29 14:55:26.891273
398	1	BAND                	Bandwidth Inc Class A	106.09	-	-	-		2020-06-29 14:55:42.198242
399	1	BFC                 	Bank First Corp	63.75	-	-	-		2020-06-29 14:55:57.320513
400	1	BOCH                	Bank of Commerce Holdings Inc	9.60	-	-	-		2020-06-29 14:56:12.02336
401	1	BMRC                	Bank of Marin Bancorp	37.07	-	-	-		2020-06-29 14:56:26.786343
402	1	BMLP                	-	0	BMO Dorsey Wright MLP Index Exchange Traded Notes	-	-		2020-06-29 14:58:12.471547
403	1	BKSC                	Bank of South Carolina Corp	17.15	-	-	-		2020-06-29 14:58:28.132585
404	1	BOTJ                	Bank of the James Financial Group Inc	12.70	-	-	-		2020-06-29 14:58:43.838477
405	1	OZK                 	Bank OZK	27.48	-	-	-		2020-06-29 14:58:59.824678
406	1	BSVN                	Bank7 Corp	19.06	-	-	-		2020-06-29 14:59:14.604467
407	1	BFIN                	BankFinancial Corp	10.26	-	-	-		2020-06-29 14:59:29.813954
408	1	BWFG                	Bankwell Financial Group Inc	23.48	-	-	-		2020-06-29 14:59:46.08468
409	1	BANR                	Banner Corp	42.68	-	-	-		2020-06-29 15:00:01.445366
410	1	BZUN                	Baozun Inc ADR	41.06	-	-	-		2020-06-29 15:00:16.845824
411	1	DFVL                	-	0	iPath® US Treasury 5-year Bull ETN	-	-		2020-06-29 15:00:35.163223
412	1	DFVS                	-	0	iPath® US Treasury 5-year Bear ETN	-	-		2020-06-29 15:00:53.758417
413	1	DTUL                	-	0	iPath® US Treasury 2-year Bull ETN	-	-		2020-06-29 15:01:12.552431
414	1	DTUS                	-	0	iPath® US Treasury 2-year Bear ETN	-	-		2020-06-29 15:01:30.47354
415	1	DTYL                	-	0	iPath® US Treasury 10-year Bull ETN	-	-		2020-06-29 15:01:48.481215
416	1	FLT                 	Fleetcor Technologies Inc	221.34	-	-	-		2020-06-29 15:02:04.319133
417	1	STPP                	-	0	iPath® US Treasury Steepener ETN	-	-		2020-06-29 15:02:22.302708
418	1	TAPR                	-	0	Barclays Inverse US Treasury Aggregate ETN	-	-		2020-06-29 15:02:40.472934
419	1	BBSI                	Barrett Business Services Inc	70.36	-	-	-		2020-06-29 15:02:56.085919
420	1	GOLD                	Barrick Gold Corp	15.00	-	-	-		2020-06-29 15:03:11.673012
421	1	BSET                	Bassett Furniture Industries Inc	11.30	-	-	-		2020-06-29 15:03:27.27401
422	1	ZTEST               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:03:38.706793
423	1	BXRX                	Baudax Bio Inc Ordinary Shares	4.46	-	-	-		2020-06-29 15:03:55.74892
424	1	BCML                	BayCom Corp	17.27	-	-	-		2020-06-29 15:04:10.820035
425	1	BBQ                 	BBQ Holdings Inc	5.17	-	-	-		2020-06-29 15:04:25.84869
426	1	BCBP                	BCB Bancorp Inc	11.02	-	-	-		2020-06-29 15:04:41.043263
427	1	BECN                	Beacon Roofing Supply Inc	40.10	-	-	-		2020-06-29 15:04:56.216591
428	1	BEAM                	Beam Therapeutics Inc	25.36	-	-	-		2020-06-29 15:05:13.750128
429	1	BBGI                	Beasley Broadcast Group Inc Class A	3.97	-	-	-		2020-06-29 15:05:28.831712
430	1	BBBY                	Bed Bath &amp Beyond Inc	11.30	-	-	-		2020-06-29 15:05:43.864212
431	1	BGNE                	BeiGene Ltd ADR	181.20	-	-	-		2020-06-29 15:05:59.012919
432	1	BELFA               	Bel Fuse Inc Class A	14.58	-	-	-		2020-06-29 15:06:14.839637
433	1	BELFB               	Bel Fuse Inc Class B	14.39	-	-	-		2020-06-29 15:06:29.963139
434	1	BLPH                	Bellerophon Therapeutics Inc	12.81	-	-	-		2020-06-29 15:06:45.572279
435	1	BLCM                	Bellicum Pharmaceuticals Inc	9.92	-	-	-		2020-06-29 15:07:00.717694
436	1	BLU                 	BELLUS Health Inc	9.42	-	-	-		2020-06-29 15:07:16.406388
437	1	BNFT                	Benefitfocus Inc	14.77	-	-	-		2020-06-29 15:07:31.081004
438	1	BFYT                	Benefytt Technologies Inc Class A	22.27	-	-	-		2020-06-29 15:07:46.509101
439	1	BNTC                	Benitec Biopharma Inc Ordinary Shares	7.81	-	-	-		2020-06-29 15:08:01.834609
440	1	BRY                 	Berry Corp (bry)	7.59	-	-	-		2020-06-29 15:08:16.81523
441	1	BWMX                	Betterware de Mexico SAPI de CV Ordinary Shares	8.38	-	-	-		2020-06-29 15:08:32.790501
442	1	XAIR                	Beyond Air Inc	7.50	-	-	-		2020-06-29 15:09:23.76297
443	1	BYND                	Beyond Meat Inc	60.00	-	-	-		2020-06-29 15:09:42.388323
444	1	BYSI                	BeyondSpring Inc	14.66	-	-	-		2020-06-29 15:09:59.637426
445	1	BGCP                	BGC Partners Inc Class A	3.95	-	-	-		2020-06-29 15:10:17.534869
446	1	BCYC                	Bicycle Therapeutics PLC ADR	16.88	-	-	-		2020-06-29 15:10:35.405313
447	1	BGFV                	Big 5 Sporting Goods Corp	5.08	-	-	-		2020-06-29 15:10:53.438279
448	1	BRPA                	Big Rock Partners Acquisition Corp	9.00	-	-	-		2020-06-29 15:11:08.810607
449	1	BRPAR               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:11:20.009316
450	1	BRPAU               	Big Rock Partners Acquisition Corp Units (1 Ord &amp 1 War)	10.95	-	-	-		2020-06-29 15:11:34.947478
451	1	BRPAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:11:46.261113
452	1	BILI                	Bilibili Inc ADR	32.73	-	-	-		2020-06-29 15:12:01.109804
453	1	BASI                	Bioanalytical Systems Inc	6.86	-	-	-		2020-06-29 15:12:16.127957
454	1	BCDA                	BioCardia Inc	2.51	-	-	-		2020-06-29 15:12:31.771153
455	1	BCDAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:12:42.860571
456	1	BIOC                	Biocept Inc	1.03	-	-	-		2020-06-29 15:12:57.697605
457	1	BCRX                	BioCryst Pharmaceuticals Inc	5.37	-	-	-		2020-06-29 15:13:12.39454
458	1	BDSI                	BioDelivery Sciences International Inc	4.69	-	-	-		2020-06-29 15:13:27.633405
459	1	BFRA                	Biofrontera AG ADR	7.91	-	-	-		2020-06-29 15:13:42.377926
460	1	BIIB                	Biogen Inc	389.00	-	-	-		2020-06-29 15:13:58.029153
461	1	BHTG                	BioHiTech Global Inc	1.79	-	-	-		2020-06-29 15:14:13.675265
462	1	BKYI                	BIO-key International Inc	0.92	-	-	-		2020-06-29 15:14:28.316081
463	1	BIOL                	Biolase Inc	0.76	-	-	-		2020-06-29 15:14:43.593733
464	1	BLFS                	BioLife Solutions Inc	14.49	-	-	-		2020-06-29 15:14:58.871127
465	1	BLRX                	BioLine Rx Ltd ADR	2.50	-	-	-		2020-06-29 15:15:13.553903
466	1	BMRN                	Biomarin Pharmaceutical Inc	119.00	-	-	-		2020-06-29 15:15:29.570873
467	1	BMRA                	Biomerica Inc	7.42	-	-	-		2020-06-29 15:15:45.428334
468	1	BNGO                	Bionano Genomics Inc	0.69	-	-	-		2020-06-29 15:16:00.752302
469	1	BNGOW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:16:11.819893
470	1	BVXV                	BiondVax Pharmaceuticals Ltd ADR	25.47	-	-	-		2020-06-29 15:16:27.770079
471	1	BNTX                	BioNTech SE ADR	40.00	-	-	-		2020-06-29 15:16:42.838858
472	1	BPTH                	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:16:55.379754
473	1	BSGM                	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:17:06.518528
474	1	BSTC                	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:17:17.960782
475	1	BPTH                	Bio-Path Holdings Inc	7.75	-	-	-		2020-06-29 15:18:01.606423
476	1	BEAT                	BioTelemetry Inc	42.29	-	-	-		2020-06-29 15:18:18.992222
477	1	BIVI                	BioVie Inc	15.72	-	-	-		2020-06-29 15:18:33.78284
478	1	BTAI                	BioXcel Therapeutics Inc	49.06	-	-	-		2020-06-29 15:18:49.901295
479	1	BJRI                	BJ"s Restaurants Inc	28.58	-	-	-		2020-06-29 15:19:05.573255
480	1	BDTX                	Black Diamond Therapeutics Inc Ordinary Shares	41.79	-	-	-		2020-06-29 15:19:21.008821
481	1	BLKB                	Blackbaud Inc	66.00	-	-	-		2020-06-29 15:19:36.251352
482	1	BL                  	BlackLine Inc	58.00	-	-	-		2020-06-29 15:19:51.469821
483	1	BKCC                	BlackRock Capital Investment Corp	3.60	-	-	-		2020-06-29 15:20:07.292959
484	1	TCPC                	BlackRock TCP Capital Corp	11.82	-	-	-		2020-06-29 15:20:23.230829
485	1	BLNK                	Blink Charging Co	2.91	-	-	-		2020-06-29 15:20:39.427654
486	1	BLNKW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:20:50.505716
487	1	BLMN                	Bloomin Brands Inc	14.52	-	-	-		2020-06-29 15:21:05.833907
488	1	BCOR                	Blucora Inc	15.28	-	-	-		2020-06-29 15:21:23.874578
489	1	BLBD                	Blue Bird Corp	16.67	-	-	-		2020-06-29 15:21:41.645008
490	1	BHAT                	Blue Hat Interactive Entertainment Technology	1.95	-	-	-		2020-06-29 15:21:58.333209
491	1	BLUE                	bluebird bio Inc	73.39	-	-	-		2020-06-29 15:22:13.051757
492	1	BKEP                	Blueknight Energy Partners LP	1.86	-	-	-		2020-06-29 15:23:28.104813
493	1	BKEPP               	Blueknight Energy Partners LP Pref Share	7.82	-	-	-		2020-06-29 15:23:47.175952
494	1	BPMC                	Blueprint Medicines Corp	71.87	-	-	-		2020-06-29 15:24:05.176557
495	1	ITEQ                	-	0	BlueStar Israel Technology ETF	3	-		2020-06-29 15:24:48.547631
496	1	BMCH                	BMC Stock Holdings Inc	28.55	-	-	-		2020-06-29 15:25:04.151396
497	1	BSBK                	Bogota Financial Corp	10.16	-	-	-		2020-06-29 15:25:19.810373
498	1	WIFI                	Boingo Wireless Inc	14.25	-	-	-		2020-06-29 15:25:35.62589
499	1	BOKF                	BOK Financial Corp	64.79	-	-	-		2020-06-29 15:25:50.514225
500	1	BOKFL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:26:01.594801
501	1	BNSO                	Bonso Electronics International Inc	3.51	-	-	-		2020-06-29 15:26:16.7601
502	1	BKNG                	Booking Holdings Inc	1,950.00	-	-	-		2020-06-29 15:26:32.398376
503	1	BIMI                	BOQI International Medical Inc	3.75	-	-	-		2020-06-29 15:26:48.303768
504	1	BRQS                	Borqs Technologies Inc	2.32	-	-	-		2020-06-29 15:27:03.513955
505	1	BOMN                	Boston Omaha Corp Class A	16.95	-	-	-		2020-06-29 15:27:18.649067
506	1	BPFH                	Boston Private Financial Holdings Inc	8.11	-	-	-		2020-06-29 15:27:34.03366
507	1	EPAY                	Bottomline Technologies Inc	45.80	-	-	-		2020-06-29 15:27:49.968333
508	1	BOXL                	Boxlight Corp	1.27	-	-	-		2020-06-29 15:28:08.191184
509	1	BBRX                	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:28:19.985108
510	1	BCLI                	Brainstorm Cell Therapeutics Inc	11.78	-	-	-		2020-06-29 15:28:35.949607
511	1	BWAY                	Brainsway Ltd ADR	7.81	-	-	-		2020-06-29 15:28:53.952161
512	1	BCTXF               	BriaCell Therapeutics Corp	6.04	-	-	-		2020-06-29 15:29:08.897573
513	1	BBI                 	Brickell Biotech Inc	1.95	-	-	-		2020-06-29 15:29:24.707505
514	1	BDGE                	Bridge Bancorp Inc	26.59	-	-	-		2020-06-29 15:29:40.653851
515	1	BBIO                	BridgeBio Pharma Inc	29.57	-	-	-		2020-06-29 15:29:59.708687
516	1	BLIN                	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:30:10.802094
517	1	BWB                 	Bridgewater Bancshares Inc	10.82	-	-	-		2020-06-29 15:30:25.949624
518	1	BRID                	Bridgford Foods Corp	20.56	-	-	-		2020-06-29 15:30:41.877191
519	1	BCOV                	Brightcove Inc	9.65	-	-	-		2020-06-29 15:30:57.491985
520	1	BHF                 	Brighthouse Financial Inc	49.18	-	-	-		2020-06-29 15:31:12.421829
521	1	BHFAL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:31:23.598333
522	1	BHFAO               	Brighthouse Financial Inc Pref Share	47.53	-	-	-		2020-06-29 15:31:38.699793
523	1	BHFAP               	Brighthouse Financial Inc Pref Share	47.57	-	-	-		2020-06-29 15:31:55.488427
524	1	AVGO                	Broadcom Inc	310.00	-	-	-		2020-06-29 15:32:10.941539
525	1	AVGOP               	Broadcom Inc Pref Share	1,082.77	-	-	-		2020-06-29 15:32:26.682418
526	1	BYFC                	Broadway Financial Corp	2.50	-	-	-		2020-06-29 15:32:41.777468
527	1	BWEN                	Broadwind Inc	4.67	-	-	-		2020-06-29 15:32:57.596578
528	1	BROG                	-	6.89	-	-	-		2020-06-29 15:33:12.784816
529	1	BROGW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:33:23.97542
530	1	BPY                 	Brookfield Property Partners LP	19.66	-	-	-		2020-06-29 15:33:39.108434
531	1	BPYPN               	Brookfield Property Partners LP Pref Share	33.06	-	-	-		2020-06-29 15:33:55.773088
532	1	BPYPO               	Brookfield Property Partners LP Pref Share	37.19	-	-	-		2020-06-29 15:34:11.313186
533	1	BPYPP               	Brookfield Property Partners LP Pref Share	36.63	-	-	-		2020-06-29 15:34:26.535851
534	1	BPYU                	Brookfield Property REIT Inc	—	-	-	-		2020-06-29 15:34:42.392702
535	1	BPYUP               	Brookfield Property REIT Inc Pref Share	31.00	-	-	-		2020-06-29 15:34:58.66461
536	1	BRKL                	Brookline Bancorp Inc	11.01	-	-	-		2020-06-29 15:35:13.550973
537	1	BRKS                	Brooks Automation Inc	44.48	-	-	-		2020-06-29 15:35:28.515635
538	1	BRP                 	BRP Group Inc Class A	16.14	-	-	-		2020-06-29 15:35:43.873667
539	1	DOOO                	BRP Inc	35.50	-	-	-		2020-06-29 15:35:58.703731
540	1	BRKR                	Bruker Corp	34.01	-	-	-		2020-06-29 15:36:13.47437
541	1	BMTC                	Bryn Mawr Bank Corp	30.88	-	-	-		2020-06-29 15:36:28.694093
542	1	BSQR                	BSQUARE Corp	2.11	-	-	-		2020-06-29 15:37:38.452634
543	1	BLDR                	Builders FirstSource Inc	26.39	-	-	-		2020-06-29 15:37:58.920309
544	1	BNR                 	Burning Rock Biotech Ltd ADR	19.19	-	-	-		2020-06-29 15:38:15.935126
545	1	BFST                	Business First Bancshares Inc	22.40	-	-	-		2020-06-29 15:38:33.806141
546	1	CFFI                	C&ampF Financial Corp	44.23	-	-	-		2020-06-29 15:38:49.42941
547	1	CHRW                	C.H. Robinson Worldwide Inc	76.00	-	-	-		2020-06-29 15:39:04.086283
548	1	CABA                	Cabaletta Bio Inc Ordinary Shares	15.04	-	-	-		2020-06-29 15:39:19.840885
549	1	CCMP                	Cabot Microelectronics Corp	130.21	-	-	-		2020-06-29 15:39:34.896953
550	1	CDNS                	Cadence Design Systems Inc	48.00	-	-	-		2020-06-29 15:39:50.248324
551	1	CDZI                	Cadiz Inc	8.60	-	-	-		2020-06-29 15:40:05.887212
552	1	CZR                 	Caesars Entertainment Corp	5.70	-	-	-		2020-06-29 15:40:20.954799
553	1	CSTE                	Caesarstone Ltd	15.05	-	-	-		2020-06-29 15:40:36.779606
554	1	CLBS                	Caladrius Biosciences Inc	2.71	-	-	-		2020-06-29 15:40:51.893799
555	1	CHY                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:41:36.044681
556	1	CHI                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:42:04.682858
557	1	CCD                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:42:33.472959
558	1	CHW                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:43:01.189662
559	1	CGO                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:43:29.660208
560	1	CPZ                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:43:59.269255
561	1	CSQ                 	-	0	-	-	-	Investment Name field not found	2020-06-29 15:44:29.631712
562	1	CAMP                	CalAmp Corp	12.41	-	-	-		2020-06-29 15:44:45.871849
563	1	CVGW                	Calavo Growers Inc	64.85	-	-	-		2020-06-29 15:45:03.585193
564	1	CALB                	California Bancorp	19.05	-	-	-		2020-06-29 15:45:21.302846
565	1	CALA                	Calithera Biosciences Inc	6.21	-	-	-		2020-06-29 15:45:38.5854
566	1	CALT                	Calliditas Therapeutics AB ADR	17.34	-	-	-		2020-06-29 15:45:56.137291
567	1	CALM                	Cal-Maine Foods Inc	46.28	-	-	-		2020-06-29 15:46:14.132041
568	1	CLMT                	Calumet Specialty Products Partners LP	3.87	-	-	-		2020-06-29 15:46:29.493408
569	1	CLXT                	Calyxt Inc	6.70	-	-	-		2020-06-29 15:46:44.378456
570	1	CMBM                	Cambium Networks Corp	9.94	-	-	-		2020-06-29 15:46:59.646206
571	1	CATC                	Cambridge Bancorp	69.81	-	-	-		2020-06-29 15:47:14.394681
572	1	CAC                 	Camden National Corp	39.21	-	-	-		2020-06-29 15:47:29.563189
573	1	CAMT                	Camtek Ltd	12.83	-	-	-		2020-06-29 15:47:45.181416
574	1	CAN                 	Canaan Inc ADR	3.25	-	-	-		2020-06-29 15:48:00.846324
575	1	CSIQ                	Canadian Solar Inc	26.61	-	-	-		2020-06-29 15:48:16.406819
576	1	CGIX                	Cancer Genetics Inc	5.61	-	-	-		2020-06-29 15:48:31.949798
577	1	CPHC                	Canterbury Park Holding Corp	14.53	-	-	-		2020-06-29 15:48:48.603107
578	1	CBNK                	Capital Bancorp Inc	13.47	-	-	-		2020-06-29 15:49:03.258976
579	1	CCBG                	Capital City Bank Group Inc	24.56	-	-	-		2020-06-29 15:49:19.158594
580	1	CPLP                	Capital Product Partners LP	12.51	-	-	-		2020-06-29 15:49:34.911162
581	1	CSWC                	Capital Southwest Corp	16.80	-	-	-		2020-06-29 15:49:49.961406
582	1	CSWCL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:50:01.936802
583	1	CPTA                	Capitala Finance Corp	3.91	-	-	-		2020-06-29 15:50:17.854734
584	1	CPTAG               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:50:29.152687
585	1	CPTAL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 15:50:40.24885
586	1	CFFN                	Capitol Federal Financial Inc	10.76	-	-	-		2020-06-29 15:50:55.741602
587	1	CAPR                	Capricor Therapeutics Inc	5.10	-	-	-		2020-06-29 15:51:11.21034
588	1	CSTR                	CapStar Financial Holdings Inc	15.76	-	-	-		2020-06-29 15:51:26.53174
589	1	CPST                	Capstone Turbine Corp	4.06	-	-	-		2020-06-29 15:51:41.866345
590	1	CARA                	Cara Therapeutics Inc	19.04	-	-	-		2020-06-29 15:51:57.738676
591	1	CRDF                	Cardiff Oncology Inc	5.04	-	-	-		2020-06-29 15:52:12.791164
592	1	CSII                	Cardiovascular Systems Inc	29.37	-	-	-		2020-06-29 15:53:21.767369
593	1	CDLX                	Cardlytics Inc	65.47	-	-	-		2020-06-29 15:53:39.500684
594	1	CATM                	Cardtronics PLC	27.78	-	-	-		2020-06-29 15:53:59.229562
595	1	CDNA                	CareDx Inc	26.75	-	-	-		2020-06-29 15:54:14.610702
596	1	CTRE                	CareTrust REIT Inc	24.83	-	-	-		2020-06-29 15:54:29.621385
597	1	CARG                	CarGurus Inc Class A	19.98	-	-	-		2020-06-29 15:54:45.514892
598	1	TAST                	Carrols Restaurant Group Inc	8.91	-	-	-		2020-06-29 15:55:00.399255
599	1	CARE                	Carter Bank &amp Trust	13.77	-	-	-		2020-06-29 15:55:16.585059
600	1	CARV                	Carver Bancorp Inc	7.44	-	-	-		2020-06-29 15:55:32.294082
601	1	CASA                	Casa Systems Inc	6.00	-	-	-		2020-06-29 15:55:48.158262
602	1	CWST                	Casella Waste Systems Inc Class A	43.50	-	-	-		2020-06-29 15:56:03.311972
603	1	CASY                	Casey"s General Stores Inc	142.08	-	-	-		2020-06-29 15:56:19.24695
604	1	CASI                	CASI Pharmaceuticals Inc	2.90	-	-	-		2020-06-29 15:56:34.369442
605	1	CASS                	Cass Information Systems Inc	40.86	-	-	-		2020-06-29 15:56:50.069678
606	1	SAVA                	Cassava Sciences Inc	4.05	-	-	-		2020-06-29 15:57:05.606866
607	1	CSTL                	Castle Biosciences Inc	29.08	-	-	-		2020-06-29 15:57:20.373242
608	1	CTRM                	Castor Maritime Inc Ordinary Shares	0.70	-	-	-		2020-06-29 15:57:35.360607
609	1	CATB                	Catabasis Pharmaceuticals Inc	8.39	-	-	-		2020-06-29 15:57:50.620332
610	1	CBIO                	Catalyst Biosciences Inc	8.77	-	-	-		2020-06-29 15:58:06.770171
611	1	CPRX                	Catalyst Pharmaceuticals Inc	5.32	-	-	-		2020-06-29 15:58:22.11811
612	1	CATS                	Catasys Inc	22.58	-	-	-		2020-06-29 15:58:37.812084
613	1	CATY                	Cathay General Bancorp	30.03	-	-	-		2020-06-29 15:58:54.25226
614	1	CVCO                	Cavco Industries Inc	194.24	-	-	-		2020-06-29 15:59:09.221554
615	1	CBFV                	CB Financial Services Inc	27.70	-	-	-		2020-06-29 15:59:24.152412
616	1	CBAT                	CBAK Energy Technology Inc	1.12	-	-	-		2020-06-29 15:59:38.804041
617	1	CBMB                	CBM Bancorp Inc	13.38	-	-	-		2020-06-29 15:59:55.514511
618	1	CBOE                	Cboe Global Markets Inc	89.56	-	-	-		2020-06-29 16:00:10.418756
619	1	CBTX                	CBTX Inc	27.07	-	-	-		2020-06-29 16:00:27.364753
620	1	CDK                 	CDK Global Inc	46.33	-	-	-		2020-06-29 16:00:44.471931
621	1	CDW                 	CDW Corp	107.65	-	-	-		2020-06-29 16:01:00.80009
622	1	CECE                	CECO Environmental Corp	8.15	-	-	-		2020-06-29 16:01:15.713661
623	1	CELC                	Celcuity Inc	7.30	-	-	-		2020-06-29 16:01:30.769539
624	1	CLDX                	Celldex Therapeutics Inc	12.39	-	-	-		2020-06-29 16:01:46.39326
625	1	APOP                	Cellect Biotechnology Ltd ADR	4.79	-	-	-		2020-06-29 16:02:02.517339
626	1	APOPW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:02:13.740335
627	1	CLRB                	Cellectar Biosciences Inc	1.36	-	-	-		2020-06-29 16:02:30.478848
628	1	CLRBZ               	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:02:42.406386
629	1	CLLS                	Cellectis SA ADR	23.21	-	-	-		2020-06-29 16:02:59.239329
630	1	CBMG                	Cellular Biomedicine Group Inc	15.06	-	-	-		2020-06-29 16:03:16.652967
631	1	CLSN                	Celsion Corp	3.99	-	-	-		2020-06-29 16:03:33.735903
632	1	CELH                	Celsius Holdings Inc	9.16	-	-	-		2020-06-29 16:03:51.208608
633	1	CYAD                	Celyad Oncology ADR	12.20	-	-	-		2020-06-29 16:04:08.459101
634	1	CETX                	Cemtrex Inc	3.58	-	-	-		2020-06-29 16:04:25.028082
635	1	CETXP               	Cemtrex Inc Pref Share	4.26	-	-	-		2020-06-29 16:04:42.199881
636	1	CETXW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:04:53.594587
637	1	CDEV                	Centennial Resource Development Inc A	1.59	-	-	-		2020-06-29 16:05:11.061829
638	1	CNTG                	Centogene NV Ordinary Shares	20.36	-	-	-		2020-06-29 16:05:30.642567
639	1	CETV                	Central European Media Enterprises Ltd Class A	4.49	-	-	-		2020-06-29 16:05:47.014135
640	1	CFBK                	Central Federal Corp	12.42	-	-	-		2020-06-29 16:06:03.615803
641	1	CENT                	Central Garden &amp Pet Co	35.78	-	-	-		2020-06-29 16:06:21.931426
642	1	CENTA               	Central Garden &amp Pet Co Class A	33.64	-	-	-		2020-06-29 16:45:50.294635
643	1	CVCY                	Central Valley Community Bancorp	19.49	-	-	-		2020-06-29 16:46:08.30082
644	1	CNTX                	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:46:19.885314
645	1	CENX                	Century Aluminum Co	9.78	-	-	-		2020-06-29 16:46:40.640043
646	1	CNBKA               	Century Bancorp Inc Class A	84.65	-	-	-		2020-06-29 16:46:55.594396
647	1	CNTY                	-	6.20	-	-	-		2020-06-29 16:47:16.208203
648	1	CRNT                	Ceragon Networks Ltd	3.25	-	-	-		2020-06-29 16:47:31.224366
649	1	CERC                	Cerecor Inc	2.51	-	-	-		2020-06-29 16:47:47.064885
650	1	CRNC                	Cerence Inc Ordinary Shares	45.39	-	-	-		2020-06-29 16:48:01.751831
651	1	CERN                	Cerner Corp	78.00	-	-	-		2020-06-29 16:48:19.064161
652	1	CERS                	Cerus Corp	6.70	-	-	-		2020-06-29 16:48:37.051524
653	1	CEVA                	CEVA Inc	34.69	-	-	-		2020-06-29 16:48:52.691608
654	1	CFFA                	CF Finance Acquisition Corp Class A	9.89	-	-	-		2020-06-29 16:49:07.723727
655	1	CFFAU               	-	—	-	-	-		2020-06-29 16:49:22.448545
656	1	CFFAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:49:33.543559
657	1	CSBR                	Champions Oncology Inc	9.67	-	-	-		2020-06-29 16:49:48.431159
658	1	CHNG                	Change Healthcare Inc	12.00	-	-	-		2020-06-29 16:50:04.923319
659	1	CHNGU               	-	—	-	-	-		2020-06-29 16:50:20.106698
660	1	CTHR                	Charles &amp Colvard Ltd	1.22	-	-	-		2020-06-29 16:50:37.944531
661	1	GTLS                	Chart Industries Inc	65.86	-	-	-		2020-06-29 16:50:55.453999
662	1	CHTR                	Charter Communications Inc A	420.00	-	-	-		2020-06-29 16:51:18.939314
663	1	CHKP                	Check Point Software Technologies Ltd	127.00	-	-	-		2020-06-29 16:51:39.865936
664	1	CHEK                	Check-Cap Ltd	0.77	-	-	-		2020-06-29 16:51:57.452227
665	1	CHEKZ               	-	0	-	-	-	No result in autocomplete search	2020-06-29 16:52:09.453877
666	1	CKPT                	Checkpoint Therapeutics Inc	2.11	-	-	-		2020-06-29 16:52:26.938132
667	1	CEMI                	-	0	-	-	-	Fair value not available	2020-06-29 16:53:35.599459
668	1	CCXI                	ChemoCentryx Inc	37.23	-	-	-		2020-06-29 16:53:54.063217
669	1	CHMG                	Chemung Financial Corp	33.55	-	-	-		2020-06-29 16:54:13.099091
670	1	CHFS                	CHF Solutions Inc	0.87	-	-	-		2020-06-29 16:54:36.583143
671	1	CHMA                	Chiasma Inc	6.36	-	-	-		2020-06-29 16:54:53.712173
672	1	CSSE                	-	9.86	-	-	-		2020-06-29 16:55:12.293204
673	1	CSSEP               	Chicken Soup for the Soul Entertainment Inc Pref Share	31.46	-	-	-		2020-06-29 16:55:29.31969
674	1	PLCE                	Children"s Place Inc	62.57	-	-	-		2020-06-29 16:55:46.541451
675	1	CMRX                	Chimerix Inc	3.97	-	-	-		2020-06-29 16:56:03.4875
676	1	CAAS                	China Automotive Systems Inc	4.29	-	-	-		2020-06-29 16:56:18.663239
677	1	CBPO                	China Biologic Products Holdings Inc	107.77	-	-	-		2020-06-29 16:56:33.403046
678	1	CCCL                	China Ceramics Co Ltd	1.41	-	-	-		2020-06-29 16:56:48.247228
679	1	CCRC                	China Customer Relations Centers Inc	7.39	-	-	-		2020-06-29 16:57:03.078483
680	1	JRJC                	China Finance Online Co Ltd ADR	10.24	-	-	-		2020-06-29 16:57:18.484164
681	1	HGSH                	China HGS Real Estate Inc	1.41	-	-	-		2020-06-29 16:57:33.326831
682	1	CIH                 	China Index Holdings Ltd ADR	2.55	-	-	-		2020-06-29 16:57:48.054205
683	1	CJJD                	China Jo-Jo Drugstores Inc	2.54	-	-	-		2020-06-29 16:58:03.129845
684	1	CLEU                	China Liberal Education Holdings Ltd Ordinary Shares	4.64	-	-	-		2020-06-29 16:58:18.584378
685	1	CHNR                	China Natural Resources Inc	1.10	-	-	-		2020-06-29 16:58:33.424691
686	1	CREG                	China Recycling Energy Corp	3.52	-	-	-		2020-06-29 16:58:48.480322
687	1	SXTC                	China SXT Pharmaceuticals Inc Ordinary Shares	0.95	-	-	-		2020-06-29 16:59:03.184222
688	1	CXDC                	China XD Plastics Co Ltd	2.68	-	-	-		2020-06-29 16:59:19.084463
689	1	PLIN                	China Xiangtai Food Co Ltd Ordinary Shares	2.21	-	-	-		2020-06-29 16:59:33.996262
690	1	CNET                	ChinaNet Online Holdings Inc	1.73	-	-	-		2020-06-29 16:59:48.809532
691	1	IMOS                	ChipMOS TECHNOLOGIES Inc ADR	24.17	-	-	-		2020-06-29 17:00:03.692421
692	1	COFS                	ChoiceOne Financial Services Inc	35.34	-	-	-		2020-06-29 17:01:50.245882
693	1	CHPM                	CHP Merger Corp Ordinary Shares - Class A	7.82	-	-	-		2020-06-29 17:02:08.535904
694	1	CHPMU               	-	—	-	-	-		2020-06-29 17:02:23.381482
695	1	CHPMW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:02:34.735812
696	1	CDXC                	ChromaDex Corp	4.96	-	-	-		2020-06-29 17:02:49.578974
697	1	CHSCL               	CHS Inc Pref Share	—	-	-	-		2020-06-29 17:03:05.831632
698	1	CHSCM               	CHS Inc Pref Share	—	-	-	-		2020-06-29 17:03:22.833124
699	1	CHSCN               	CHS Inc Pref Share	—	-	-	-		2020-06-29 17:03:37.94049
700	1	CHSCO               	CHS Inc Pref Share	—	-	-	-		2020-06-29 17:03:53.181834
701	1	CHSCP               	CHS Inc Pref Share	—	-	-	-		2020-06-29 17:04:08.799188
702	1	CHDN                	Churchill Downs Inc	121.98	-	-	-		2020-06-29 17:04:23.678372
703	1	CHUY                	Chuy"s Holdings Inc	19.15	-	-	-		2020-06-29 17:04:38.543194
704	1	CDTX                	Cidara Therapeutics Inc	5.32	-	-	-		2020-06-29 17:04:53.098261
1016	1	ERI                 	Eldorado Resorts Inc	54.53	-	-	-		2020-06-30 11:06:24.790711
705	1	CIIC                	CIIG Merger Corp Ordinary Shares Class A	9.13	-	-	-		2020-06-29 17:05:09.587307
706	1	CIICU               	-	—	-	-	-		2020-06-29 17:05:24.15157
707	1	CIICW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:05:35.285226
708	1	CMCT                	CIM Commercial Trust Corp	14.49	-	-	-		2020-06-29 17:05:50.570972
709	1	CMCTP               	CIM Commercial Trust Corp Pref Share	34.45	-	-	-		2020-06-29 17:06:06.263554
710	1	CMPR                	Cimpress PLC	102.08	-	-	-		2020-06-29 17:06:21.858198
711	1	CNNB                	Cincinnati Bancorp Inc	14.77	-	-	-		2020-06-29 17:06:38.573195
712	1	CINF                	Cincinnati Financial Corp	81.90	-	-	-		2020-06-29 17:06:54.173144
714	1	CIDM                	Cinedigm Corp Class A	2.65	-	-	-		2020-06-29 17:09:26.818966
715	1	CTAS                	Cintas Corp	149.00	-	-	-		2020-06-29 17:09:44.996744
716	1	CRUS                	Cirrus Logic Inc	57.14	-	-	-		2020-06-29 17:10:01.95005
717	1	CSCO                	Cisco Systems Inc	48.00	-	-	-		2020-06-29 17:10:17.38663
718	1	CTRN                	Citi Trends Inc	22.80	-	-	-		2020-06-29 17:10:32.865495
719	1	CTXR                	Citius Pharmaceuticals Inc	1.84	-	-	-		2020-06-29 17:10:50.201892
720	1	CTXRW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:11:01.725681
721	1	CZNC                	Citizens &amp Northern Corp	22.94	-	-	-		2020-06-29 17:11:16.365358
722	1	CZWI                	Citizens Community Bancorp Inc	10.36	-	-	-		2020-06-29 17:11:31.985919
723	1	CIZN                	Citizens Holding Co	25.54	-	-	-		2020-06-29 17:11:46.595648
724	1	CTXS                	Citrix Systems Inc	126.00	-	-	-		2020-06-29 17:12:01.657849
725	1	CHCO                	City Holding Co	64.71	-	-	-		2020-06-29 17:12:16.645347
726	1	CIVB                	Civista Bancshares Inc	18.07	-	-	-		2020-06-29 17:12:31.557316
727	1	CLAR                	Clarus Corp	11.18	-	-	-		2020-06-29 17:13:59.033523
728	1	CLNE                	Clean Energy Fuels Corp	2.89	-	-	-		2020-06-29 17:14:15.849499
729	1	CLSK                	Cleanspark Inc	4.47	-	-	-		2020-06-29 17:15:13.362524
730	1	CACG                	-	0	ClearBridge All Cap Growth ETF	3	-		2020-06-29 17:16:32.785442
731	1	YLDE                	-	0	ClearBridge Dividend Strategy ESG ETF	3	-		2020-06-29 17:16:54.350131
732	1	LRGE                	-	0	-	-	-		2020-06-29 17:18:01.644509
733	1	CLFD                	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:18:12.742225
734	1	CLRO                	ClearOne Inc	2.64	-	-	-		2020-06-29 17:18:56.504034
735	1	CLPT                	ClearPoint Neuro Inc	3.93	-	-	-		2020-06-29 17:19:30.762011
736	1	CLSD                	Clearside Biomedical Inc	2.15	-	-	-		2020-06-29 17:20:01.247084
737	1	CLIR                	ClearSign Technologies Corp	2.05	-	-	-		2020-06-29 17:20:34.495582
738	1	CBLI                	Cleveland BioLabs Inc	4.09	-	-	-		2020-06-29 17:21:05.195543
739	1	CLVS                	Clovis Oncology Inc	10.48	-	-	-		2020-06-29 17:34:02.006526
740	1	CLPS                	CLPS Inc	3.11	-	-	-		2020-06-29 17:34:19.923805
741	1	CME                 	CME Group Inc Class A	166.00	-	-	-		2020-06-29 17:34:37.614355
742	1	CCNE                	CNB Financial Corp	23.82	-	-	-		2020-06-29 17:34:52.400397
743	1	CNSP                	CNS Pharmaceuticals Inc Ordinary Shares	2.20	-	-	-		2020-06-29 17:35:07.809873
744	1	CCB                 	Coastal Financial Corp	18.45	-	-	-		2020-06-29 17:35:23.082918
745	1	COKE                	Coca-Cola Consolidated Inc	243.10	-	-	-		2020-06-29 17:35:44.226731
746	1	COCP                	Cocrystal Pharma Inc	2.41	-	-	-		2020-06-29 17:35:59.262503
747	1	CODA                	Coda Octopus Group Inc	7.16	-	-	-		2020-06-29 17:36:13.906374
748	1	CCNC                	Code Chain New Continent Ltd	2.36	-	-	-		2020-06-29 17:36:28.949058
749	1	CDXS                	Codexis Inc	10.32	-	-	-		2020-06-29 17:36:43.950902
750	1	CODX                	Co-Diagnostics Inc Registered Shs	14.64	-	-	-		2020-06-29 17:36:59.388386
751	1	CVLY                	Codorus Valley Bancorp Inc	18.90	-	-	-		2020-06-29 17:37:17.951914
752	1	JVA                 	Coffee Holding Co Inc	4.78	-	-	-		2020-06-29 17:37:32.895853
753	1	CCOI                	Cogent Communications Holdings Inc	57.00	-	-	-		2020-06-29 17:37:48.307659
754	1	CGNX                	Cognex Corp	41.64	-	-	-		2020-06-29 17:38:03.261628
755	1	CTSH                	Cognizant Technology Solutions Corp A	0	-	-	-	Fair value not available	2020-06-29 17:38:23.028462
756	1	CWBR                	CohBar Inc	1.86	-	-	-		2020-06-29 17:38:38.022083
757	1	COHR                	Coherent Inc	149.53	-	-	-		2020-06-29 17:38:53.149771
758	1	CHRS                	Coherus BioSciences Inc	18.57	-	-	-		2020-06-29 17:39:08.743808
759	1	COHU                	Cohu Inc	21.44	-	-	-		2020-06-29 17:39:24.154509
760	1	CGROU               	-	—	-	-	-		2020-06-29 17:39:39.366867
761	1	CLCT                	Collectors Universe Inc	29.53	-	-	-		2020-06-29 17:39:54.210028
762	1	COLL                	Collegium Pharmaceutical Inc	18.53	-	-	-		2020-06-29 17:40:09.890212
763	1	CIGI                	Colliers International Group Inc	65.57	-	-	-		2020-06-29 17:40:25.360935
764	1	CLGN                	CollPlant Biotechnologies Ltd ADR	9.61	-	-	-		2020-06-29 17:40:41.045476
765	1	CBAN                	Colony Bankcorp Inc	14.52	-	-	-		2020-06-29 17:40:56.845092
766	1	HHT                 	Color Star Technology Co Ltd	1.21	-	-	-		2020-06-29 17:41:15.020637
767	1	COLB                	Columbia Banking System Inc	31.65	-	-	-		2020-06-29 17:41:30.131681
768	1	CLBK                	Columbia Financial Inc	12.80	-	-	-		2020-06-29 17:41:44.786157
769	1	COLM                	Columbia Sportswear Co	79.94	-	-	-		2020-06-29 17:42:00.248815
770	1	CMCO                	Columbus McKinnon Corp	37.65	-	-	-		2020-06-29 17:42:15.733157
771	1	CMCSA               	Comcast Corp Class A	47.00	-	-	-		2020-06-29 17:42:31.750457
772	1	CBSH                	Commerce Bancshares Inc	60.10	-	-	-		2020-06-29 17:42:48.104388
773	1	CBSHP               	Commerce Bancshares Inc Pref Share	27.12	-	-	-		2020-06-29 17:43:04.68375
774	1	CVGI                	Commercial Vehicle Group Inc	4.51	-	-	-		2020-06-29 17:43:21.182812
775	1	COMM                	CommScope Holding Co Inc	12.89	-	-	-		2020-06-29 17:43:37.029696
776	1	JCS                 	Communications Systems Inc	7.00	-	-	-		2020-06-29 17:43:53.074181
777	1	ESXB                	Community Bankers Trust Corp	7.11	-	-	-		2020-06-29 17:44:08.667155
778	1	CFBI                	Community First Bancshares Inc	10.04	-	-	-		2020-06-29 17:44:24.560777
779	1	CTBI                	Community Trust Bancorp Inc	35.39	-	-	-		2020-06-29 17:44:45.245595
780	1	CWBC                	Community West Bancshares	11.30	-	-	-		2020-06-29 17:45:03.240409
781	1	CVLT                	CommVault Systems Inc	38.97	-	-	-		2020-06-29 17:45:24.165068
782	1	CGEN                	Compugen Ltd	12.44	-	-	-		2020-06-29 17:45:44.240693
783	1	CPSI                	Computer Programs and Systems Inc	24.64	-	-	-		2020-06-29 17:46:13.461735
784	1	CTG                 	Computer Task Group Inc	5.89	-	-	-		2020-06-29 17:46:32.51773
785	1	SCOR                	comScore Inc	5.23	-	-	-		2020-06-29 17:46:51.466375
786	1	CHCI                	Comstock Holding Co Inc	3.33	-	-	-		2020-06-29 17:47:10.226392
787	1	CMTL                	Comtech Telecommunications Corp	22.04	-	-	-		2020-06-29 17:47:43.962174
788	1	CNCE                	Concert Pharmaceuticals Inc	11.76	-	-	-		2020-06-29 17:48:18.522689
789	1	BBCP                	Concrete Pumping Holdings Inc	7.69	-	-	-		2020-06-29 17:50:05.165262
790	1	CDORX               	-	0	Columbia Dividend Opportunity Fund Advisor Class	4	-		2020-06-29 17:50:58.805211
791	1	CNDT                	Conduent Inc	4.65	-	-	-		2020-06-29 17:51:14.382218
792	1	CFMS                	Conformis Inc	1.30	-	-	-		2020-06-29 17:51:31.526661
793	1	CNFR                	Conifer Holdings Inc	3.35	-	-	-		2020-06-29 17:51:46.333455
794	1	CNFRL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:51:57.446718
795	1	CNMD                	Conmed Corp	84.75	-	-	-		2020-06-29 17:52:12.538783
796	1	CNOB                	ConnectOne Bancorp Inc	22.20	-	-	-		2020-06-29 17:52:27.941114
797	1	CONN                	Conn"s Inc	18.18	-	-	-		2020-06-29 17:52:42.862067
798	1	CNSL                	Consolidated Communications Holdings Inc	8.01	-	-	-		2020-06-29 17:52:58.176544
799	1	CWCO                	Consolidated Water Co Ltd	15.48	-	-	-		2020-06-29 17:53:12.85288
800	1	CNST                	Constellation Pharmaceuticals Inc	31.12	-	-	-		2020-06-29 17:53:28.209566
801	1	ROAD                	Construction Partners Inc Class A	17.66	-	-	-		2020-06-29 17:53:43.944155
802	1	CPSS                	Consumer Portfolio Services Inc	5.11	-	-	-		2020-06-29 17:54:00.130759
803	1	CFRX                	ContraFect Corp	7.11	-	-	-		2020-06-29 17:54:15.406136
804	1	CPTI                	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:54:26.482504
805	1	CPAA                	Conyers Park II Acquisition Corp Ordinary Shares Class A	8.65	-	-	-		2020-06-29 17:54:41.72715
806	1	CPAAU               	-	—	-	-	-		2020-06-29 17:54:56.778005
807	1	CPAAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:55:07.849864
808	1	CPRT                	Copart Inc	70.01	-	-	-		2020-06-29 17:55:22.990429
809	1	CRBP                	Corbus Pharmaceuticals Holdings Inc	7.61	-	-	-		2020-06-29 17:55:38.049349
810	1	CORT                	Corcept Therapeutics Inc	17.58	-	-	-		2020-06-29 17:55:54.501956
811	1	CORE                	Core-Mark Holding Co Inc	—	-	-	-		2020-06-29 17:56:10.545011
812	1	CSOD                	Cornerstone OnDemand Inc	48.00	-	-	-		2020-06-29 17:56:26.39871
813	1	CRTX                	Cortexyme Inc	44.61	-	-	-		2020-06-29 17:56:44.16118
814	1	CLDB                	Cortland Bancorp	17.61	-	-	-		2020-06-29 17:56:59.018688
815	1	CRVL                	CorVel Corp	67.97	-	-	-		2020-06-29 17:57:14.200461
816	1	CRVS                	Corvus Pharmaceuticals Inc	4.42	-	-	-		2020-06-29 17:57:34.480981
817	1	CSGP                	CoStar Group Inc	612.00	-	-	-		2020-06-29 17:57:50.564093
818	1	COST                	Costco Wholesale Corp	286.00	-	-	-		2020-06-29 17:58:06.008762
819	1	CPAH                	CounterPath Corp	6.11	-	-	-		2020-06-29 17:58:21.670695
820	1	ICBK                	County Bancorp Inc	28.67	-	-	-		2020-06-29 17:58:36.895705
821	1	COUP                	Coupa Software Inc	129.00	-	-	-		2020-06-29 17:58:52.705356
822	1	CVTI                	Covenant Transportation Group Inc Class A	19.16	-	-	-		2020-06-29 17:59:08.110205
823	1	CVET                	Covetrus Inc	25.47	-	-	-		2020-06-29 17:59:23.784758
824	1	COWN                	Cowen Inc	21.73	-	-	-		2020-06-29 17:59:39.048328
825	1	COWNL               	-	0	-	-	-	No result in autocomplete search	2020-06-29 17:59:50.855348
826	1	COWNZ               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:00:02.648415
827	1	CPSH                	CPS Technologies Corp	1.98	-	-	-		2020-06-29 18:00:18.114485
828	1	CRAI                	CRA International Inc	49.64	-	-	-		2020-06-29 18:00:32.990417
829	1	CBRL                	Cracker Barrel Old Country Store Inc	122.71	-	-	-		2020-06-29 18:00:48.60412
830	1	BREW                	Craft Brew Alliance Inc	17.08	-	-	-		2020-06-29 18:01:03.557024
831	1	CREX                	Creative Realities Inc	4.11	-	-	-		2020-06-29 18:01:19.241644
832	1	CREXW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:01:30.889432
833	1	CACC                	Credit Acceptance Corp	464.17	-	-	-		2020-06-29 18:01:45.636369
834	1	DGLD                	-	0	VelocityShares 3x Inverse Gold ETN Linked to the S&ampP GSCI® Gold Index ER	-	-		2020-06-29 18:02:04.763568
835	1	DSLV                	-	0	VelocityShares 3x Inverse Silver ETN Linked to the S&ampP GSCI® Silver Index ER	-	-		2020-06-29 18:02:23.154986
836	1	GLDI                	-	0	Credit Suisse X-Links Gold Shares Covered Call ETN	-	-		2020-06-29 18:02:41.556394
837	1	SLVO                	-	0	Credit Suisse X-Links Silver Shares Covered Call ETN	-	-		2020-06-29 18:02:59.743136
838	1	TVIX                	-	0	VelocityShares Daily 2x VIX Short-Term ETN	-	-		2020-06-29 18:03:18.090385
839	1	UGLD                	-	0	VelocityShares 3x Long Gold ETN Linked to the S&ampP GSCI® Gold Index ER	-	-		2020-06-29 18:04:15.618739
840	1	USLV                	-	0	VelocityShares 3x Long Silver ETN Linked to the S&ampP GSCI® Silver Index ER	-	-		2020-06-29 18:04:36.949489
841	1	USOI                	-	0	Credit Suisse X-Links Crude Oil Shares Covered Call ETNs	-	-		2020-06-29 18:04:57.18572
842	1	VIIX                	-	0	VelocityShares VIX Short-Term ETN	-	-		2020-06-29 18:05:16.135881
843	1	ZIV                 	-	0	VelocityShares Daily Inverse VIX Medium-Term ETN	-	-		2020-06-29 18:05:34.244748
844	1	CREE                	Cree Inc	56.65	-	-	-		2020-06-29 18:05:58.535261
845	1	CRSA                	Crescent Acquisition Corp Class A	9.86	-	-	-		2020-06-29 18:06:16.187574
846	1	CRSAU               	-	—	-	-	-		2020-06-29 18:06:34.121115
847	1	CRSAW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:06:45.187819
848	1	CCAP                	Crescent Capital BDC Inc Ordinary Shares	14.19	-	-	-		2020-06-29 18:07:02.594371
849	1	CRESY               	Cresud SACIF y A ADR	5.91	-	-	-		2020-06-29 18:07:20.951466
850	1	CRNX                	Crinetics Pharmaceuticals Inc	17.65	-	-	-		2020-06-29 18:07:37.144873
851	1	CRSP                	CRISPR Therapeutics AG	57.04	-	-	-		2020-06-29 18:07:53.160584
852	1	CRTO                	-	18.20	-	-	-		2020-06-29 18:08:08.957849
853	1	CROX                	Crocs Inc	38.72	-	-	-		2020-06-29 18:08:24.509084
854	1	CRON                	Cronos Group Inc	8.50	-	-	-		2020-06-29 18:08:47.310087
855	1	CCRN                	Cross Country Healthcare Inc	8.32	-	-	-		2020-06-29 18:09:01.984378
856	1	CFB                 	CrossFirst Bankshares Inc Ordinary Shares	13.69	-	-	-		2020-06-29 18:09:20.063192
857	1	CRWD                	CrowdStrike Holdings Inc Class A	82.00	-	-	-		2020-06-29 18:09:34.949341
858	1	CRWS                	Crown Crafts Inc	6.42	-	-	-		2020-06-29 18:09:50.175502
859	1	CYRX                	CryoPort Inc	25.75	-	-	-		2020-06-29 18:10:06.402012
860	1	CYRXW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:10:17.980009
861	1	CSGS                	CSG Systems International Inc	41.62	-	-	-		2020-06-29 18:10:33.091658
862	1	CCLP                	-	1.65	-	-	-		2020-06-29 18:10:50.231883
863	1	CSPI                	CSP Inc	12.26	-	-	-		2020-06-29 18:11:05.942778
864	1	CSWI                	CSW Industrials Inc	62.23	-	-	-		2020-06-29 18:11:24.823199
865	1	CSX                 	CSX Corp	70.00	-	-	-		2020-06-29 18:11:43.83327
866	1	CTIC                	CTI BioPharma Corp	1.46	-	-	-		2020-06-29 18:12:24.863188
867	1	CUE                 	Cue Biopharma Inc Ordinary Shares	22.08	-	-	-		2020-06-29 18:12:42.615507
868	1	CPIX                	Cumberland Pharmaceuticals Inc	4.43	-	-	-		2020-06-29 18:13:00.35604
869	1	CMLS                	Cumulus Media Inc Class A	11.13	-	-	-		2020-06-29 18:13:18.94898
870	1	CRIS                	Curis Inc	1.50	-	-	-		2020-06-29 18:13:34.627609
871	1	CUTR                	Cutera Inc	17.07	-	-	-		2020-06-29 18:13:53.282395
872	1	CVBF                	CVB Financial Corp	18.53	-	-	-		2020-06-29 18:14:12.256032
873	1	CVV                 	CVD Equipment Corp	4.91	-	-	-		2020-06-29 18:14:31.944708
874	1	CYAN                	Cyanotech Corp	3.25	-	-	-		2020-06-29 18:14:49.866636
875	1	CYBR                	CyberArk Software Ltd	90.37	-	-	-		2020-06-29 18:15:07.953024
876	1	CYBE                	CyberOptics Corp	33.53	-	-	-		2020-06-29 18:15:26.046807
877	1	CYCC                	Cyclacel Pharmaceuticals Inc	6.47	-	-	-		2020-06-29 18:15:43.498311
878	1	CYCCP               	Cyclacel Pharmaceuticals Inc Pref Share	8.55	-	-	-		2020-06-29 18:16:00.831387
879	1	CYCN                	Cyclerion Therapeutics Inc Ordinary Shares	10.32	-	-	-		2020-06-29 18:16:18.700602
880	1	CBAY                	CymaBay Therapeutics Inc	5.94	-	-	-		2020-06-29 18:16:36.12606
881	1	CYRN                	CYREN Ltd	1.63	-	-	-		2020-06-29 18:16:53.264502
882	1	CONE                	CyrusOne Inc	60.00	-	-	-		2020-06-29 18:17:13.957097
883	1	CYTK                	Cytokinetics Inc	22.12	-	-	-		2020-06-29 18:17:29.61679
884	1	CTMX                	CytomX Therapeutics Inc	10.81	-	-	-		2020-06-29 18:17:45.924921
885	1	CTSO                	CytoSorbents Corp	8.76	-	-	-		2020-06-29 18:18:01.511542
886	1	DADA                	Dada Nexus Ltd ADR	23.18	-	-	-		2020-06-29 18:18:16.322304
887	1	DJCO                	Daily Journal Corp	269.32	-	-	-		2020-06-29 18:18:33.668368
888	1	DAKT                	Daktronics Inc	5.35	-	-	-		2020-06-29 18:18:51.9523
889	1	DARE                	Dare Bioscience Inc	1.05	-	-	-		2020-06-29 18:22:53.350197
890	1	DRIO                	DarioHealth Corp	10.18	-	-	-		2020-06-29 18:23:12.589894
891	1	DRIOW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:23:23.73774
892	1	DZSI                	DASAN Zhone Solutions Inc	12.57	-	-	-		2020-06-29 18:23:41.923249
893	1	DSKE                	Daseke Inc	6.34	-	-	-		2020-06-29 18:23:59.218652
894	1	DSKEW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:24:10.468136
895	1	DAIO                	Data I/O Corp	4.21	-	-	-		2020-06-29 18:24:26.288278
896	1	DDOG                	Datadog Inc Class A	45.74	-	-	-		2020-06-29 18:24:41.803991
897	1	DTSS                	Datasea Inc	2.01	-	-	-		2020-06-29 18:24:57.27175
898	1	PLAY                	Dave &amp Buster"s Entertainment Inc	19.27	-	-	-		2020-06-29 18:25:13.478048
899	1	DTEA                	DAVIDsTEA Inc	1.71	-	-	-		2020-06-29 18:25:29.544796
900	1	DFNL                	-	0	Davis Select Financial ETF	3	-		2020-06-29 18:26:03.897909
901	1	DINT                	-	0	Davis Select International ETF	-	-		2020-06-29 18:26:23.312312
902	1	DUSA                	-	0	Davis Select U.S. Equity ETF	1	-		2020-06-29 18:26:41.68885
903	1	DWLD                	-	0	Davis Select Worldwide ETF	2	-		2020-06-29 18:27:00.138274
904	1	DWSN                	Dawson Geophysical Co	2.94	-	-	-		2020-06-29 18:27:16.078629
905	1	DBVT                	DBV Technologies SA ADR	6.46	-	-	-		2020-06-29 18:27:32.259092
906	1	DCPH                	Deciphera Pharmaceuticals Inc	56.46	-	-	-		2020-06-29 18:27:47.344057
907	1	TACO                	Del Taco Restaurants Inc	10.22	-	-	-		2020-06-29 18:28:03.040752
908	1	TACOW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:28:15.008773
909	1	DCTH                	Delcath Systems Inc	12.79	-	-	-		2020-06-29 18:28:30.159725
910	1	DBCP                	Delmar Bancorp	7.57	-	-	-		2020-06-29 18:28:46.063442
911	1	DMPI                	DelMar Pharmaceuticals Inc	0.71	-	-	-		2020-06-29 18:29:01.408494
912	1	DNLI                	Denali Therapeutics Inc	23.52	-	-	-		2020-06-29 18:29:17.660932
913	1	DENN                	Denny"s Corp	13.47	-	-	-		2020-06-29 18:29:36.930042
914	1	XRAY                	Dentsply Sirona Inc	40.00	-	-	-		2020-06-29 18:29:56.815597
915	1	DRMT                	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:30:08.008384
916	1	DMTK                	DermTech Inc	15.03	-	-	-		2020-06-29 18:30:29.327844
917	1	DXLG                	Destination XL Group Inc	1.47	-	-	-		2020-06-29 18:30:47.224116
918	1	DSWL                	Deswell Industries Inc	3.26	-	-	-		2020-06-29 18:31:05.190818
919	1	DXCM                	DexCom Inc	185.00	-	-	-		2020-06-29 18:31:20.234934
920	1	DFPH                	DFP Healthcare Acquisitions Corp Ordinary Shares	9.35	-	-	-		2020-06-29 18:31:35.669598
921	1	DFPHU               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:31:46.739911
922	1	DFPHW               	-	—	-	-	-		2020-06-29 18:32:22.89073
923	1	DMAC                	DiaMedica Therapeutics Inc	6.80	-	-	-		2020-06-29 18:32:44.773105
924	1	DHIL                	Diamond Hill Investment Group Inc Class A	117.33	-	-	-		2020-06-29 18:33:04.345837
925	1	FANG                	Diamondback Energy Inc	87.00	-	-	-		2020-06-29 18:33:19.566642
926	1	DPHC                	-	9.42	-	-	-		2020-06-29 18:33:35.233257
927	1	DPHCU               	-	—	-	-	-		2020-06-29 18:33:50.688237
928	1	DPHCW               	-	0	-	-	-	No result in autocomplete search	2020-06-29 18:34:01.816015
929	1	DRNA                	Dicerna Pharmaceuticals Inc	22.43	-	-	-		2020-06-29 18:34:19.62291
930	1	DFFN                	Diffusion Pharmaceuticals Inc	1.17	-	-	-		2020-06-29 18:34:37.237226
931	1	DGII                	Digi International Inc	15.38	-	-	-		2020-06-29 18:34:56.932877
932	1	DMRC                	Digimarc Corp	20.14	-	-	-		2020-06-29 18:35:16.090942
933	1	DRAD                	Digirad Corp	5.15	-	-	-		2020-06-29 18:35:46.032069
934	1	DRADP               	Digirad Corp Pref Share	15.72	-	-	-		2020-06-29 18:36:23.050291
937	1	DGLY                	Digital Ally Inc	4.55	-	-	-		2020-06-30 10:35:06.650673
939	1	DCOM                	Dime Community Bancshares Inc	15.72	-	-	-		2020-06-30 10:35:40.819647
940	1	DCOMP               	Dime Community Bancshares Inc Pref Share	23.87	-	-	-		2020-06-30 10:35:58.531004
941	1	DIOD                	Diodes Inc	52.29	-	-	-		2020-06-30 10:36:16.435726
942	1	DRTT                	Dirtt Environmental Solutions Ltd	1.99	-	-	-		2020-06-30 10:36:33.906304
943	1	DISCA               	Discovery Inc Class A	28.00	-	-	-		2020-06-30 10:36:51.640956
944	1	DISCB               	Discovery Inc Class B	54.19	-	-	-		2020-06-30 10:37:20.811298
945	1	DISCK               	Discovery Inc C	28.00	-	-	-		2020-06-30 10:37:39.590491
946	1	DISH                	DISH Network Corp Class A	35.00	-	-	-		2020-06-30 10:38:00.258556
947	1	DHC                 	Diversified Healthcare Trust	8.23	-	-	-		2020-06-30 10:38:32.21986
952	1	DHCNI               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:42:04.810514
953	1	DHCNL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:42:16.77735
954	1	DLHC                	DLH Holdings Corp	8.68	-	-	-		2020-06-30 10:42:49.633146
955	1	BOOM                	DMC Global Inc	34.24	-	-	-		2020-06-30 10:43:31.247379
956	1	DOCU                	DocuSign Inc	102.00	-	-	-		2020-06-30 10:44:01.316655
957	1	DOGZ                	Dogness (International) Corp	2.43	-	-	-		2020-06-30 10:44:20.031598
958	1	DLTR                	Dollar Tree Inc	85.00	-	-	-		2020-06-30 10:44:39.874038
959	1	DLPN                	Dolphin Entertainment Inc	1.34	-	-	-		2020-06-30 10:44:57.692453
960	1	DLPNW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:45:08.803004
961	1	DOMO                	Domo Inc	47.23	-	-	-		2020-06-30 10:45:26.316688
962	1	DGICA               	Donegal Group Inc Class A	15.16	-	-	-		2020-06-30 10:45:48.411031
963	1	DGICB               	Donegal Group Inc Class B	12.37	-	-	-		2020-06-30 10:46:06.492703
964	1	DMLP                	Dorchester Minerals LP	12.58	-	-	-		2020-06-30 10:46:24.394086
965	1	DORM                	Dorman Products Inc	69.77	-	-	-		2020-06-30 10:46:43.246588
966	1	DOYU                	DouYu International Holdings Ltd ADR	11.63	-	-	-		2020-06-30 10:47:01.03647
967	1	DKNG                	DraftKings Inc Class A	36.24	-	-	-		2020-06-30 10:47:19.591038
968	1	DKNGW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:47:30.743917
969	1	LYL                 	Dragon Victory International Ltd Ordinary Shares	1.66	-	-	-		2020-06-30 10:47:48.472724
970	1	DBX                 	Dropbox Inc Class A	—	-	-	-		2020-06-30 10:48:06.492151
971	1	DSPG                	DSP Group Inc	16.94	-	-	-		2020-06-30 10:48:24.054494
972	1	DLTH                	Duluth Holdings Inc B	9.64	-	-	-		2020-06-30 10:48:43.260765
973	1	DNKN                	Dunkin" Brands Group Inc	72.00	-	-	-		2020-06-30 10:49:01.388223
974	1	DUOT                	Duos Technologies Group Inc	6.97	-	-	-		2020-06-30 10:49:19.581737
975	1	DRRX                	Durect Corp	2.41	-	-	-		2020-06-30 10:49:38.324798
976	1	DXPE                	DXP Enterprises Inc	28.20	-	-	-		2020-06-30 10:49:57.951838
977	1	DYAI                	Dyadic International Inc	8.74	-	-	-		2020-06-30 10:50:13.068019
978	1	DYNT                	Dynatronics Corp	1.59	-	-	-		2020-06-30 10:50:29.372261
979	1	DVAX                	Dynavax Technologies Corp	11.14	-	-	-		2020-06-30 10:50:45.276876
980	1	ETFC                	E*TRADE Financial Corp	49.50	-	-	-		2020-06-30 10:51:00.884881
981	1	SSP                 	The E W Scripps Co Class A	14.29	-	-	-		2020-06-30 10:51:16.452034
982	1	EBMT                	Eagle Bancorp Montana Inc	21.35	-	-	-		2020-06-30 10:51:31.635896
983	1	EGBN                	Eagle Bancorp Inc	37.30	-	-	-		2020-06-30 10:51:47.088095
984	1	EGLE                	Eagle Bulk Shipping Inc	3.78	-	-	-		2020-06-30 10:52:02.552984
985	1	EGRX                	Eagle Pharmaceuticals Inc	49.75	-	-	-		2020-06-30 10:52:20.367584
986	1	IGLE                	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:52:31.747351
987	1	ESSC                	East Stone Acquisition Corp Ordinary Shares	10.17	-	-	-		2020-06-30 10:52:47.300948
988	1	ESSCR               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:52:58.369697
989	1	ESSCU               	-	—	-	-	-		2020-06-30 10:53:15.864591
990	1	ESSCW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 10:53:27.799446
991	1	EWBC                	East West Bancorp Inc	42.72	-	-	-		2020-06-30 10:53:46.656949
992	1	EML                 	The Eastern Co	24.01	-	-	-		2020-06-30 10:54:05.131629
993	1	EAST                	Eastside Distilling Inc	2.65	-	-	-		2020-06-30 10:54:23.839413
994	1	EVGBC               	-	0	Eaton Vance Global Income Builder NextShares™	4	-		2020-06-30 10:57:15.904034
995	1	EVSTC               	-	0	Eaton Vance Stock NextShares™	5	-		2020-06-30 10:57:36.295018
996	1	EVLMC               	-	0	Eaton Vance TABS 5-to-15 Year Laddered Municipal Bond NextShares™	4	-		2020-06-30 10:57:58.219639
997	1	EBAY                	eBay Inc	46.00	-	-	-		2020-06-30 10:58:15.637701
998	1	EBAYL               	eBay Inc Pref Share	24.39	-	-	-		2020-06-30 10:58:32.440492
999	1	EBIX                	Ebix Inc	31.39	-	-	-		2020-06-30 10:58:48.668062
1000	1	ECHO                	Echo Global Logistics Inc	20.00	-	-	-		2020-06-30 10:59:08.431649
1001	1	SATS                	EchoStar Corp	34.23	-	-	-		2020-06-30 10:59:27.233324
1002	1	MOHO                	ECMOHO Ltd ADR	4.41	-	-	-		2020-06-30 11:01:51.340145
1003	1	EDAP                	Edap TMS SA ADR	3.59	-	-	-		2020-06-30 11:02:10.468328
1004	1	EDSA                	Edesa Biotech Inc	6.25	-	-	-		2020-06-30 11:02:28.549742
1005	1	EDNT                	Edison Nation Inc	4.92	-	-	-		2020-06-30 11:02:47.114733
1006	1	EDIT                	Editas Medicine Inc	28.87	-	-	-		2020-06-30 11:03:09.581516
1007	1	EDUC                	Educational Development Corp	11.92	-	-	-		2020-06-30 11:03:32.927035
1008	1	EGAN                	eGain Corp	9.65	-	-	-		2020-06-30 11:03:49.377912
1009	1	EH                  	EHang Holdings Ltd ADR	8.75	-	-	-		2020-06-30 11:04:06.905822
1010	1	EHTH                	eHealth Inc	92.61	-	-	-		2020-06-30 11:04:24.953134
1011	1	EIDX                	Eidos Therapeutics Inc	40.93	-	-	-		2020-06-30 11:04:42.754659
1012	1	EIGR                	Eiger BioPharmaceuticals Inc	13.49	-	-	-		2020-06-30 11:05:01.756631
1013	1	EKSO                	Ekso Bionics Holdings Inc	11.12	-	-	-		2020-06-30 11:05:23.701678
1014	1	LOCO                	El Pollo Loco Holdings Inc	17.94	-	-	-		2020-06-30 11:05:48.646387
1015	1	ESLT                	Elbit Systems Ltd	127.57	-	-	-		2020-06-30 11:06:06.671399
1017	1	SOLO                	Electrameccanica Vehicles Corp Ltd	2.55	-	-	-		2020-06-30 11:06:45.790281
1018	1	SOLOW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:06:57.416256
1019	1	ECOR                	electroCore Inc	1.48	-	-	-		2020-06-30 11:07:12.657702
1020	1	EA                  	Electronic Arts Inc	118.00	-	-	-		2020-06-30 11:07:30.24838
1021	1	ELSE                	Electro-Sensors Inc	4.83	-	-	-		2020-06-30 11:07:48.430975
1022	1	ESBK                	Elmira Savings Bank Elmira NY	14.08	-	-	-		2020-06-30 11:08:06.341713
1023	1	ELOX                	Eloxx Pharmaceuticals Inc	4.41	-	-	-		2020-06-30 11:08:22.278833
1024	1	ELTK                	Eltek Ltd	5.69	-	-	-		2020-06-30 11:08:39.436666
1025	1	EMCF                	Emclaire Financial Corp	28.80	-	-	-		2020-06-30 11:08:58.002625
1026	1	EMKR                	EMCORE Corp	5.11	-	-	-		2020-06-30 11:09:17.544905
1027	1	ENTA                	Enanta Pharmaceuticals Inc	54.89	-	-	-		2020-06-30 11:09:33.462463
1028	1	ECPG                	Encore Capital Group Inc	42.48	-	-	-		2020-06-30 11:09:49.161673
1029	1	WIRE                	Encore Wire Corp	49.66	-	-	-		2020-06-30 11:10:04.048859
1030	1	ENDP                	Endo International PLC	—	-	-	-		2020-06-30 11:10:19.923559
1031	1	ELGX                	Endologix Inc	1.95	-	-	-		2020-06-30 11:10:35.196916
1032	1	NDRA                	ENDRA Life Sciences Inc Registered Shs	1.52	-	-	-		2020-06-30 11:10:50.686037
1033	1	NDRAW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:11:01.777135
1034	1	EIGI                	Endurance International Group Holdings Inc	5.91	-	-	-		2020-06-30 11:11:21.63279
1035	1	WATT                	Energous Corp	3.90	-	-	-		2020-06-30 11:11:39.529751
1036	1	EFOI                	Energy Focus Inc	11.54	-	-	-		2020-06-30 11:11:58.282437
1037	1	EHR                 	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:12:09.68383
1038	1	ERII                	Energy Recovery Inc	8.88	-	-	-		2020-06-30 11:12:27.257256
1039	1	ENG                 	ENGlobal Corp	1.41	-	-	-		2020-06-30 11:12:45.086212
1040	1	ENLV                	Enlivex Therapeutics Ltd	9.44	-	-	-		2020-06-30 11:13:02.049349
1041	1	ENOB                	Enochian BioSciences Inc	5.81	-	-	-		2020-06-30 11:13:18.1069
1042	1	ENPH                	Enphase Energy Inc	36.17	-	-	-		2020-06-30 11:13:36.150965
1043	1	ESGR                	Enstar Group Ltd	180.36	-	-	-		2020-06-30 11:14:00.101307
1044	1	ESGRO               	Enstar Group Ltd Pref Share	28.96	-	-	-		2020-06-30 11:14:20.495416
1045	1	ESGRP               	Enstar Group Ltd Pref Share	28.60	-	-	-		2020-06-30 11:14:43.96317
1046	1	ETTX                	Entasis Therapeutics Holdings Inc	4.99	-	-	-		2020-06-30 11:15:14.147558
1047	1	ENTG                	Entegris Inc	49.38	-	-	-		2020-06-30 11:15:41.490574
1048	1	ENTX                	Entera Bio Ltd	2.53	-	-	-		2020-06-30 11:15:58.044661
1049	1	ENTXW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:16:09.457344
1050	1	EBTC                	Enterprise Bancorp Inc	29.31	-	-	-		2020-06-30 11:16:27.599445
1051	1	EFSC                	Enterprise Financial Services Corp	36.06	-	-	-		2020-06-30 11:16:45.126597
1052	1	EVSI                	Envision Solar International Inc	10.40	-	-	-		2020-06-30 11:17:37.309209
1053	1	EVSIW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:17:48.994453
1054	1	EPZM                	Epizyme Inc	17.06	-	-	-		2020-06-30 11:18:07.451161
1055	1	PLUS                	ePlus Inc	83.53	-	-	-		2020-06-30 11:18:25.08849
1056	1	EPSN                	Epsilon Energy Ltd	3.70	-	-	-		2020-06-30 11:18:40.116121
1057	1	EQ                  	Equillium Inc	4.30	-	-	-		2020-06-30 11:18:55.848255
1058	1	EQIX                	Equinix Inc	475.00	-	-	-		2020-06-30 11:19:11.150286
1059	1	EQBK                	Equity Bancshares Inc A	23.53	-	-	-		2020-06-30 11:19:26.671495
1060	1	ERIC                	Telefonaktiebolaget L M Ericsson ADR Class B	9.00	-	-	-		2020-06-30 11:19:41.615923
1061	1	ERIE                	Erie Indemnity Co Class A	153.65	-	-	-		2020-06-30 11:19:57.284424
1062	1	ERYP                	Erytech Pharma SA ADR	12.36	-	-	-		2020-06-30 11:20:13.796173
1063	1	ESCA                	Escalade Inc	18.67	-	-	-		2020-06-30 11:20:28.939013
1064	1	ESPR                	Esperion Therapeutics Inc	66.04	-	-	-		2020-06-30 11:20:49.156714
1065	1	GMBL                	Esports Entertainment Group Inc	9.54	-	-	-		2020-06-30 11:21:06.637979
1066	1	GMBLW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:21:18.211003
1067	1	ESQ                 	Esquire Financial Holdings Inc	22.24	-	-	-		2020-06-30 11:21:36.171254
1068	1	ESSA                	ESSA Bancorp Inc	17.25	-	-	-		2020-06-30 11:21:53.062656
1069	1	EPIX                	ESSA Pharma Inc	7.36	-	-	-		2020-06-30 11:22:11.642261
1070	1	ESTA                	Establishment Labs Holdings Inc	26.13	-	-	-		2020-06-30 11:22:30.257228
1071	1	VBND                	-	0	Vident Core U.S. Bond Strategy ETF™	2	-		2020-06-30 11:23:04.793361
1072	1	VUSE                	-	0	Vident Core U.S. Equity Fund™	3	-		2020-06-30 11:23:26.475707
1073	1	VIDI                	-	0	Vident International Equity Fund™	3	-		2020-06-30 11:23:47.083846
1074	1	ETON                	Eton Pharmaceuticals Inc	7.71	-	-	-		2020-06-30 11:24:03.960205
1075	1	ETSY                	Etsy Inc	66.55	-	-	-		2020-06-30 11:24:22.503281
1076	1	CLWT                	Euro Tech Holdings Co Ltd	4.43	-	-	-		2020-06-30 11:24:38.175408
1077	1	EDRY                	EuroDry Ltd Ordinary Shares	6.04	-	-	-		2020-06-30 11:24:55.120701
1078	1	EEFT                	Euronet Worldwide Inc	107.00	-	-	-		2020-06-30 11:25:13.290065
1079	1	ESEA                	Euroseas Ltd	4.37	-	-	-		2020-06-30 11:25:28.408437
1080	1	EVLO                	Evelo Biosciences Inc	7.35	-	-	-		2020-06-30 11:25:44.250596
1081	1	EVBG                	Everbridge Inc	90.54	-	-	-		2020-06-30 11:26:02.058919
1082	1	EVK                 	Ever-Glory International Group Inc	2.16	-	-	-		2020-06-30 11:26:18.741004
1083	1	EVER                	EverQuote Inc	47.04	-	-	-		2020-06-30 11:26:34.210842
1084	1	MRAM                	Everspin Technologies Inc	9.16	-	-	-		2020-06-30 11:26:49.190786
1085	1	EVOP                	EVO Payments Inc	25.38	-	-	-		2020-06-30 11:27:04.230909
1086	1	EVFM                	Evofem Biosciences Inc	3.84	-	-	-		2020-06-30 11:27:21.426069
1087	1	EVGN                	Evogene Ltd	1.50	-	-	-		2020-06-30 11:27:36.471142
1088	1	EVOK                	Evoke Pharma Inc	4.18	-	-	-		2020-06-30 11:27:53.291095
1089	1	EOLS                	Evolus Inc	9.49	-	-	-		2020-06-30 11:28:08.770224
1090	1	EVOL                	Evolving Systems Inc	1.62	-	-	-		2020-06-30 11:28:24.280135
1091	1	EXAS                	Exact Sciences Corp	100.37	-	-	-		2020-06-30 11:28:39.979277
1092	1	XGN                 	Exagen Inc Ordinary Shares	17.63	-	-	-		2020-06-30 11:28:59.010696
1093	1	ROBO                	-	0	Robo Global® Robotics and Automation Index ETF	4	-		2020-06-30 11:29:18.024771
1094	1	XELA                	Exela Technologies Inc	1.05	-	-	-		2020-06-30 11:29:36.333603
1095	1	EXEL                	Exelixis Inc	23.50	-	-	-		2020-06-30 11:29:52.751501
1096	1	EXC                 	Exelon Corp	41.00	-	-	-		2020-06-30 11:30:10.636692
1097	1	EXFO                	EXFO Inc	3.92	-	-	-		2020-06-30 11:30:42.706946
1098	1	XCUR                	Exicure Inc	3.79	-	-	-		2020-06-30 11:31:00.33634
1099	1	EXLS                	ExlService Holdings Inc	64.74	-	-	-		2020-06-30 11:31:20.068332
1102	1	EXPI                	eXp World Holdings Inc	17.65	-	-	-		2020-06-30 11:37:46.995493
1103	1	EXPE                	Expedia Group Inc	138.00	-	-	-		2020-06-30 11:38:08.045364
1104	1	EXPD                	Expeditors International of Washington Inc	63.00	-	-	-		2020-06-30 11:38:26.374777
1105	1	EXPC                	Experience Investment Corp Ordinary Shares Class A	9.15	-	-	-		2020-06-30 11:38:45.489907
1106	1	EXPCU               	-	—	-	-	-		2020-06-30 11:39:03.34927
1107	1	EXPCW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:39:14.634139
1108	1	EXPO                	Exponent Inc	62.02	-	-	-		2020-06-30 11:40:07.122737
1109	1	STAY                	Extended Stay America Inc	14.98	-	-	-		2020-06-30 11:40:25.217644
1110	1	XOGAQ               	Extraction Oil &amp Gas Inc	0.39	-	-	-		2020-06-30 11:40:47.877218
1111	1	EXTR                	Extreme Networks Inc	7.08	-	-	-		2020-06-30 11:41:05.295772
1112	1	EYEG                	Eyegate Pharmaceuticals Inc	7.67	-	-	-		2020-06-30 11:41:23.281408
1113	1	EYEGW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:41:34.746095
1114	1	EYEN                	Eyenovia Inc	3.95	-	-	-		2020-06-30 11:41:51.947897
1115	1	EYPT                	EyePoint Pharmaceuticals Inc	1.37	-	-	-		2020-06-30 11:42:13.16382
1116	1	EZPW                	EZCORP Inc	8.34	-	-	-		2020-06-30 11:42:31.548622
1117	1	FLRZ                	F5 Finishes Inc Ordinary Shares	0	-	-	-	Fair value not available	2020-06-30 11:42:53.393739
1118	1	FFIV                	F5 Networks Inc	175.00	-	-	-		2020-06-30 11:43:13.338267
1119	1	FB                  	Facebook Inc A	215.00	-	-	-		2020-06-30 11:43:28.847146
1120	1	FLMN                	Falcon Minerals Corp Class A	4.46	-	-	-		2020-06-30 11:43:46.49895
1121	1	FLMNW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:43:57.941777
1122	1	DUO                 	Fangdd Network Group Ltd ADR	15.93	-	-	-		2020-06-30 11:44:15.869679
1123	1	FANH                	Fanhua Inc ADR	20.50	-	-	-		2020-06-30 11:44:41.28661
1124	1	FARM                	Farmer Bros Co	11.48	-	-	-		2020-06-30 11:44:59.061215
1125	1	FMAO                	Farmers &amp Merchants Bancorp Inc	24.96	-	-	-		2020-06-30 11:45:17.007094
1126	1	FMNB                	Farmers National Banc Corp	13.51	-	-	-		2020-06-30 11:45:34.694133
1127	1	FAMI                	Farmmi Inc Ordinary Shares	1.14	-	-	-		2020-06-30 11:45:52.507574
1128	1	FARO                	Faro Technologies Inc	59.04	-	-	-		2020-06-30 11:46:08.775786
1129	1	FAST                	Fastenal Co	33.00	-	-	-		2020-06-30 11:46:24.792949
1130	1	FAT                 	FAT Brands Inc	4.64	-	-	-		2020-06-30 11:46:41.993435
1131	1	FATE                	Fate Therapeutics Inc	27.74	-	-	-		2020-06-30 11:46:58.091243
1132	1	FBSS                	Fauquier Bankshares Inc	18.67	-	-	-		2020-06-30 11:47:14.091094
1133	1	FNHC                	FedNat Holding Co	13.10	-	-	-		2020-06-30 11:47:30.501752
1134	1	FENC                	Fennec Pharmaceuticals Inc	8.75	-	-	-		2020-06-30 11:47:45.941473
1135	1	GSM                 	Ferroglobe PLC	1.29	-	-	-		2020-06-30 11:48:01.515084
1136	1	FFBW                	FFBW Inc Ordinary Shares	9.60	-	-	-		2020-06-30 11:48:17.962432
1137	1	FGEN                	FibroGen Inc	36.28	-	-	-		2020-06-30 11:49:08.075224
1138	1	FDBC                	Fidelity D &amp D Bancorp Inc	58.47	-	-	-		2020-06-30 11:49:28.676112
1139	1	ONEQ                	-	0	Fidelity® NASDAQ Composite Index® Tracking Stock Fund	4	-		2020-06-30 11:50:07.321018
1140	1	FDUS                	Fidus Investment Corp	12.80	-	-	-		2020-06-30 11:50:26.65801
1141	1	FDUSG               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:50:38.248172
1142	1	FDUSL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:50:50.045053
1143	1	FDUSZ               	-	0	-	-	-	No result in autocomplete search	2020-06-30 11:51:01.198704
1144	1	FRGI                	Fiesta Restaurant Group Inc	9.89	-	-	-		2020-06-30 11:51:21.425202
1145	1	FITB                	Fifth Third Bancorp	32.00	-	-	-		2020-06-30 11:51:42.806468
1146	1	FITBI               	Fifth Third Bancorp Pref Share	42.56	-	-	-		2020-06-30 11:52:01.847806
1147	1	FITBO               	Fifth Third Bancorp Pref Share	38.87	-	-	-		2020-06-30 11:52:20.844673
1148	1	FITBP               	Fifth Third Bancorp Pref Share	40.82	-	-	-		2020-06-30 11:52:39.339329
1149	1	FISI                	Financial Institutions Inc	23.25	-	-	-		2020-06-30 11:52:56.456192
1150	1	FNJN                	Finjan Holdings Inc	2.34	-	-	-		2020-06-30 11:53:15.166625
1151	1	FSRV                	FinServ Acquisition Corp Class A	9.27	-	-	-		2020-06-30 11:53:32.805191
1152	1	FSRVU               	-	—	-	-	-		2020-06-30 12:07:30.731248
1153	1	FSRVW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 12:07:42.081548
1154	1	FTAC                	FinTech Acquisition Corp III	10.36	-	-	-		2020-06-30 12:07:59.855502
1155	1	FTACU               	-	—	-	-	-		2020-06-30 12:08:16.897102
1156	1	FTACW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 12:08:28.031274
1157	1	FEYE                	FireEye Inc	14.00	-	-	-		2020-06-30 12:08:43.27917
1158	1	FBNC                	First Bancorp	29.98	-	-	-		2020-06-30 12:08:58.840904
1159	1	FNLC                	First Bancorp Inc	24.79	-	-	-		2020-06-30 12:09:14.196694
1160	1	FRBA                	First Bank	8.28	-	-	-		2020-06-30 12:09:29.609506
1161	1	BUSE                	First Busey Corp	21.28	-	-	-		2020-06-30 12:09:44.904359
1162	1	FBIZ                	First Business Financial Services Inc	20.86	-	-	-		2020-06-30 12:10:00.387657
1163	1	FCAP                	First Capital Inc	76.68	-	-	-		2020-06-30 12:10:15.28369
1164	1	FCBP                	First Choice Bancorp	21.25	-	-	-		2020-06-30 12:10:30.219014
1165	1	FCNCA               	First Citizens BancShares Inc Class A	444.93	-	-	-		2020-06-30 12:10:45.714731
1166	1	FCNCP               	First Citizens BancShares Inc Pref Share	27.51	-	-	-		2020-06-30 12:11:00.54793
1167	1	FCBC                	First Community Bankshares Inc	25.52	-	-	-		2020-06-30 12:11:16.446994
1168	1	FCCO                	First Community Corp	17.69	-	-	-		2020-06-30 12:11:31.674226
1169	1	FDEF                	-	0	-	-	-	No result in autocomplete search	2020-06-30 12:11:43.440956
1170	1	FFBC                	First Financial Bancorp	17.31	-	-	-		2020-06-30 12:11:59.230954
1171	1	FFIN                	First Financial Bankshares Inc	0	-	-	-	Fair value not available	2020-06-30 12:12:20.068615
1172	1	THFF                	First Financial Corp	41.88	-	-	-		2020-06-30 12:12:35.264704
1173	1	FFNW                	First Financial Northwest Inc	12.13	-	-	-		2020-06-30 12:12:52.575349
1174	1	FFWM                	First Foundation Inc	19.36	-	-	-		2020-06-30 12:13:08.256081
1175	1	FGBI                	First Guaranty Bancshares Inc	15.91	-	-	-		2020-06-30 12:13:26.798643
1176	1	FHB                 	First Hawaiian Inc	20.74	-	-	-		2020-06-30 12:13:42.822675
1177	1	INBK                	First Internet Bancorp	22.90	-	-	-		2020-06-30 12:13:58.324878
1178	1	INBKL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 12:14:09.926859
1179	1	INBKZ               	-	0	-	-	-	No result in autocomplete search	2020-06-30 12:14:20.984457
1180	1	FIBK                	First Interstate BancSystem Inc	33.85	-	-	-		2020-06-30 12:14:36.826871
1181	1	FRME                	First Merchants Corp	31.44	-	-	-		2020-06-30 12:14:52.572999
1182	1	FMBH                	First Mid Bancshares Inc	29.96	-	-	-		2020-06-30 12:15:07.67662
1183	1	FMBI                	First Midwest Bancorp Inc	16.23	-	-	-		2020-06-30 12:15:24.586839
1184	1	FMBIP               	First Midwest Bancorp Inc Pref Share	31.26	-	-	-		2020-06-30 12:15:39.99135
1185	1	FXNC                	First National Corp	16.77	-	-	-		2020-06-30 12:15:55.120609
1186	1	FNWB                	First Northwest Bancorp	15.79	-	-	-		2020-06-30 12:16:13.840371
1187	1	FSFG                	First Savings Financial Group Inc	63.90	-	-	-		2020-06-30 12:16:29.424233
1188	1	FSEA                	First Seacoast Bancorp	8.14	-	-	-		2020-06-30 12:16:49.319001
1189	1	FSLR                	First Solar Inc	59.00	-	-	-		2020-06-30 12:17:06.154101
1190	1	FAAR                	-	0	First Trust Alternative Absolute Return Strategy ETF	5	-		2020-06-30 12:17:57.060805
1191	1	FPA                 	-	0	First Trust Asia Pacific Ex-Japan AlphaDEX® Fund	1	-		2020-06-30 12:18:17.944751
1192	1	BICK                	-	0	First Trust BICK Index Fund	2	-		2020-06-30 12:18:36.585219
1193	1	FBZ                 	-	0	First Trust Brazil AlphaDEX® Fund	3	-		2020-06-30 12:18:54.944938
1194	1	FTHI                	-	0	First Trust BuyWrite Income ETF	3	-		2020-06-30 12:19:13.742643
1195	1	FCAL                	-	0	First Trust California Municipal High Income ETF	-	-		2020-06-30 12:19:32.407592
1196	1	FCAN                	-	0	First Trust Canada AlphaDEX® Fund	-	-		2020-06-30 12:19:54.275174
1197	1	FTCS                	-	0	First Trust Capital Strength ETF	4	-		2020-06-30 12:20:18.422624
1198	1	FCEF                	-	0	First Trust CEF Income Opportunity ETF	2	-		2020-06-30 12:20:40.392767
1199	1	FCA                 	-	0	First Trust China AlphaDEX® Fund	3	-		2020-06-30 12:21:00.8034
1200	1	SKYY                	-	0	First Trust Cloud Computing ETF	4	-		2020-06-30 12:21:19.060096
1201	1	RNDM                	-	0	First Trust Developed International Equity Select ETF	-	-		2020-06-30 12:21:37.122675
1202	1	FDT                 	-	0	First Trust Developed Markets Ex-US AlphaDEX® Fund	2	-		2020-06-30 13:39:35.303655
1203	1	FDTS                	-	0	First Trust Developed Markets ex-US Small Cap AlphaDEX® Fund	3	-		2020-06-30 13:39:57.457399
1204	1	FVC                 	-	0	First Trust Dorsey Wright Dynamic Focus 5 ETF	1	-		2020-06-30 13:40:16.171497
1205	1	FV                  	-	0	First Trust Dorsey Wright Focus 5 ETF	1	-		2020-06-30 13:40:35.033064
1206	1	IFV                 	-	0	First Trust Dorsey Wright International Focus 5 ETF	1	-		2020-06-30 13:40:53.137668
1207	1	DDIV                	-	0	First Trust Dorsey Wright Momentum &amp Dividend ETF	3	-		2020-06-30 13:41:11.63092
1208	1	DVOL                	-	0	First Trust Dorsey Wright Momentum &amp Low Volatility ETF	-	-		2020-06-30 13:41:29.797048
1209	1	DVLU                	-	0	First Trust Dorsey Wright Momentum &amp Value ETF	-	-		2020-06-30 13:41:48.079116
1210	1	DWPP                	-	0	First Trust Dorsey Wright People"s Portfolio ETF	1	-		2020-06-30 13:42:06.834246
1211	1	DALI                	-	0	First Trust Dorsey Wright DALI 1 ETF	-	-		2020-06-30 13:42:25.182691
1212	1	FDNI                	-	0	First Trust Dow Jones International Internet ETF	-	-		2020-06-30 13:42:43.993386
1213	1	FEM                 	-	0	First Trust Emerging Markets AlphaDEX® Fund	2	-		2020-06-30 13:43:02.258402
1214	1	RNEM                	-	0	First Trust Emerging Markets Equity Select ETF	-	-		2020-06-30 13:43:20.434299
1215	1	FEMB                	-	0	First Trust Emerging Markets Local Currency Bond ETF	3	-		2020-06-30 13:43:38.831423
1216	1	FEMS                	-	0	First Trust Emerging Markets Small Cap AlphaDEX® Fund	2	-		2020-06-30 13:43:56.909925
1217	1	FTSM                	-	0	First Trust Enhanced Short Maturity ETF	3	-		2020-06-30 13:44:15.353187
1218	1	FEP                 	-	0	First Trust Europe AlphaDEX® Fund	2	-		2020-06-30 13:44:34.217466
1219	1	FEUZ                	-	0	First Trust Eurozone AlphaDEX® ETF	3	-		2020-06-30 13:44:52.459172
1220	1	FGM                 	-	0	First Trust Germany AlphaDEX® Fund	-	-		2020-06-30 13:45:11.459836
1221	1	FTGC                	-	0	First Trust Global Tactical Commodity Strategy Fund	3	-		2020-06-30 13:45:30.034773
1222	1	FTLB                	-	0	First Trust Hedged BuyWrite Income ETF	3	-		2020-06-30 13:45:49.022717
1223	1	HYLS                	-	0	First Trust Tactical High Yield ETF	4	-		2020-06-30 13:46:10.672823
1224	1	FHK                 	-	0	First Trust Hong Kong AlphaDEX® Fund	2	-		2020-06-30 13:46:31.291048
1225	1	NFTY                	-	0	First Trust India NIFTY 50 Equal Weight ETF	2	-		2020-06-30 13:46:49.494409
1226	1	FTAG                	-	0	First Trust Indxx Global Agriculture ETF	1	-		2020-06-30 13:47:07.763916
1227	1	FTRI                	-	0	First Trust Indxx Global Natural Resources Income ETF	2	-		2020-06-30 13:47:26.882039
1228	1	LEGR                	-	0	First Trust Indxx Innovative Transaction &amp Process ETF	-	-		2020-06-30 13:47:45.408563
1229	1	NXTG                	-	0	First Trust IndXX NextG ETF	1	-		2020-06-30 13:48:03.987511
1230	1	FPXI                	-	0	First Trust International Equity Opportunities ETF	5	-		2020-06-30 13:48:22.285156
1231	1	FPXE                	-	0	First Trust IPOX Europe Equity Opportunities ETF	-	-		2020-06-30 13:48:40.299414
1232	1	FJP                 	-	0	First Trust Japan AlphaDEX® Fund	1	-		2020-06-30 13:48:59.077001
1233	1	FEX                 	-	0	First Trust Large Cap Core AlphaDEX® Fund	2	-		2020-06-30 13:49:17.526424
1234	1	FTC                 	-	0	First Trust Large Cap Growth AlphaDEX® Fund	2	-		2020-06-30 13:49:35.814973
1235	1	RNLC                	-	0	First Trust Large Cap US Equity Select ETF	-	-		2020-06-30 13:49:54.523188
1236	1	FTA                 	-	0	First Trust Large Cap Value AlphaDEX® Fund	2	-		2020-06-30 13:50:12.953269
1237	1	FLN                 	-	0	First Trust Latin America AlphaDEX® Fund	4	-		2020-06-30 13:50:31.592182
1238	1	LMBS                	-	0	First Trust Low Duration Opportunities ETF	4	-		2020-06-30 13:50:53.587674
1239	1	LDSF                	-	0	First Trust Low Duration Strategic Focus ETF	-	-		2020-06-30 13:51:12.46109
1240	1	FMB                 	-	0	First Trust Managed Municipal ETF	5	-		2020-06-30 13:51:31.07794
1241	1	FMK                 	-	0	First Trust Mega Cap AlphaDEX® Fund	2	-		2020-06-30 13:51:49.437211
1242	1	FNX                 	-	0	First Trust Mid Cap Core AlphaDEX® Fund	3	-		2020-06-30 13:52:07.692574
1243	1	FNY                 	-	0	First Trust Mid Cap Growth AlphaDEX® Fund	3	-		2020-06-30 13:52:25.924128
1244	1	RNMC                	-	0	First Trust Mid Cap US Equity Select ETF	-	-		2020-06-30 13:52:43.905467
1245	1	FNK                 	-	0	First Trust Mid Cap Value AlphaDEX® Fund	2	-		2020-06-30 13:53:02.318119
1246	1	FAD                 	-	0	First Trust Multi Cap Growth AlphaDEX® Fund	3	-		2020-06-30 13:53:21.151048
1247	1	FAB                 	-	0	First Trust Multi Cap Value AlphaDEX® Fund	2	-		2020-06-30 13:53:39.88552
1248	1	MDIV                	-	0	First Trust Multi-Asset Diversified Income Index Fund	1	-		2020-06-30 13:54:10.838423
1249	1	MCEF                	-	0	First Trust Municipal CEF Income Opportunity ETF	2	-		2020-06-30 13:54:31.54448
1250	1	FMHI                	-	0	First Trust Municipal High Income ETF	-	-		2020-06-30 13:54:51.576239
1251	1	QABA                	-	0	First Trust NASDAQ® ABA Community Bank Index Fund	2	-		2020-06-30 13:55:11.19544
1252	1	ROBT                	-	0	First Trust Nasdaq Artificial Intelligence and Robotics ETF	-	-		2020-06-30 14:02:39.402108
1253	1	FTXO                	-	0	First Trust Nasdaq Bank ETF	1	-		2020-06-30 14:03:01.038319
1254	1	QCLN                	-	0	First Trust NASDAQ® Clean Edge® Green Energy Index Fund	-	-		2020-06-30 14:03:21.705351
1255	1	GRID                	-	0	First Trust NASDAQ® Clean Edge® Smart Grid Infrastructure Index Fund	-	-		2020-06-30 14:03:40.434998
1256	1	CIBR                	-	0	First Trust NASDAQ Cybersecurity ETF	3	-		2020-06-30 14:03:58.945073
1257	1	FTXG                	-	0	First Trust Nasdaq Food &amp Beverage ETF	2	-		2020-06-30 14:04:17.416692
1258	1	CARZ                	-	0	First Trust NASDAQ Global Auto Index Fund	1	-		2020-06-30 14:04:35.406633
1259	1	FTXN                	-	0	First Trust Nasdaq Oil &amp Gas ETF	4	-		2020-06-30 14:04:54.221795
1260	1	FTXH                	-	0	First Trust Nasdaq Pharmaceuticals ETF	2	-		2020-06-30 14:05:14.947718
1261	1	FTXD                	-	0	First Trust Nasdaq Retail ETF	3	-		2020-06-30 14:05:33.095743
1262	1	FTXL                	-	0	First Trust Nasdaq Semiconductor ETF	2	-		2020-06-30 14:05:51.52823
1263	1	TDIV                	-	0	First Trust NASDAQ Technology Dividend Index Fund	2	-		2020-06-30 14:06:09.692385
1264	1	FTXR                	-	0	First Trust Nasdaq Transportation ETF	1	-		2020-06-30 14:06:27.723162
1265	1	QQEW                	-	0	First Trust NASDAQ-100 Equal Weighted Index Fund	3	-		2020-06-30 14:06:45.850226
1266	1	QQXT                	-	0	First Trust NASDAQ-100 Ex-Technology Sector Index Fund	3	-		2020-06-30 14:07:06.342759
1267	1	QTEC                	-	0	First Trust NASDAQ-100-Technology Sector Index Fund	3	-		2020-06-30 14:07:26.19166
1268	1	AIRR                	-	0	First Trust RBA American Industrial RenaissanceTM ETF	2	-		2020-06-30 14:07:44.405599
1269	1	RDVY                	-	0	First Trust Rising Dividend Achievers ETF	4	-		2020-06-30 14:08:02.544556
1270	1	RFAP                	-	0	First Trust RiverFront Dynamic Asia Pacific ETF	2	-		2020-06-30 14:08:21.145029
1271	1	RFDI                	-	0	First Trust RiverFront Dynamic Developed International ETF	2	-		2020-06-30 14:08:39.174976
1272	1	RFEM                	-	0	First Trust RiverFront Dynamic Emerging Markets ETF	2	-		2020-06-30 14:08:56.996338
1273	1	RFEU                	-	0	First Trust RiverFront Dynamic Europe ETF	3	-		2020-06-30 14:09:15.219953
1274	1	FID                 	-	0	First Trust S&ampP International Dividend Aristocrats ETF	3	-		2020-06-30 14:09:33.61462
1275	1	FTSL                	-	0	First Trust Senior Loan Fund	5	-		2020-06-30 14:09:51.599339
1276	1	FYX                 	-	0	First Trust Small Cap Core AlphaDEX® Fund	3	-		2020-06-30 14:10:09.850371
1277	1	FYC                 	-	0	First Trust Small Cap Growth AlphaDEX® Fund	2	-		2020-06-30 14:10:27.512919
1278	1	RNSC                	-	0	First Trust Small Cap US Equity Select ETF	-	-		2020-06-30 14:10:45.775288
1279	1	FYT                 	-	0	First Trust Small Cap Value AlphaDEX® Fund	2	-		2020-06-30 14:11:03.842955
1280	1	SDVY                	-	0	First Trust SMID Cap Rising Dividend Achievers ETF	-	-		2020-06-30 14:11:22.155171
1281	1	FKO                 	-	0	First Trust South Korea AlphaDEX® Fund	-	-		2020-06-30 14:11:40.508324
1282	1	FCVT                	-	0	First Trust SSI Strategic Convertible Securities ETF	3	-		2020-06-30 14:11:58.966042
1283	1	FDIV                	-	0	First Trust Strategic Income ETF	2	-		2020-06-30 14:12:17.185237
1284	1	FSZ                 	-	0	First Trust Switzerland AlphaDEX® Fund	-	-		2020-06-30 14:12:35.05658
1285	1	FIXD                	-	0	First Trust TCW Opportunistic Fixed Income ETF	5	-		2020-06-30 14:12:55.9898
1286	1	TUSA                	-	0	First Trust Total US Market AlphaDEX ETF	3	-		2020-06-30 14:13:13.94102
1287	1	FKU                 	-	0	First Trust United Kingdom AlphaDEX® Fund	-	-		2020-06-30 14:13:31.669308
1288	1	RNDV                	-	0	First Trust US Equity Dividend Select ETF	-	-		2020-06-30 14:13:49.654466
1289	1	FUNC                	First United Corp	18.47	-	-	-		2020-06-30 14:14:15.821272
1290	1	FUSB                	First US Bancshares Inc	9.44	-	-	-		2020-06-30 14:14:31.24188
1291	1	MYFW                	First Western Financial Inc	17.37	-	-	-		2020-06-30 14:14:46.418617
1292	1	FCFS                	FirstCash Inc	67.12	-	-	-		2020-06-30 14:15:01.328194
1293	1	SVVC                	Firsthand Technology Value Fund Inc	7.08	-	-	-		2020-06-30 14:15:16.306239
1294	1	FSV                 	FirstService Corp	105.90	-	-	-		2020-06-30 14:15:31.029846
1295	1	FISV                	Fiserv Inc	89.00	-	-	-		2020-06-30 14:15:45.795919
1296	1	FIVE                	Five Below Inc	90.00	-	-	-		2020-06-30 14:16:00.996595
1297	1	FPRX                	Five Prime Therapeutics Inc	11.31	-	-	-		2020-06-30 14:16:16.128332
1298	1	FVE                 	Five Star Senior Living Inc	6.71	-	-	-		2020-06-30 14:16:32.012428
1299	1	FIVN                	Five9 Inc	—	-	-	-		2020-06-30 14:16:47.17867
1300	1	FLEX                	Flex Ltd	12.91	-	-	-		2020-06-30 14:17:05.646489
1301	1	FLXN                	Flexion Therapeutics Inc	22.52	-	-	-		2020-06-30 14:17:20.453379
1302	1	SKOR                	-	0	FlexShares Credit-Scored US Corporate Bond Index Fund	3	-		2020-06-30 14:21:23.995715
1303	1	MBSD                	-	0	FlexShares Disciplined Duration MBS Index Fund	2	-		2020-06-30 14:21:46.788086
1304	1	ASET                	-	0	FlexShares Real Assets Allocation Index Fund	2	-		2020-06-30 14:22:08.41358
1305	1	ESG                 	-	0	FlexShares STOXX US ESG Impact Index Fund	4	-		2020-06-30 14:22:26.313746
1306	1	ESGG                	-	0	FlexShares STOXX Global ESG Impact Index Fund	4	-		2020-06-30 14:22:44.696961
1307	1	LKOR                	-	0	FlexShares Credit-Scored US Long Corporate Bond Index Fund	3	-		2020-06-30 14:23:04.926578
1308	1	QLC                 	-	0	FlexShares US Quality Large Cap Index Fund	5	-		2020-06-30 14:23:23.372555
1309	1	FPAY                	FlexShopper Inc	2.64	-	-	-		2020-06-30 14:24:02.065129
1310	1	FLXS                	Flexsteel Industries Inc	22.55	-	-	-		2020-06-30 14:24:18.174619
1311	1	FLIR                	FLIR Systems Inc	46.37	-	-	-		2020-06-30 14:24:35.579861
1312	1	FLWR                	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:24:47.237872
1313	1	FLNT                	Fluent Inc	3.02	-	-	-		2020-06-30 14:25:03.009146
1314	1	FLDM                	Fluidigm Corp	7.17	-	-	-		2020-06-30 14:25:18.439167
1315	1	FFIC                	Flushing Financial Corp	15.34	-	-	-		2020-06-30 14:25:33.629339
1316	1	FLUX                	Flux Power Holdings Inc	12.78	-	-	-		2020-06-30 14:25:49.318615
1317	1	FNCB                	FNCB Bancorp Inc	7.52	-	-	-		2020-06-30 14:26:05.576062
1318	1	FOCS                	Focus Financial Partners Inc Class A	34.60	-	-	-		2020-06-30 14:26:21.826729
1319	1	FONR                	Fonar Corp	29.15	-	-	-		2020-06-30 14:26:40.374912
1320	1	FSCT                	ForeScout Technologies Inc	23.45	-	-	-		2020-06-30 14:26:57.55343
1321	1	FRSX                	Foresight Autonomous Holdings Ltd ADR	2.19	-	-	-		2020-06-30 14:27:13.901431
1322	1	FORM                	FormFactor Inc	27.65	-	-	-		2020-06-30 14:27:29.621154
1323	1	FORTY               	Formula Systems (1985) Ltd ADR	86.37	-	-	-		2020-06-30 14:27:44.685662
1324	1	FORR                	Forrester Research Inc	35.89	-	-	-		2020-06-30 14:28:00.551972
1325	1	FRTA                	Forterra Inc	13.35	-	-	-		2020-06-30 14:28:16.766306
1326	1	FTNT                	Fortinet Inc	117.00	-	-	-		2020-06-30 14:28:33.240537
1327	1	FBIO                	Fortress Biotech Inc	3.97	-	-	-		2020-06-30 14:28:49.069567
1328	1	FBIOP               	Fortress Biotech Inc Pref Share	26.46	-	-	-		2020-06-30 14:29:19.348572
1329	1	FMCI                	Forum Merger II Corp Class A	16.31	-	-	-		2020-06-30 14:29:40.317653
1330	1	FMCIU               	-	—	-	-	-		2020-06-30 14:29:57.11439
1331	1	FMCIW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:30:08.198677
1332	1	FWRD                	Forward Air Corp	52.12	-	-	-		2020-06-30 14:30:24.845047
1333	1	FORD                	Forward Industries Inc	1.79	-	-	-		2020-06-30 14:30:41.225963
1334	1	FWP                 	Forward Pharma A/S ADR	8.62	-	-	-		2020-06-30 14:30:57.097255
1335	1	FOSL                	Fossil Group Inc	7.92	-	-	-		2020-06-30 14:31:12.346337
1336	1	FOX                 	Fox Corp Class B	37.00	-	-	-		2020-06-30 14:31:27.729377
1337	1	FOXA                	Fox Corp Class A	37.00	-	-	-		2020-06-30 14:31:45.575759
1338	1	FOXF                	Fox Factory Holding Corp	74.12	-	-	-		2020-06-30 14:32:01.591567
1339	1	FRAN                	Francescas Holdings Corp	10.92	-	-	-		2020-06-30 14:32:17.250085
1340	1	FRG                 	Franchise Group Inc Class A	29.60	-	-	-		2020-06-30 14:32:33.998553
1341	1	FELE                	Franklin Electric Co Inc	48.75	-	-	-		2020-06-30 14:32:51.463207
1342	1	FRAF                	Franklin Financial Services Corp	32.48	-	-	-		2020-06-30 14:33:06.433932
1343	1	FRHC                	Freedom Holding Corp	15.21	-	-	-		2020-06-30 14:33:22.159279
1344	1	RAIL                	FreightCar America Inc	2.70	-	-	-		2020-06-30 14:33:36.830583
1345	1	FEIM                	Frequency Electronics Inc	12.28	-	-	-		2020-06-30 14:33:53.852075
1346	1	FREQ                	Frequency Therapeutics Inc	21.26	-	-	-		2020-06-30 14:34:11.881469
1347	1	FRPT                	Freshpet Inc	66.26	-	-	-		2020-06-30 14:34:26.690251
1348	1	FTDR                	Frontdoor Inc	41.32	-	-	-		2020-06-30 14:34:44.963341
1349	1	FRPH                	FRP Holdings Inc	44.11	-	-	-		2020-06-30 14:35:08.852459
1350	1	FSBW                	FS Bancorp Inc	51.16	-	-	-		2020-06-30 14:35:27.377978
1351	1	HUGE                	FSD Pharma Inc Class B	6.88	-	-	-		2020-06-30 14:35:46.175165
1352	1	FTEK                	Fuel Tech Inc	1.83	-	-	-		2020-06-30 14:37:58.070831
1353	1	FCEL                	FuelCell Energy Inc	3.18	-	-	-		2020-06-30 14:38:16.378721
1354	1	FULC                	Fulcrum Therapeutics Inc	25.34	-	-	-		2020-06-30 14:38:33.717856
1355	1	FLGT                	Fulgent Genetics Inc	19.48	-	-	-		2020-06-30 14:38:48.84473
1356	1	FORK                	Fuling Global Inc	3.32	-	-	-		2020-06-30 14:39:04.257864
1357	1	FLL                 	Full House Resorts Inc	2.26	-	-	-		2020-06-30 14:39:18.931966
1358	1	FMAX                	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:39:30.00327
1359	1	FULT                	Fulton Financial Corp	12.43	-	-	-		2020-06-30 14:39:44.948897
1360	1	FNKO                	Funko Inc Class A	8.74	-	-	-		2020-06-30 14:40:03.665803
1361	1	FUTU                	Futu Holdings Ltd ADR	18.35	-	-	-		2020-06-30 14:40:18.205988
1362	1	FTFT                	Future FinTech Group Inc	1.49	-	-	-		2020-06-30 14:40:33.961731
1363	1	FFHL                	Fuwei Films (Holdings) Co Ltd	9.22	-	-	-		2020-06-30 14:40:49.702114
1364	1	FVCB                	FVCBankcorp Inc	12.80	-	-	-		2020-06-30 14:41:04.264128
1365	1	WILC                	G. Willi-Food International Ltd	18.34	-	-	-		2020-06-30 14:41:19.165353
1366	1	GTHX                	G1 Therapeutics Inc	30.90	-	-	-		2020-06-30 14:41:33.868172
1367	1	GAIA                	Gaia Inc Class A	10.86	-	-	-		2020-06-30 14:41:49.423977
1368	1	GLPG                	Galapagos NV ADR	185.51	-	-	-		2020-06-30 14:42:04.33292
1369	1	GALT                	Galectin Therapeutics Inc	3.99	-	-	-		2020-06-30 14:42:19.401599
1370	1	GRTX                	Galera Therapeutics Inc Ordinary Shares	11.51	-	-	-		2020-06-30 14:42:34.176978
1371	1	GLMD                	Galmed Pharmaceuticals Ltd	6.86	-	-	-		2020-06-30 14:42:48.679604
1372	1	GMDA                	Gamida Cell Ltd	5.12	-	-	-		2020-06-30 14:43:03.712139
1373	1	GLPI                	Gaming and Leisure Properties Inc	47.10	-	-	-		2020-06-30 14:43:18.457849
1374	1	GAN                 	GAN Ltd Ordinary Shares	17.35	-	-	-		2020-06-30 14:43:33.245634
1375	1	GRMN                	Garmin Ltd	81.00	-	-	-		2020-06-30 14:43:48.046848
1376	1	GARS                	Garrison Capital Inc	5.17	-	-	-		2020-06-30 14:44:02.813244
1377	1	GLIBA               	GCI Liberty Inc A	76.82	-	-	-		2020-06-30 14:44:18.072815
1378	1	GLIBP               	GCI Liberty Inc Pref Share	29.56	-	-	-		2020-06-30 14:44:32.8792
1379	1	GDS                 	GDS Holdings Ltd ADR	62.64	-	-	-		2020-06-30 14:44:47.793544
1380	1	GNSS                	Genasys Inc	4.99	-	-	-		2020-06-30 14:45:02.546562
1381	1	GENC                	Gencor Industries Inc	14.16	-	-	-		2020-06-30 14:45:17.355254
1382	1	GFN                 	General Finance Corp	8.12	-	-	-		2020-06-30 14:45:32.904018
1383	1	GFNCP               	General Finance Corp Pref Share	119.05	-	-	-		2020-06-30 14:45:47.698439
1384	1	GFNSL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:45:58.788056
1385	1	GBIO                	Generation Bio Co Ordinary Shares	25.29	-	-	-		2020-06-30 14:46:14.686975
1386	1	GENE                	Genetic Technologies Ltd ADR	3.43	-	-	-		2020-06-30 14:46:30.096795
1387	1	GNFT                	Genfit SA ADR	9.46	-	-	-		2020-06-30 14:46:45.037985
1388	1	GNUS                	Genius Brands International Inc	3.61	-	-	-		2020-06-30 14:47:00.006078
1389	1	GMAB                	Genmab A/S ADR	25.44	-	-	-		2020-06-30 14:47:14.946148
1390	1	GNMK                	GenMark Diagnostics Inc	12.94	-	-	-		2020-06-30 14:47:29.725526
1391	1	GNCA                	Genocea Biosciences Inc	3.09	-	-	-		2020-06-30 14:47:44.603421
1392	1	GNPX                	Genprex Inc	4.52	-	-	-		2020-06-30 14:47:59.456364
1393	1	GNTX                	Gentex Corp	25.00	-	-	-		2020-06-30 14:48:14.660502
1394	1	THRM                	Gentherm Inc	40.42	-	-	-		2020-06-30 14:48:30.323598
1395	1	GEOS                	Geospace Technologies Corp	13.69	-	-	-		2020-06-30 14:48:45.06359
1396	1	GABC                	German American Bancorp	31.59	-	-	-		2020-06-30 14:49:00.036039
1397	1	GERN                	Geron Corp	2.37	-	-	-		2020-06-30 14:49:15.045055
1398	1	GEVO                	Gevo Inc	1.95	-	-	-		2020-06-30 14:49:29.686821
1399	1	ROCK                	Gibraltar Industries Inc	51.35	-	-	-		2020-06-30 14:49:44.616938
1400	1	GIGM                	GigaMedia Ltd	4.10	-	-	-		2020-06-30 14:49:59.648293
1401	1	GIII                	G-III Apparel Group Ltd	21.90	-	-	-		2020-06-30 14:50:14.479913
1402	1	GILT                	Gilat Satellite Networks Ltd	7.69	-	-	-		2020-06-30 14:51:16.625684
1403	1	GILD                	Gilead Sciences Inc	83.00	-	-	-		2020-06-30 14:51:36.82116
1404	1	GBCI                	Glacier Bancorp Inc	35.55	-	-	-		2020-06-30 14:51:54.838949
1405	1	GLAD                	Gladstone Capital Corp	8.76	-	-	-		2020-06-30 14:52:12.909804
1406	1	GLADD               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:52:24.389444
1407	1	GLADL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:52:35.788026
1408	1	GOOD                	Gladstone Commercial Corp	25.39	-	-	-		2020-06-30 14:52:54.556584
1409	1	GOODM               	Gladstone Commercial Corp Pref Share	32.90	-	-	-		2020-06-30 14:53:09.696778
1410	1	GOODN               	Gladstone Commercial Corp Pref Share	31.67	-	-	-		2020-06-30 14:53:24.88978
1411	1	GAIN                	Gladstone Investment Corp	13.10	-	-	-		2020-06-30 14:53:39.679279
1412	1	GAINL               	Gladstone Investment Corp Pref Share	30.98	-	-	-		2020-06-30 14:53:54.444903
1413	1	GAINM               	Gladstone Investment Corp Pref Share	31.80	-	-	-		2020-06-30 14:54:09.219851
1414	1	LAND                	Gladstone Land Corp	16.74	-	-	-		2020-06-30 14:54:24.069805
1415	1	LANDP               	Gladstone Land Corp Pref Share	27.93	-	-	-		2020-06-30 14:54:39.172728
1416	1	GLBZ                	Glen Burnie Bancorp	10.56	-	-	-		2020-06-30 14:54:53.975725
1417	1	GBT                 	Global Blood Therapeutics Inc	64.23	-	-	-		2020-06-30 14:55:09.051274
1418	1	ENT                 	Global Eagle Entertainment Inc	8.16	-	-	-		2020-06-30 14:55:23.948166
1419	1	GBLI                	Global Indemnity Ltd	29.21	-	-	-		2020-06-30 14:55:38.68388
1420	1	GBLIL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:55:50.430636
1421	1	GBLIZ               	-	0	-	-	-	No result in autocomplete search	2020-06-30 14:56:02.054786
1422	1	SELF                	Global Self Storage Inc	4.76	-	-	-		2020-06-30 14:56:17.347027
1423	1	GWRS                	Global Water Resources Inc	9.77	-	-	-		2020-06-30 14:56:32.142503
1424	1	DRIV                	-	0	Global X Autonomous &amp Electric Vehicles ETF	-	-		2020-06-30 14:57:13.602286
1425	1	POTX                	-	0	Global X Cannabis ETF	-	-		2020-06-30 14:57:34.343528
1426	1	CLOU                	-	0	Global X Cloud Computing ETF Global X Cloud Computing ETF	-	-		2020-06-30 14:57:53.034393
1427	1	KRMA                	-	0	Global X Conscious Companies ETF	3	-		2020-06-30 14:58:10.963935
1428	1	BUG                 	-	0	Global X Cybersecurity ETF	-	-		2020-06-30 14:58:29.573318
1429	1	DAX                 	-	0	Global X DAX Germany ETF	-	-		2020-06-30 14:58:48.758979
1430	1	EBIZ                	-	0	Global X E-commerce ETF	-	-		2020-06-30 14:59:07.383863
1431	1	FINX                	-	0	Global X FinTech ETF	3	-		2020-06-30 14:59:25.908848
1432	1	CHIC                	-	0	Global X MSCI China Comm Services ETF	2	-		2020-06-30 14:59:44.456906
1433	1	AIQ                 	-	0	Global X Artificial Intelligence &amp Technology ETF	-	-		2020-06-30 15:00:04.349209
1434	1	GNOM                	-	0	Global X Genomics &amp Biotechnology ETF	-	-		2020-06-30 15:00:22.556674
1435	1	BFIT                	-	0	Global X Health &amp Wellness Thematic ETF	5	-		2020-06-30 15:00:40.608501
1436	1	SNSR                	-	0	Global X Internet of Things ETF	2	-		2020-06-30 15:01:00.730565
1437	1	LNGR                	-	0	Global X Longevity Thematic ETF	3	-		2020-06-30 15:01:18.69469
1438	1	MILN                	-	0	Global X Millennials Thematic ETF	3	-		2020-06-30 15:01:39.843511
1439	1	EFAS                	-	0	Global X MSCI SuperDividend® EAFE ETF	1	-		2020-06-30 15:02:00.541527
1440	1	QYLD                	-	0	Global X NASDAQ 100 Covered Call ETF	5	-		2020-06-30 15:02:20.59286
1441	1	BOTZ                	-	0	Global X Robotics &amp Artificial Intelligence ETF	-	-		2020-06-30 15:02:41.255085
1442	1	CATH                	-	0	Global X S&ampP 500® Catholic Values ETF	4	-		2020-06-30 15:03:02.013675
1443	1	SOCL                	-	0	Global X Social Media ETF	2	-		2020-06-30 15:03:22.03838
1444	1	ALTY                	-	0	Global X SuperDividend® Alternatives ETF	1	-		2020-06-30 15:03:42.139526
1445	1	SRET                	-	0	Global X SuperDividend® REIT ETF	1	-		2020-06-30 15:04:00.342727
1446	1	GXTG                	-	0	Global X Thematic Growth ETF	-	-		2020-06-30 15:04:20.776375
1447	1	HERO                	-	0	Global X Video Games &amp Esports ETF	-	-		2020-06-30 15:04:42.787405
1448	1	YLCO                	-	0	Global X YieldCo &amp Renewable Energy Income ETF	3	-		2020-06-30 15:05:04.099463
1449	1	GLBS                	Globus Maritime Ltd	0.54	-	-	-		2020-06-30 15:05:21.481681
1450	1	GSMG                	Glory Star New Media Group Holdings Ltd Ordinary Shares	4.63	-	-	-		2020-06-30 15:05:39.1266
1451	1	GSMGW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:05:50.505341
1452	1	GSMGW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:40:51.389643
1453	1	GLUU                	Glu Mobile Inc	9.02	-	-	-		2020-06-30 15:41:25.431095
1454	1	GLYC                	GlycoMimetics Inc	6.31	-	-	-		2020-06-30 15:41:43.556184
1455	1	GOGO                	Gogo Inc	4.63	-	-	-		2020-06-30 15:42:01.497069
1456	1	GLNG                	Golar LNG Ltd	11.55	-	-	-		2020-06-30 15:42:16.366349
1457	1	GMLP                	Golar LNG Partners LP	4.68	-	-	-		2020-06-30 15:42:31.317886
1458	1	GMLPP               	Golar LNG Partners LP Pref Share	32.43	-	-	-		2020-06-30 15:42:46.504519
1459	1	DNJR                	Golden Bull Ltd	2.26	-	-	-		2020-06-30 15:43:01.415047
1460	1	GDEN                	Golden Entertainment Inc	14.05	-	-	-		2020-06-30 15:43:16.780963
1461	1	GOGL                	Golden Ocean Group Ltd	5.14	-	-	-		2020-06-30 15:43:31.703663
1462	1	GBDC                	Golub Capital BDC Inc Class B	12.91	-	-	-		2020-06-30 15:43:46.825228
1463	1	GTIM                	Good Times Restaurants Inc	2.42	-	-	-		2020-06-30 15:44:01.807251
1464	1	GBLK                	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:44:12.942026
1465	1	GSHD                	Goosehead Insurance Inc Class A	47.89	-	-	-		2020-06-30 15:44:28.06495
1466	1	GPRO                	GoPro Inc A	6.76	-	-	-		2020-06-30 15:44:44.027739
1467	1	GPAQ                	Gordon Pointe Acquisition Corp Ordinary Shares - Class A	14.47	-	-	-		2020-06-30 15:44:59.278547
1468	1	GPAQU               	-	—	-	-	-		2020-06-30 15:45:15.181597
1469	1	GPAQW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:45:26.801274
1470	1	GHIV                	Gores Holdings IV Inc Ordinary Shares Class A	12.47	-	-	-		2020-06-30 15:45:42.039574
1471	1	GHIVU               	-	—	-	-	-		2020-06-30 15:45:57.679752
1472	1	GHIVW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:46:09.265221
1473	1	GMHI                	Gores Metropoulos Inc Ordinary Shares Class A	10.15	-	-	-		2020-06-30 15:46:24.499073
1474	1	GMHIU               	-	—	-	-	-		2020-06-30 15:46:39.162337
1475	1	GMHIW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:46:50.230966
1476	1	GOSS                	Gossamer Bio Inc	17.60	-	-	-		2020-06-30 15:47:05.279982
1477	1	LOPE                	Grand Canyon Education Inc	96.29	-	-	-		2020-06-30 15:47:20.205791
1478	1	GRVY                	GRAVITY Co Ltd ADR	60.09	-	-	-		2020-06-30 15:47:36.386897
1479	1	GECC                	Great Elm Capital Corp	6.82	-	-	-		2020-06-30 15:47:51.091786
1480	1	GECCL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:48:02.464313
1481	1	GECCM               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:48:13.61281
1482	1	GECCN               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:48:24.67626
1483	1	GEC                 	Great Elm Capital Group Inc	3.77	-	-	-		2020-06-30 15:48:44.411609
1484	1	GLDD                	Great Lakes Dredge &amp Dock Corp	10.53	-	-	-		2020-06-30 15:49:01.225007
1485	1	GSBC                	Great Southern Bancorp Inc	47.37	-	-	-		2020-06-30 15:49:24.25007
1486	1	GRBK                	Green Brick Partners Inc	14.04	-	-	-		2020-06-30 15:49:44.986267
1487	1	GPP                 	Green Plains Partners LP	8.46	-	-	-		2020-06-30 15:50:04.194864
1488	1	GPRE                	Green Plains Inc	14.91	-	-	-		2020-06-30 15:50:25.525284
1489	1	GCBC                	Greene County Bancorp Inc	26.27	-	-	-		2020-06-30 15:50:49.796078
1490	1	GTEC                	Greenland Technologies Holding Corp Ordinary Shares	4.26	-	-	-		2020-06-30 15:51:12.237953
1491	1	GNLN                	Greenlane Holdings Inc	4.95	-	-	-		2020-06-30 15:51:29.918675
1492	1	GLRE                	Greenlight Capital Re Ltd Class A	7.80	-	-	-		2020-06-30 15:51:50.547575
1493	1	GRNQ                	Greenpro Capital Corp	1.61	-	-	-		2020-06-30 15:52:07.691937
1494	1	GNRS                	Greenrose Acquisition Corp Ordinary Shares	12.47	-	-	-		2020-06-30 15:52:30.234616
1495	1	GNRSU               	-	—	-	-	-		2020-06-30 15:52:48.597731
1496	1	GNRSW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:52:59.841261
1497	1	GSKY                	GreenSky Inc Class A	6.17	-	-	-		2020-06-30 15:53:17.659907
1498	1	GRNV                	GreenVision Acquisition Corp Ordinary Shares	10.65	-	-	-		2020-06-30 15:53:37.488309
1499	1	GRNVR               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:53:48.614394
1500	1	GRNVU               	-	—	-	-	-		2020-06-30 15:54:05.609288
1501	1	GRNVW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:54:16.72118
1502	1	GDYN                	Grid Dynamics Holdings Inc Ordinary Shares Class A	8.48	-	-	-		2020-06-30 15:55:22.303896
1503	1	GDYNW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 15:55:33.575575
1504	1	GSUM                	Gridsum Holding Inc ADR	1.27	-	-	-		2020-06-30 15:55:51.68656
1505	1	GRIF                	Griffin Industrial Realty Inc	54.75	-	-	-		2020-06-30 15:56:10.652365
1506	1	GRFS                	Grifols SA ADR	24.00	-	-	-		2020-06-30 15:56:28.528848
1507	1	GRIN                	Grindrod Shipping Holdings Ltd Ordinary Shares	5.03	-	-	-		2020-06-30 15:56:49.396132
1508	1	GRTS                	Gritstone Oncology Inc	9.23	-	-	-		2020-06-30 15:57:07.287105
1509	1	GO                  	Grocery Outlet Holding Corp	39.69	-	-	-		2020-06-30 15:57:22.899136
1510	1	GRPN                	Groupon Inc	48.00	-	-	-		2020-06-30 15:57:38.719462
1511	1	GRWG                	GrowGeneration Corp	7.08	-	-	-		2020-06-30 15:57:59.985766
1512	1	OMAB                	Grupo Aeroportuario del Centro Norte SAB de CV ADR	32.00	-	-	-		2020-06-30 15:58:24.141465
1513	1	GGAL                	Grupo Financiero Galicia SA ADR	14.18	-	-	-		2020-06-30 15:58:39.517429
1514	1	GVP                 	GSE Systems Inc	1.57	-	-	-		2020-06-30 15:58:55.41966
1515	1	GSIT                	GSI Technology Inc	8.52	-	-	-		2020-06-30 15:59:11.570622
1516	1	GTYH                	GTY Technology Holdings Inc Class A	4.65	-	-	-		2020-06-30 15:59:37.950522
1517	1	GNTY                	Guaranty Bancshares Inc	28.66	-	-	-		2020-06-30 15:59:55.845498
1518	1	GFED                	Guaranty Federal Bancshares Inc	21.00	-	-	-		2020-06-30 16:00:16.268547
1519	1	GH                  	Guardant Health Inc	61.74	-	-	-		2020-06-30 16:00:34.725403
1520	1	GHSI                	Guardion Health Sciences Inc	0.72	-	-	-		2020-06-30 16:00:57.103236
1521	1	GIFI                	Gulf Island Fabrication Inc	5.57	-	-	-		2020-06-30 16:01:16.874972
1522	1	GURE                	Gulf Resources Inc	7.70	-	-	-		2020-06-30 16:01:34.627187
1523	1	GPOR                	Gulfport Energy Corp	2.75	-	-	-		2020-06-30 16:02:00.01044
1524	1	GWPH                	GW Pharmaceuticals PLC ADR	109.48	-	-	-		2020-06-30 16:02:16.771534
1525	1	GWGH                	GWG Holdings Inc	9.31	-	-	-		2020-06-30 16:02:38.524065
1526	1	GXGX                	GX Acquisition Corp	10.13	-	-	-		2020-06-30 16:02:56.184388
1527	1	GXGXU               	-	—	-	-	-		2020-06-30 16:03:14.253202
1528	1	GXGXW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:03:25.367862
1529	1	GYRO                	Gyrodyne LLC	18.54	-	-	-		2020-06-30 16:03:43.135251
1530	1	HEES                	H&ampE Equipment Services Inc	24.35	-	-	-		2020-06-30 16:04:01.4701
1531	1	HLG                 	Hailiang Education Group Inc ADR	40.94	-	-	-		2020-06-30 16:04:18.857353
1532	1	HNRG                	Hallador Energy Co	1.73	-	-	-		2020-06-30 16:04:41.588823
1533	1	HALL                	Hallmark Financial Services Inc	6.33	-	-	-		2020-06-30 16:05:19.70048
1534	1	HALO                	Halozyme Therapeutics Inc	18.85	-	-	-		2020-06-30 16:05:38.38921
1535	1	HLNE                	Hamilton Lane Inc Class A	54.67	-	-	-		2020-06-30 16:05:54.483723
1536	1	HJLI                	Hancock Jaffe Laboratories Inc Ordinary Shares	0.60	-	-	-		2020-06-30 16:06:11.000338
1537	1	HJLIW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:06:22.605295
1538	1	HWC                 	Hancock Whitney Corp	30.70	-	-	-		2020-06-30 16:06:38.85001
1539	1	HWCPL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:06:49.969067
1540	1	HAFC                	Hanmi Financial Corp	13.87	-	-	-		2020-06-30 16:07:06.248304
1541	1	HAPP                	Happiness Biotech Group Ltd	3.88	-	-	-		2020-06-30 16:07:25.046909
1542	1	HONE                	HarborOne Bancorp Inc	9.41	-	-	-		2020-06-30 16:07:39.938771
1543	1	HLIT                	Harmonic Inc	5.52	-	-	-		2020-06-30 16:07:55.462353
1544	1	HARP                	Harpoon Therapeutics Inc	17.78	-	-	-		2020-06-30 16:08:11.685517
1545	1	HROW                	Harrow Health Inc	7.89	-	-	-		2020-06-30 16:08:29.585577
1546	1	HBIO                	Harvard Bioscience Inc	4.47	-	-	-		2020-06-30 16:08:45.161788
1547	1	HCAP                	Harvest Capital Credit Corp	6.44	-	-	-		2020-06-30 16:09:01.074898
1548	1	HCAPZ               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:09:12.187762
1549	1	HAS                 	Hasbro Inc	89.00	-	-	-		2020-06-30 16:09:27.34963
1550	1	HA                  	Hawaiian Holdings Inc	23.13	-	-	-		2020-06-30 16:09:42.714699
1551	1	HWKN                	Hawkins Inc	46.21	-	-	-		2020-06-30 16:09:59.036194
1552	1	HWBK                	Hawthorn Bancshares Inc	23.99	-	-	-		2020-06-30 16:21:06.71943
1553	1	HYAC                	Haymaker Acquisition Corp II Ordinary Shares - Class A	9.61	-	-	-		2020-06-30 16:21:24.733111
1554	1	HYACU               	-	—	-	-	-		2020-06-30 16:21:54.838434
1555	1	HYACW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:22:06.529493
1556	1	HAYN                	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:22:17.795662
1557	1	HBT                 	HBT Financial Inc Ordinary Shares	16.45	-	-	-		2020-06-30 16:22:38.163965
1558	1	HDS                 	HD Supply Holdings Inc	46.00	-	-	-		2020-06-30 16:23:07.140554
1559	1	HHR                 	HeadHunter Group PLC ADR	16.84	-	-	-		2020-06-30 16:23:25.699698
1560	1	HCAT                	Health Catalyst Inc	37.60	-	-	-		2020-06-30 16:23:51.912907
1561	1	HCCO                	Healthcare Merger Corp Ordinary Shares - Class A	9.38	-	-	-		2020-06-30 16:24:12.356945
1562	1	HCCOU               	-	—	-	-	-		2020-06-30 16:24:34.473943
1563	1	HCCOW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:24:45.966189
1564	1	HCSG                	Healthcare Services Group Inc	23.72	-	-	-		2020-06-30 16:25:25.586065
1565	1	HTIA                	Healthcare Trust Inc Pref Share	—	-	-	-		2020-06-30 16:25:45.405411
1566	1	HQY                 	HealthEquity Inc	58.64	-	-	-		2020-06-30 16:26:03.601287
1567	1	HSTM                	HealthStream Inc	23.24	-	-	-		2020-06-30 16:26:22.996701
1568	1	HTLD                	Heartland Express Inc	20.20	-	-	-		2020-06-30 16:26:41.023273
1569	1	HTLF                	Heartland Financial USA Inc	37.74	-	-	-		2020-06-30 16:26:58.67408
1570	1	HTBX                	Heat Biologics Inc	1.43	-	-	-		2020-06-30 16:27:17.82036
1571	1	HEBT                	Hebron Technology Co Ltd	15.10	-	-	-		2020-06-30 16:27:37.149733
1572	1	HSII                	-	0	-	-	-	Fair value not available	2020-06-30 16:29:57.410712
1573	1	HSII                	Heidrick &amp Struggles International Inc	23.59	-	-	-		2020-06-30 16:37:59.367864
1574	1	HELE                	Helen Of Troy Ltd	182.85	-	-	-		2020-06-30 16:38:17.114582
1575	1	HLIO                	Helios Technologies Inc	38.94	-	-	-		2020-06-30 16:38:35.111431
1576	1	HSDT                	Helius Medical Technologies Inc	0.73	-	-	-		2020-06-30 16:39:01.580036
1577	1	HMTV                	Hemisphere Media Group Inc	10.69	-	-	-		2020-06-30 16:39:16.370911
1578	1	HNNA                	Hennessy Advisors Inc	10.34	-	-	-		2020-06-30 16:39:34.676806
1579	1	HCAC                	Hennessy Capital Acquisition Corp IV Class A	7.13	-	-	-		2020-06-30 16:39:50.254274
1580	1	HCACU               	-	—	-	-	-		2020-06-30 16:40:05.496347
1581	1	HCACW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:40:17.027974
1582	1	HSIC                	Henry Schein Inc	60.00	-	-	-		2020-06-30 16:40:32.379128
1583	1	HEPA                	Hepion Pharmaceuticals Inc	4.61	-	-	-		2020-06-30 16:40:47.852971
1584	1	HTBK                	Heritage Commerce Corp	8.80	-	-	-		2020-06-30 16:41:03.253126
1585	1	HFWA                	Heritage Financial Corp	23.03	-	-	-		2020-06-30 16:41:18.910185
1586	1	HCCI                	Heritage-Crystal Clean Inc	22.85	-	-	-		2020-06-30 16:41:33.89778
1587	1	MLHR                	Herman Miller Inc	36.30	-	-	-		2020-06-30 16:41:48.92954
1588	1	HRTX                	Heron Therapeutics Inc	19.81	-	-	-		2020-06-30 16:42:06.795416
1589	1	HSKA                	Heska Corp	101.28	-	-	-		2020-06-30 16:42:22.996062
1590	1	HX                  	Hexindai Inc ADR	1.44	-	-	-		2020-06-30 16:42:40.830198
1591	1	HFFG                	HF Foods Group Inc	15.78	-	-	-		2020-06-30 16:42:57.206719
1592	1	HIBB                	Hibbett Sports Inc	31.51	-	-	-		2020-06-30 16:43:12.493629
1593	1	SNLN                	-	0	Highland/iBoxx Senior Loan ETF	2	-		2020-06-30 16:44:04.810975
1594	1	HIHO                	Highway Holdings Ltd	3.27	-	-	-		2020-06-30 16:44:22.167118
1595	1	HIMX                	Himax Technologies Inc ADR	4.34	-	-	-		2020-06-30 16:44:39.764989
1596	1	HIFS                	Hingham Institution for Savings	188.28	-	-	-		2020-06-30 16:45:05.654105
1597	1	HQI                 	HireQuest Inc	5.70	-	-	-		2020-06-30 16:45:24.684016
1598	1	HSTO                	Histogen Inc	5.83	-	-	-		2020-06-30 16:45:41.063966
1599	1	HCCH                	HL Acquisitions Corp Ordinary Shares	13.58	-	-	-		2020-06-30 16:46:00.569585
1600	1	HCCHR               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:46:11.890365
1601	1	HCCHU               	-	—	-	-	-		2020-06-30 16:46:29.377465
1602	1	HCCHW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:46:40.464251
1603	1	HMNF                	HMN Financial Inc	17.82	-	-	-		2020-06-30 16:46:59.234674
1604	1	HMSY                	HMS Holdings Corp	32.71	-	-	-		2020-06-30 16:47:17.983041
1605	1	HOLI                	Hollysys Automation Technologies Ltd	14.90	-	-	-		2020-06-30 16:47:37.637228
1606	1	HOLX                	Hologic Inc	48.00	-	-	-		2020-06-30 16:47:56.321887
1607	1	HBCP                	Home Bancorp Inc	32.64	-	-	-		2020-06-30 16:48:12.528522
1608	1	HOMB                	Home BancShares Inc	17.73	-	-	-		2020-06-30 16:48:30.595889
1609	1	HFBL                	Home Federal Bancorp Inc of louisiana	32.60	-	-	-		2020-06-30 16:48:46.867766
1610	1	HMST                	HomeStreet Inc	27.85	-	-	-		2020-06-30 16:49:02.262872
1611	1	HTBI                	HomeTrust Bancshares Inc	20.43	-	-	-		2020-06-30 16:49:17.197358
1612	1	FIXX                	Homology Medicines Inc	17.53	-	-	-		2020-06-30 16:49:32.570735
1613	1	HOFT                	Hooker Furniture Corp	25.54	-	-	-		2020-06-30 16:49:47.648445
1614	1	HOOK                	HOOKIPA Pharma Inc	16.23	-	-	-		2020-06-30 16:50:06.141202
1615	1	HOPE                	Hope Bancorp Inc	11.48	-	-	-		2020-06-30 16:50:24.52352
1616	1	HBNC                	Horizon Bancorp (IN)	13.97	-	-	-		2020-06-30 16:50:40.663136
1617	1	HRZN                	Horizon Technology Finance Corp	13.98	-	-	-		2020-06-30 16:50:58.117896
1618	1	HZNP                	Horizon Therapeutics PLC	53.30	-	-	-		2020-06-30 16:51:15.186541
1619	1	TWNK                	Hostess Brands Inc Class A	15.80	-	-	-		2020-06-30 16:51:34.179093
1620	1	TWNKW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:51:45.634052
1621	1	HOTH                	Hoth Therapeutics Inc Ordinary Shares	3.50	-	-	-		2020-06-30 16:52:02.842043
1622	1	HMHC                	Houghton Mifflin Harcourt Co	3.53	-	-	-		2020-06-30 16:52:21.981055
1623	1	HWCC                	Houston Wire &amp Cable Co	4.01	-	-	-		2020-06-30 16:53:30.308028
1624	1	HOVNP               	Hovnanian Enterprises Inc Pref Share	6.19	-	-	-		2020-06-30 16:53:47.135943
1625	1	HBMD                	Howard Bancorp Inc	13.19	-	-	-		2020-06-30 16:54:04.786792
1626	1	HTGM                	HTG Molecular Diagnostics Inc	1.23	-	-	-		2020-06-30 16:54:19.675838
1627	1	HTHT                	Huazhu Group Ltd ADR	31.37	-	-	-		2020-06-30 16:54:34.632369
1628	1	HUBG                	Hub Group Inc Class A	43.00	-	-	-		2020-06-30 16:54:50.065663
1629	1	HUSN                	Hudson Capital Inc	1.08	-	-	-		2020-06-30 16:55:04.77122
1630	1	HECCU               	-	—	-	-	-		2020-06-30 16:55:20.291724
1631	1	HSON                	Hudson Global Inc	13.27	-	-	-		2020-06-30 16:55:35.479992
1632	1	HDSN                	Hudson Technologies Inc	1.23	-	-	-		2020-06-30 16:55:50.925244
1633	1	HUIZ                	Huize Holding Ltd ADR	7.81	-	-	-		2020-06-30 16:56:05.799968
1634	1	HBAN                	Huntington Bancshares Inc	14.50	-	-	-		2020-06-30 16:56:21.211873
1635	1	HBANN               	Huntington Bancshares Inc Pref Share	31.80	-	-	-		2020-06-30 16:56:37.21366
1636	1	HBANO               	Huntington Bancshares Inc Pref Share	32.02	-	-	-		2020-06-30 16:56:52.079632
1637	1	HURC                	Hurco Companies Inc	35.11	-	-	-		2020-06-30 16:57:07.675781
1638	1	HURN                	Huron Consulting Group Inc	47.91	-	-	-		2020-06-30 16:57:24.792032
1639	1	HCM                 	Hutchison China Meditech Ltd ADR	24.17	-	-	-		2020-06-30 16:57:40.040666
1640	1	HBP                 	Huttig Building Products Inc	2.29	-	-	-		2020-06-30 16:57:55.185438
1641	1	HVBC                	HV Bancorp Inc	17.31	-	-	-		2020-06-30 16:58:10.147051
1642	1	HYMC                	Hycroft Mining Holding Corp Ordinary Shares Class A	13.96	-	-	-		2020-06-30 16:58:26.118825
1643	1	HYMCW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 16:58:37.229866
1644	1	HYRE                	HyreCar Inc	4.98	-	-	-		2020-06-30 16:58:54.65876
1645	1	IIIV                	i3 Verticals Inc	37.35	-	-	-		2020-06-30 16:59:12.044743
1646	1	IAC                 	IAC/InterActiveCorp	227.00	-	-	-		2020-06-30 16:59:30.200517
1647	1	IBKC                	IBERIABANK Corp	63.43	-	-	-		2020-06-30 16:59:47.871969
1648	1	IBKCN               	IBERIABANK Corp Pref Share	32.20	-	-	-		2020-06-30 17:00:02.718305
1649	1	IBKCO               	IBERIABANK Corp Pref Share	34.95	-	-	-		2020-06-30 17:00:18.115735
1650	1	IBKCP               	IBERIABANK Corp Pref Share	34.85	-	-	-		2020-06-30 17:00:33.802825
1651	1	IBEX                	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:00:44.913557
1652	1	ICAD                	icad Inc	12.00	-	-	-		2020-06-30 17:00:59.732508
1653	1	IEP                 	Icahn Enterprises LP	53.08	-	-	-		2020-06-30 17:01:15.894426
1654	1	ICCH                	ICC Holdings Inc	14.44	-	-	-		2020-06-30 17:01:31.278595
1655	1	ICFI                	ICF International Inc	70.99	-	-	-		2020-06-30 17:01:46.778503
1656	1	ICHR                	Ichor Holdings Ltd	30.91	-	-	-		2020-06-30 17:02:02.10973
1657	1	ICLK                	iClick Interactive Asia Group Ltd ADR	5.59	-	-	-		2020-06-30 17:02:17.729091
1658	1	ICLR                	Icon PLC	125.00	-	-	-		2020-06-30 17:02:33.392428
1659	1	ICON                	Iconix Brand Group Inc	1.63	-	-	-		2020-06-30 17:02:48.231184
1660	1	ICUI                	ICU Medical Inc	190.00	-	-	-		2020-06-30 17:03:02.948512
1661	1	IPWR                	Ideal Power Inc	8.05	-	-	-		2020-06-30 17:03:17.924374
1662	1	IDEX                	Ideanomics Inc	3.29	-	-	-		2020-06-30 17:03:33.399696
1663	1	IDYA                	IDEAYA Biosciences Inc	17.89	-	-	-		2020-06-30 17:03:48.488703
1664	1	INVE                	Identiv Inc	7.25	-	-	-		2020-06-30 17:04:03.595074
1665	1	IDRA                	Idera Pharmaceuticals Inc	2.54	-	-	-		2020-06-30 17:04:18.487436
1666	1	IDXX                	IDEXX Laboratories Inc	166.00	-	-	-		2020-06-30 17:04:33.698511
1667	1	IEC                 	IEC Electronics Corp	11.84	-	-	-		2020-06-30 17:04:49.234867
1668	1	IESC                	IES Holdings Inc	27.18	-	-	-		2020-06-30 17:05:03.982399
1669	1	IROQ                	IF Bancorp Inc	20.19	-	-	-		2020-06-30 17:05:18.72844
1670	1	IFMK                	iFresh Inc	1.82	-	-	-		2020-06-30 17:05:34.00269
1671	1	IGMS                	IGM Biosciences Inc Ordinary Shares	61.23	-	-	-		2020-06-30 17:05:48.692327
1672	1	IHRT                	iHeartMedia Inc	13.82	-	-	-		2020-06-30 17:06:04.24046
1673	1	INFO                	IHS Markit Ltd	67.00	-	-	-		2020-06-30 17:06:56.074436
1674	1	IIVI                	II-VI Inc	54.43	-	-	-		2020-06-30 17:07:14.433056
1675	1	IKNX                	Ikonics Corp	6.65	-	-	-		2020-06-30 17:07:32.71775
1676	1	ILMN                	Illumina Inc	285.00	-	-	-		2020-06-30 17:07:51.62661
1677	1	IMAB                	I-MAB ADR	28.61	-	-	-		2020-06-30 17:08:07.743897
1678	1	IMAC                	IMAC Holdings Inc	2.56	-	-	-		2020-06-30 17:08:25.150413
1679	1	IMACW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:08:36.769312
1680	1	ISNS                	Image Sensing Systems Inc	4.80	-	-	-		2020-06-30 17:08:51.935692
1681	1	IMRA                	Imara Inc Ordinary Shares	33.27	-	-	-		2020-06-30 17:09:06.84124
1682	1	IMBI                	iMedia Brands Inc Class A	6.12	-	-	-		2020-06-30 17:09:22.555395
1683	1	IMMR                	Immersion Corp	7.52	-	-	-		2020-06-30 17:09:37.791963
1684	1	ICCC                	ImmuCell Corp	6.33	-	-	-		2020-06-30 17:09:52.616129
1685	1	IMUX                	Immunic Inc	15.94	-	-	-		2020-06-30 17:10:07.94552
1686	1	IMGN                	Immunogen Inc	5.20	-	-	-		2020-06-30 17:10:23.320492
1687	1	IMMU                	Immunomedics Inc	31.23	-	-	-		2020-06-30 17:10:44.083963
1688	1	IMVT                	Immunovant Inc	30.33	-	-	-		2020-06-30 17:11:08.184451
1693	1	IMVTU               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:13:49.258782
1694	1	IMVTW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:14:00.376867
1695	1	IMRN                	Immuron Ltd ADR	9.14	-	-	-		2020-06-30 17:16:20.132187
1696	1	IMRNW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:16:31.276048
1697	1	IMMP                	Immutep Ltd ADR	1.87	-	-	-		2020-06-30 17:16:49.514997
1698	1	PI                  	Impinj Inc	33.82	-	-	-		2020-06-30 17:17:07.044392
1699	1	IMV                 	IMV Inc	4.48	-	-	-		2020-06-30 17:17:21.832176
1700	1	NARI                	Inari Medical Inc Ordinary Shares	35.17	-	-	-		2020-06-30 17:17:37.165464
1701	1	INCY                	Incyte Corp	97.00	-	-	-		2020-06-30 17:17:51.993603
1702	1	INDB                	Independent Bank Corp	69.52	-	-	-		2020-06-30 17:18:07.312895
1703	1	IBCP                	Independent Bank Corp (Ionia MI)	18.97	-	-	-		2020-06-30 17:18:22.18892
1704	1	IBTX                	Independent Bank Group Inc	57.39	-	-	-		2020-06-30 17:18:37.545802
1705	1	ILPT                	Industrial Logistics Properties Trust	23.20	-	-	-		2020-06-30 17:18:52.803054
1706	1	INFN                	Infinera Corp	—	-	-	-		2020-06-30 17:19:08.113782
1707	1	INFI                	Infinity Pharmaceuticals Inc	1.34	-	-	-		2020-06-30 17:19:23.278832
1708	1	IFRX                	InflaRx NV	7.16	-	-	-		2020-06-30 17:19:38.164956
1709	1	III                 	Information Services Group Inc	2.70	-	-	-		2020-06-30 17:19:53.546124
1710	1	IEA                 	Infrastructure and Energy Alternatives Inc	6.10	-	-	-		2020-06-30 17:20:08.867472
1711	1	IEAWW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:20:20.667468
1712	1	IMKTA               	Ingles Markets Inc Class A	51.25	-	-	-		2020-06-30 17:20:35.387066
1713	1	INMD                	InMode Ltd	35.38	-	-	-		2020-06-30 17:20:50.704252
1714	1	INMB                	INmune Bio Inc	7.51	-	-	-		2020-06-30 17:21:05.370472
1715	1	IPHA                	Innate Pharma SA ADR	7.82	-	-	-		2020-06-30 17:21:20.249902
1716	1	INWK                	InnerWorkings Inc	3.10	-	-	-		2020-06-30 17:21:35.878676
1717	1	INOD                	Innodata Inc	1.82	-	-	-		2020-06-30 17:21:51.26715
1718	1	IOSP                	Innospec Inc	79.69	-	-	-		2020-06-30 17:22:06.122464
1719	1	ISSC                	Innovative Solutions and Support Inc	6.47	-	-	-		2020-06-30 17:22:20.974684
1720	1	INVA                	Innoviva Inc	14.29	-	-	-		2020-06-30 17:22:35.840507
1721	1	INGN                	Inogen Inc	42.53	-	-	-		2020-06-30 17:22:50.895919
1722	1	INOV                	Inovalon Holdings Inc	17.38	-	-	-		2020-06-30 17:23:06.186368
1723	1	INO                 	Inovio Pharmaceuticals Inc	24.34	-	-	-		2020-06-30 17:23:21.095762
1724	1	INPX                	Inpixon	2.48	-	-	-		2020-06-30 17:23:35.885382
1725	1	INSG                	Inseego Corp	11.49	-	-	-		2020-06-30 17:23:50.962405
1726	1	NSIT                	Insight Enterprises Inc	63.81	-	-	-		2020-06-30 17:24:05.826468
1727	1	ISIG                	Insignia Systems Inc	1.20	-	-	-		2020-06-30 17:24:21.146149
1728	1	INSM                	Insmed Inc	23.34	-	-	-		2020-06-30 17:24:35.957157
1729	1	INSE                	Inspired Entertainment Inc	4.89	-	-	-		2020-06-30 17:24:51.275457
1730	1	IIIN                	Insteel Industries Inc	24.03	-	-	-		2020-06-30 17:25:06.914841
1731	1	PODD                	Insulet Corp	126.00	-	-	-		2020-06-30 17:25:21.861985
1732	1	INSU                	Insurance Acquisition Corp Ordinary Shares - Class A	12.92	-	-	-		2020-06-30 17:25:36.652693
1733	1	INSUU               	-	—	-	-	-		2020-06-30 17:25:51.510584
1734	1	INSUW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:26:02.760386
1735	1	NTEC                	Intec Pharma Ltd	0.51	-	-	-		2020-06-30 17:26:17.959981
1736	1	IART                	Integra Lifesciences Holdings Corp	47.02	-	-	-		2020-06-30 17:26:32.671386
1737	1	IMTE                	Integrated Media Technology Ltd	5.58	-	-	-		2020-06-30 17:26:47.433393
1738	1	INTC                	Intel Corp	70.00	-	-	-		2020-06-30 17:27:02.63286
1739	1	NTLA                	Intellia Therapeutics Inc	21.19	-	-	-		2020-06-30 17:27:17.504162
1740	1	IDN                 	Intellicheck Inc	7.40	-	-	-		2020-06-30 17:27:32.256375
1741	1	IPAR                	Inter Parfums Inc	53.44	-	-	-		2020-06-30 17:27:47.083488
1742	1	IBKR                	Interactive Brokers Group Inc	39.43	-	-	-		2020-06-30 17:28:01.85165
1743	1	ICPT                	Intercept Pharmaceuticals Inc	55.00	-	-	-		2020-06-30 17:28:47.197145
1744	1	IDCC                	InterDigital Inc	61.60	-	-	-		2020-06-30 17:29:05.305614
1745	1	TILE                	Interface Inc	10.79	-	-	-		2020-06-30 17:29:22.690065
1746	1	IBOC                	International Bancshares Corp	40.16	-	-	-		2020-06-30 17:29:37.909103
1747	1	IGIC                	International General Insurance Holdings Ltd Ordinary Shares	8.28	-	-	-		2020-06-30 17:29:52.718028
1748	1	IGICW               	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:30:04.439158
1749	1	IMXI                	International Money Express Inc	13.15	-	-	-		2020-06-30 17:30:19.271972
1750	1	IDXG                	Interpace Biosciences Inc	7.95	-	-	-		2020-06-30 17:30:34.047564
1751	1	XENT                	Intersect ENT Inc	19.96	-	-	-		2020-06-30 17:30:48.866283
1752	1	IPLDP               	Interstate Power and Light Co Pref Share	—	-	-	-		2020-06-30 17:31:03.625058
1753	1	IVAC                	Intevac Inc	7.75	-	-	-		2020-06-30 17:31:18.433769
1754	1	INTL                	INTL FCStone Inc	63.03	-	-	-		2020-06-30 17:31:33.322423
1755	1	ITCI                	Intra-Cellular Therapies Inc	30.64	-	-	-		2020-06-30 17:31:48.136712
1756	1	IIN                 	IntriCon Corp	18.22	-	-	-		2020-06-30 17:32:02.860325
1757	1	INTU                	Intuit Inc	277.00	-	-	-		2020-06-30 17:32:18.353918
1758	1	ISRG                	Intuitive Surgical Inc	443.00	-	-	-		2020-06-30 17:32:33.183788
1759	1	PLW                 	-	0	Invesco 1-30 Laddered Treasury ETF	2	-		2020-06-30 17:33:05.579724
1760	1	ADRE                	-	0	Invesco BLDRS Emerging Markets 50 ADR Index Fund	3	-		2020-06-30 17:33:24.849471
1761	1	BSCK                	-	0	Invesco BulletShares 2020 Corporate Bond ETF	4	-		2020-06-30 17:33:42.866252
1762	1	BSJK                	-	0	Invesco BulletShares 2020 High Yield Corporate Bond ETF	3	-		2020-06-30 17:34:00.974745
1763	1	BSCL                	-	0	Invesco BulletShares 2021 Corporate Bond ETF	-	-		2020-06-30 17:34:19.273941
1764	1	BSJL                	-	0	Invesco BulletShares 2021 High Yield Corporate Bond ETF	4	-		2020-06-30 17:34:37.650231
1765	1	BSML                	-	0	Invesco BulletShares (R) 2021 Municipal Bond ETF	-	-		2020-06-30 17:34:55.648636
1766	1	BSAE                	-	0	Invesco BulletShares (R) 2021 USD Emerging Markets Debt ETF	-	-		2020-06-30 17:35:13.530382
1767	1	BSCM                	-	0	Invesco BulletShares 2022 Corporate Bond ETF	-	-		2020-06-30 17:35:32.063815
1768	1	BSJM                	-	0	Invesco BulletShares 2022 High Yield Corporate Bond ETF	3	-		2020-06-30 17:35:50.253913
1769	1	BSMM                	-	0	Invesco BulletShares (R) 2022 Municipal Bond ETF	-	-		2020-06-30 17:36:08.23464
1770	1	BSBE                	-	0	Invesco BulletShares (R) 2022 USD Emerging Markets Debt ETF	-	-		2020-06-30 17:36:26.56275
1771	1	BSCN                	-	0	Invesco BulletShares 2023 Corporate Bond ETF	-	-		2020-06-30 17:36:45.536921
1772	1	BSJN                	-	0	Invesco BulletShares 2023 High Yield Corporate Bond ETF	3	-		2020-06-30 17:37:03.584252
1773	1	BSMN                	-	0	Invesco BulletShares (R) 2023 Municipal Bond ETF	-	-		2020-06-30 17:37:21.51114
1842	1	ISBC                	Investors Bancorp Inc	9.91	-	-	-		2020-06-30 18:00:51.111271
1774	1	BSCE                	-	0	Invesco BulletShares (R) 2023 USD Emerging Markets Debt ETF	-	-		2020-06-30 17:37:39.650054
1775	1	BSCO                	-	0	Invesco BulletShares 2024 Corporate Bond ETF	-	-		2020-06-30 17:37:58.459625
1776	1	BSJO                	-	0	Invesco BulletShares 2024 High Yield Corporate Bond ETF	4	-		2020-06-30 17:38:16.511226
1777	1	BSMO                	-	0	Invesco BulletShares (R) 2024 Municipal Bond ETF	-	-		2020-06-30 17:38:34.441541
1778	1	BSDE                	-	0	Invesco BulletShares (R) 2024 Emerging Markets Debt ETF	-	-		2020-06-30 17:38:52.692687
1779	1	BSCP                	-	0	Invesco BulletShares 2025 Corporate Bond ETF	-	-		2020-06-30 17:39:10.675263
1780	1	BSJP                	-	0	Invesco BulletShares 2025 High Yield Corporate Bond ETF	-	-		2020-06-30 17:39:28.630568
1781	1	BSMP                	-	0	Invesco BulletShares (R) 2025 Municipal Bond ETF	-	-		2020-06-30 17:39:46.775091
1782	1	BSCQ                	-	0	Invesco BulletShares 2026 Corporate Bond ETF	-	-		2020-06-30 17:40:04.810944
1783	1	BSJQ                	-	0	Invesco BulletShares 2026 High Yield Corporate Bond ETF	-	-		2020-06-30 17:40:22.726622
1784	1	BSMQ                	-	0	Invesco BulletShares (R) 2026 Municipal Bond ETF	-	-		2020-06-30 17:40:40.690887
1785	1	BSCR                	-	0	Invesco BulletShares 2027 Corporate Bond ETF	-	-		2020-06-30 17:40:58.769489
1786	1	BSJR                	-	0	Invesco BulletShares 2027 High Yield Corporate Bond ETF	-	-		2020-06-30 17:41:18.201108
1787	1	BSMR                	-	0	Invesco BulletShares (R) 2027 Municipal Bond ETF	-	-		2020-06-30 17:41:36.262675
1788	1	BSCS                	-	0	Invesco BulletShares 2028 Corporate Bond ETF	-	-		2020-06-30 17:41:54.299488
1789	1	BSMS                	-	0	Invesco BulletShares (R) 2028 Municipal Bond ETF	-	-		2020-06-30 17:42:13.4325
1790	1	BSCT                	-	0	Invesco BulletShares 2029 Corporate Bond ETF	-	-		2020-06-30 17:42:31.407093
1791	1	BSMT                	-	0	Invesco BulletShares 2029 Municipal Bond ETF	-	-		2020-06-30 17:42:49.727023
1792	1	PKW                 	-	0	Invesco BuyBack Achievers ETF	4	-		2020-06-30 17:43:07.679492
1793	1	PFM                 	-	0	Invesco Dividend Achievers™ ETF	5	-		2020-06-30 17:44:16.861371
1794	1	PYZ                 	-	0	Invesco DWA Basic Materials Momentum ETF	4	-		2020-06-30 17:44:37.89046
1795	1	PEZ                 	-	0	Invesco DWA Consumer Cyclicals Momentum ETF	2	-		2020-06-30 17:44:55.671702
1796	1	PSL                 	-	0	Invesco DWA Consumer Staples Momentum ETF	3	-		2020-06-30 17:45:15.896553
1797	1	PIZ                 	-	0	Invesco DWA Developed Markets Momentum ETF	2	-		2020-06-30 17:45:36.205446
1798	1	PIE                 	-	0	Invesco DWA Emerging Markets Momentum ETF	3	-		2020-06-30 17:45:56.907267
1799	1	PXI                 	-	0	Invesco DWA Energy Momentum ETF	3	-		2020-06-30 17:46:17.222318
1800	1	PFI                 	-	0	Invesco DWA Financial Momentum ETF	4	-		2020-06-30 17:46:38.026626
1801	1	PTH                 	-	0	Invesco DWA Healthcare Momentum ETF	3	-		2020-06-30 17:46:58.866582
1802	1	PRN                 	-	0	-	-	-	No result in autocomplete search	2020-06-30 17:47:10.009342
1803	1	PDP                 	-	0	Invesco DWA Momentum ETF	4	-		2020-06-30 17:47:30.812604
1804	1	DWAS                	-	0	Invesco DWA SmallCap Momentum ETF	2	-		2020-06-30 17:47:52.096305
1805	1	PTF                 	-	0	Invesco DWA Technology Momentum ETF	2	-		2020-06-30 17:48:13.409313
1806	1	PUI                 	-	0	Invesco DWA Utilities Momentum ETF	4	-		2020-06-30 17:48:33.523912
1807	1	IDLB                	-	0	Invesco FTSE International Low Beta Equal Weight ETF	3	-		2020-06-30 17:48:54.768381
1808	1	PRFZ                	-	0	Invesco FTSE RAFI US 1500 Small-Mid ETF	3	-		2020-06-30 17:49:17.638495
1809	1	PIO                 	-	0	Invesco Global Water ETF	-	-		2020-06-30 17:49:37.94136
1810	1	PGJ                 	-	0	Invesco Golden Dragon China ETF	3	-		2020-06-30 17:49:58.600632
1811	1	PEY                 	-	0	Invesco High Yield Equity Dividend Achievers™ ETF	5	-		2020-06-30 17:50:19.63001
1812	1	IPKW                	-	0	Invesco International BuyBack Achievers™ ETF	2	-		2020-06-30 17:50:37.624094
1813	1	PID                 	-	0	Invesco International Dividend Achievers ETF	2	-		2020-06-30 17:50:55.734804
1814	1	KBWB                	-	0	Invesco KBW Bank ETF	2	-		2020-06-30 17:51:13.697754
1815	1	KBWD                	-	0	Invesco KBW High Dividend Yield Financial ETF	1	-		2020-06-30 17:51:34.190698
1816	1	KBWY                	-	0	Invesco KBW Premium Yield Equity REIT ETF	1	-		2020-06-30 17:51:54.816152
1817	1	KBWP                	-	0	Invesco KBW Property &amp Casualty Insurance ETF	5	-		2020-06-30 17:52:16.768625
1818	1	KBWR                	-	0	Invesco KBW Regional Banking ETF	2	-		2020-06-30 17:52:38.014945
1819	1	PNQI                	-	0	Invesco NASDAQ Internet ETF	4	-		2020-06-30 17:52:57.90587
1820	1	PDBC                	-	0	Invesco Optimum Yield Diversified Commodity Strategy No K-1 ETF	2	-		2020-06-30 17:53:19.55263
1821	1	QQQ                 	-	0	Invesco QQQ Trust	5	-		2020-06-30 17:53:41.583612
1822	1	ISDX                	-	0	Invesco RAFI™ Strategic Developed ex-US ETF	-	-		2020-06-30 17:54:02.496239
1823	1	ISDS                	-	0	Invesco RAFI™ Strategic Developed ex-US Small Company ETF	-	-		2020-06-30 17:54:25.169937
1824	1	ISEM                	-	0	Invesco RAFI™ Strategic Emerging Markets ETF	-	-		2020-06-30 17:54:45.680762
1825	1	IUS                 	-	0	Invesco RAFI™ Strategic US ETF	-	-		2020-06-30 17:55:06.279354
1826	1	IUSS                	-	0	Invesco RAFI™ Strategic US Small Company ETF	-	-		2020-06-30 17:55:26.928581
1827	1	USLB                	-	0	Invesco Russell 1000 Low Beta Equal Weight ETF	4	-		2020-06-30 17:55:48.597548
1828	1	PSCD                	-	0	Invesco S&ampP SmallCap Consumer Discretionary ETF	1	-		2020-06-30 17:56:10.075447
1829	1	PSCC                	-	0	Invesco S&ampP SmallCap Consumer Staples ETF	4	-		2020-06-30 17:56:30.930314
1830	1	PSCE                	-	0	Invesco S&ampP SmallCap Energy ETF	1	-		2020-06-30 17:56:51.709379
1831	1	PSCF                	-	0	Invesco S&ampP SmallCap Financials ETF	3	-		2020-06-30 17:57:12.212003
1832	1	PSCH                	-	0	Invesco S&ampP SmallCap Health Care ETF	4	-		2020-06-30 17:57:32.489636
1833	1	PSCI                	-	0	Invesco S&ampP SmallCap Industrials ETF	2	-		2020-06-30 17:57:53.324959
1834	1	PSCT                	-	0	Invesco S&ampP SmallCap Information Technology ETF	2	-		2020-06-30 17:58:14.204622
1835	1	PSCM                	-	0	Invesco S&ampP SmallCap Materials ETF	3	-		2020-06-30 17:58:35.648975
1836	1	PSCU                	-	0	Invesco S&ampP SmallCap Utilities &amp Communication Services ETF	3	-		2020-06-30 17:58:56.576366
1837	1	VRIG                	-	0	Invesco Variable Rate Investment Grade ETF	2	-		2020-06-30 17:59:19.086639
1838	1	PHO                 	-	0	Invesco Water Resources ETF	-	-		2020-06-30 17:59:40.158303
1839	1	ISTR                	Investar Holding Corp	22.28	-	-	-		2020-06-30 18:00:06.868427
1840	1	CMFNL               	-	0	-	-	-	No result in autocomplete search	2020-06-30 18:00:18.038053
1841	1	ICMB                	Investcorp Credit Management BDC Inc	5.24	-	-	-		2020-06-30 18:00:36.16822
1843	1	ITIC                	Investors Title Co	133.51	-	-	-		2020-06-30 18:01:45.274449
1844	1	NVIV                	InVivo Therapeutics Holdings Corp	2.91	-	-	-		2020-06-30 18:02:02.827617
1845	1	IONS                	Ionis Pharmaceuticals Inc	58.00	-	-	-		2020-06-30 18:02:20.851051
1846	1	IOVA                	Iovance Biotherapeutics Inc	25.73	-	-	-		2020-06-30 18:02:35.725979
1847	1	IPGP                	IPG Photonics Corp	141.22	-	-	-		2020-06-30 18:02:50.707364
1848	1	CLRG                	-	0	IQ Chaikin U.S. Large Cap ETF	-	-		2020-06-30 18:03:26.224891
1849	1	CSML                	-	0	IQ Chaikin U.S. Small Cap ETF	1	-		2020-06-30 18:03:45.691199
1850	1	IQ                  	iQIYI Inc ADR	22.49	-	-	-		2020-06-30 18:04:01.446403
1851	1	IRMD                	iRadimed Corp	21.50	-	-	-		2020-06-30 18:04:17.356653
1852	1	IRTC                	iRhythm Technologies Inc	89.45	-	-	-		2020-06-30 18:04:32.112981
1853	1	IRIX                	IRIDEX Corp	3.36	-	-	-		2020-06-30 18:04:47.195281
1854	1	IRDM                	Iridium Communications Inc	26.15	-	-	-		2020-06-30 18:05:02.103883
1855	1	IRBT                	iRobot Corp	87.76	-	-	-		2020-06-30 18:05:16.864329
1856	1	IRWD                	Ironwood Pharmaceuticals Inc Class A	10.01	-	-	-		2020-06-30 18:05:31.77895
1857	1	IRCP                	IRSA Propiedades Comerciales SA ADR	9.44	-	-	-		2020-06-30 18:05:47.707768
1858	1	SLQD                	-	0	iShares 0-5 Year Investment Grade Corporate Bond ETF	5	-		2020-06-30 18:06:06.368132
1859	1	ISHG                	-	0	iShares 1-3 Year International Treasury Bond ETF	2	-		2020-06-30 18:06:25.80197
1860	1	SHY                 	-	0	iShares 1-3 Year Treasury Bond ETF	3	-		2020-06-30 18:06:43.867306
1861	1	TLT                 	-	0	iShares 20+ Year Treasury Bond ETF	3	-		2020-06-30 18:07:01.824383
1862	1	IEI                 	-	0	iShares 3-7 Year Treasury Bond ETF	4	-		2020-06-30 18:07:20.09215
1863	1	IEF                 	-	0	iShares 7-10 Year Treasury Bond ETF	1	-		2020-06-30 18:07:40.529899
1864	1	AIA                 	-	0	iShares Asia 50 ETF	4	-		2020-06-30 18:07:58.468478
1865	1	USIG                	-	0	iShares Broad USD Investment Grade Corporate Bond ETF	3	-		2020-06-30 18:08:16.426266
1866	1	COMT                	-	0	iShares Commodities Select Strategy ETF	3	-		2020-06-30 18:08:34.947995
1867	1	ISTB                	-	0	iShares Core 1-5 Year USD Bond ETF	5	-		2020-06-30 18:08:53.190657
1868	1	IXUS                	-	0	iShares Core MSCI Total International Stock ETF	4	-		2020-06-30 18:09:14.698241
1869	1	IUSG                	-	0	iShares Core S&ampP U.S. Growth ETF	4	-		2020-06-30 18:09:36.434914
1870	1	IUSV                	-	0	iShares Core S&ampP U.S. Value ETF	4	-		2020-06-30 18:09:58.041422
1871	1	IUSB                	-	0	iShares Core Total USD Bond Market ETF	4	-		2020-06-30 18:10:20.006306
1872	1	HEWG                	-	0	iShares Currency Hedged MSCI Germany ETF	-	-		2020-06-30 18:10:40.455463
1873	1	SUSB                	-	0	iShares ESG 1-5 Year USD Corporate Bond ETF	-	-		2020-06-30 18:11:02.009765
1874	1	ESGD                	-	0	iShares ESG MSCI EAFE ETF	4	-		2020-06-30 18:11:22.779865
1875	1	ESGE                	-	0	iShares ESG MSCI EM ETF	4	-		2020-06-30 18:11:43.54826
1876	1	LDEM                	-	0	iShares® ESG MSCI EM Leaders ETF	-	-		2020-06-30 18:12:05.076656
1877	1	ESGU                	-	0	iShares ESG MSCI USA ETF	4	-		2020-06-30 18:12:24.896308
1878	1	SUSL                	-	0	iShares ESG MSCI USA Leaders ETF	-	-		2020-06-30 18:12:44.729494
1879	1	SUSC                	-	0	iShares ESG USD Corporate Bond ETF	-	-		2020-06-30 18:13:02.61803
1880	1	XT                  	-	0	iShares Exponential Technologies ETF	-	-		2020-06-30 18:13:23.426497
1881	1	FALN                	-	0	iShares Fallen Angels USD Bond ETF	4	-		2020-06-30 18:13:44.020613
1882	1	IFEU                	-	0	iShares Europe Developed Real Estate ETF	3	-		2020-06-30 18:14:04.23202
1883	1	IFGL                	-	0	iShares International Developed Real Estate ETF	2	-		2020-06-30 18:14:24.838695
1884	1	BGRN                	-	0	iShares Global Green Bond ETF	-	-		2020-06-30 18:14:45.955533
1885	1	IGF                 	-	0	iShares Global Infrastructure ETF	2	-		2020-06-30 18:15:06.873151
1886	1	GNMA                	-	0	iShares GNMA Bond ETF	3	-		2020-06-30 18:15:27.889091
1887	1	IBTA                	-	0	iShares iBonds Dec 2021 Term Treasury ETF	-	-		2020-06-30 18:15:49.355366
1888	1	IBTB                	-	0	iShares iBonds Dec 2022 Term Treasury ETF	-	-		2020-06-30 18:16:10.412752
1889	1	IBTD                	-	0	iShares iBonds Dec 2023 Term Treasury ETF	-	-		2020-06-30 18:16:31.585158
1890	1	IBTE                	-	0	iShares iBonds Dec 2024 Term Treasury ETF	-	-		2020-06-30 18:16:52.015671
1891	1	IBTF                	-	0	iShares iBonds Dec 2025 Term Treasury ETF	-	-		2020-06-30 18:17:12.417382
1892	1	IBTG                	-	0	iShares iBonds Dec 2026 Term Treasury ETF	-	-		2020-06-30 18:17:33.042833
1893	1	IBTH                	-	0	iShares iBonds Dec 2027 Term Treasury ETF	-	-		2020-06-30 18:18:31.224312
1894	1	IBTI                	-	0	iShares iBonds Dec 2028 Term Treasury ETF	-	-		2020-06-30 18:18:52.496983
1895	1	IBTJ                	-	0	iShares iBonds Dec 2029 Term Treasury ETF	-	-		2020-06-30 18:19:10.454029
1896	1	HYXE                	-	0	iShares iBoxx $ High Yield ex Oil &amp Gas Corporate Bond ETF	5	-		2020-06-30 18:19:30.367026
1897	1	IGIB                	-	0	iShares Intermediate-Term Corporate Bond ETF	3	-		2020-06-30 18:19:48.64312
1898	1	IGOV                	-	0	iShares International Treasury Bond ETF	3	-		2020-06-30 18:20:06.798866
1899	1	EMB                 	-	0	iShares J.P. Morgan USD Emerging Markets Bond ETF	5	-		2020-06-30 18:20:25.705512
1900	1	MBB                 	-	0	iShares MBS ETF	3	-		2020-06-30 18:20:43.489234
1901	1	JKI                 	-	0	iShares Morningstar Mid-Cap Value ETF	3	-		2020-06-30 18:21:01.664306
1902	1	ACWX                	-	0	iShares MSCI ACWI ex U.S. ETF	3	-		2020-06-30 18:21:20.059784
1903	1	ACWI                	-	0	iShares MSCI ACWI ETF	3	-		2020-06-30 18:21:38.410053
1904	1	AAXJ                	-	0	iShares MSCI All Country Asia ex Japan ETF	3	-		2020-06-30 18:21:56.372523
1905	1	EWZS                	-	0	iShares MSCI Brazil Small-Cap ETF	1	-		2020-06-30 18:22:15.386293
1906	1	MCHI                	-	0	iShares MSCI China ETF	3	-		2020-06-30 18:22:34.052797
1907	1	SCZ                 	-	0	iShares MSCI EAFE Small-Cap ETF	4	-		2020-06-30 18:22:52.857605
1908	1	EEMA                	-	0	iShares MSCI Emerging Markets Asia ETF	3	-		2020-06-30 18:23:11.199532
1909	1	EMXC                	-	0	iShares MSCI Emerging Markets ex China ETF	-	-		2020-06-30 18:23:29.52369
1910	1	EUFN                	-	0	iShares MSCI Europe Financials ETF	1	-		2020-06-30 18:23:47.529783
1911	1	IEUS                	-	0	iShares MSCI Europe Small-Cap ETF	3	-		2020-06-30 18:24:06.581124
1912	1	RING                	-	0	iShares MSCI Global Gold Miners ETF	3	-		2020-06-30 18:24:24.362584
1913	1	SDG                 	-	0	iShares MSCI Global Impact ETF	4	-		2020-06-30 18:24:42.523413
1914	1	EWJE                	-	0	iShares MSCI Japan Equal Weighted ETF	-	-		2020-06-30 18:25:00.784216
1915	1	EWJV                	-	0	iShares MSCI Japan Value ETF	-	-		2020-06-30 18:25:19.695601
1916	1	ENZL                	-	0	iShares MSCI New Zealand ETF	-	-		2020-06-30 18:25:37.726067
1917	1	QAT                 	-	0	iShares MSCI Qatar ETF	-	-		2020-06-30 18:25:55.979157
1918	1	TUR                 	-	0	iShares MSCI Turkey ETF	-	-		2020-06-30 18:26:15.032438
1919	1	UAE                 	-	0	iShares MSCI UAE ETF	-	-		2020-06-30 18:26:34.184573
1920	1	IBB                 	-	0	iShares Nasdaq Biotechnology ETF	3	-		2020-06-30 18:26:52.691909
1921	1	SOXX                	-	0	iShares PHLX Semiconductor ETF	4	-		2020-06-30 18:27:11.141996
1922	1	PFF                 	-	0	iShares Preferred and Income Securities ETF	2	-		2020-06-30 18:27:29.208756
1923	1	AMCA                	-	0	iShares Russell 1000 Pure U.S. Revenue ETF	-	-		2020-06-30 18:27:47.30523
1924	1	EMIF                	-	0	iShares Emerging Markets Infrastructure ETF	1	-		2020-06-30 18:28:05.324163
1925	1	ICLN                	-	0	iShares Global Clean Energy ETF	-	-		2020-06-30 18:28:23.375629
1926	1	WOOD                	-	0	iShares Global Timber &amp Forestry ETF	4	-		2020-06-30 18:28:42.604672
1927	1	INDY                	-	0	iShares India 50 ETF	3	-		2020-06-30 18:29:00.714315
1928	1	IJT                 	-	0	iShares S&ampP Small-Cap 600 Growth ETF	3	-		2020-06-30 18:29:19.718778
1929	1	DVY                 	-	0	iShares Select Dividend ETF	3	-		2020-06-30 18:29:38.024748
1930	1	SHV                 	-	0	iShares Short Treasury Bond ETF	2	-		2020-06-30 18:29:56.038685
1931	1	IGSB                	-	0	iShares Short-Term Corporate Bond ETF	4	-		2020-06-30 18:30:14.336121
1932	1	ITMR                	Itamar Medical Ltd ADR	20.65	-	-	-		2020-06-30 18:30:54.81955
1933	1	ITI                 	Iteris Inc	6.62	-	-	-		2020-06-30 18:31:10.095751
1934	1	ITRM                	Iterum Therapeutics PLC	2.21	-	-	-		2020-06-30 18:31:24.957757
1935	1	ITRI                	Itron Inc	70.66	-	-	-		2020-06-30 18:31:40.676118
1936	1	ITRN                	Ituran Location and Control Ltd	20.06	-	-	-		2020-06-30 18:31:55.549304
1937	1	ISEE                	IVERIC bio Inc	7.59	-	-	-		2020-06-30 18:32:11.179963
1938	1	IZEA                	IZEA Worldwide Inc	1.82	-	-	-		2020-06-30 18:32:26.196544
1939	1	JJSF                	J&ampJ Snack Foods Corp	131.29	-	-	-		2020-06-30 18:32:42.60561
1940	1	MAYS                	J. W. Mays Inc	30.43	-	-	-		2020-06-30 18:32:58.597821
1941	1	JBHT                	JB Hunt Transport Services Inc	97.00	-	-	-		2020-06-30 18:33:14.262126
1942	1	JCOM                	J2 Global Inc	69.66	-	-	-		2020-06-30 18:33:29.154734
1943	1	JKHY                	Jack Henry &amp Associates Inc	131.00	-	-	-		2020-06-30 18:34:25.064538
1944	1	JACK                	Jack In The Box Inc	91.70	-	-	-		2020-06-30 18:34:43.093046
1945	1	JAGX                	Jaguar Health Inc	0.86	-	-	-		2020-06-30 18:35:00.766016
1946	1	JAKK                	Jakks Pacific Inc	1.49	-	-	-		2020-06-30 18:35:16.81994
1947	1	JRVR                	James River Group Holdings Ltd	48.10	-	-	-		2020-06-30 18:35:32.621252
1948	1	JAN                 	JanOne Inc	5.19	-	-	-		2020-06-30 18:35:47.920912
1949	1	JSML                	-	0	Janus Henderson Small Cap Growth Alpha ETF	3	-		2020-07-01 09:44:14.434183
1950	1	JSMD                	-	0	Janus Henderson Small/Mid Cap Growth Alpha ETF	2	-		2020-07-01 09:44:37.271771
1951	1	JAZZ                	Jazz Pharmaceuticals PLC	135.00	-	-	-		2020-07-01 09:45:09.677869
1952	1	JD                  	JD.com Inc ADR	59.00	-	-	-		2020-07-01 09:45:27.942231
1953	1	JRSH                	Jerash Holdings (US) Inc	6.79	-	-	-		2020-07-01 09:45:42.674051
1954	1	JBLU                	JetBlue Airways Corp	—	-	-	-		2020-07-01 09:45:59.37332
1955	1	JCTCF               	Jewett-Cameron Trading Co Ltd	9.30	-	-	-		2020-07-01 09:46:16.873008
1956	1	JFIN                	Jiayin Group Inc ADR	4.92	-	-	-		2020-07-01 09:46:34.508601
1957	1	JMPNL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 09:46:45.733722
1958	1	JMPNZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 09:46:57.152364
1959	1	JBSS                	John B Sanfilippo &amp Son Inc	82.99	-	-	-		2020-07-01 09:47:12.077795
1960	1	JOUT                	Johnson Outdoors Inc Class A	92.55	-	-	-		2020-07-01 09:47:27.765018
1961	1	JNCE                	Jounce Therapeutics Inc	10.95	-	-	-		2020-07-01 09:47:42.972678
1962	1	YY                  	JOYY Inc ADR	103.53	-	-	-		2020-07-01 09:47:57.424113
1963	1	KALU                	Kaiser Aluminum Corp	84.30	-	-	-		2020-07-01 09:48:12.258305
1964	1	KXIN                	Kaixin Auto Holdings Ordinary Shares	1.38	-	-	-		2020-07-01 09:48:27.746593
1965	1	KALA                	Kala Pharmaceuticals Inc	11.36	-	-	-		2020-07-01 09:48:42.579159
1966	1	KLDO                	Kaleido Biosciences Inc	9.80	-	-	-		2020-07-01 09:48:57.437785
1967	1	KALV                	KalVista Pharmaceuticals Inc	19.22	-	-	-		2020-07-01 09:49:12.277234
1968	1	KMDA                	Kamada Ltd	8.54	-	-	-		2020-07-01 09:49:27.386714
1969	1	KNDI                	Kandi Technologies Group Inc	5.66	-	-	-		2020-07-01 09:49:42.255617
1970	1	KRTX                	Karuna Therapeutics Inc	92.28	-	-	-		2020-07-01 09:49:58.158254
1971	1	KPTI                	Karyopharm Therapeutics Inc	18.47	-	-	-		2020-07-01 09:50:12.662592
1972	1	KZIA                	Kazia Therapeutics Ltd ADR	4.28	-	-	-		2020-07-01 09:50:27.855015
1973	1	KBLM                	KBL Merger Corp IV	9.93	-	-	-		2020-07-01 09:50:42.659417
1974	1	KBLMR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 09:50:54.37623
1975	1	KBLMU               	KBL Merger Corp IV	10.52	-	-	-		2020-07-01 09:51:09.630909
1976	1	KBLMW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 09:51:20.855628
1977	1	KBSF                	KBS Fashion Group Ltd	3.93	-	-	-		2020-07-01 09:51:35.986101
1978	1	KRNY                	Kearny Financial Corp	9.57	-	-	-		2020-07-01 09:51:50.820402
1979	1	KELYA               	Kelly Services Inc Class A	21.29	-	-	-		2020-07-01 09:52:07.297189
1980	1	KELYB               	Kelly Services Inc Class B	20.42	-	-	-		2020-07-01 09:52:22.542341
1981	1	KFFB                	Kentucky First Federal Bancorp	8.38	-	-	-		2020-07-01 09:52:37.483217
1982	1	KROS                	Keros Therapeutics Inc	37.37	-	-	-		2020-07-01 09:52:52.317028
1983	1	KEQU                	Kewaunee Scientific Corp	15.50	-	-	-		2020-07-01 09:53:07.119206
1984	1	KTCC                	Key Tronic Corp	7.91	-	-	-		2020-07-01 09:53:22.472561
1985	1	KZR                 	Kezar Life Sciences Inc	6.83	-	-	-		2020-07-01 09:53:37.391961
1986	1	KFRC                	Kforce Inc	31.54	-	-	-		2020-07-01 09:53:52.409814
1987	1	KE                  	Kimball Electronics Inc	15.35	-	-	-		2020-07-01 09:54:09.485615
1988	1	KBAL                	Kimball International Inc Class B	15.81	-	-	-		2020-07-01 09:54:24.286104
1989	1	KIN                 	Kindred Biosciences Inc	7.02	-	-	-		2020-07-01 09:54:39.29734
1990	1	KGJI                	Kingold Jewelry Inc	1.81	-	-	-		2020-07-01 09:54:54.168979
1991	1	KC                  	Kingsoft Cloud Holdings Ltd ADR	22.86	-	-	-		2020-07-01 09:55:09.294315
1992	1	KINS                	Kingstone Companies Inc	6.32	-	-	-		2020-07-01 09:55:24.734866
1993	1	KNSA                	Kiniksa Pharmaceuticals Ltd Class A	25.35	-	-	-		2020-07-01 09:55:39.954499
1994	1	KNSL                	Kinsale Capital Group Inc	120.73	-	-	-		2020-07-01 09:55:54.869618
1995	1	KIRK                	Kirkland"s Inc	5.20	-	-	-		2020-07-01 09:56:09.692934
1996	1	KTOV                	Kitov Pharma Ltd ADR	1.45	-	-	-		2020-07-01 09:56:24.502308
1997	1	KTOVW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 09:56:35.58187
1998	1	KLAC                	KLA Corp	160.00	-	-	-		2020-07-01 09:56:51.19068
1999	1	KLXE                	KLX Energy Services Holdings Inc Ordinary Shares	4.91	-	-	-		2020-07-01 09:59:16.023766
2000	1	KOD                 	Kodiak Sciences Inc	49.16	-	-	-		2020-07-01 09:59:33.576111
2001	1	KOPN                	Kopin Corp	2.02	-	-	-		2020-07-01 09:59:50.457789
2002	1	KRNT                	Kornit Digital Ltd	41.80	-	-	-		2020-07-01 10:00:10.405423
2003	1	KOSS                	Koss Corp	2.29	-	-	-		2020-07-01 10:00:27.670321
2004	1	KWEB                	-	0	KraneShares CSI China Internet ETF	3	-		2020-07-01 10:16:44.042712
2005	1	KTOS                	Kratos Defense &amp Security Solutions Inc	17.32	-	-	-		2020-07-01 10:17:45.334724
2006	1	KRYS                	Krystal Biotech Inc	41.60	-	-	-		2020-07-01 10:18:03.389878
2007	1	KLIC                	Kulicke &amp Soffa Industries Inc	21.60	-	-	-		2020-07-01 10:18:21.881306
2009	1	KURA                	Kura Oncology Inc	19.05	-	-	-		2020-07-01 10:18:39.601756
2010	1	KRUS                	Kura Sushi USA Inc Ordinary Shares - Class A	21.45	-	-	-		2020-07-01 10:18:56.6348
2011	1	KVHI                	KVH Industries Inc	10.53	-	-	-		2020-07-01 10:19:13.895246
2012	1	FSTR                	L.B. Foster Co Class A	19.90	-	-	-		2020-07-01 10:19:31.158567
2013	1	LJPC                	La Jolla Pharmaceutical Co	6.91	-	-	-		2020-07-01 10:19:48.793088
2014	1	LSBK                	Lake Shore Bancorp Inc	15.26	-	-	-		2020-07-01 10:20:07.577183
2015	1	LBAI                	Lakeland Bancorp Inc	13.31	-	-	-		2020-07-01 10:20:25.368553
2016	1	LKFN                	Lakeland Financial Corp	48.51	-	-	-		2020-07-01 10:20:42.931213
2017	1	LAKE                	Lakeland Industries Inc	25.72	-	-	-		2020-07-01 10:21:01.271129
2018	1	LRCX                	Lam Research Corp	310.00	-	-	-		2020-07-01 10:21:19.398095
2019	1	LAMR                	Lamar Advertising Co Class A	81.71	-	-	-		2020-07-01 10:21:37.252793
2020	1	LANC                	Lancaster Colony Corp	130.19	-	-	-		2020-07-01 10:21:54.580493
2021	1	LCA                 	Landcadia Holdings II Inc Class A	13.72	-	-	-		2020-07-01 10:22:11.948925
2022	1	LCAHU               	-	—	-	-	-		2020-07-01 10:22:29.422687
2023	1	LCAHW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:22:40.552812
2024	1	LNDC                	Landec Corp	11.32	-	-	-		2020-07-01 10:22:57.70876
2025	1	LARK                	Landmark Bancorp Inc	26.54	-	-	-		2020-07-01 10:23:15.64016
2026	1	LMRK                	Landmark Infrastructure Partners LP	12.74	-	-	-		2020-07-01 10:23:33.627588
2027	1	LMRKN               	Landmark Infrastructure Partners LP Pref Share	32.17	-	-	-		2020-07-01 10:23:51.246938
2028	1	LMRKO               	Landmark Infrastructure Partners LP Pref Share	29.64	-	-	-		2020-07-01 10:24:10.256932
2029	1	LMRKP               	Landmark Infrastructure Partners LP Pref Share	30.61	-	-	-		2020-07-01 10:24:28.856488
2030	1	LE                  	Lands" End Inc	13.30	-	-	-		2020-07-01 10:24:47.018525
2031	1	LSTR                	Landstar System Inc	92.00	-	-	-		2020-07-01 10:25:04.548247
2032	1	LTRN                	Lantern Pharma Inc Ordinary Shares	15.18	-	-	-		2020-07-01 10:25:22.418284
2033	1	LNTH                	Lantheus Holdings Inc	16.98	-	-	-		2020-07-01 10:25:40.529207
2034	1	LTRX                	Lantronix Inc	5.46	-	-	-		2020-07-01 10:25:58.156583
2035	1	LRMR                	Larimar Therapeutics Inc	19.28	-	-	-		2020-07-01 10:26:15.214681
2036	1	LSCC                	Lattice Semiconductor Corp	20.88	-	-	-		2020-07-01 10:26:33.216311
2037	1	LAUR                	Laureate Education Inc Class A	16.02	-	-	-		2020-07-01 10:26:51.436157
2038	1	LAWS                	Lawson Products Inc	39.34	-	-	-		2020-07-01 10:27:09.421195
2039	1	LAZY                	Lazydays Holdings Inc	14.66	-	-	-		2020-07-01 10:27:27.192435
2040	1	LCNB                	LCNB Corp	19.30	-	-	-		2020-07-01 10:27:45.459131
2041	1	LPTX                	Leap Therapeutics Inc	3.18	-	-	-		2020-07-01 10:28:02.889791
2042	1	LEGH                	Legacy Housing Corp	17.07	-	-	-		2020-07-01 10:28:20.644333
2043	1	LEGN                	Legend Biotech Corp ADR	31.38	-	-	-		2020-07-01 10:28:37.785274
2044	1	INFR                	-	0	Legg Mason Global Infrastructure ETF	2	-		2020-07-01 10:29:00.510411
2045	1	LVHD                	-	0	Legg Mason Low Volatility High Dividend ETF	3	-		2020-07-01 10:29:22.030879
2046	1	SQLV                	-	0	Legg Mason Small-Cap Quality Value ETF	-	-		2020-07-01 10:29:43.42837
2047	1	LACQ                	Leisure Acquisition Corp	9.74	-	-	-		2020-07-01 10:30:01.377867
2048	1	LACQU               	Leisure Acquisition Corp Units (1 Ord &amp 1/2 War)	10.16	-	-	-		2020-07-01 10:30:25.457936
2049	1	LACQW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:30:36.577282
2050	1	LMAT                	LeMaitre Vascular Inc	26.26	-	-	-		2020-07-01 10:30:55.559724
2051	1	TREE                	LendingTree Inc	275.06	-	-	-		2020-07-01 10:31:13.525511
2052	1	LEVL                	Level One Bancorp Inc	20.79	-	-	-		2020-07-01 10:31:31.277309
2053	1	LXRX                	Lexicon Pharmaceuticals Inc	2.68	-	-	-		2020-07-01 10:31:49.820473
2054	1	LX                  	LexinFintech Holdings Ltd DR	12.81	-	-	-		2020-07-01 10:32:10.689278
2055	1	LFAC                	LF Capital Acquisition Corp Ordinary Shares - Class A	10.68	-	-	-		2020-07-01 10:35:53.237793
2056	1	LFACU               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:36:05.359141
2057	1	LFACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:36:16.640366
2058	1	LGIH                	LGI Homes Inc	98.64	-	-	-		2020-07-01 10:37:30.756603
2059	1	LHCG                	LHC Group Inc	156.32	-	-	-		2020-07-01 10:37:47.76474
2060	1	LLIT                	Lianluo Smart Ltd Class A	1.02	-	-	-		2020-07-01 10:38:12.134071
2061	1	LBRDA               	Liberty Broadband Corp A	110.79	-	-	-		2020-07-01 10:38:27.040963
2062	1	LBRDK               	Liberty Broadband Corp C	112.79	-	-	-		2020-07-01 10:38:44.071169
2063	1	LBTYA               	Liberty Global PLC Class A	33.00	-	-	-		2020-07-01 10:38:59.47049
2064	1	LBTYB               	Liberty Global PLC Class B	30.29	-	-	-		2020-07-01 10:39:16.081512
2065	1	LBTYK               	Liberty Global PLC C	29.81	-	-	-		2020-07-01 10:39:30.77865
2066	1	LILA                	Liberty Latin America Ltd	15.31	-	-	-		2020-07-01 10:39:46.072129
2067	1	LILAK               	Liberty Latin America Ltd Class C	14.88	-	-	-		2020-07-01 10:40:01.035539
2068	1	BATRA               	Liberty Braves Group	22.37	-	-	-		2020-07-01 10:40:20.667584
2069	1	BATRK               	Liberty Braves Group C	21.88	-	-	-		2020-07-01 10:40:35.84803
2070	1	FWONA               	Liberty Formula One Group A	31.00	-	-	-		2020-07-01 10:40:50.641424
2071	1	FWONK               	Liberty Formula One Group C	31.00	-	-	-		2020-07-01 10:41:05.986666
2072	1	LSXMA               	Liberty SiriusXM Group A	44.28	-	-	-		2020-07-01 10:41:23.390137
2073	1	LSXMB               	Liberty SiriusXM Group B	47.61	-	-	-		2020-07-01 10:41:39.352335
2074	1	LSXMK               	Liberty SiriusXM Group C	44.29	-	-	-		2020-07-01 10:41:54.473925
2075	1	LTRPA               	Liberty TripAdvisor Holdings Inc Class A	3.97	-	-	-		2020-07-01 10:42:09.524132
2076	1	LTRPB               	Liberty TripAdvisor Holdings Inc Class B	76.91	-	-	-		2020-07-01 10:42:24.903737
2077	1	LSAC                	LifeSci Acquisition Corp Ordinary Shares	13.12	-	-	-		2020-07-01 10:42:39.955831
2078	1	LSACU               	-	—	-	-	-		2020-07-01 10:42:55.185309
2079	1	LSACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:43:06.758763
2080	1	LCUT                	Lifetime Brands Inc	10.23	-	-	-		2020-07-01 10:43:21.61398
2081	1	LFVN                	Lifevantage Corp	14.50	-	-	-		2020-07-01 10:43:36.770788
2082	1	LWAY                	Lifeway Foods Inc	3.38	-	-	-		2020-07-01 10:43:52.411779
2083	1	LGND                	Ligand Pharmaceuticals Inc	113.82	-	-	-		2020-07-01 10:44:07.486319
2084	1	LTBR                	Lightbridge Corp	7.82	-	-	-		2020-07-01 10:44:23.493149
2085	1	LPTH                	LightPath Technologies Inc A	3.84	-	-	-		2020-07-01 10:44:38.410159
2086	1	LLEXQ               	Lilis Energy Inc	0.47	-	-	-		2020-07-01 10:44:55.32637
2087	1	LMB                 	Limbach Holdings Inc	5.41	-	-	-		2020-07-01 10:45:11.97486
2088	1	LLNW                	Limelight Networks Inc	7.22	-	-	-		2020-07-01 10:45:36.547384
2089	1	LMST                	Limestone Bancorp Inc	19.49	-	-	-		2020-07-01 10:45:58.452866
2090	1	LMNL                	Liminal Biosciences Inc	12.15	-	-	-		2020-07-01 10:46:16.021175
2091	1	LMNR                	Limoneira Co	17.00	-	-	-		2020-07-01 10:46:40.097258
2092	1	LINC                	Lincoln Educational Services Corp	4.70	-	-	-		2020-07-01 10:46:54.8632
2093	1	LECO                	Lincoln Electric Holdings Inc	78.00	-	-	-		2020-07-01 10:47:09.915199
2094	1	LIND                	Lindblad Expeditions Holdings Inc	11.52	-	-	-		2020-07-01 10:47:25.03766
2095	1	LPCN                	-	0	-	-	-	Fair value not available	2020-07-01 10:47:44.152791
2096	1	LIQT                	LiqTech International Inc	6.30	-	-	-		2020-07-01 10:47:59.162048
2097	1	YVR                 	Liquid Media Group Ltd	2.12	-	-	-		2020-07-01 10:49:06.282967
2098	1	LQDA                	Liquidia Technologies Inc	13.22	-	-	-		2020-07-01 10:49:24.848149
2099	1	LQDT                	Liquidity Service Inc	9.60	-	-	-		2020-07-01 10:49:39.748434
2100	1	LFUS                	Littelfuse Inc	180.00	-	-	-		2020-07-01 10:49:55.809521
2101	1	LIVK                	LIV Capital Acquisition Corp Ordinary Shares Class A	9.94	-	-	-		2020-07-01 10:50:10.484198
2102	1	LIVKU               	-	—	-	-	-		2020-07-01 10:50:26.491423
2103	1	LIVKW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 10:50:38.552726
2104	1	LIVN                	LivaNova PLC	68.00	-	-	-		2020-07-01 10:50:59.290296
2105	1	LOB                 	Live Oak Bancshares Inc	17.79	-	-	-		2020-07-01 11:03:22.874453
2106	1	LIVE                	Live Ventures Inc	17.47	-	-	-		2020-07-01 11:03:40.407149
2107	1	LPSN                	LivePerson Inc	42.38	-	-	-		2020-07-01 11:04:06.39227
2108	1	LIVX                	LiveXLive Media Inc	5.53	-	-	-		2020-07-01 11:04:30.539818
2109	1	LVGO                	Livongo Health Inc	52.16	-	-	-		2020-07-01 11:04:57.060577
2110	1	LIZI                	Lizhi Inc ADR	8.56	-	-	-		2020-07-01 11:05:18.633998
2111	1	LKQ                 	LKQ Corp	35.00	-	-	-		2020-07-01 11:05:44.36765
2112	1	LMFA                	LM Funding America Inc	1.92	-	-	-		2020-07-01 11:06:10.499137
2113	1	LMFAW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:06:21.850688
2114	1	LMPX                	LMP Automotive Holdings Inc Ordinary Shares	14.09	-	-	-		2020-07-01 11:06:39.815985
2115	1	LOGC                	LogicBio Therapeutics Inc	11.36	-	-	-		2020-07-01 11:06:58.841776
2116	1	LOGI                	Logitech International SA	—	-	-	-		2020-07-01 11:07:15.723094
2117	1	LOGM                	LogMeIn Inc	84.59	-	-	-		2020-07-01 11:07:33.061295
2118	1	CNCR                	-	0	Loncar Cancer Immunotherapy ETF	1	-		2020-07-01 11:09:17.417058
2119	1	CHNA                	-	0	Loncar China BioPharma ETF	-	-		2020-07-01 11:09:36.538645
2120	1	LONE                	Lonestar Resources US Inc	1.62	-	-	-		2020-07-01 11:09:51.785533
2121	1	LOAC                	Longevity Acquisition Corp Ordinary Shares	11.33	-	-	-		2020-07-01 11:10:07.352112
2122	1	LOACR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:10:18.556129
2123	1	LOACU               	-	—	-	-	-		2020-07-01 11:10:33.250108
2124	1	LOACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:10:44.37075
2125	1	LOOP                	Loop Industries Inc	10.24	-	-	-		2020-07-01 11:10:59.214693
2126	1	LORL                	Loral Space &amp Communications Inc	25.18	-	-	-		2020-07-01 11:11:14.507945
2127	1	LPLA                	LPL Financial Holdings Inc	79.00	-	-	-		2020-07-01 11:11:29.524303
2128	1	LYTS                	LSI Industries Inc	9.24	-	-	-		2020-07-01 11:11:44.772139
2129	1	LKREF               	Link Real Estate Investment Trust	9.89	-	-	-		2020-07-01 11:11:59.772791
2130	1	LULU                	Lululemon Athletica Inc	142.00	-	-	-		2020-07-01 11:12:15.262618
2131	1	LITE                	Lumentum Holdings Inc	—	-	-	-		2020-07-01 11:12:30.59019
2132	1	LMNX                	Luminex Corp	28.77	-	-	-		2020-07-01 11:12:45.908015
2133	1	LUMO                	Lumos Pharma Inc	27.91	-	-	-		2020-07-01 11:13:00.873222
2134	1	LUNA                	Luna Innovations Inc	6.58	-	-	-		2020-07-01 11:13:15.665893
2135	1	LKCO                	Luokung Technology Corp	1.08	-	-	-		2020-07-01 11:13:31.209505
2136	1	LBC                 	Luther Burbank Corp	11.15	-	-	-		2020-07-01 11:13:46.699368
2137	1	LYFT                	Lyft Inc Class A	50.00	-	-	-		2020-07-01 11:14:01.396732
2138	1	LYRA                	Lyra Therapeutics Inc Ordinary Shares	13.48	-	-	-		2020-07-01 11:14:16.442294
2139	1	MCBC                	Macatawa Bank Corp	8.93	-	-	-		2020-07-01 11:14:32.095806
2140	1	MFNC                	Mackinac Financial Corp	14.24	-	-	-		2020-07-01 11:14:47.369225
2141	1	MTSI                	MACOM Technology Solutions Holdings Inc	36.68	-	-	-		2020-07-01 11:15:02.843754
2142	1	MGNX                	Macrogenics Inc	30.86	-	-	-		2020-07-01 11:15:18.083552
2143	1	MDGL                	Madrigal Pharmaceuticals Inc	105.61	-	-	-		2020-07-01 11:15:33.247343
2144	1	MAGS                	Magal Security Systems Ltd	4.06	-	-	-		2020-07-01 11:15:48.277292
2145	1	MGLN                	Magellan Health Inc	92.22	-	-	-		2020-07-01 11:16:03.817001
2146	1	MGTA                	Magenta Therapeutics Inc	11.12	-	-	-		2020-07-01 11:16:19.338403
2147	1	MGIC                	Magic Software Enterprises Ltd	11.85	-	-	-		2020-07-01 11:16:34.651873
2148	1	MGYR                	Magyar Bancorp Inc	9.87	-	-	-		2020-07-01 11:16:50.030178
2149	1	MHLD                	Maiden Holdings Ltd	1.86	-	-	-		2020-07-01 11:17:05.473378
2150	1	MNSB                	MainStreet Bancshares Inc	16.73	-	-	-		2020-07-01 11:17:20.560917
2151	1	MJCO                	Majesco	7.93	-	-	-		2020-07-01 11:17:35.465338
2152	1	MMYT                	MakeMyTrip Ltd	21.80	-	-	-		2020-07-01 11:17:54.400412
2153	1	MBUU                	Malibu Boats Inc Class A	59.63	-	-	-		2020-07-01 11:18:09.923722
2154	1	MLVF                	Malvern Bancorp Inc	18.04	-	-	-		2020-07-01 11:18:24.693963
2155	1	TUSK                	Mammoth Energy Services Inc	2.85	-	-	-		2020-07-01 11:20:26.881267
2156	1	MANH                	Manhattan Associates Inc	60.00	-	-	-		2020-07-01 11:20:45.062384
2157	1	LOAN                	Manhattan Bridge Capital Inc	6.19	-	-	-		2020-07-01 11:21:02.667183
2158	1	MNTX                	Manitex International Inc	7.08	-	-	-		2020-07-01 11:21:17.573371
2159	1	MTEX                	Mannatech Inc	23.03	-	-	-		2020-07-01 11:21:32.325024
2160	1	MNKD                	MannKind Corp	2.33	-	-	-		2020-07-01 11:21:47.03899
2161	1	MANT                	Mantech International Corp Class A	68.83	-	-	-		2020-07-01 11:22:03.099339
2162	1	MARA                	Marathon Patent Group Inc	1.56	-	-	-		2020-07-01 11:22:18.341882
2163	1	MCHX                	Marchex Inc Class B	2.91	-	-	-		2020-07-01 11:22:34.811749
2164	1	MRIN                	Marin Software Inc	2.47	-	-	-		2020-07-01 11:22:52.040065
2165	1	MARPS               	Marine Petroleum Trust	2.08	-	-	-		2020-07-01 11:23:07.244599
2166	1	MRNS                	Marinus Pharmaceuticals Inc	3.39	-	-	-		2020-07-01 11:23:22.962298
2167	1	MRKR                	Marker Therapeutics Inc	3.07	-	-	-		2020-07-01 11:23:37.769126
2168	1	MKTX                	MarketAxess Holdings Inc	326.57	-	-	-		2020-07-01 11:23:53.113956
2169	1	MRLN                	Marlin Business Services Corp	12.59	-	-	-		2020-07-01 11:24:20.025302
2170	1	MAR                 	Marriott International Inc Class A	115.00	-	-	-		2020-07-01 11:24:48.939842
2171	1	MBII                	Marrone Bio Innovations Inc	2.02	-	-	-		2020-07-01 11:25:10.852435
2172	1	MRTN                	Marten Transport Ltd	24.15	-	-	-		2020-07-01 11:25:26.04815
2173	1	MMLP                	Martin Midstream Partners LP	2.24	-	-	-		2020-07-01 11:25:43.922143
2174	1	MRVL                	Marvell Technology Group Ltd	22.00	-	-	-		2020-07-01 11:26:05.446576
2175	1	MASI                	Masimo Corp	183.00	-	-	-		2020-07-01 11:26:20.946187
2176	1	MCFT                	MasterCraft Boat Holdings Inc	28.89	-	-	-		2020-07-01 11:26:47.310502
2177	1	MTCH                	Match Group Inc	63.00	-	-	-		2020-07-01 11:27:17.466241
2178	1	MTLS                	Materialise NV ADR	20.22	-	-	-		2020-07-01 11:27:41.697198
2179	1	MTRX                	Matrix Service Co	16.25	-	-	-		2020-07-01 11:28:05.764744
2180	1	MAT                 	Mattel Inc	18.80	-	-	-		2020-07-01 11:28:51.19171
2181	1	MATW                	Matthews International Corp Class A	22.19	-	-	-		2020-07-01 11:29:13.399648
2182	1	MXIM                	Maxim Integrated Products Inc	55.00	-	-	-		2020-07-01 11:29:30.920184
2183	1	MGRC                	McGrath RentCorp	60.69	-	-	-		2020-07-01 11:29:48.82386
2184	1	MDCA                	MDC Partners Inc Class A	3.27	-	-	-		2020-07-01 11:30:10.734737
2185	1	MDJH                	MDJM Ltd	2.75	-	-	-		2020-07-01 11:30:37.44317
2186	1	MDRR                	Medalist Diversified REIT Inc	3.35	-	-	-		2020-07-01 11:31:00.899948
2187	1	MDRRP               	Medalist Diversified REIT Inc Pref Share	21.04	-	-	-		2020-07-01 11:31:30.438921
2188	1	MBNKP               	Medallion Bank Pref Share	29.66	-	-	-		2020-07-01 11:31:54.435887
2189	1	MFIN                	Medallion Financial Corp	4.82	-	-	-		2020-07-01 11:32:14.195032
2190	1	MFINL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:32:26.047575
2191	1	MDIA                	MediaCo Holding Inc Ordinary Shares - Class A	8.10	-	-	-		2020-07-01 11:32:48.41412
2192	1	MNOV                	MediciNova Inc	6.49	-	-	-		2020-07-01 11:33:13.861821
2193	1	MDGS                	Medigus Ltd ADR	2.49	-	-	-		2020-07-01 11:33:35.866437
2194	1	MDGSW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:33:46.997862
2195	1	MDWD                	MediWound Ltd	3.08	-	-	-		2020-07-01 11:34:15.641035
2196	1	MEDP                	Medpace Holdings Inc	82.05	-	-	-		2020-07-01 11:34:37.576707
2197	1	MEIP                	MEI Pharma Inc	4.86	-	-	-		2020-07-01 11:35:06.141084
2198	1	MGTX                	MeiraGTx Holdings PLC	15.53	-	-	-		2020-07-01 11:35:29.246841
2199	1	MLCO                	Melco Resorts and Entertainment Ltd ADR	25.00	-	-	-		2020-07-01 11:35:55.869546
2200	1	MNLO                	Menlo Therapeutics Inc	2.71	-	-	-		2020-07-01 11:36:30.144459
2201	1	MTSL                	MER Telemanagement Solutions Ltd	1.90	-	-	-		2020-07-01 11:36:48.92104
2202	1	MELI                	MercadoLibre Inc	620.00	-	-	-		2020-07-01 11:37:08.391036
2203	1	MBWM                	Mercantile Bank Corp	26.64	-	-	-		2020-07-01 11:37:25.503015
2204	1	MERC                	Mercer International Inc	9.20	-	-	-		2020-07-01 11:37:47.941533
2205	1	MBIN                	Merchants Bancorp	21.36	-	-	-		2020-07-01 11:41:10.784797
2206	1	MBINO               	Merchants Bancorp Pref Share	27.91	-	-	-		2020-07-01 11:41:32.216909
2207	1	MBINP               	Merchants Bancorp Pref Share	29.89	-	-	-		2020-07-01 11:41:53.826552
2208	1	MFH                 	Mercurity Fintech Holding Inc ADR	3.35	-	-	-		2020-07-01 11:42:12.902788
2209	1	MRCY                	Mercury Systems Inc	69.36	-	-	-		2020-07-01 11:42:31.617061
2210	1	MREO                	Mereo BioPharma Group PLC ADR	4.83	-	-	-		2020-07-01 11:42:46.824489
2211	1	MCMJ                	Merida Merger Corp I Ordinary Shares	9.57	-	-	-		2020-07-01 11:43:05.664752
2212	1	MCMJW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:43:17.169796
2213	1	EBSB                	Meridian Bancorp Inc	14.13	-	-	-		2020-07-01 11:43:32.631899
2214	1	VIVO                	Meridian Bioscience Inc	21.02	-	-	-		2020-07-01 11:43:50.251258
2215	1	MRBK                	Meridian Corp Ordinary Shares	20.62	-	-	-		2020-07-01 11:44:06.489536
2216	1	MMSI                	Merit Medical Systems Inc	—	-	-	-		2020-07-01 11:44:22.244019
2217	1	SNUG                	-	0	Alpha Architect Merlyn.AI Tactical Growth and Income ETF	-	-		2020-07-01 11:47:59.554889
2218	1	MACK                	Merrimack Pharmaceuticals Inc	4.32	-	-	-		2020-07-01 11:48:15.400217
2219	1	MRSN                	Mersana Therapeutics Inc	20.23	-	-	-		2020-07-01 11:48:31.760674
2220	1	MRUS                	Merus NV	17.43	-	-	-		2020-07-01 11:48:46.729558
2221	1	MESA                	Mesa Air Group Inc	7.84	-	-	-		2020-07-01 11:49:01.826411
2222	1	MLAB                	Mesa Laboratories Inc	191.86	-	-	-		2020-07-01 11:49:16.568981
2223	1	MESO                	Mesoblast Ltd ADR	15.22	-	-	-		2020-07-01 11:49:31.486827
2224	1	CASH                	Meta Financial Group Inc	26.06	-	-	-		2020-07-01 11:49:47.090851
2225	1	METX                	Meten EdtechX Education Group Ltd Ordinary Shares	11.98	-	-	-		2020-07-01 11:50:02.801265
2226	1	METXW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 11:50:14.17722
2227	1	MEOH                	Methanex Corp	—	-	-	-		2020-07-01 11:50:28.973001
2228	1	MCBS                	MetroCity Bankshares Inc	18.52	-	-	-		2020-07-01 11:50:44.085207
2229	1	MGEE                	MGE Energy Inc	61.52	-	-	-		2020-07-01 11:50:59.115953
2230	1	MGPI                	MGP Ingredients Inc	42.86	-	-	-		2020-07-01 11:51:14.369453
2231	1	MBOT                	Microbot Medical Inc	10.84	-	-	-		2020-07-01 11:51:30.394762
2232	1	MCHP                	Microchip Technology Inc	108.00	-	-	-		2020-07-01 11:51:45.553838
2233	1	MU                  	Micron Technology Inc	48.00	-	-	-		2020-07-01 11:52:00.246807
2234	1	MSFT                	Microsoft Corp	196.00	-	-	-		2020-07-01 11:52:15.243604
2235	1	MSTR                	MicroStrategy Inc	126.71	-	-	-		2020-07-01 11:52:29.988416
2236	1	MVIS                	Microvision Inc	1.24	-	-	-		2020-07-01 11:52:45.011074
2237	1	MICT                	MICT Inc	1.57	-	-	-		2020-07-01 11:53:00.039558
2238	1	MPB                 	Mid Penn Bancorp Inc	23.39	-	-	-		2020-07-01 11:53:17.207769
2239	1	MTP                 	Midatech Pharma PLC ADR	3.03	-	-	-		2020-07-01 11:53:33.371524
2240	1	MCEP                	Mid-Con Energy Partners LP	5.66	-	-	-		2020-07-01 11:53:48.73027
2241	1	MBCN                	Middlefield Banc Corp	26.67	-	-	-		2020-07-01 11:54:03.886203
2242	1	MSEX                	Middlesex Water Co	56.67	-	-	-		2020-07-01 11:54:19.126339
2243	1	MSBI                	Midland States Bancorp Inc	19.54	-	-	-		2020-07-01 11:54:34.2519
2244	1	MSVB                	Mid-Southern Bancorp Inc	13.77	-	-	-		2020-07-01 11:54:49.109
2245	1	MOFG                	MidWestOne Financial Group Inc	26.34	-	-	-		2020-07-01 11:55:04.905446
2246	1	MIST                	Milestone Pharmaceuticals Inc	6.48	-	-	-		2020-07-01 11:55:20.294513
2247	1	MLND                	Millendo Therapeutics Inc	3.20	-	-	-		2020-07-01 11:55:35.139284
2248	1	TIGO                	Millicom International Cellular SA	64.00	-	-	-		2020-07-01 11:55:49.913492
2249	1	MIME                	Mimecast Ltd	37.06	-	-	-		2020-07-01 11:56:05.014162
2250	1	MNDO                	MIND C.T.I. Ltd	2.26	-	-	-		2020-07-01 11:56:21.500186
2251	1	NERV                	Minerva Neurosciences Inc	3.69	-	-	-		2020-07-01 11:56:38.04904
2252	1	MGEN                	Miragen Therapeutics Inc	1.83	-	-	-		2020-07-01 11:56:53.005522
2253	1	MRTX                	Mirati Therapeutics Inc	107.86	-	-	-		2020-07-01 11:57:07.973283
2254	1	MIRM                	Mirum Pharmaceuticals Inc	24.43	-	-	-		2020-07-01 11:57:23.115434
2255	1	PXLW                	Pixelworks Inc	4.24	-	-	-		2020-07-01 12:23:38.207781
2256	1	MSON                	Misonix Inc	20.34	-	-	-		2020-07-01 12:23:42.503416
2257	1	PLYA                	Playa Hotels &amp Resorts NV Shs -A-	5.97	-	-	-		2020-07-01 12:23:56.016582
2258	1	MIND                	Mitcham Industries Inc	2.84	-	-	-		2020-07-01 12:24:02.247047
2259	1	PLXS                	Plexus Corp	80.60	-	-	-		2020-07-01 12:24:14.591254
2260	1	MINDP               	Mitcham Industries Inc Pref Share	31.13	-	-	-		2020-07-01 12:24:23.722401
2261	1	PLRX                	Pliant Therapeutics Inc Ordinary Shares	31.50	-	-	-		2020-07-01 12:24:29.519023
2262	1	MITK                	Mitek Systems Inc	9.94	-	-	-		2020-07-01 12:24:38.991506
2263	1	PLUG                	Plug Power Inc	7.47	-	-	-		2020-07-01 12:24:44.922652
2264	1	MKSI                	MKS Instruments Inc	109.88	-	-	-		2020-07-01 12:24:54.479881
2265	1	PLBC                	Plumas Bancorp	26.71	-	-	-		2020-07-01 12:25:01.921615
2266	1	MMAC                	MMA Capital Management LLC	28.54	-	-	-		2020-07-01 12:25:09.389814
2267	1	PS                  	Pluralsight Inc Class A	18.14	-	-	-		2020-07-01 12:25:16.700639
2268	1	MTC                 	MMTEC Inc Ordinary Shares	1.46	-	-	-		2020-07-01 12:25:24.970464
2269	1	PSTI                	Pluristem Therapeutics Inc	7.79	-	-	-		2020-07-01 12:25:31.669897
2270	1	MINI                	Mobile Mini Inc	35.01	-	-	-		2020-07-01 12:25:40.342773
2271	1	PSTV                	Plus Therapeutics Inc	2.88	-	-	-		2020-07-01 12:25:46.808278
2272	1	MOBL                	MobileIron Inc	5.72	-	-	-		2020-07-01 12:25:55.715823
2273	1	PLXP                	PLx Pharma Inc	3.11	-	-	-		2020-07-01 12:26:01.627295
2274	1	MRNA                	Moderna Inc	44.78	-	-	-		2020-07-01 12:26:11.619805
2275	1	PCOM                	Points International Ltd	12.05	-	-	-		2020-07-01 12:26:17.712228
2276	1	MOGO                	Mogo Inc	1.44	-	-	-		2020-07-01 12:26:27.100494
2277	1	SONA                	Southern National Bancorp of Virginia Inc	12.39	-	-	-		2020-07-01 12:26:30.023546
2278	1	VERI                	Veritone Inc	16.00	-	-	-		2020-07-01 12:26:32.622289
2279	1	POLA                	Polar Power Inc	8.22	-	-	-		2020-07-01 12:26:33.695623
2280	1	MWK                 	Mohawk Group Holdings Inc	8.09	-	-	-		2020-07-01 12:26:42.426591
2281	1	SBSI                	Southside Bancshares Inc	29.46	-	-	-		2020-07-01 12:26:47.612708
2282	1	PTE                 	PolarityTE Inc	2.25	-	-	-		2020-07-01 12:26:48.863883
2283	1	VRNA                	Verona Pharma PLC ADR	6.32	-	-	-		2020-07-01 12:26:50.386134
2284	1	MKD                 	Molecular Data Inc ADR	4.09	-	-	-		2020-07-01 12:27:00.270702
2285	1	PYPD                	PolyPid Ltd	16.68	-	-	-		2020-07-01 12:27:03.601115
2286	1	SY                  	So-Young International Inc ADR	13.29	-	-	-		2020-07-01 12:27:06.262391
2287	1	VRRM                	Verra Mobility Corp Class A	12.42	-	-	-		2020-07-01 12:27:08.656332
2288	1	MTEM                	Molecular Templates Inc	14.10	-	-	-		2020-07-01 12:27:14.974204
2289	1	POOL                	Pool Corp	214.03	-	-	-		2020-07-01 12:27:19.02631
2290	1	SP                  	SP Plus Corp	27.41	-	-	-		2020-07-01 12:27:21.857243
2291	1	VRCA                	Verrica Pharmaceuticals Inc	11.73	-	-	-		2020-07-01 12:27:23.438044
2292	1	MBRX                	Moleculin Biotech Inc	1.18	-	-	-		2020-07-01 12:27:29.943646
2293	1	BPOP                	Popular Inc	54.25	-	-	-		2020-07-01 12:27:34.097039
2294	1	SGRP                	SPAR Group Inc	1.07	-	-	-		2020-07-01 12:27:37.970113
2295	1	VTNR                	Vertex Energy Inc	1.17	-	-	-		2020-07-01 12:27:38.240712
2296	1	MNTA                	Momenta Pharmaceuticals Inc	41.00	-	-	-		2020-07-01 12:27:44.61029
2297	1	BPOPM               	Popular Capital Trust II Pref Share	—	-	-	-		2020-07-01 12:27:48.882999
2298	1	VRTX                	Vertex Pharmaceuticals Inc	244.00	-	-	-		2020-07-01 12:27:53.670531
2299	1	SPKE                	Spark Energy Inc A	8.67	-	-	-		2020-07-01 12:27:54.335497
2300	1	MOMO                	Momo Inc ADR	21.59	-	-	-		2020-07-01 12:27:59.574118
2301	1	BPOPN               	Popular Capital Trust I Pref Share	—	-	-	-		2020-07-01 12:28:03.587647
2302	1	VERU                	Veru Inc	3.39	-	-	-		2020-07-01 12:28:08.470789
2303	1	SPKEP               	Spark Energy Inc Pref Share	26.98	-	-	-		2020-07-01 12:28:12.974157
2304	1	KCAPL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:28:14.910399
2305	1	MKGI                	Monaker Group Inc	2.34	-	-	-		2020-07-01 12:28:14.995374
2306	1	VIAC                	ViacomCBS Inc Class B	57.00	-	-	-		2020-07-01 12:28:23.998675
2307	1	SPTN                	SpartanNash Co	26.50	-	-	-		2020-07-01 12:28:30.610261
2308	1	MCRI                	Monarch Casino &amp Resort Inc	45.72	-	-	-		2020-07-01 12:28:30.839808
2309	1	PTMN                	Portman Ridge Finance Corp	1.70	-	-	-		2020-07-01 12:28:31.516096
2310	1	VIACA               	ViacomCBS Inc Class A	50.86	-	-	-		2020-07-01 12:28:38.879159
2311	1	PTLA                	Portola Pharmaceuticals Inc	17.56	-	-	-		2020-07-01 12:28:48.551205
2312	1	MDLZ                	Mondelez International Inc Class A	53.00	-	-	-		2020-07-01 12:28:51.722258
2313	1	VSAT                	Viasat Inc	51.42	-	-	-		2020-07-01 12:28:54.321104
2314	1	PPHI                	Positive Physicians Holdings Inc Ordinary Shares	14.03	-	-	-		2020-07-01 12:29:03.142435
2315	1	MGI                 	MoneyGram International Inc	4.44	-	-	-		2020-07-01 12:29:07.389932
2316	1	VIAV                	Viavi Solutions Inc	—	-	-	-		2020-07-01 12:29:09.414222
2317	1	PBPB                	Potbelly Corp	4.11	-	-	-		2020-07-01 12:29:17.837128
2318	1	MDB                 	MongoDB Inc Class A	152.65	-	-	-		2020-07-01 12:29:22.654806
2319	1	VICR                	Vicor Corp	54.43	-	-	-		2020-07-01 12:29:25.181185
2320	1	PCH                 	PotlatchDeltic Corp	41.15	-	-	-		2020-07-01 12:29:33.537546
2321	1	MNCL                	Monocle Acquisition Corp	6.96	-	-	-		2020-07-01 12:29:38.406642
2322	1	VCTR                	Victory Capital Holdings Inc Class A	19.95	-	-	-		2020-07-01 12:29:40.82535
2323	1	POWL                	Powell Industries Inc	39.74	-	-	-		2020-07-01 12:29:48.155076
2324	1	MNCLU               	-	—	-	-	-		2020-07-01 12:29:53.529666
2325	1	POWI                	Power Integrations Inc	111.72	-	-	-		2020-07-01 12:30:03.076285
2326	1	MNCLW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:30:05.490076
2327	1	PBTS                	Powerbridge Technologies Co Ltd	2.93	-	-	-		2020-07-01 12:30:19.494778
2328	1	MPWR                	Monolithic Power Systems Inc	140.00	-	-	-		2020-07-01 12:30:21.649939
2329	1	PWFL                	PowerFleet Inc	7.06	-	-	-		2020-07-01 12:30:35.086764
2330	1	MNPR                	Monopar Therapeutics Inc	7.82	-	-	-		2020-07-01 12:30:38.814442
2331	1	PPD                 	PPD Inc Ordinary Shares	26.00	-	-	-		2020-07-01 12:30:50.478925
2332	1	MNRO                	Monro Inc	61.96	-	-	-		2020-07-01 12:30:53.729843
2333	1	PRAA                	PRA Group Inc	43.70	-	-	-		2020-07-01 12:31:06.236455
2334	1	MRCC                	Monroe Capital Corp	8.96	-	-	-		2020-07-01 12:31:08.672516
2335	1	MRCCL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:31:19.947095
2336	1	PRAH                	PRA Health Sciences Inc	80.00	-	-	-		2020-07-01 12:31:22.035077
2337	1	MNST                	Monster Beverage Corp	60.00	-	-	-		2020-07-01 12:31:34.67381
2338	1	PGEN                	Precigen Inc	5.70	-	-	-		2020-07-01 12:31:37.436727
2339	1	MORN                	Morningstar Inc	—	-	-	-		2020-07-01 12:31:49.732715
2340	1	PRPO                	Precipio Inc	2.63	-	-	-		2020-07-01 12:31:53.449616
2341	1	MORF                	Morphic Holding Inc	27.16	-	-	-		2020-07-01 12:32:05.316272
2342	1	DWFI                	-	0	SPDR® Dorsey Wright Fixed Income Allocation ETF	2	-		2020-07-01 12:32:06.039229
2343	1	DTIL                	Precision BioSciences Inc	11.01	-	-	-		2020-07-01 12:32:08.695549
2344	1	MOR                 	MorphoSys AG ADR	28.40	-	-	-		2020-07-01 12:32:20.020284
2345	1	SPPI                	Spectrum Pharmaceuticals Inc	4.86	-	-	-		2020-07-01 12:32:21.514931
2346	1	POAI                	Predictive Oncology Inc	2.87	-	-	-		2020-07-01 12:32:23.487747
2347	1	MOSY                	MoSys Inc	3.23	-	-	-		2020-07-01 12:32:35.093907
2348	1	SPRO                	Spero Therapeutics Inc	16.67	-	-	-		2020-07-01 12:32:36.763481
2349	1	PFBC                	Preferred Bank	53.32	-	-	-		2020-07-01 12:32:38.15848
2350	1	PEMTF               	Mota Ventures Corp Ordinary Shares	0.31	-	-	-		2020-07-01 12:32:50.906639
2351	1	ANY                 	Sphere 3D Corp	3.56	-	-	-		2020-07-01 12:32:52.90233
2352	1	PLPC                	Preformed Line Products Co	61.01	-	-	-		2020-07-01 12:32:54.283586
2353	1	MPAA                	Motorcar Parts of America Inc	22.10	-	-	-		2020-07-01 12:33:06.434714
2354	1	SPI                 	SPI Energy Co Ltd	1.76	-	-	-		2020-07-01 12:33:08.18229
2355	1	PFBI                	Premier Financial Bancorp Inc	17.40	-	-	-		2020-07-01 12:33:10.378025
2356	1	MOTS                	Motus GI Holdings Inc	1.77	-	-	-		2020-07-01 12:33:21.833464
2357	1	SAVE                	Spirit Airlines Inc	30.79	-	-	-		2020-07-01 12:33:23.293769
2358	1	CIZ                 	-	0	VictoryShares Developed Enhanced Volatility Wtd ETF	1	-		2020-07-01 12:33:24.538281
2359	1	PINC                	Premier Inc Class A	30.00	-	-	-		2020-07-01 12:33:26.17104
2360	1	MCACU               	-	—	-	-	-		2020-07-01 12:33:36.975514
2361	1	STXB                	Spirit of Texas Bancshares Inc	17.84	-	-	-		2020-07-01 12:33:37.991752
2362	1	PBIO                	Pressure BioSciences Inc	2.77	-	-	-		2020-07-01 12:33:42.822324
2363	1	VSDA                	-	0	VictoryShares Dividend Accelerator ETF	4	-		2020-07-01 12:33:43.204575
2364	1	MOXC                	Moxian Inc	0.70	-	-	-		2020-07-01 12:33:52.152333
2365	1	SPLK                	Splunk Inc	—	-	-	-		2020-07-01 12:33:52.965626
2366	1	PRVL                	Prevail Therapeutics Inc	15.87	-	-	-		2020-07-01 12:33:57.969716
2367	1	CEY                 	-	0	VictoryShares Emerging Market High Div Volatility Wtd ETF	-	-		2020-07-01 12:34:01.800355
2368	1	COOP                	Mr. Cooper Group Inc	20.17	-	-	-		2020-07-01 12:34:06.981372
2369	1	SPOK                	Spok Holdings Inc	11.92	-	-	-		2020-07-01 12:34:08.362464
2370	1	PRGX                	PRGX Global Inc	6.81	-	-	-		2020-07-01 12:34:12.914739
2371	1	CEZ                 	-	0	VictoryShares Emerging Market Volatility Wtd ETF	2	-		2020-07-01 12:34:19.667467
2372	1	MSBF                	MSB Financial Corp	13.51	-	-	-		2020-07-01 12:34:21.959816
2373	1	SPWH                	Sportsman"s Warehouse Holdings Inc	17.30	-	-	-		2020-07-01 12:34:25.040985
2374	1	PSMT                	Pricesmart Inc	65.06	-	-	-		2020-07-01 12:34:28.722143
2375	1	CID                 	-	0	VictoryShares International High Div Volatility Wtd ETF	2	-		2020-07-01 12:34:37.92168
2376	1	MTBC                	MTBC Inc	10.41	-	-	-		2020-07-01 12:34:40.220321
2377	1	SBPH                	Spring Bank Pharmaceuticals Inc	2.47	-	-	-		2020-07-01 12:34:40.984249
2378	1	PNRG                	PrimeEnergy Resources Corp	101.75	-	-	-		2020-07-01 12:34:43.997042
2379	1	MTBCP               	MTBC Inc Pref Share	32.97	-	-	-		2020-07-01 12:34:55.38983
2380	1	CIL                 	-	0	VictoryShares International Volatility Wtd ETF	3	-		2020-07-01 12:34:55.77567
2381	1	SWTX                	SpringWorks Therapeutics Inc Ordinary Shares	40.73	-	-	-		2020-07-01 12:34:57.026663
2382	1	PRMW                	Primo Water Corp	17.12	-	-	-		2020-07-01 12:34:59.89158
2383	1	MTSC                	MTS Systems Corp	25.78	-	-	-		2020-07-01 12:35:10.267016
2384	1	PRIM                	Primoris Services Corp	21.32	-	-	-		2020-07-01 12:35:14.994088
2385	1	CFO                 	-	0	VictoryShares US 500 Enhanced Volatility Wtd ETF	3	-		2020-07-01 12:35:15.439366
2386	1	GRIL                	Muscle Maker Inc Ordinary Shares	3.12	-	-	-		2020-07-01 12:35:25.074541
2387	1	CFA                 	-	0	VictoryShares US 500 Volatility Wtd ETF	3	-		2020-07-01 12:35:33.285649
2388	1	MBIO                	Mustang Bio Inc	3.91	-	-	-		2020-07-01 12:35:39.856664
2389	1	FUND                	-	0	-	-	-	Investment Name field not found	2020-07-01 12:35:52.381142
2390	1	CSF                 	-	0	VictoryShares US Discovery Enhanced Volatility Wtd ETF	3	-		2020-07-01 12:35:52.41857
2391	1	MVBF                	MVB Financial Corp	19.83	-	-	-		2020-07-01 12:35:54.667074
2392	1	SPT                 	Sprout Social Inc Class A	25.75	-	-	-		2020-07-01 12:36:07.533967
2393	1	MYSZ                	My Size Inc	1.28	-	-	-		2020-07-01 12:36:10.727303
2394	1	CDC                 	-	0	VictoryShares US EQ Income Enhanced Volatility Wtd ETF	5	-		2020-07-01 12:36:11.07311
2395	1	SFM                 	Sprouts Farmers Market Inc	22.00	-	-	-		2020-07-01 12:36:22.714053
2396	1	MYL                 	Mylan NV	20.00	-	-	-		2020-07-01 12:36:25.81853
2397	1	CDL                 	-	0	VictoryShares US Large Cap High Div Volatility Wtd ETF	2	-		2020-07-01 12:36:29.103357
2398	1	SPSC                	SPS Commerce Inc	64.19	-	-	-		2020-07-01 12:36:37.327148
2399	1	VSMV                	-	0	VictoryShares US Multi-Factor Minimum Volatility ETF	-	-		2020-07-01 12:36:47.463243
2400	1	SRAX                	SRAX Inc Class A	3.31	-	-	-		2020-07-01 12:36:52.539192
2401	1	CSB                 	-	0	VictoryShares US Small Cap High Div Volatility Wtd ETF	5	-		2020-07-01 12:37:06.080385
2402	1	SSNC                	SS&ampC Technologies Holdings Inc	60.00	-	-	-		2020-07-01 12:37:07.858734
2403	1	SSRM                	SSR Mining Inc	21.54	-	-	-		2020-07-01 12:37:23.098806
2404	1	CSA                 	-	0	VictoryShares US Small Cap Volatility Wtd ETF	3	-		2020-07-01 12:37:23.970606
2405	1	STAA                	Staar Surgical Co	40.80	-	-	-		2020-07-01 12:37:37.920705
2406	1	VIE                 	Viela Bio Inc	42.46	-	-	-		2020-07-01 12:37:39.250753
2407	1	SRAC                	Stable Road Acquisition Corp Ordinary Shares - Class A	7.64	-	-	-		2020-07-01 12:37:54.564171
2408	1	VMD                 	Viemed Healthcare Inc Ordinary Shares	9.04	-	-	-		2020-07-01 12:37:54.635951
2409	1	SRACU               	-	—	-	-	-		2020-07-01 12:38:09.530757
2410	1	VRAY                	ViewRay Inc	3.95	-	-	-		2020-07-01 12:38:10.642857
2411	1	SRACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:38:20.640228
2412	1	VKTX                	Viking Therapeutics Inc	9.03	-	-	-		2020-07-01 12:38:25.885214
2413	1	STAF                	Staffing 360 Solutions Inc	1.22	-	-	-		2020-07-01 12:38:35.864966
2414	1	VKTXW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:38:37.232769
2415	1	STMP                	Stamps.com Inc	158.76	-	-	-		2020-07-01 12:38:50.821233
2416	1	VBFC                	Village Bank and Trust Financial Corp	39.04	-	-	-		2020-07-01 12:38:52.179336
2417	1	PVAL                	-	0	Principal Contrarian Value Index ETF	-	-		2020-07-01 12:39:01.861783
2418	1	MYOK                	MyoKardia Inc	86.42	-	-	-		2020-07-01 12:39:03.664187
2419	1	STND                	Standard AVB Financial Corp	28.07	-	-	-		2020-07-01 12:39:06.097778
2420	1	VFF                 	Village Farms International Inc	7.47	-	-	-		2020-07-01 12:39:06.876764
2421	1	PFG                 	Principal Financial Group Inc	52.86	-	-	-		2020-07-01 12:39:16.949543
2422	1	SBLK                	Star Bulk Carriers Corp.	10.74	-	-	-		2020-07-01 12:39:21.041722
2423	1	MYOS                	Myos Rens Technology Inc	1.07	-	-	-		2020-07-01 12:39:22.276572
2424	1	VLGEA               	Village Super Market Inc Class A	31.43	-	-	-		2020-07-01 12:39:22.348876
2425	1	SBLKZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:39:32.192097
2426	1	BTEC                	-	0	Principal Healthcare Innovators Index ETF	3	-		2020-07-01 12:39:35.412286
2427	1	VIOT                	Viomi Technology Co Ltd ADR	7.21	-	-	-		2020-07-01 12:39:37.054214
2428	1	MYRG                	MYR Group Inc	37.54	-	-	-		2020-07-01 12:39:40.147706
2429	1	SBUX                	Starbucks Corp	86.00	-	-	-		2020-07-01 12:39:47.573778
2430	1	VNOM                	Viper Energy Partners LP	17.00	-	-	-		2020-07-01 12:39:52.352649
2431	1	PDEV                	-	0	Principal International Multi-Factor Core Index ETF	-	-		2020-07-01 12:39:55.087701
2432	1	MYGN                	Myriad Genetics Inc	18.60	-	-	-		2020-07-01 12:39:55.824248
2433	1	STFC                	State Auto Financial Corp	20.13	-	-	-		2020-07-01 12:40:03.121465
2434	1	VIR                 	Vir Biotechnology Inc	35.59	-	-	-		2020-07-01 12:40:07.312944
2435	1	NBRV                	Nabriva Therapeutics PLC	0.95	-	-	-		2020-07-01 12:40:10.476014
2436	1	MITO                	Stealth BioTherapeutics Corp ADR	2.20	-	-	-		2020-07-01 12:40:17.889725
2437	1	VIRC                	Virco Manufacturing Corp	3.64	-	-	-		2020-07-01 12:40:23.450692
2438	1	NAKD                	Naked Brand Group Ltd	1.11	-	-	-		2020-07-01 12:40:25.433272
2439	1	GASS                	StealthGas Inc	3.90	-	-	-		2020-07-01 12:40:33.271914
2440	1	VTUS                	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:40:35.035191
2441	1	NNDM                	Nano Dimension Ltd ADR	3.60	-	-	-		2020-07-01 12:40:40.950219
2442	1	STCN                	Steel Connect Inc	1.18	-	-	-		2020-07-01 12:40:49.272424
2443	1	VTSI                	VirTra Inc	4.76	-	-	-		2020-07-01 12:40:50.404068
2444	1	NSTG                	NanoString Technologies Inc	29.21	-	-	-		2020-07-01 12:40:56.039619
2445	1	STLD                	Steel Dynamics Inc	28.00	-	-	-		2020-07-01 12:41:05.418468
2446	1	VIRT                	Virtu Financial Inc A	24.16	-	-	-		2020-07-01 12:41:06.643248
2447	1	NAOV                	NanoVibronix Inc	2.24	-	-	-		2020-07-01 12:41:11.692238
2448	1	SMRT                	Stein Mart Inc	1.02	-	-	-		2020-07-01 12:41:20.977751
2449	1	VRTS                	Virtus Investment Partners Inc	143.22	-	-	-		2020-07-01 12:41:23.020118
2450	1	NH                  	NantHealth Inc	4.58	-	-	-		2020-07-01 12:41:27.012425
2451	1	SRCL                	Stericycle Inc	55.00	-	-	-		2020-07-01 12:41:37.024532
2452	1	BBC                 	-	0	Virtus LifeSci Biotech Clinical Trials ETF	2	-		2020-07-01 12:41:42.133579
2453	1	NK                  	NantKwest Inc	10.66	-	-	-		2020-07-01 12:41:42.671141
2454	1	SBT                 	Sterling Bancorp Inc	6.29	-	-	-		2020-07-01 12:41:52.254181
2455	1	NSSC                	NAPCO Security Technologies Inc	21.69	-	-	-		2020-07-01 12:41:58.209226
2456	1	BBP                 	-	0	Virtus LifeSci Biotech Products ETF	2	-		2020-07-01 12:42:01.938458
2457	1	STRL                	Sterling Construction Co Inc	14.48	-	-	-		2020-07-01 12:42:08.029895
2458	1	NDAQ                	Nasdaq Inc	95.00	-	-	-		2020-07-01 12:42:15.321784
2459	1	SHOO                	Steven Madden Ltd	27.09	-	-	-		2020-07-01 12:42:23.312027
2460	1	NTRA                	Natera Inc	44.17	-	-	-		2020-07-01 12:42:31.01158
2461	1	SFIX                	Stitch Fix Inc Class A	28.39	-	-	-		2020-07-01 12:42:39.068612
2462	1	NATH                	Nathan"s Famous Inc	56.35	-	-	-		2020-07-01 12:42:47.0308
2463	1	SYBT                	Stock Yards Bancorp Inc	43.82	-	-	-		2020-07-01 12:42:54.530812
2464	1	NKSH                	National Bankshares Inc	34.18	-	-	-		2020-07-01 12:43:02.332811
2465	1	STOK                	Stoke Therapeutics Inc	25.93	-	-	-		2020-07-01 12:43:10.423228
2466	1	FIZZ                	National Beverage Corp	55.52	-	-	-		2020-07-01 12:43:18.138453
2467	1	NCMI                	National CineMedia Inc	4.34	-	-	-		2020-07-01 12:43:33.393196
2468	1	NESR                	National Energy Services Reunited Corp	8.70	-	-	-		2020-07-01 12:43:48.805819
2469	1	NESRW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:44:00.332042
2470	1	GENY                	-	0	Principal Millennials Index ETF	4	-		2020-07-01 12:44:07.682225
2471	1	NGHC                	National General Holdings Corp	24.68	-	-	-		2020-07-01 12:44:15.798893
2472	1	BANX                	-	0	-	-	-	Investment Name field not found	2020-07-01 12:44:27.829456
2473	1	PSET                	-	0	Principal Price Setters Index ETF	2	-		2020-07-01 12:44:30.954742
2474	1	NGHCN               	National General Holdings Corp Pref Share	26.98	-	-	-		2020-07-01 12:44:31.027128
2475	1	VRTU                	-	0	-	-	-	Investment Name field not found	2020-07-01 12:44:35.161134
2476	1	NGHCO               	National General Holdings Corp Pref Share	27.41	-	-	-		2020-07-01 12:44:46.253605
2478	1	PY                  	-	0	Principal Shareholder Yield Index ETF	3	-		2020-07-01 12:44:51.584162
2480	1	NGHCP               	National General Holdings Corp Pref Share	27.81	-	-	-		2020-07-01 12:45:01.950782
2482	1	PMOM                	-	0	Principal Sustainable Momentum Index ETF	-	-		2020-07-01 12:45:10.762364
2483	1	NGHCZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:45:14.354999
2485	1	PLC                 	-	0	Principal U.S. Large-Cap Multi-Factor Core Index ETF	-	-		2020-07-01 12:45:30.267291
2486	1	NHLD                	National Holdings Corp	2.82	-	-	-		2020-07-01 12:45:30.707723
2487	1	NHLDW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:45:41.793942
2488	1	USMC                	-	0	Principal U.S. Mega-Cap Multi-Factor Index ETF	-	-		2020-07-01 12:45:49.099856
2489	1	NATI                	National Instruments Corp	39.89	-	-	-		2020-07-01 12:45:57.578552
2490	1	PSC                 	-	0	Principal U.S. Small-Cap Multi-Factor Index ETF	3	-		2020-07-01 12:46:07.549614
2491	1	NRC                 	National Research Corp Class A	40.22	-	-	-		2020-07-01 12:46:13.111722
2492	1	PSM                 	-	0	Principal U.S. Small-MidCap Multi-Factor Core Index ETF	-	-		2020-07-01 12:46:25.921164
2493	1	NSEC                	National Security Group Inc	17.11	-	-	-		2020-07-01 12:46:29.278776
2494	1	EYE                 	National Vision Holdings Inc	34.90	-	-	-		2020-07-01 12:46:45.496651
2495	1	NWLI                	National Western Life Group Inc Class A	275.55	-	-	-		2020-07-01 12:47:02.109912
2496	1	STNE                	StoneCo Ltd	25.40	-	-	-		2020-07-01 12:47:17.489935
2497	1	NAII                	Natural Alternatives International Inc	9.81	-	-	-		2020-07-01 12:47:18.042948
2498	1	NHTC                	Natural Health Trends Corp	9.42	-	-	-		2020-07-01 12:47:34.27941
2499	1	SSKN                	Strata Skin Sciences Inc	1.90	-	-	-		2020-07-01 12:47:37.075725
2500	1	NATR                	Natures Sunshine Products Inc	10.90	-	-	-		2020-07-01 12:47:49.576575
2501	1	SSYS                	Stratasys Ltd	—	-	-	-		2020-07-01 12:47:54.860203
2502	1	NTUS                	Natus Medical Inc	23.33	-	-	-		2020-07-01 12:48:04.757093
2503	1	STRA                	Strategic Education Inc	151.14	-	-	-		2020-07-01 12:48:10.120735
2504	1	PRNB                	Principia Biopharma Inc	58.94	-	-	-		2020-07-01 12:49:08.514276
2505	1	PRTH                	Priority Technology Holdings Inc	3.72	-	-	-		2020-07-01 12:49:24.832851
2506	1	UFO                 	-	0	Procure Space ETF	-	-		2020-07-01 12:49:44.763315
2507	1	PDEX                	Pro-Dex Inc	18.30	-	-	-		2020-07-01 12:50:00.716123
2508	1	IPDN                	Professional Diversity Network Inc	3.22	-	-	-		2020-07-01 12:50:17.583962
2509	1	PFHD                	Professional Holding Corp A	15.60	-	-	-		2020-07-01 12:50:33.46894
2510	1	VISL                	Vislink Technologies Inc	1.06	-	-	-		2020-07-01 12:50:40.29838
2511	1	PAAC                	Proficient Alpha Acquisition Corp	8.75	-	-	-		2020-07-01 12:50:48.583826
2512	1	VTGN                	VistaGen Therapeutics Inc	0.51	-	-	-		2020-07-01 12:50:59.549849
2513	1	PAACR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:51:00.057201
2514	1	PAACU               	-	—	-	-	-		2020-07-01 12:51:15.68737
2515	1	VC                  	Visteon Corp	73.44	-	-	-		2020-07-01 12:51:18.87659
2516	1	PAACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:51:26.88039
2517	1	VIVE                	Viveve Medical Inc	1.15	-	-	-		2020-07-01 12:51:33.799
2518	1	PFIE                	Profire Energy Inc	1.35	-	-	-		2020-07-01 12:51:42.275055
2519	1	VVPR                	Vivopower International PLC	1.97	-	-	-		2020-07-01 12:51:48.881837
2520	1	PROF                	Profound Medical Corp	18.42	-	-	-		2020-07-01 12:51:57.057211
2521	1	VVUS                	VIVUS Inc	1.35	-	-	-		2020-07-01 12:52:04.288942
2522	1	PGNX                	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:52:08.115036
2523	1	VOD                 	Vodafone Group PLC ADR	24.00	-	-	-		2020-07-01 12:52:19.196041
2524	1	PRGS                	Progress Software Corp	34.77	-	-	-		2020-07-01 12:52:23.150043
2525	1	VG                  	Vonage Holdings Corp	12.59	-	-	-		2020-07-01 12:52:35.238918
2526	1	PGNY                	Progyny Inc	18.43	-	-	-		2020-07-01 12:52:40.445846
2527	1	HNDL                	-	0	Strategy Shares Nasdaq 7 Handl™ Index ETF	-	-		2020-07-01 12:52:41.969949
2528	1	VOXX                	VOXX International Corp Class A	9.20	-	-	-		2020-07-01 12:52:49.890861
2529	1	JSMYX               	-	0	JPMorgan SmartRetirement® 2030 Fund Class R6	2	-		2020-07-01 12:52:54.467092
2530	1	HLPPF               	Hang Lung Properties Ltd	3.05	-	-	-		2020-07-01 12:52:58.34332
2531	1	STRT                	Strattec Security Corp	23.66	-	-	-		2020-07-01 12:52:58.947077
2532	1	VYGR                	Voyager Therapeutics Inc	15.16	-	-	-		2020-07-01 12:53:05.327062
2533	1	NAVI                	Navient Corp	11.44	-	-	-		2020-07-01 12:53:10.787677
2534	1	PFPT                	Proofpoint Inc	100.89	-	-	-		2020-07-01 12:53:13.184009
2535	1	STRS                	Stratus Properties Inc	26.47	-	-	-		2020-07-01 12:53:14.334418
2536	1	VRM                 	Vroom Inc Ordinary Shares	52.44	-	-	-		2020-07-01 12:53:20.436721
2537	1	NMCI                	Navios Maritime Containers LP	1.90	-	-	-		2020-07-01 12:53:29.816921
2538	1	PRPH                	ProPhase Labs Inc	1.91	-	-	-		2020-07-01 12:53:29.952334
2539	1	STRM                	Streamline Health Solutions Inc	1.73	-	-	-		2020-07-01 12:53:30.016812
2540	1	VSEC                	VSE Corp	42.50	-	-	-		2020-07-01 12:53:36.338301
2541	1	SBBP                	Strongbridge Biopharma PLC	4.75	-	-	-		2020-07-01 12:53:45.574611
2542	1	PTAC                	PropTech Acquisition Corp Ordinary Shares Class A	7.79	-	-	-		2020-07-01 12:53:48.471905
2543	1	VTVT                	vTv Therapeutics Inc Class A	2.04	-	-	-		2020-07-01 12:53:51.132771
2544	1	NBTB                	NBT Bancorp Inc	32.32	-	-	-		2020-07-01 12:53:52.3557
2545	1	SUMR                	Summer Infant Inc	13.66	-	-	-		2020-07-01 12:54:00.820309
2546	1	PTACU               	-	—	-	-	-		2020-07-01 12:54:03.406008
2547	1	VUZI                	Vuzix Corporation	3.04	-	-	-		2020-07-01 12:54:07.83221
2548	1	NCSM                	NCS Multistage Holdings Inc	1.33	-	-	-		2020-07-01 12:54:09.899856
2549	1	PTACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:54:15.030021
2550	1	SMMF                	Summit Financial Group Inc	20.80	-	-	-		2020-07-01 12:54:15.552919
2551	1	WAFU                	Wah Fu Education Group Ltd	6.82	-	-	-		2020-07-01 12:54:22.783088
2552	1	NKTR                	Nektar Therapeutics	23.50	-	-	-		2020-07-01 12:54:28.817845
2553	1	SSBI                	Summit State Bank	11.64	-	-	-		2020-07-01 12:54:30.351969
2554	1	PRQR                	ProQR Therapeutics NV	7.17	-	-	-		2020-07-01 12:54:30.892584
2555	1	SMMT                	Summit Therapeutics PLC ADR	3.25	-	-	-		2020-07-01 12:54:45.25408
2556	1	NMRD                	Nemaura Medical Inc	8.10	-	-	-		2020-07-01 12:54:47.814885
2557	1	EQRR                	-	0	ProShares Equities for Rising Rates ETF	-	-		2020-07-01 12:54:49.823702
2558	1	WISA                	Summit Wireless Technologies Inc Ordinary Shares	2.86	-	-	-		2020-07-01 12:55:00.204771
2559	1	NEOG                	Neogen Corp	65.65	-	-	-		2020-07-01 12:55:05.37997
2560	1	BIB                 	-	0	ProShares Ultra Nasdaq Biotechnology	-	-		2020-07-01 12:55:07.803316
2561	1	SNDE                	Sundance Energy Inc Ordinary Shares	8.31	-	-	-		2020-07-01 12:55:15.882265
2562	1	NEO                 	NeoGenomics Inc	26.44	-	-	-		2020-07-01 12:55:23.69633
2563	1	TQQQ                	-	0	ProShares UltraPro QQQ	-	-		2020-07-01 12:55:26.137012
2564	1	SNDL                	Sundial Growers Inc Ordinary Shares	1.62	-	-	-		2020-07-01 12:55:32.078083
2565	1	NLTX                	Neoleukin Therapeutics Inc	18.13	-	-	-		2020-07-01 12:55:41.122154
2566	1	SQQQ                	-	0	ProShares UltraPro Short QQQ	-	-		2020-07-01 12:55:44.931891
2567	1	SNSS                	Sunesis Pharmaceuticals Inc	0.40	-	-	-		2020-07-01 12:55:49.609304
2568	1	NEON                	Neonode Inc	8.58	-	-	-		2020-07-01 12:55:59.013637
2569	1	BIS                 	-	0	ProShares UltraShort Nasdaq Biotechnology	-	-		2020-07-01 12:56:02.650358
2570	1	STKL                	SunOpta Inc	5.79	-	-	-		2020-07-01 12:56:04.476217
2571	1	PSEC                	Prospect Capital Corporation	5.98	-	-	-		2020-07-01 12:56:18.405059
2572	1	NEOS                	Neos Therapeutics Inc	0.96	-	-	-		2020-07-01 12:56:18.595056
2573	1	SPWR                	SunPower Corp	10.80	-	-	-		2020-07-01 12:56:20.932678
2574	1	PTGX                	Protagonist Therapeutics Inc	17.32	-	-	-		2020-07-01 12:56:34.209207
2575	1	RUN                 	Sunrun Inc	25.92	-	-	-		2020-07-01 12:56:36.857321
2576	1	NVCN                	Neovasc Inc	2.51	-	-	-		2020-07-01 12:56:39.885632
2577	1	TARA                	Protara Therapeutics Inc Ordinary Shares	34.65	-	-	-		2020-07-01 12:56:49.893674
2578	1	SUNW                	Sunworks Inc	1.24	-	-	-		2020-07-01 12:56:52.763248
2580	1	PTVCA               	Protective Insurance Corp Class A	19.61	-	-	-		2020-07-01 12:57:05.488946
2581	1	SLGG                	Super League Gaming Inc	3.45	-	-	-		2020-07-01 12:57:08.379818
2582	1	PTVCB               	Protective Insurance Corp Class B	17.49	-	-	-		2020-07-01 12:57:23.091202
2583	1	PTI                 	Proteostasis Therapeutics Inc	2.35	-	-	-		2020-07-01 12:57:38.606729
2584	1	SMCI                	Super Micro Computer Inc	30.87	-	-	-		2020-07-01 12:57:43.095906
2585	1	SPCB                	SuperCom Ltd	2.88	-	-	-		2020-07-01 12:57:59.270279
2586	1	SCON                	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:58:10.408574
2587	1	SGC                 	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:58:22.39475
2588	1	SUPN                	-	0	-	-	-	No result in autocomplete search	2020-07-01 12:58:34.442162
2589	1	PRTA                	Prothena Corp PLC	13.40	-	-	-		2020-07-01 12:58:38.972925
2590	1	SPRT                	Support.com Inc	1.84	-	-	-		2020-07-01 12:58:52.755079
2591	1	PRVB                	Provention Bio Inc	13.17	-	-	-		2020-07-01 12:58:55.603271
2593	1	SURF                	Surface Oncology Inc	9.52	-	-	-		2020-07-01 12:59:10.47545
2594	1	HLAL                	-	0	-	-	-	Investment Name field not found	2020-07-01 12:59:13.203321
2595	1	PVBC                	Provident Bancorp Inc	12.57	-	-	-		2020-07-01 12:59:13.206352
2596	1	PROV                	Provident Financial Holdings Inc	16.81	-	-	-		2020-07-01 12:59:29.716821
2597	1	SGRY                	Surgery Partners Inc	—	-	-	-		2020-07-01 12:59:29.901854
2598	1	WTRH                	Waitr Holdings Inc Class A	4.52	-	-	-		2020-07-01 12:59:33.125665
2599	1	PBIP                	Prudential Bancorp Inc	14.94	-	-	-		2020-07-01 12:59:48.500414
2600	1	SRDX                	Surmodics Inc	41.28	-	-	-		2020-07-01 12:59:51.270579
2601	1	WBA                 	Walgreens Boots Alliance Inc	55.00	-	-	-		2020-07-01 12:59:54.610142
2602	1	PMD                 	Psychemedics Corp	7.38	-	-	-		2020-07-01 13:00:03.858034
2603	1	STRO                	Sutro Biopharma Inc	9.23	-	-	-		2020-07-01 13:00:06.63683
2604	1	WSG                 	Wanda Sports Group Co Ltd ADR	3.23	-	-	-		2020-07-01 13:00:12.277508
2605	1	PTC                 	PTC Inc	77.00	-	-	-		2020-07-01 13:00:18.832076
2606	1	SSSS                	SuRo Capital Corp	9.84	-	-	-		2020-07-01 13:00:23.824564
2607	1	WMG                 	Warner Music Group Corp Ordinary Shares - Class A	29.08	-	-	-		2020-07-01 13:00:30.346284
2609	1	SIVB                	SVB Financial Group	245.37	-	-	-		2020-07-01 13:00:38.50737
2611	1	WAFD                	Washington Federal Inc	30.32	-	-	-		2020-07-01 13:00:48.404025
2612	1	SIVBP               	SVB Financial Group Pref Share	27.61	-	-	-		2020-07-01 13:00:53.228163
2613	1	WASH                	Washington Trust Bancorp Inc	37.77	-	-	-		2020-07-01 13:01:04.471055
2614	1	SVMK                	SVMK Inc	21.91	-	-	-		2020-07-01 13:01:08.586079
2615	1	WSBF                	Waterstone Financial Inc	15.68	-	-	-		2020-07-01 13:01:19.480105
2616	1	SWKH                	SWK Holdings Corp	14.64	-	-	-		2020-07-01 13:01:25.297984
2617	1	WTRE                	Watford Holdings Ltd	19.98	-	-	-		2020-07-01 13:01:34.379349
2628	1	NEPH                	Nephros Inc	8.74	-	-	-		2020-07-01 13:08:36.00157
2629	1	NEPT                	Neptune Wellness Solutions Inc	4.18	-	-	-		2020-07-01 13:08:53.747356
2630	1	UEPS                	Net 1 UEPS Technologies Inc	4.18	-	-	-		2020-07-01 13:09:10.992647
2631	1	NETE                	Net Element Inc	13.47	-	-	-		2020-07-01 13:09:27.271415
2632	1	PTCT                	PTC Therapeutics Inc	51.81	-	-	-		2020-07-01 13:09:29.429992
2633	1	NTAP                	NetApp Inc	43.00	-	-	-		2020-07-01 13:09:42.837377
2634	1	PHCF                	Puhui Wealth Investment Management Co Ltd Ordinary Shares	5.87	-	-	-		2020-07-01 13:09:47.320886
2635	1	NTES                	NetEase Inc ADR	404.00	-	-	-		2020-07-01 13:09:57.886281
2636	1	PULM                	Pulmatrix Inc	2.16	-	-	-		2020-07-01 13:10:07.139357
2637	1	NFIN                	Netfin Acquisition Corp Ordinary Shares - Class A	10.28	-	-	-		2020-07-01 13:10:13.771622
2638	1	PLSE                	Pulse Biosciences Inc	9.58	-	-	-		2020-07-01 13:10:22.415837
2639	1	SYKE                	Sykes Enterprises Inc	28.83	-	-	-		2020-07-01 13:10:22.683605
2640	1	NFINU               	-	—	-	-	-		2020-07-01 13:10:28.441859
2641	1	PBYI                	Puma Biotechnology Inc	12.98	-	-	-		2020-07-01 13:10:37.193421
2642	1	NFINW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:10:39.508473
2643	1	SYNC                	Synacor Inc	1.66	-	-	-		2020-07-01 13:10:40.689593
2644	1	PACQ                	Pure Acquisition Corp Ordinary Shares - Class A	9.78	-	-	-		2020-07-01 13:10:52.339202
2645	1	NFLX                	Netflix Inc	160.00	-	-	-		2020-07-01 13:10:54.10127
2646	1	SYNL                	Synalloy Corp	10.04	-	-	-		2020-07-01 13:10:58.172368
2647	1	PACQU               	-	—	-	-	-		2020-07-01 13:11:07.46672
2648	1	NTGR                	Netgear Inc	35.40	-	-	-		2020-07-01 13:11:10.05223
2649	1	SYNA                	Synaptics Inc	55.00	-	-	-		2020-07-01 13:11:13.174681
2650	1	WTREP               	Watford Holdings Ltd Pref Share	29.93	-	-	-		2020-07-01 13:11:13.73978
2651	1	PACQW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:11:18.694604
2652	1	NTCT                	NetScout Systems Inc	29.11	-	-	-		2020-07-01 13:11:27.656118
2653	1	SNCR                	Synchronoss Technologies Inc	—	-	-	-		2020-07-01 13:11:30.080584
2654	1	WVE                 	WAVE Life Sciences Ltd	10.07	-	-	-		2020-07-01 13:11:32.037096
2655	1	PCYO                	Pure Cycle Corp	9.30	-	-	-		2020-07-01 13:11:35.697175
2656	1	WNFM                	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:11:43.158284
2657	1	NTWK                	NETSOL Technologies Inc	4.03	-	-	-		2020-07-01 13:11:44.969097
2658	1	SNDX                	Syndax Pharmaceuticals Inc	13.64	-	-	-		2020-07-01 13:11:47.112429
2659	1	PRPL                	Purple Innovation Inc Ordinary Shares - Class A	20.55	-	-	-		2020-07-01 13:11:51.23
2660	1	WSTG                	Wayside Technology Group Inc	29.20	-	-	-		2020-07-01 13:12:00.537301
2661	1	NBSE                	NeuBase Therapeutics Inc	7.32	-	-	-		2020-07-01 13:12:02.442306
2662	1	SYNH                	Syneos Health Inc A	50.00	-	-	-		2020-07-01 13:12:04.555807
2663	1	PUYI                	Puyi Inc ADR	6.14	-	-	-		2020-07-01 13:12:06.294015
2664	1	WDFC                	WD-40 Co	152.09	-	-	-		2020-07-01 13:12:15.439798
2665	1	NRBO                	NeuroBo Pharmaceuticals Inc	7.63	-	-	-		2020-07-01 13:12:17.137919
2666	1	SYBX                	Synlogic Inc	3.07	-	-	-		2020-07-01 13:12:19.389749
2667	1	PXS                 	Pyxis Tankers Inc	1.20	-	-	-		2020-07-01 13:12:20.985338
2668	1	WB                  	Weibo Corp ADR Class A	45.00	-	-	-		2020-07-01 13:12:30.813224
2669	1	NBIX                	Neurocrine Biosciences Inc	93.36	-	-	-		2020-07-01 13:12:31.843685
2670	1	SNPS                	Synopsys Inc	107.00	-	-	-		2020-07-01 13:12:35.122063
2671	1	QK                  	Q&ampK International Group Ltd ADR	11.52	-	-	-		2020-07-01 13:12:36.015532
2672	1	WEN                 	The Wendy"s Co Class A	—	-	-	-		2020-07-01 13:12:45.4529
2673	1	NURO                	NeuroMetrix Inc	3.86	-	-	-		2020-07-01 13:12:48.609762
2674	1	QADA                	QAD Inc	42.18	-	-	-		2020-07-01 13:12:50.837107
2675	1	SYPR                	Sypris Solutions Inc	0.99	-	-	-		2020-07-01 13:12:52.021416
2676	1	WERN                	Werner Enterprises Inc	41.17	-	-	-		2020-07-01 13:13:01.597816
2677	1	STIM                	Neuronetics Inc	3.61	-	-	-		2020-07-01 13:13:05.637338
2678	1	QADB                	QAD Inc	28.72	-	-	-		2020-07-01 13:13:06.528481
2679	1	SYRS                	Syros Pharmaceuticals Inc	11.40	-	-	-		2020-07-01 13:13:06.9366
2680	1	WSBC                	Wesbanco Inc	25.30	-	-	-		2020-07-01 13:13:17.083141
2681	1	QCRH                	QCR Holdings Inc	35.86	-	-	-		2020-07-01 13:13:21.170527
2682	1	TROW                	T. Rowe Price Group Inc	114.00	-	-	-		2020-07-01 13:13:21.913789
2683	1	NTRP                	Neurotrope Inc	2.02	-	-	-		2020-07-01 13:13:23.5386
2684	1	WTBA                	West Bancorp Inc	19.77	-	-	-		2020-07-01 13:13:32.079841
2685	1	QGEN                	Qiagen NV	43.00	-	-	-		2020-07-01 13:13:36.293668
2686	1	TTOO                	T2 Biosystems Inc	1.38	-	-	-		2020-07-01 13:13:36.549287
2687	1	NBEV                	New Age Beverages Corp	2.79	-	-	-		2020-07-01 13:13:40.461453
2688	1	WABC                	Westamerica Bancorp	58.11	-	-	-		2020-07-01 13:13:47.581844
2689	1	TRHC                	Tabula Rasa HealthCare Inc	55.86	-	-	-		2020-07-01 13:13:51.855313
2690	1	QIWI                	QIWI PLC ADR	21.10	-	-	-		2020-07-01 13:13:53.947986
2691	1	NFE                 	New Fortress Energy LLC	15.54	-	-	-		2020-07-01 13:13:57.456265
2692	1	WSTL                	Westell Technologies Inc Class A	1.31	-	-	-		2020-07-01 13:14:02.472889
2693	1	QRVO                	Qorvo Inc	102.00	-	-	-		2020-07-01 13:14:09.456169
2694	1	TCMD                	Tactile Systems Technology Inc	36.50	-	-	-		2020-07-01 13:14:09.811408
2695	1	NPA                 	New Providence Acquisition Corp Ordinary Shares Class A	7.65	-	-	-		2020-07-01 13:14:14.976025
2696	1	TAIT                	Taitron Components Inc Class A	3.38	-	-	-		2020-07-01 13:14:41.039457
2697	1	QCOM                	Qualcomm Inc	80.00	-	-	-		2020-07-01 13:14:48.863275
2698	1	NPAUU               	-	—	-	-	-		2020-07-01 13:14:49.391533
2699	1	WINC                	-	0	Western Asset Short Duration Income ETF	-	-		2020-07-01 13:14:53.323229
2700	1	TLC                 	Taiwan Liposome Co Ltd ADR	5.32	-	-	-		2020-07-01 13:14:58.081784
2701	1	NPAWW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:15:00.469835
2702	1	QLGN                	Qualigen Therapeutics Inc Ordinary Shares	4.20	-	-	-		2020-07-01 13:15:05.058935
2703	1	WBND                	-	0	Western Asset Total Return ETF	-	-		2020-07-01 13:15:15.452009
2704	1	TTWO                	Take-Two Interactive Software Inc	130.00	-	-	-		2020-07-01 13:15:19.48739
2705	1	NYMT                	New York Mortgage Trust Inc	3.92	-	-	-		2020-07-01 13:15:19.663767
2706	1	QLYS                	Qualys Inc	83.30	-	-	-		2020-07-01 13:15:22.944041
2707	1	WDC                 	Western Digital Corp	58.00	-	-	-		2020-07-01 13:15:33.866724
2708	1	TLND                	Talend SA ADR	34.29	-	-	-		2020-07-01 13:15:37.142444
2709	1	NYMTM               	New York Mortgage Trust Inc Pref Share	28.61	-	-	-		2020-07-01 13:15:37.684906
2710	1	QTRX                	Quanterix Corp	28.07	-	-	-		2020-07-01 13:15:40.794497
2711	1	TNDM                	Tandem Diabetes Care Inc	67.46	-	-	-		2020-07-01 13:15:51.915084
2712	1	WNEB                	Western New England Bancorp Inc	7.47	-	-	-		2020-07-01 13:15:52.611403
2713	1	NYMTN               	New York Mortgage Trust Inc Pref Share	29.45	-	-	-		2020-07-01 13:15:55.114667
2714	1	QMCO                	Quantum Corp	5.56	-	-	-		2020-07-01 13:15:58.282034
2715	1	WPRT                	Westport Fuel Systems Inc	1.89	-	-	-		2020-07-01 13:16:07.359028
2716	1	TLF                 	Tandy Leather Factory Inc	5.01	-	-	-		2020-07-01 13:16:12.653636
2717	1	NYMTO               	New York Mortgage Trust Inc Pref Share	29.46	-	-	-		2020-07-01 13:16:13.150346
2718	1	QRHC                	Quest Resource Holding Corp	2.11	-	-	-		2020-07-01 13:16:15.888994
2719	1	WWR                 	Westwater Resources Inc	4.51	-	-	-		2020-07-01 13:16:22.303854
2720	1	TANH                	Tantech Holdings Ltd	2.00	-	-	-		2020-07-01 13:16:27.501612
2721	1	NYMTP               	New York Mortgage Trust Inc Pref Share	28.92	-	-	-		2020-07-01 13:16:31.498574
2722	1	QUIK                	QuickLogic Corp	4.57	-	-	-		2020-07-01 13:16:33.418366
2723	1	WEYS                	Weyco Group Inc	25.09	-	-	-		2020-07-01 13:16:39.148961
2724	1	TAOP                	Taoping Inc	0.65	-	-	-		2020-07-01 13:16:43.240972
2725	1	QDEL                	Quidel Corp	144.95	-	-	-		2020-07-01 13:16:48.123098
2726	1	NEWA                	Newater Technology Inc	5.45	-	-	-		2020-07-01 13:16:48.670294
2727	1	WHLR                	Wheeler Real Estate Investment Trust Inc	2.43	-	-	-		2020-07-01 13:16:53.702739
2728	1	TAPM                	Tapinator Inc	8.05	-	-	-		2020-07-01 13:16:58.737666
2729	1	QNST                	QuinStreet Inc	13.85	-	-	-		2020-07-01 13:17:03.402219
2730	1	NBAC                	Newborn Acquisition Corp Ordinary Shares	9.77	-	-	-		2020-07-01 13:17:05.5437
2731	1	WHLRD               	Wheeler Real Estate Investment Trust Inc Pref Share	16.75	-	-	-		2020-07-01 13:17:08.759708
2732	1	TEDU                	Tarena International Inc ADR	2.25	-	-	-		2020-07-01 13:17:14.202016
2733	1	NBACR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:17:16.635411
2734	1	QUMU                	Qumu Corp	4.61	-	-	-		2020-07-01 13:17:18.625635
2735	1	WHLRP               	Wheeler Real Estate Investment Trust Inc Pref Share	10.41	-	-	-		2020-07-01 13:17:23.704414
2736	1	TH                  	Target Hospitality Corp Class A	2.46	-	-	-		2020-07-01 13:17:30.279674
2737	1	NBACU               	-	—	-	-	-		2020-07-01 13:17:33.283452
2738	1	QTNT                	Quotient Ltd	6.83	-	-	-		2020-07-01 13:17:33.752784
2739	1	WHF                 	WhiteHorse Finance Inc	12.66	-	-	-		2020-07-01 13:17:40.846816
2741	1	NBACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:17:44.383699
2742	1	QRTEA               	Qurate Retail Inc Class A	16.05	-	-	-		2020-07-01 13:17:50.009281
2743	1	WHFBZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:17:52.960591
2744	1	NWL                 	Newell Brands Inc	18.99	-	-	-		2020-07-01 13:18:02.523796
2745	1	QRTEB               	Qurate Retail Inc Class B	15.91	-	-	-		2020-07-01 13:18:05.504132
2746	1	WHLM                	Wilhelmina International Inc	6.01	-	-	-		2020-07-01 13:18:10.20448
2747	1	NWGI                	Newgioco Group Inc	3.99	-	-	-		2020-07-01 13:18:19.492161
2748	1	QTT                 	Qutoutiao Inc ADR	3.85	-	-	-		2020-07-01 13:18:20.13157
2749	1	WVVI                	Willamette Valley Vineyards Inc	7.57	-	-	-		2020-07-01 13:18:27.441021
2750	1	NMRK                	Newmark Group Inc Class A	7.39	-	-	-		2020-07-01 13:18:34.492256
2751	1	RRD                 	R.R.Donnelley &amp Sons Co	1.90	-	-	-		2020-07-01 13:18:35.017501
2752	1	WVVIP               	Willamette Valley Vineyards Inc Pref Share	6.23	-	-	-		2020-07-01 13:18:44.994981
2753	1	NWS                 	News Corp B	13.40	-	-	-		2020-07-01 13:18:49.46054
2754	1	RCM                 	R1 RCM Inc	12.01	-	-	-		2020-07-01 13:18:49.987692
2755	1	WLDN                	Willdan Group Inc	29.69	-	-	-		2020-07-01 13:19:02.995236
2756	1	NWSA                	News Corp A	13.40	-	-	-		2020-07-01 13:19:04.726038
2757	1	RADA                	Rada Electronics Industries Ltd	7.89	-	-	-		2020-07-01 13:19:05.400754
2758	1	NEWT                	Newtek Business Services Corp	21.77	-	-	-		2020-07-01 13:19:24.245534
2759	1	WLFC                	Willis Lease Finance Corp	41.73	-	-	-		2020-07-01 13:19:24.974092
2760	1	RDCM                	Radcom Ltd	9.90	-	-	-		2020-07-01 13:19:25.98577
2761	1	NEWTI               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:19:35.597024
2762	1	RDUS                	Radius Health Inc	15.90	-	-	-		2020-07-01 13:19:40.899631
2763	1	WLTW                	Willis Towers Watson PLC	221.00	-	-	-		2020-07-01 13:19:42.874143
2764	1	NEWTL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:19:46.889273
2765	1	NXMD                	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:19:58.827122
2766	1	WSC                 	WillScot Corp	15.24	-	-	-		2020-07-01 13:19:59.091335
2767	1	RDNT                	RadNet Inc	21.66	-	-	-		2020-07-01 13:19:59.106267
2768	1	RDWR                	Radware Ltd	23.83	-	-	-		2020-07-01 13:20:13.904991
2769	1	WIMI                	WiMi Hologram Cloud Inc ADR	3.63	-	-	-		2020-07-01 13:20:16.683587
2770	1	NXST                	Nexstar Media Group Inc Class A	120.00	-	-	-		2020-07-01 13:20:16.730999
2771	1	METC                	Ramaco Resources Inc	3.25	-	-	-		2020-07-01 13:20:28.879441
2772	1	WINT                	Windtree Therapeutics Inc	9.53	-	-	-		2020-07-01 13:20:33.846663
2773	1	NXTC                	NextCure Inc	31.66	-	-	-		2020-07-01 13:20:34.304597
2774	1	RMBS                	Rambus Inc	16.43	-	-	-		2020-07-01 13:20:44.486095
2775	1	NEXT                	NextDecade Corp	2.70	-	-	-		2020-07-01 13:20:49.254134
2776	1	WING                	Wingstop Inc	91.88	-	-	-		2020-07-01 13:20:49.307345
2777	1	RAND                	Rand Capital Corp	13.63	-	-	-		2020-07-01 13:21:01.06008
2778	1	NXGN                	NextGen Healthcare Inc	14.69	-	-	-		2020-07-01 13:21:03.989979
2779	1	WINA                	Winmark Corp	137.31	-	-	-		2020-07-01 13:21:04.529587
2780	1	RNDB                	Randolph Bancorp Inc	13.89	-	-	-		2020-07-01 13:21:16.014689
2781	1	WINS                	Wins Finance Holdings Inc	47.06	-	-	-		2020-07-01 13:21:19.335009
2782	1	NGM                 	NGM Biopharmaceuticals Inc	21.51	-	-	-		2020-07-01 13:21:19.360656
2783	1	RPD                 	Rapid7 Inc	49.36	-	-	-		2020-07-01 13:21:31.998677
2784	1	WTFC                	Wintrust Financial Corp	60.99	-	-	-		2020-07-01 13:21:34.853376
2785	1	NODK                	NI Holdings Inc	16.29	-	-	-		2020-07-01 13:21:35.252153
2786	1	RAPT                	RAPT Therapeutics Inc Ordinary Shares	31.19	-	-	-		2020-07-01 13:21:47.427682
2787	1	EGOV                	NIC Inc	21.04	-	-	-		2020-07-01 13:21:50.920935
2788	1	WTFCM               	Wintrust Financial Corp Pref Share	35.94	-	-	-		2020-07-01 13:21:50.973247
2789	1	RTLR                	Rattler Midstream LP	13.69	-	-	-		2020-07-01 13:22:02.850018
2790	1	WTFCP               	Wintrust Financial Corp Pref Share	36.34	-	-	-		2020-07-01 13:22:08.562936
2791	1	RAVE                	Rave Restaurant Group Inc	1.08	-	-	-		2020-07-01 13:22:20.608894
2792	1	CXSE                	-	0	WisdomTree China ex-State-Owned Enterprises Fund	5	-		2020-07-01 13:22:29.035886
2793	1	RAVN                	Raven Industries Inc	23.75	-	-	-		2020-07-01 13:22:35.999084
2794	1	NICE                	NICE Ltd ADR	—	-	-	-		2020-07-01 13:22:40.829627
2795	1	WCLD                	-	0	WisdomTree Cloud Computing Fund	-	-		2020-07-01 13:22:47.977112
2796	1	RBB                 	RBB Bancorp	16.53	-	-	-		2020-07-01 13:22:54.701254
2797	1	NICK                	Nicholas Financial Inc	9.91	-	-	-		2020-07-01 13:22:58.700885
2798	1	EMCB                	-	0	WisdomTree Emerging Markets Corporate Bond Fund	4	-		2020-07-01 13:23:06.190799
2799	1	NCBS                	Nicolet Bankshares Inc	60.78	-	-	-		2020-07-01 13:23:17.032301
2800	1	DGRE                	-	0	WisdomTree Emerging Markets Quality Dividend Growth Fund	3	-		2020-07-01 13:23:26.534516
2801	1	NKLA                	Nikola Corp	74.49	-	-	-		2020-07-01 13:23:34.445871
2802	1	NKLAW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:23:45.530373
2803	1	DXGE                	-	0	WisdomTree Germany Hedged Equity Fund	-	-		2020-07-01 13:23:45.561709
2804	1	NIU                 	Niu Technologies ADR	13.33	-	-	-		2020-07-01 13:24:03.190941
2805	1	HYZD                	-	0	WisdomTree Interest Rate Hedged High Yield Bond Fund	3	-		2020-07-01 13:24:03.78076
2806	1	LASR                	nLight Inc	24.77	-	-	-		2020-07-01 13:24:21.099636
2807	1	AGZD                	-	0	WisdomTree Interest Rate Hedged U.S. Aggregate Bond Fund	3	-		2020-07-01 13:24:21.565992
2808	1	NMIH                	NMI Holdings Inc A	22.49	-	-	-		2020-07-01 13:24:36.268176
2809	1	WETF                	WisdomTree Investments Inc	4.93	-	-	-		2020-07-01 13:24:36.850257
2810	1	NNBR                	NN Inc	8.65	-	-	-		2020-07-01 13:24:51.770807
2811	1	DXJS                	-	0	WisdomTree Japan Hedged SmallCap Equity Fund	2	-		2020-07-01 13:24:55.173527
2812	1	NBL                 	Noble Energy Inc	20.00	-	-	-		2020-07-01 13:25:10.330165
2813	1	DGRW                	-	0	WisdomTree U.S. Quality Dividend Growth Fund	4	-		2020-07-01 13:25:13.241352
2814	1	NBLX                	Noble Midstream Partners LP	13.75	-	-	-		2020-07-01 13:25:28.658512
2815	1	DGRS                	-	0	WisdomTree U.S. SmallCap Quality Dividend Growth Fund	3	-		2020-07-01 13:25:31.850154
2816	1	NDLS                	Noodles &amp Co A	7.69	-	-	-		2020-07-01 13:25:47.937257
2817	1	NDSN                	Nordson Corp	150.00	-	-	-		2020-07-01 13:26:05.780797
2818	1	WKEY                	WISeKey International Holding Ltd ADR	8.86	-	-	-		2020-07-01 13:26:24.92606
2819	1	NSYS                	Nortech Systems Inc	6.11	-	-	-		2020-07-01 13:26:25.742971
2820	1	NBN                 	Northeast Bank	25.17	-	-	-		2020-07-01 13:26:44.70306
2821	1	WIX                 	Wix.com Ltd	172.53	-	-	-		2020-07-01 13:26:45.161193
2822	1	NTIC                	Northern Technologies International Corp	11.11	-	-	-		2020-07-01 13:27:03.317124
2823	1	WWD                 	Woodward Inc	87.46	-	-	-		2020-07-01 13:27:03.538814
2824	1	NTRS                	Northern Trust Corp	77.00	-	-	-		2020-07-01 13:27:19.256515
2825	1	WDAY                	Workday Inc Class A	—	-	-	-		2020-07-01 13:27:22.348899
2826	1	NTRSO               	Northern Trust Corp Pref Share	27.48	-	-	-		2020-07-01 13:27:34.55074
2827	1	WKHS                	Workhorse Group Inc	13.49	-	-	-		2020-07-01 13:27:40.088545
2828	1	NFBK                	Northfield Bancorp Inc	12.88	-	-	-		2020-07-01 13:27:50.990325
2829	1	WRLD                	World Acceptance Corp	90.21	-	-	-		2020-07-01 13:27:55.419476
2830	1	NRIM                	Northrim BanCorp Inc	32.35	-	-	-		2020-07-01 13:28:08.664067
2831	1	WRTC                	Wrap Technologies Inc	8.81	-	-	-		2020-07-01 13:28:10.465325
2832	1	WMGI                	Wright Medical Group NV	27.94	-	-	-		2020-07-01 13:28:25.521623
2833	1	NWBI                	Northwest Bancshares Inc	11.44	-	-	-		2020-07-01 13:28:26.382647
2834	1	WSFS                	WSFS Financial Corp	34.99	-	-	-		2020-07-01 13:28:42.535754
2835	1	NWPX                	Northwest Pipe Co	29.17	-	-	-		2020-07-01 13:28:46.104581
2836	1	WVFC                	WVS Financial Corp	14.97	-	-	-		2020-07-01 13:29:00.195278
2837	1	NLOK                	NortonLifeLock Inc	17.00	-	-	-		2020-07-01 13:29:01.04819
2838	1	NCLH                	Norwegian Cruise Line Holdings Ltd	25.00	-	-	-		2020-07-01 13:29:15.926899
2839	1	WW                  	WW International Inc	38.00	-	-	-		2020-07-01 13:29:17.863039
2840	1	NWFL                	Norwood Financial Corp	29.62	-	-	-		2020-07-01 13:29:31.061701
2841	1	WYNN                	Wynn Resorts Ltd	112.00	-	-	-		2020-07-01 13:29:33.097335
2842	1	NVFY                	Nova Lifestyle Inc	3.48	-	-	-		2020-07-01 13:29:46.745315
2843	1	XFOR                	X4 Pharmaceuticals Inc	12.68	-	-	-		2020-07-01 13:29:50.785917
2844	1	NVMI                	Nova Measuring Instruments Ltd	45.52	-	-	-		2020-07-01 13:30:01.430075
2845	1	XBIT                	XBiotech Inc	18.96	-	-	-		2020-07-01 13:30:08.464425
2846	1	NOVN                	Novan Inc	0.61	-	-	-		2020-07-01 13:30:16.618059
2847	1	XELB                	Xcel Brands Inc	1.49	-	-	-		2020-07-01 13:30:26.682629
2848	1	NOVT                	Novanta Inc	85.42	-	-	-		2020-07-01 13:30:31.941617
2849	1	XEL                 	Xcel Energy Inc	50.00	-	-	-		2020-07-01 13:30:46.370239
2850	1	NVAX                	Novavax Inc	61.54	-	-	-		2020-07-01 13:30:47.055285
2851	1	NVCR                	NovoCure Ltd	39.92	-	-	-		2020-07-01 13:31:02.363879
2852	1	XNCR                	Xencor Inc	35.51	-	-	-		2020-07-01 13:31:05.250335
2853	1	NOVS                	Novus Capital Corp Ordinary Shares	8.68	-	-	-		2020-07-01 13:31:17.629591
2854	1	XBIO                	Xenetic Biosciences Inc	1.77	-	-	-		2020-07-01 13:31:22.709517
2855	1	NOVSU               	-	—	-	-	-		2020-07-01 13:31:33.101272
2856	1	XBIOW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:31:34.576816
2857	1	NOVSW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:31:44.212576
2858	1	XENE                	Xenon Pharmaceuticals Inc	14.89	-	-	-		2020-07-01 13:31:52.225744
2859	1	NVUS                	Novus Therapeutics Inc	0.82	-	-	-		2020-07-01 13:31:59.410014
2860	1	XERS                	Xeris Pharmaceuticals Inc	3.73	-	-	-		2020-07-01 13:32:09.149015
2861	1	NUAN                	Nuance Communications Inc	23.26	-	-	-		2020-07-01 13:32:18.079335
2862	1	XLNX                	Xilinx Inc	90.00	-	-	-		2020-07-01 13:32:26.689239
2863	1	NCNA                	NuCana PLC ADR	7.11	-	-	-		2020-07-01 13:32:35.252586
2864	1	XOMA                	XOMA Corp	19.68	-	-	-		2020-07-01 13:32:43.469333
2865	1	NTNX                	Nutanix Inc A	24.51	-	-	-		2020-07-01 13:32:50.119036
2866	1	XP                  	XP Inc Class A	25.61	-	-	-		2020-07-01 13:32:58.168067
2867	1	NUVA                	NuVasive Inc	64.41	-	-	-		2020-07-01 13:33:05.071393
2868	1	XPEL                	XPEL Inc	13.74	-	-	-		2020-07-01 13:33:12.799076
2869	1	XPER                	Xperi Holding Corp	16.09	-	-	-		2020-07-01 13:33:27.800299
2870	1	XSPA                	XpresSpa Group Inc	6.80	-	-	-		2020-07-01 13:33:42.600437
2871	1	QQQX                	-	0	-	-	-	Investment Name field not found	2020-07-01 13:33:50.609949
2872	1	XTLB                	XTL Biopharmaceuticals Ltd ADR	2.16	-	-	-		2020-07-01 13:33:58.384739
2873	1	NVEE                	NV5 Global Inc	62.00	-	-	-		2020-07-01 13:34:08.765152
2874	1	XNET                	Xunlei Ltd ADR	5.69	-	-	-		2020-07-01 13:34:13.12197
2875	1	NVEC                	NVE Corp	56.47	-	-	-		2020-07-01 13:34:26.893173
2876	1	YNDX                	Yandex NV Shs Class-A-	45.77	-	-	-		2020-07-01 13:34:28.779058
2877	1	YTRA                	Yatra Online Inc	1.24	-	-	-		2020-07-01 13:34:44.23204
2878	1	NVDA                	NVIDIA Corp	200.00	-	-	-		2020-07-01 13:34:44.264788
2879	1	YTEN                	Yield10 Bioscience Inc	10.79	-	-	-		2020-07-01 13:34:59.719711
2880	1	NXPI                	NXP Semiconductors NV	130.00	-	-	-		2020-07-01 13:35:01.701336
2881	1	YIN                 	Yintech Investment Holdings Ltd ADR	6.29	-	-	-		2020-07-01 13:35:14.968889
2882	1	NXTD                	Nxt-ID Inc	0.78	-	-	-		2020-07-01 13:35:16.408217
2883	1	YMAB                	Y-mAbs Therapeutics Inc	40.77	-	-	-		2020-07-01 13:35:30.105061
2884	1	NYMX                	Nymox Pharmaceutical Corp	3.00	-	-	-		2020-07-01 13:35:33.52547
2885	1	YGYI                	Youngevity International Inc	2.91	-	-	-		2020-07-01 13:35:45.827838
2886	1	OIIM                	O2Micro International Ltd ADR	2.40	-	-	-		2020-07-01 13:35:48.768239
2887	1	YGYIP               	Youngevity International Inc Pref Share	32.35	-	-	-		2020-07-01 13:36:01.431259
2888	1	OVLY                	Oak Valley Bancorp	15.83	-	-	-		2020-07-01 13:36:04.408023
2889	1	YRCW                	YRC Worldwide Inc	2.98	-	-	-		2020-07-01 13:36:16.289034
2890	1	OCSL                	Oaktree Specialty Lending Corp	5.63	-	-	-		2020-07-01 13:36:19.502539
2891	1	CTIB                	Yunhong CTI Ltd	4.42	-	-	-		2020-07-01 13:36:31.538587
2892	1	OCSI                	Oaktree Strategic Income Corp	6.87	-	-	-		2020-07-01 13:36:34.69289
2893	1	ZGYH                	Yunhong International Ordinary Shares Class A	9.74	-	-	-		2020-07-01 13:36:47.399718
2894	1	ZGYHR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:36:58.762797
2895	1	ZGYHU               	-	—	-	-	-		2020-07-01 13:37:13.960963
2896	1	OMP                 	Oasis Midstream Partners LP Common Units Representing LP Interest	12.43	-	-	-		2020-07-01 13:37:24.693349
2897	1	ZGYHW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:37:25.24283
2898	1	YJ                  	Yunji Inc ADR	3.98	-	-	-		2020-07-01 13:37:40.235043
2899	1	OAS                 	Oasis Petroleum Inc	1.26	-	-	-		2020-07-01 13:37:43.072039
2900	1	ZAGG                	Zagg Inc	5.30	-	-	-		2020-07-01 13:37:55.775683
2901	1	OBLN                	Obalon Therapeutics Inc	1.39	-	-	-		2020-07-01 13:37:59.165622
2902	1	ZLAB                	Zai Lab Ltd ADR Repr 1 Shs	60.20	-	-	-		2020-07-01 13:38:11.339527
2903	1	OBSV                	ObsEva SA	6.28	-	-	-		2020-07-01 13:38:13.955187
2904	1	ZEAL                	Zealand Pharma A/S ADR	34.65	-	-	-		2020-07-01 13:38:26.635219
2905	1	OBCI                	Ocean Bio-Chem Inc	14.01	-	-	-		2020-07-01 13:38:28.984245
2906	1	ZBRA                	Zebra Technologies Corp	—	-	-	-		2020-07-01 13:38:43.252888
2907	1	OPTT                	Ocean Power Technologies Inc	1.42	-	-	-		2020-07-01 13:38:47.000818
2908	1	ZNTL                	Zentalis Pharmaceuticals Inc Ordinary Shares	37.85	-	-	-		2020-07-01 13:38:59.090945
2909	1	OCFC                	OceanFirst Financial Corp	21.01	-	-	-		2020-07-01 13:39:01.993512
2910	1	ZCMD                	ZHONGCHAO Inc Ordinary Shares - Class A	2.25	-	-	-		2020-07-01 13:39:14.759969
2911	1	OCFCP               	OceanFirst Financial Corp Pref Share	30.61	-	-	-		2020-07-01 13:39:17.667173
2912	1	Z                   	Zillow Group Inc C	54.54	-	-	-		2020-07-01 13:39:30.070958
2913	1	OFED                	Oconee Federal Financial Corp	27.68	-	-	-		2020-07-01 13:39:32.665345
2914	1	OCGN                	Ocugen Inc	0.28	-	-	-		2020-07-01 13:39:47.835431
2915	1	OCUL                	Ocular Therapeutix Inc	6.85	-	-	-		2020-07-01 13:40:02.939327
2916	1	ODT                 	Odonate Therapeutics Inc	40.02	-	-	-		2020-07-01 13:40:21.198586
2917	1	ZG                  	Zillow Group Inc A	35.00	-	-	-		2020-07-01 13:40:24.311814
2918	1	OMEX                	Odyssey Marine Exploration Inc	4.20	-	-	-		2020-07-01 13:40:37.329564
2919	1	ZN                  	Zion Oil &amp Gas Inc	0.41	-	-	-		2020-07-01 13:40:43.939877
2920	1	ODP                 	Office Depot Inc	33.22	-	-	-		2020-07-01 13:40:53.116989
2921	1	ZNWAA               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:40:55.47474
2922	1	OPI                 	Office Properties Income Trust	31.86	-	-	-		2020-07-01 13:41:08.256513
2923	1	ZION                	Zions Bancorp NA	44.00	-	-	-		2020-07-01 13:41:14.314031
2924	1	OPINI               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:41:19.40242
2925	1	ZIONL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:41:25.657497
2926	1	OFS                 	OFS Capital Corp	6.99	-	-	-		2020-07-01 13:41:38.299229
2927	1	ZIONN               	Zions Bancorp NA Pref Share	31.98	-	-	-		2020-07-01 13:41:40.681131
2928	1	OFSSI               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:41:49.772521
2929	1	ZIONO               	Zions Bancorp NA Pref Share	33.85	-	-	-		2020-07-01 13:41:59.104053
2930	1	OFSSL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:42:01.237018
2931	1	OFSSZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:42:12.365976
2932	1	ZIONP               	Zions Bancorp NA Pref Share	25.81	-	-	-		2020-07-01 13:42:14.474033
2933	1	ZIOP                	ZIOPHARM Oncology Inc	3.98	-	-	-		2020-07-01 13:42:34.002755
2934	1	ZIXI                	Zix Corp	9.78	-	-	-		2020-07-01 13:42:51.916814
2935	1	OCCI                	-	0	-	-	-	Investment Name field not found	2020-07-01 13:42:54.641938
2936	1	OCCIP               	OFS Credit Co Inc Pref Share	36.11	-	-	-		2020-07-01 13:43:10.033298
2937	1	ZKIN                	ZK International Group Co Ltd	2.25	-	-	-		2020-07-01 13:43:10.244388
2938	1	OVBC                	Ohio Valley Banc Corporation	29.11	-	-	-		2020-07-01 13:43:24.818515
2939	1	ZGNX                	Zogenix Inc	33.44	-	-	-		2020-07-01 13:43:27.847091
2940	1	OKTA                	Okta Inc A	170.00	-	-	-		2020-07-01 13:43:40.024025
2941	1	ZM                  	Zoom Video Communications Inc	116.00	-	-	-		2020-07-01 13:43:46.032611
2942	1	ODFL                	Old Dominion Freight Lines Inc	80.00	-	-	-		2020-07-01 13:43:59.103177
2943	1	ZI                  	ZoomInfo Technologies Inc Ordinary Shares - Class A	32.26	-	-	-		2020-07-01 13:44:03.204161
2944	1	ONB                 	Old National Bancorp	16.00	-	-	-		2020-07-01 13:44:17.577848
2945	1	ZSAN                	Zosano Pharma Corp	1.31	-	-	-		2020-07-01 13:44:20.659161
2946	1	ZVO                 	Zovio Inc	4.61	-	-	-		2020-07-01 13:44:35.628018
2947	1	OPOF                	Old Point Financial Corp	22.17	-	-	-		2020-07-01 13:44:36.348921
2948	1	ZS                  	Zscaler Inc	72.00	-	-	-		2020-07-01 13:44:51.106394
2949	1	OSBC                	Old Second Bancorp Inc	10.14	-	-	-		2020-07-01 13:44:51.438545
2950	1	ZUMZ                	Zumiez Inc	34.45	-	-	-		2020-07-01 13:45:06.184098
2951	1	OLLI                	Ollie"s Bargain Outlet Holdings Inc	87.14	-	-	-		2020-07-01 13:45:06.713297
2952	1	ZYNE                	Zynerba Pharmaceuticals Inc	5.68	-	-	-		2020-07-01 13:45:22.619838
2953	1	ZEUS                	Olympic Steel Inc	15.45	-	-	-		2020-07-01 13:45:24.47557
2954	1	ZYXI                	Zynex Inc	14.99	-	-	-		2020-07-01 13:45:37.440222
2955	1	OFLX                	Omega Flex Inc	73.43	-	-	-		2020-07-01 13:45:42.54674
2956	1	ZNGA                	Zynga Inc Class A	—	-	-	-		2020-07-01 13:45:52.172701
2957	1	OMER                	Omeros Corp	14.84	-	-	-		2020-07-01 13:45:59.954708
2958	1	OMCL                	Omnicell Inc	65.82	-	-	-		2020-07-01 13:46:18.004135
2959	1	ON                  	ON Semiconductor Corp	23.00	-	-	-		2020-07-01 13:46:35.489686
2960	1	ONCY                	Oncolytics Biotech Inc	2.32	-	-	-		2020-07-01 13:46:54.617374
2961	1	ONTX                	Onconova Therapeutics Inc	0.79	-	-	-		2020-07-01 13:47:09.401171
2962	1	ONTXW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:47:20.545916
2963	1	ONCS                	OncoSec Medical Inc	2.66	-	-	-		2020-07-01 13:47:35.672451
2964	1	ONCT                	Oncternal Therapeutics Inc	3.30	-	-	-		2020-07-01 13:47:51.355539
2965	1	OSS                 	One Stop Systems Inc	3.03	-	-	-		2020-07-01 13:48:06.388992
2966	1	OSPN                	OneSpan Inc	25.92	-	-	-		2020-07-01 13:48:21.833898
2967	1	OSW                 	OneSpaWorld Holdings Ltd	7.31	-	-	-		2020-07-01 13:48:37.119699
2968	1	ONEW                	OneWater Marine Inc Class A	29.45	-	-	-		2020-07-01 13:48:52.269956
2969	1	OPBK                	OP Bancorp	8.43	-	-	-		2020-07-01 13:49:07.564562
2970	1	LPRO                	Open Lending Corp Class A	11.47	-	-	-		2020-07-01 13:49:23.177319
2971	1	OTEX                	Open Text Corp	38.25	-	-	-		2020-07-01 13:49:38.739102
2972	1	OPRA                	Opera Ltd ADR	12.75	-	-	-		2020-07-01 13:49:53.941062
2973	1	OPES                	Opes Acquisition Corp	15.02	-	-	-		2020-07-01 13:50:09.072602
2974	1	OPESU               	-	—	-	-	-		2020-07-01 13:50:23.938834
2975	1	OPESW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:50:35.053059
2976	1	OPGN                	OpGen Inc	3.50	-	-	-		2020-07-01 13:51:30.177766
2977	1	OPNT                	Opiant Pharmaceuticals Inc	11.80	-	-	-		2020-07-01 13:51:48.864981
2978	1	OPK                 	OPKO Health Inc	3.94	-	-	-		2020-07-01 13:52:06.244553
2979	1	OPRT                	Oportun Financial Corp	19.38	-	-	-		2020-07-01 13:52:24.162896
2980	1	OBAS                	Optibase Ltd	14.09	-	-	-		2020-07-01 13:52:41.755304
2981	1	OCC                 	Optical Cable Corp	3.36	-	-	-		2020-07-01 13:52:59.721024
2982	1	OPRX                	OptimizeRx Corp	15.16	-	-	-		2020-07-01 13:53:17.941964
2983	1	OPHC                	OptimumBank Holdings Inc	3.08	-	-	-		2020-07-01 13:53:36.522351
2984	1	OPTN                	OptiNose Inc	7.98	-	-	-		2020-07-01 13:53:54.530878
2985	1	OPCH                	Option Care Health Inc	17.93	-	-	-		2020-07-01 13:54:12.818187
2986	1	ORMP                	Oramed Pharmaceuticals Inc	3.71	-	-	-		2020-07-01 13:54:31.19952
2987	1	OSUR                	OraSure Technologies Inc	12.26	-	-	-		2020-07-01 13:54:48.334064
2988	1	ORBC                	ORBCOMM Inc	5.92	-	-	-		2020-07-01 13:55:07.978161
2989	1	OEG                 	Orbital Energy Group Inc	0.94	-	-	-		2020-07-01 13:55:26.424081
2990	1	ORTX                	Orchard Therapeutics PLC ADR	8.82	-	-	-		2020-07-01 13:55:44.350586
2991	1	ORLY                	O"Reilly Automotive Inc	333.00	-	-	-		2020-07-01 13:56:02.911345
2992	1	OGI                 	OrganiGram Holdings Inc	2.55	-	-	-		2020-07-01 13:56:20.810201
2993	1	ORGO                	Organogenesis Holdings Inc A	5.31	-	-	-		2020-07-01 13:56:37.560777
2994	1	ONVO                	Organovo Holdings Inc	0.81	-	-	-		2020-07-01 13:56:56.004014
2995	1	ORGS                	Orgenesis Inc	7.71	-	-	-		2020-07-01 13:57:14.719726
2996	1	ORIC                	ORIC Pharmaceuticals Inc	28.11	-	-	-		2020-07-01 13:57:33.424103
2997	1	SEED                	Origin Agritech Ltd	7.97	-	-	-		2020-07-01 13:57:51.186473
2998	1	OBNK                	Origin Bancorp Inc	26.67	-	-	-		2020-07-01 13:58:09.133487
2999	1	OESX                	Orion Energy Systems Inc	4.15	-	-	-		2020-07-01 13:58:27.124915
3000	1	ORSN                	Orisun Acquisition Corp Ordinary Shares	10.35	-	-	-		2020-07-01 13:58:44.228501
3001	1	ORSNR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:58:55.750159
3002	1	ORSNU               	-	—	-	-	-		2020-07-01 13:59:12.829914
3003	1	ORSNW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 13:59:24.432718
3004	1	ORRF                	Orrstown Financial Services Inc	18.67	-	-	-		2020-07-01 13:59:40.377831
3005	1	OFIX                	Orthofix Medical Inc	43.05	-	-	-		2020-07-01 13:59:57.713575
3006	1	KIDS                	OrthoPediatrics Corp	42.20	-	-	-		2020-07-01 14:00:15.675345
3007	1	OSIS                	OSI Systems Inc	83.81	-	-	-		2020-07-01 14:00:33.150922
3008	1	OSMT                	Osmotica Pharmaceuticals PLC	9.98	-	-	-		2020-07-01 14:00:51.57477
3009	1	OSN                 	Ossen Innovation Co Ltd ADR	5.23	-	-	-		2020-07-01 14:01:10.356244
3010	1	OTEL                	Otelco Inc Class A	17.12	-	-	-		2020-07-01 14:01:28.78494
3011	1	OTGLY               	CD Projekt SA ADR	15.50	-	-	-		2020-07-01 14:01:46.980869
3012	1	OTIC                	Otonomy Inc	4.12	-	-	-		2020-07-01 14:02:04.48288
3013	1	OTTW                	Ottawa Bancorp Inc	12.58	-	-	-		2020-07-01 14:02:22.677452
3014	1	OTTR                	Otter Tail Corp	42.06	-	-	-		2020-07-01 14:02:41.096985
3015	1	OTLK                	Outlook Therapeutics Inc	1.39	-	-	-		2020-07-01 14:02:58.748558
3016	1	OTLKW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:03:09.986062
3017	1	OSTK                	Overstock.com Inc	43.50	-	-	-		2020-07-01 14:03:27.668153
3018	1	OVID                	Ovid Therapeutics Inc	7.16	-	-	-		2020-07-01 14:03:54.732773
3019	1	OXBR                	Oxbridge Re Holdings Ltd	1.81	-	-	-		2020-07-01 14:04:13.806597
3020	1	OXBRW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:04:25.072152
3021	1	OXFD                	Oxford Immunotec Global PLC	15.22	-	-	-		2020-07-01 14:04:45.511718
3022	1	OXLC                	-	0	-	-	-	Investment Name field not found	2020-07-01 14:05:19.906861
3023	1	OXLCM               	Oxford Lane Capital Corp Pref Share	37.84	-	-	-		2020-07-01 14:05:38.125235
3024	1	OXLCO               	Oxford Lane Capital Corp Pref Share	39.29	-	-	-		2020-07-01 14:05:54.148592
3025	1	OXLCP               	Oxford Lane Capital Corp Pref Share	35.27	-	-	-		2020-07-01 14:06:11.329943
3026	1	OXSQ                	Oxford Square Capital Corp	4.30	-	-	-		2020-07-01 14:07:29.948923
3027	1	OXSQL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:07:41.110503
3028	1	OXSQZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:07:52.796698
3029	1	OYST                	Oyster Point Pharma Inc Ordinary Shares	28.54	-	-	-		2020-07-01 14:08:11.743571
3030	1	PFIN                	P &amp F Industries Inc Class A	7.23	-	-	-		2020-07-01 14:08:32.563246
3031	1	PTSI                	P.A.M. Transportation Services Inc	41.90	-	-	-		2020-07-01 14:08:54.941801
3032	1	PCAR                	PACCAR Inc	70.00	-	-	-		2020-07-01 14:09:12.422406
3033	1	HERD                	-	0	Pacer Cash Cows Fund of Funds ETF	-	-		2020-07-01 14:10:33.259249
3034	1	ECOW                	-	0	Pacer Emerging Markets Cash Cows 100 ETF	-	-		2020-07-01 14:10:51.885308
3035	1	VETS                	-	0	Pacer Military Times Best Employers ETF	-	-		2020-07-01 14:11:10.378951
3036	1	PACB                	Pacific Biosciences of California Inc	3.76	-	-	-		2020-07-01 14:11:27.140238
3037	1	PEIX                	Pacific Ethanol Inc	1.92	-	-	-		2020-07-01 14:11:42.507052
3038	1	PMBC                	Pacific Mercantile Bancorp	5.39	-	-	-		2020-07-01 14:12:00.079835
3039	1	PPBI                	Pacific Premier Bancorp Inc	25.95	-	-	-		2020-07-01 14:12:17.742748
3040	1	PCRX                	Pacira BioSciences Inc	47.68	-	-	-		2020-07-01 14:12:36.354294
3041	1	ROLL                	RBC Bearings Inc	134.13	-	-	-		2020-07-01 14:12:52.46521
3042	1	PACW                	PacWest Bancorp	27.02	-	-	-		2020-07-01 14:12:54.549686
3043	1	RICK                	RCI Hospitality Holdings Inc	20.86	-	-	-		2020-07-01 14:13:10.906713
3044	1	PAE                 	PAE Inc	13.42	-	-	-		2020-07-01 14:13:12.58224
3045	1	PAEWW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:13:23.66063
3046	1	RCMT                	RCM Technologies Inc	2.25	-	-	-		2020-07-01 14:13:27.330595
3047	1	PLMR                	Palomar Holdings Inc	60.33	-	-	-		2020-07-01 14:13:39.384155
3048	1	RDI                 	-	0	-	-	-	Fair value not available	2020-07-01 14:13:46.471063
3049	1	PAAS                	Pan American Silver Corp	33.78	-	-	-		2020-07-01 14:13:57.305497
3050	1	RDIB                	Reading International Inc Class B	25.86	-	-	-		2020-07-01 14:14:01.771691
3051	1	PANL                	Pangaea Logistics Solutions Ltd	3.28	-	-	-		2020-07-01 14:14:12.524161
3052	1	PZZA                	Papa John"s International Inc	79.02	-	-	-		2020-07-01 14:14:27.378077
3053	1	BLCN                	-	0	Reality Shares Nasdaq NexGen Economy ETF	-	-		2020-07-01 14:14:37.272326
3054	1	PRTK                	Paratek Pharmaceuticals Inc	5.33	-	-	-		2020-07-01 14:14:43.224542
3055	1	RNWK                	RealNetworks Inc	2.26	-	-	-		2020-07-01 14:14:52.315319
3056	1	TEUM                	Pareteum Corp	1.05	-	-	-		2020-07-01 14:14:58.988001
3057	1	RP                  	RealPage Inc	56.61	-	-	-		2020-07-01 14:15:07.025683
3058	1	PCYG                	Park City Group Inc	5.32	-	-	-		2020-07-01 14:15:19.295342
3059	1	RETA                	Reata Pharmaceuticals Inc A	129.43	-	-	-		2020-07-01 14:15:24.272425
3060	1	PKBK                	Parke Bancorp Inc	18.66	-	-	-		2020-07-01 14:15:34.867159
3061	1	RCON                	Recon Technology Ltd	1.94	-	-	-		2020-07-01 14:15:39.903446
3062	1	PKOH                	Park-Ohio Holdings Corp	25.15	-	-	-		2020-07-01 14:15:50.301257
3063	1	REPH                	Recro Pharma Inc	6.47	-	-	-		2020-07-01 14:15:55.961148
3064	1	PTNR                	Partner Communications Co Ltd ADR	4.58	-	-	-		2020-07-01 14:16:07.709583
3065	1	RRBI                	Red River Bancshares Inc	51.27	-	-	-		2020-07-01 14:16:11.730922
3066	1	PASG                	Passage Bio Inc Ordinary Shares	32.12	-	-	-		2020-07-01 14:16:25.04136
3067	1	RRGB                	Red Robin Gourmet Burgers Inc	22.24	-	-	-		2020-07-01 14:16:26.649545
3068	1	THWWW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:16:39.299136
3069	1	RRR                 	Red Rock Resorts Inc A	17.58	-	-	-		2020-07-01 14:16:42.116062
3070	1	PBHC                	Pathfinder Bancorp Inc	12.21	-	-	-		2020-07-01 14:16:42.745807
3071	1	RDVT                	Red Violet Inc Ordinary Shares	18.86	-	-	-		2020-07-01 14:16:58.090889
3072	1	PATK                	Patrick Industries Inc	72.24	-	-	-		2020-07-01 14:17:14.029734
3073	1	TATT                	TAT Technologies Ltd	5.38	-	-	-		2020-07-01 14:17:18.529089
3074	1	RDFN                	Redfin Corp	23.00	-	-	-		2020-07-01 14:17:19.01965
3075	1	PNBK                	Patriot National Bancorp Inc	9.97	-	-	-		2020-07-01 14:17:31.980644
3076	1	TAYD                	Taylor Devices Inc	13.03	-	-	-		2020-07-01 14:17:36.843046
3077	1	RDHL                	Redhill Biopharma Ltd ADR	7.12	-	-	-		2020-07-01 14:17:37.123264
3078	1	PATI                	Patriot Transportation Holding Inc	12.12	-	-	-		2020-07-01 14:17:49.750662
3079	1	REED                	Reed"s Inc	1.36	-	-	-		2020-07-01 14:17:53.86294
3080	1	TCF                 	TCF Financial Corp	39.61	-	-	-		2020-07-01 14:17:54.274101
3081	1	TCFCP               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:18:05.437648
3082	1	PDCO                	Patterson Companies Inc	15.00	-	-	-		2020-07-01 14:18:08.31095
3083	1	REG                 	Regency Centers Corp	75.00	-	-	-		2020-07-01 14:18:09.173203
3084	1	CGBD                	TCG BDC Inc	12.15	-	-	-		2020-07-01 14:18:20.521776
3085	1	REGN                	Regeneron Pharmaceuticals Inc	473.00	-	-	-		2020-07-01 14:18:23.910428
3086	1	PTEN                	Patterson-UTI Energy Inc	3.75	-	-	-		2020-07-01 14:18:26.045246
3087	1	TCRR                	TCR2 Therapeutics Inc	21.09	-	-	-		2020-07-01 14:18:35.206226
3088	1	RGNX                	Regenxbio Inc	44.65	-	-	-		2020-07-01 14:18:40.389417
3089	1	PAVM                	PAVmed Inc	1.90	-	-	-		2020-07-01 14:18:43.847629
3090	1	AMTD                	TD Ameritrade Holding Corp	49.00	-	-	-		2020-07-01 14:18:50.060654
3091	1	PAVMW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:18:55.384245
3092	1	RGLS                	Regulus Therapeutics Inc	1.13	-	-	-		2020-07-01 14:18:55.637683
3093	1	GLG                 	TD Holdings Inc	1.95	-	-	-		2020-07-01 14:19:05.406534
3094	1	PAVMZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:19:07.062506
3095	1	REKR                	Rekor Systems Inc	4.28	-	-	-		2020-07-01 14:19:11.466833
3096	1	PETZ                	TDH Holdings Inc	1.89	-	-	-		2020-07-01 14:19:20.751202
3097	1	PAYX                	Paychex Inc	69.00	-	-	-		2020-07-01 14:19:24.714654
3098	1	RBNC                	Reliant Bancorp Inc	21.85	-	-	-		2020-07-01 14:19:26.550122
3099	1	TECD                	-	0	-	-	-	Fair value not available	2020-07-01 14:19:39.869456
3100	1	RELV                	Reliv" International Inc	5.17	-	-	-		2020-07-01 14:19:41.268084
3101	1	PCTY                	Paylocity Holding Corp	—	-	-	-		2020-07-01 14:19:42.66649
3102	1	TCCO                	Technical Communications Corp	5.07	-	-	-		2020-07-01 14:19:55.293288
3103	1	RLMD                	Relmada Therapeutics Inc	44.05	-	-	-		2020-07-01 14:19:56.658432
3104	1	PYPL                	PayPal Holdings Inc	94.00	-	-	-		2020-07-01 14:19:59.831937
3105	1	TTGT                	TechTarget Inc	25.47	-	-	-		2020-07-01 14:20:15.397984
3106	1	MARK                	Remark Holdings Inc	2.31	-	-	-		2020-07-01 14:20:17.254636
3107	1	PAYS                	PaySign Inc	6.51	-	-	-		2020-07-01 14:20:22.788726
3108	1	TGLS                	Tecnoglass Inc	7.50	-	-	-		2020-07-01 14:20:31.22845
3109	1	RNST                	Renasant Corp	29.13	-	-	-		2020-07-01 14:20:32.353857
3110	1	CNXN                	PC Connection Inc	50.26	-	-	-		2020-07-01 14:20:41.461242
3111	1	TGEN                	Tecogen Inc	1.19	-	-	-		2020-07-01 14:20:46.178778
3112	1	REGI                	Renewable Energy Group Inc	34.95	-	-	-		2020-07-01 14:20:48.399202
3113	1	PCB                 	PCB Bancorp	13.78	-	-	-		2020-07-01 14:20:58.792925
3114	1	TECTP               	Tectonic Financial Inc Pref Share	—	-	-	-		2020-07-01 14:21:02.894499
3115	1	RCII                	Rent-A-Center Inc	35.26	-	-	-		2020-07-01 14:21:04.445496
3116	1	TELA                	TELA Bio Inc Ordinary Shares	15.33	-	-	-		2020-07-01 14:21:17.947926
3117	1	RPAY                	Repay Holdings Corp Ordinary Shares - Class A	22.07	-	-	-		2020-07-01 14:21:19.289001
3118	1	PCIMX               	-	0	PIMCO California Intermediate Municipal Bond Fund Institutional Class	3	-		2020-07-01 14:21:19.895274
3119	1	TNAV                	Telenav Inc	7.59	-	-	-		2020-07-01 14:21:33.448569
3120	1	RGEN                	Repligen Corp	97.67	-	-	-		2020-07-01 14:21:34.394013
3121	1	PCSB                	PCSB Financial Corp	14.60	-	-	-		2020-07-01 14:21:38.370303
3122	1	TLGT                	Teligent Inc	3.57	-	-	-		2020-07-01 14:21:49.165864
3123	1	REPL                	Replimune Group Inc	25.71	-	-	-		2020-07-01 14:21:49.386593
3124	1	PCTI                	PCTEL Inc	8.46	-	-	-		2020-07-01 14:21:56.807583
3125	1	KRMD                	Repro-Med Systems Inc	6.24	-	-	-		2020-07-01 14:22:04.718977
3126	1	TELL                	Tellurian Inc	1.97	-	-	-		2020-07-01 14:22:04.78291
3127	1	PDCE                	PDC Energy Inc	19.89	-	-	-		2020-07-01 14:22:14.208025
3128	1	RBCAA               	Republic Bancorp Inc Class A	37.45	-	-	-		2020-07-01 14:22:19.987149
3129	1	TENB                	Tenable Holdings Inc	28.53	-	-	-		2020-07-01 14:22:20.065267
3130	1	PDFS                	PDF Solutions Inc	20.77	-	-	-		2020-07-01 14:22:32.157666
3131	1	FRBK                	Republic First Bancorp Inc	3.54	-	-	-		2020-07-01 14:22:35.914324
3132	1	TENX                	Tenax Therapeutics Inc	1.28	-	-	-		2020-07-01 14:22:38.342644
3133	1	PDLI                	PDL BioPharma Inc	3.40	-	-	-		2020-07-01 14:22:50.0109
3134	1	REFR                	Research Frontiers Inc	3.47	-	-	-		2020-07-01 14:22:51.418145
3135	1	TZAC                	Tenzing Acquisition Corp Ordinary Shares	10.96	-	-	-		2020-07-01 14:22:52.931885
3136	1	RSSS                	Research Solutions Inc	2.50	-	-	-		2020-07-01 14:23:06.169057
3137	1	TZACU               	-	—	-	-	-		2020-07-01 14:23:07.484177
3138	1	TZACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:23:18.633042
3139	1	RESN                	Resonant Inc	2.85	-	-	-		2020-07-01 14:23:22.013501
3140	1	TER                 	Teradyne Inc	72.15	-	-	-		2020-07-01 14:23:33.403544
3141	1	PDLB                	PDL Community Bancorp	12.20	-	-	-		2020-07-01 14:23:38.857654
3142	1	RGP                 	Resources Connection Inc	13.55	-	-	-		2020-07-01 14:23:39.012938
3143	1	TERP                	TerraForm Power Inc Class A	20.31	-	-	-		2020-07-01 14:23:48.618144
3144	1	TORC                	resTORbio Inc	3.67	-	-	-		2020-07-01 14:23:56.395079
3145	1	PDSB                	PDS Biotechnology Corp	3.26	-	-	-		2020-07-01 14:23:57.226543
3146	1	TBNK                	Territorial Bancorp Inc	27.03	-	-	-		2020-07-01 14:24:03.525329
3147	1	ROIC                	Retail Opportunity Investments Corp	15.54	-	-	-		2020-07-01 14:24:14.76591
3148	1	PGC                 	Peapack Gladstone Financial Corp	25.61	-	-	-		2020-07-01 14:24:15.08244
3149	1	TSLA                	Tesla Inc	731.00	-	-	-		2020-07-01 14:24:18.635978
3150	1	RETO                	ReTo Eco-Solutions Inc Ordinary Shares	1.98	-	-	-		2020-07-01 14:24:32.031121
3151	1	LOGX                	PeerLogix Inc	0.03	-	-	-		2020-07-01 14:24:32.745846
3152	1	TESS                	Tessco Technologies Inc	9.08	-	-	-		2020-07-01 14:24:34.536548
3153	1	TTEK                	Tetra Tech Inc	72.00	-	-	-		2020-07-01 14:24:49.610526
3154	1	RTRX                	Retrophin Inc	22.31	-	-	-		2020-07-01 14:24:49.837556
3155	1	PEGA                	Pegasystems Inc	100.00	-	-	-		2020-07-01 14:24:51.445642
3156	1	TTPH                	Tetraphase Pharmaceuticals Inc	5.17	-	-	-		2020-07-01 14:25:05.29608
3157	1	RVNC                	Revance Therapeutics Inc	26.94	-	-	-		2020-07-01 14:25:08.014959
3158	1	PTON                	Peloton Interactive Inc	44.30	-	-	-		2020-07-01 14:25:09.20221
3159	1	TCBI                	Texas Capital Bancshares Inc	48.97	-	-	-		2020-07-01 14:25:21.989243
3160	1	PENN                	Penn National Gaming Inc	42.80	-	-	-		2020-07-01 14:25:26.831055
3161	1	RVMD                	Revolution Medicines Inc Ordinary Shares	33.11	-	-	-		2020-07-01 14:25:28.484798
3162	1	TCBIL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:25:33.104645
3163	1	PVAC                	Penn Virginia Corp	19.17	-	-	-		2020-07-01 14:25:44.107813
3164	1	RWLK                	ReWalk Robotics Ltd	3.06	-	-	-		2020-07-01 14:25:45.533694
3165	1	TCBIP               	Texas Capital Bancshares Inc Pref Share	39.36	-	-	-		2020-07-01 14:25:50.174063
3166	1	REXN                	Rexahn Pharmaceuticals Inc	4.37	-	-	-		2020-07-01 14:26:02.629781
3167	1	PFLT                	PennantPark Floating Rate Capital Ltd	12.24	-	-	-		2020-07-01 14:26:03.330352
3168	1	TXN                 	Texas Instruments Inc	115.00	-	-	-		2020-07-01 14:26:05.387214
3169	1	REYN                	Reynolds Consumer Products Inc Ordinary Shares	31.29	-	-	-		2020-07-01 14:26:19.909972
3170	1	TXRH                	Texas Roadhouse Inc	55.22	-	-	-		2020-07-01 14:26:20.993571
3171	1	PNNT                	Pennant Park Investment Corp	5.12	-	-	-		2020-07-01 14:26:22.03708
3172	1	PNNTG               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:26:33.168936
3173	1	TFFP                	TFF Pharmaceuticals Inc Ordinary Shares	5.89	-	-	-		2020-07-01 14:26:36.199574
3174	1	RFIL                	RF Industries Ltd	6.72	-	-	-		2020-07-01 14:26:38.092512
3175	1	PWOD                	Penns Woods Bancorp Inc	27.60	-	-	-		2020-07-01 14:26:50.645157
3176	1	TFSL                	TFS Financial Corp	13.45	-	-	-		2020-07-01 14:26:51.669408
3177	1	TGTX                	TG Therapeutics Inc	15.09	-	-	-		2020-07-01 14:27:08.302923
3178	1	PEBO                	Peoples Bancorp Inc (Marietta OH)	24.50	-	-	-		2020-07-01 14:27:09.945774
3179	1	WTER                	Alkaline Water Co Inc	1.97	-	-	-		2020-07-01 14:27:26.694918
3180	1	PEBK                	Peoples Bancorp of North Carolina Inc	24.12	-	-	-		2020-07-01 14:27:27.544069
3181	1	RGCO                	RGC Resources Inc	24.53	-	-	-		2020-07-01 14:27:36.112266
3182	1	ANDE                	Andersons Inc	23.61	-	-	-		2020-07-01 14:27:44.683989
3183	1	PFIS                	Peoples Financial Services Corp	44.97	-	-	-		2020-07-01 14:27:45.016692
3184	1	RBKB                	Rhinebeck Bancorp Inc Ordinary Shares	8.39	-	-	-		2020-07-01 14:27:54.004141
3185	1	PBCT                	People"s United Financial Inc	14.20	-	-	-		2020-07-01 14:28:01.113018
3186	1	TBBK                	The Bancorp Inc	14.41	-	-	-		2020-07-01 14:28:02.690839
3187	1	RYTM                	Rhythm Pharmaceuticals Inc	24.35	-	-	-		2020-07-01 14:28:11.676576
3188	1	PBCTP               	People"s United Financial Inc Pref Share	28.99	-	-	-		2020-07-01 14:28:17.861135
3189	1	BPRN                	The Bank of Princeton	24.91	-	-	-		2020-07-01 14:28:20.654476
3190	1	RBBN                	Ribbon Communications Inc	5.65	-	-	-		2020-07-01 14:28:26.647392
3191	1	PUB                 	People"s Utah Bancorp	29.01	-	-	-		2020-07-01 14:28:35.119989
3192	1	CG                  	The Carlyle Group Inc	27.46	-	-	-		2020-07-01 14:28:36.392208
3193	1	RIBT                	RiceBran Technologies	1.48	-	-	-		2020-07-01 14:28:41.848675
3194	1	PEP                 	PepsiCo Inc	140.00	-	-	-		2020-07-01 14:28:53.015834
3195	1	CAKE                	Cheesecake Factory Inc	31.48	-	-	-		2020-07-01 14:28:53.364934
3196	1	RELL                	Richardson Electronics Ltd	5.95	-	-	-		2020-07-01 14:28:57.063239
3197	1	CHEF                	The Chefs" Warehouse Inc	20.24	-	-	-		2020-07-01 14:29:08.640385
3198	1	PRCP                	Perceptron Inc	5.21	-	-	-		2020-07-01 14:29:08.648614
3199	1	RMBI                	Richmond Mutual Bancorp Inc Ordinary Shares	12.95	-	-	-		2020-07-01 14:29:11.811436
3200	1	PRDO                	Perdoceo Education Corp	19.34	-	-	-		2020-07-01 14:29:23.957987
3201	1	TCFC                	The Community Financial Corp	30.80	-	-	-		2020-07-01 14:29:26.833193
3202	1	RIGL                	Rigel Pharmaceuticals Inc	—	-	-	-		2020-07-01 14:29:27.652055
3203	1	PRFT                	Perficient Inc	39.71	-	-	-		2020-07-01 14:29:39.90214
3204	1	DSGX                	The Descartes Systems Group Inc	42.00	-	-	-		2020-07-01 14:29:41.662053
3205	1	RNET                	RigNet Inc	4.13	-	-	-		2020-07-01 14:29:42.370518
3206	1	PSHG                	Performance Shipping Inc	1.08	-	-	-		2020-07-01 14:29:55.487077
3207	1	RMNI                	Rimini Street Inc	5.46	-	-	-		2020-07-01 14:29:57.065131
3208	1	DXYN                	The Dixie Group Inc	2.33	-	-	-		2020-07-01 14:29:57.09288
3209	1	PFMT                	Performant Financial Corp	0.92	-	-	-		2020-07-01 14:30:10.865109
3210	1	RIOT                	Riot Blockchain Inc	3.45	-	-	-		2020-07-01 14:30:14.778577
3211	1	PERI                	-	0	-	-	-	Fair value not available	2020-07-01 14:30:30.358977
3212	1	REDU                	-	0	-	-	-	Fair value not available	2020-07-01 14:30:33.518724
3213	1	PESI                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:30:41.712509
3214	1	PPIH                	Perma-Pipe International Holdings Inc	7.40	-	-	-		2020-07-01 14:31:20.698707
3215	1	ENSG                	Ensign Group Inc	45.73	-	-	-		2020-07-01 14:31:24.309377
3216	1	RVSB                	Riverview Bancorp Inc	0	-	-	-	Fair value not available	2020-07-01 14:31:24.95051
3217	1	PSNL                	Personalis Inc	18.06	-	-	-		2020-07-01 14:31:39.257193
3218	1	RIVE                	Riverview Financial Corp	9.11	-	-	-		2020-07-01 14:31:42.678686
3219	1	XONE                	The ExOne Co	11.21	-	-	-		2020-07-01 14:31:42.885985
3220	1	PETQ                	PetIQ Inc Class A	39.11	-	-	-		2020-07-01 14:32:01.432323
3221	1	FBMS                	First Bancshares Inc	28.23	-	-	-		2020-07-01 14:32:05.326062
3222	1	RCKT                	Rocket Pharmaceuticals Inc	23.75	-	-	-		2020-07-01 14:32:05.331988
3223	1	PETS                	PetMed Express Inc	35.48	-	-	-		2020-07-01 14:32:19.363679
3224	1	RMTI                	Rockwell Medical Inc	2.59	-	-	-		2020-07-01 14:32:23.152584
3225	1	FLIC                	First of Long Island Corp	19.44	-	-	-		2020-07-01 14:32:23.416754
3226	1	PFSW                	PFSweb Inc	8.86	-	-	-		2020-07-01 14:32:37.515006
3227	1	GT                  	Goodyear Tire &amp Rubber Co	14.70	-	-	-		2020-07-01 14:32:41.264939
3228	1	RCKY                	Rocky Brands Inc	27.88	-	-	-		2020-07-01 14:32:41.377671
3229	1	PGTI                	PGT Innovations Inc	18.95	-	-	-		2020-07-01 14:32:54.607648
3230	1	RMCF                	Rocky Mountain Chocolate Factory Inc	6.03	-	-	-		2020-07-01 14:32:59.016409
3231	1	HCKT                	The Hackett Group Inc	14.74	-	-	-		2020-07-01 14:32:59.494541
3232	1	PHAS                	PhaseBio Pharmaceuticals Inc	6.56	-	-	-		2020-07-01 14:33:11.790537
3233	1	ROKU                	Roku Inc Class A	76.90	-	-	-		2020-07-01 14:33:16.312684
3234	1	HAIN                	The Hain Celestial Group Inc	26.00	-	-	-		2020-07-01 14:33:18.826002
3235	1	PHAT                	Phathom Pharmaceuticals Inc Ordinary shares	34.43	-	-	-		2020-07-01 14:33:29.366997
3236	1	ROSE                	Rosehill Resources Inc Class A	2.09	-	-	-		2020-07-01 14:33:34.048433
3237	1	PAHC                	Phibro Animal Health Corp Class A	26.17	-	-	-		2020-07-01 14:33:48.19281
3238	1	ROSEU               	Rosehill Resources Inc	2.49	-	-	-		2020-07-01 14:33:51.961271
3239	1	CUBA                	-	0	-	-	-	Investment Name field not found	2020-07-01 14:34:01.241747
3240	1	ROSEW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:34:04.048909
3241	1	PHIO                	Phio Pharmaceuticals Corp	3.88	-	-	-		2020-07-01 14:34:05.821051
3242	1	PHIOW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:34:16.942983
3243	1	INTG                	The Intergroup Corp	28.48	-	-	-		2020-07-01 14:34:18.424165
3244	1	ROST                	Ross Stores Inc	90.00	-	-	-		2020-07-01 14:34:22.433524
3245	1	JYNT                	The Joint Corp	13.30	-	-	-		2020-07-01 14:34:33.42508
3246	1	PLAB                	Photronics Inc	12.49	-	-	-		2020-07-01 14:34:35.178099
3247	1	ROCH                	Roth CH Acquisition I Co Ordinary Shares Class A	0	-	-	-	Fair value not available	2020-07-01 14:34:43.98383
3248	1	KHC                 	The Kraft Heinz Co	48.00	-	-	-		2020-07-01 14:34:48.587476
3249	1	PHUN                	Phunware Inc Ordinary Shares	1.55	-	-	-		2020-07-01 14:34:50.678566
3250	1	ROCHU               	-	—	-	-	-		2020-07-01 14:35:00.88306
3251	1	PHUN                	Phunware Inc Ordinary Shares	1.55	-	-	-		2020-07-01 14:35:06.264415
3252	1	ROCHW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:35:11.968844
3253	1	OLD                 	-	0	The Long-Term Care ETF	2	-		2020-07-01 14:35:38.112791
3254	1	PICO                	PICO Holdings Inc	9.65	-	-	-		2020-07-01 14:35:39.973269
3255	1	RGLD                	Royal Gold Inc	112.20	-	-	-		2020-07-01 14:35:41.52667
3256	1	PLL                 	Piedmont Lithium Ltd ADR	6.28	-	-	-		2020-07-01 14:36:01.610049
3257	1	LOVE                	The Lovesac Co	40.12	-	-	-		2020-07-01 14:36:02.025286
3258	1	RTIX                	RTI Surgical Holdings Inc	5.04	-	-	-		2020-07-01 14:36:03.44968
3259	1	PIRS                	Pieris Pharmaceuticals Inc	4.66	-	-	-		2020-07-01 14:36:19.603062
3260	1	MEET                	The Meet Group Inc	6.29	-	-	-		2020-07-01 14:36:19.751796
3261	1	RBCN                	Rubicon Technology Inc	10.04	-	-	-		2020-07-01 14:36:30.185624
3262	1	PPC                 	Pilgrims Pride Corp	34.50	-	-	-		2020-07-01 14:36:38.617767
3263	1	MIK                 	The Michaels Companies Inc	11.04	-	-	-		2020-07-01 14:36:39.065417
3264	1	RUBY                	Rubius Therapeutics Inc	8.79	-	-	-		2020-07-01 14:36:49.835593
3265	1	PDD                 	Pinduoduo Inc ADR	54.02	-	-	-		2020-07-01 14:36:56.732581
3266	1	MIDD                	The Middleby Corp	97.11	-	-	-		2020-07-01 14:36:58.009464
3267	1	RUHN                	Ruhnn Holding Ltd ADR	4.63	-	-	-		2020-07-01 14:37:07.15308
3268	1	RMBL                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:37:18.290504
3269	1	PME                 	Pingtan Marine Enterprise Ltd	1.78	-	-	-		2020-07-01 14:37:34.932636
3270	1	STKS                	The One Group Hospitality Inc	2.53	-	-	-		2020-07-01 14:37:35.314094
3271	1	RMBL                	RumbleON Inc Class B	21.53	-	-	-		2020-07-01 14:37:36.531714
3272	1	PNFP                	Pinnacle Financial Partners Inc	48.59	-	-	-		2020-07-01 14:37:52.730247
3273	1	PECK                	The Peck Co Holdings Inc	5.81	-	-	-		2020-07-01 14:37:52.747157
3274	1	RUSHB               	Rush Enterprises Inc Class B	42.18	-	-	-		2020-07-01 14:37:54.787628
3275	1	PNFPP               	Pinnacle Financial Partners Inc Pref Share	30.07	-	-	-		2020-07-01 14:38:10.472091
3276	1	PNTG                	Pennant Group Inc	28.26	-	-	-		2020-07-01 14:38:11.310238
3277	1	RUTH                	Ruth"s Hospitality Group Inc	12.51	-	-	-		2020-07-01 14:38:12.366334
3278	1	PT                  	Pintec Technology Holdings Ltd ADR	2.04	-	-	-		2020-07-01 14:38:27.246801
3279	1	PRSC                	The Providence Service Corp	77.98	-	-	-		2020-07-01 14:38:28.482671
3280	1	RYAAY               	Ryanair Holdings PLC ADR	72.38	-	-	-		2020-07-01 14:38:30.195703
3281	1	PBFS                	Pioneer Bancorp Inc	10.33	-	-	-		2020-07-01 14:38:44.618256
3282	1	REAL                	The RealReal Inc	19.15	-	-	-		2020-07-01 14:38:46.329322
3283	1	STBA                	S&ampT Bancorp Inc	27.38	-	-	-		2020-07-01 14:38:47.434211
3284	1	RMR                 	The RMR Group Inc Class A	35.23	-	-	-		2020-07-01 14:39:03.621938
3285	1	SANW                	S&ampW Seed Company	2.86	-	-	-		2020-07-01 14:39:04.453223
3286	1	RUBI                	The Rubicon Project Inc	9.04	-	-	-		2020-07-01 14:39:21.480646
3287	1	SBRA                	Sabra Health Care REIT Inc	22.93	-	-	-		2020-07-01 14:39:23.39084
3288	1	PPSI                	Pioneer Power Solutions Inc	3.18	-	-	-		2020-07-01 14:39:39.571935
3289	1	SHYF                	The Shyft Group Inc	19.82	-	-	-		2020-07-01 14:39:39.83134
3290	1	SABR                	Sabre Corp	17.50	-	-	-		2020-07-01 14:39:40.890186
3291	1	SAEX                	SAExploration Holdings Inc	1.84	-	-	-		2020-07-01 14:39:58.521127
3292	1	SMPL                	The Simply Good Foods Co	24.00	-	-	-		2020-07-01 14:39:58.890066
3293	1	SFET                	Safe-T Group Ltd ADR	2.85	-	-	-		2020-07-01 14:40:25.825001
3294	1	TTD                 	The Trade Desk Inc A	233.29	-	-	-		2020-07-01 14:40:30.121766
3295	1	SAFT                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:40:36.944134
3296	1	YORW                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:40:41.447725
3297	1	SGA                 	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:40:51.967013
3298	1	NCTY                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:40:53.343943
3299	1	SAGE                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:41:03.726249
3300	1	TXMD                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:41:04.400383
3301	1	SAIA                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:41:14.833544
3302	1	TRPX                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:41:15.509803
3303	1	SLRX                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:41:26.247939
3304	1	NCTY                	The9 Ltd ADR	0.80	-	-	-		2020-07-01 14:41:39.685499
3305	1	SALM                	Salem Media Group Inc Class A	2.49	-	-	-		2020-07-01 14:41:44.272237
3306	1	TBPH                	Theravance Biopharma Inc	18.11	-	-	-		2020-07-01 14:41:58.099263
3307	1	SAL                 	Salisbury Bancorp Inc	49.89	-	-	-		2020-07-01 14:42:02.067251
3308	1	THMO                	ThermoGenesis Holdings Inc	8.55	-	-	-		2020-07-01 14:42:16.412692
3309	1	SAFM                	Sanderson Farms Inc	118.04	-	-	-		2020-07-01 14:42:20.036002
3310	1	TCRD                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:42:27.697713
3311	1	THBR                	Thunder Bridge Acquisition II Ltd Ordinary Shares Class A	9.60	-	-	-		2020-07-01 14:42:42.878159
3312	1	THBRU               	-	—	-	-	-		2020-07-01 14:43:00.345719
3313	1	SASR                	Sandy Spring Bancorp Inc	28.61	-	-	-		2020-07-01 14:43:10.754038
3314	1	THBRW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:43:11.46669
3315	1	TLRY                	Tilray Inc	15.00	-	-	-		2020-07-01 14:43:26.256585
3316	1	SGMO                	Sangamo Therapeutics Inc	10.61	-	-	-		2020-07-01 14:43:28.802838
3317	1	TSBK                	Timberland Bancorp Inc	24.40	-	-	-		2020-07-01 14:43:41.322619
3318	1	SANM                	Sanmina Corp	28.51	-	-	-		2020-07-01 14:43:47.234983
3319	1	TIPT                	Tiptree Inc	7.30	-	-	-		2020-07-01 14:43:57.17146
3320	1	SNY                 	Sanofi SA ADR	55.00	-	-	-		2020-07-01 14:44:02.628105
3321	1	TITN                	Titan Machinery Inc	14.60	-	-	-		2020-07-01 14:44:12.081661
3322	1	SPNS                	Sapiens International Corp NV	24.44	-	-	-		2020-07-01 14:44:20.556794
3323	1	TMDI                	Titan Medical Inc	0.75	-	-	-		2020-07-01 14:44:27.353848
3324	1	SRPT                	Sarepta Therapeutics Inc	143.72	-	-	-		2020-07-01 14:44:35.43674
3325	1	TTNP                	Titan Pharmaceuticals Inc	0.47	-	-	-		2020-07-01 14:44:42.082599
3326	1	STSA                	Satsuma Pharmaceuticals Inc Ordinary Shares	29.82	-	-	-		2020-07-01 14:44:50.848252
3327	1	SVRA                	Savara Inc	4.08	-	-	-		2020-07-01 14:45:14.953214
3328	1	TVTY                	Tivity Health Inc	19.24	-	-	-		2020-07-01 14:45:15.062692
3329	1	SBFG                	SB Financial Group Inc	20.69	-	-	-		2020-07-01 14:45:30.525744
3330	1	TLSA                	Tiziana Life Sciences PLC ADR	5.49	-	-	-		2020-07-01 14:45:30.681208
3331	1	TMUS                	T-Mobile US Inc	89.00	-	-	-		2020-07-01 14:45:45.976047
3332	1	SBBX                	SB One Bancorp	25.86	-	-	-		2020-07-01 14:45:45.981046
3333	1	TOCA                	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:45:57.189298
3334	1	SBAC                	SBA Communications Corp	170.00	-	-	-		2020-07-01 14:46:01.515314
3335	1	TNXP                	Tonix Pharmaceuticals Holding Corp	1.09	-	-	-		2020-07-01 14:46:12.371177
3336	1	SCSC                	ScanSource Inc	32.00	-	-	-		2020-07-01 14:46:16.601592
3337	1	TOPS                	TOP Ships Inc	0.27	-	-	-		2020-07-01 14:46:27.738174
3338	1	SMIT                	Schmitt Industries Inc	4.50	-	-	-		2020-07-01 14:46:31.501204
3339	1	TRCH                	Torchlight Energy Resources Inc	0.56	-	-	-		2020-07-01 14:46:44.909218
3340	1	SCHN                	Schnitzer Steel Industries Inc Class A	14.00	-	-	-		2020-07-01 14:46:47.457367
3341	1	SRRK                	Scholar Rock Holding Corp	18.70	-	-	-		2020-07-01 14:47:02.766113
3342	1	SCHL                	Scholastic Corp	—	-	-	-		2020-07-01 14:47:18.194091
3343	1	SDGR                	Schrodinger Inc Ordinary Shares	56.60	-	-	-		2020-07-01 14:47:33.054164
3344	1	TRMD                	TORM PLC A	9.62	-	-	-		2020-07-01 14:47:34.697521
3345	1	SAMA                	Schultze Special Purpose Acquisition Corp Ordinary Shares	10.14	-	-	-		2020-07-01 14:47:48.411069
3346	1	TOTA                	Tottenham Acquisition I Ltd	11.67	-	-	-		2020-07-01 14:47:53.23379
3347	1	SAMAU               	-	—	-	-	-		2020-07-01 14:48:04.204995
3348	1	TOTAR               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:48:04.360118
3349	1	SAMAW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:48:15.31776
3350	1	TOTAU               	-	—	-	-	-		2020-07-01 14:48:21.647388
3351	1	SJ                  	Scienjoy Holding Corp Ordinary Shares	7.50	-	-	-		2020-07-01 14:48:30.653004
3352	1	TOTAW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:48:33.045857
3353	1	SGMS                	Scientific Games Corp Ordinary Shares	22.29	-	-	-		2020-07-01 14:48:45.935176
3354	1	TBLT                	ToughBuilt Industries Inc	1.30	-	-	-		2020-07-01 14:48:50.640668
3355	1	SCPL                	SciPlay Corp	11.31	-	-	-		2020-07-01 14:49:00.894425
3356	1	TBLTW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:49:01.748284
3357	1	SCPH                	scPharmaceuticals Inc	7.81	-	-	-		2020-07-01 14:49:15.920084
3358	1	TSEM                	Tower Semiconductor Ltd	21.28	-	-	-		2020-07-01 14:49:18.895727
3359	1	WORX                	SCWorx Corp	8.27	-	-	-		2020-07-01 14:49:35.027773
3360	1	CLUB                	Town Sports International Holdings Inc	0.89	-	-	-		2020-07-01 14:49:36.923553
3361	1	SCYX                	SCYNEXIS Inc	0.71	-	-	-		2020-07-01 14:49:50.035443
3362	1	TOWN                	Towne Bank	21.93	-	-	-		2020-07-01 14:49:51.899309
3363	1	SEAC                	SeaChange International Inc	2.41	-	-	-		2020-07-01 14:50:07.141019
3364	1	TPIC                	TPI Composites Inc	28.52	-	-	-		2020-07-01 14:50:09.269983
3365	1	TCON                	TRACON Pharmaceuticals Inc	2.41	-	-	-		2020-07-01 14:50:24.213869
3366	1	SBCF                	Seacoast Banking Corp of Florida Class A	24.02	-	-	-		2020-07-01 14:50:25.175685
3367	1	STX                 	Seagate Technology PLC	42.00	-	-	-		2020-07-01 14:50:39.876752
3368	1	TSCO                	Tractor Supply Co	102.00	-	-	-		2020-07-01 14:50:39.8768
3369	1	SHIP                	Seanergy Maritime Holdings Corp	4.20	-	-	-		2020-07-01 14:50:54.702375
3370	1	TW                  	Tradeweb Markets Inc	54.05	-	-	-		2020-07-01 14:50:54.716042
3371	1	SHIPW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:51:05.836606
3372	1	TWMC                	Trans World Entertainment Corp	12.51	-	-	-		2020-07-01 14:51:09.796726
3373	1	SHIPZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:51:17.214537
3374	1	TACT                	Transact Technologies Inc	7.26	-	-	-		2020-07-01 14:51:25.248932
3375	1	SPNE                	SeaSpine Holdings Corp	16.50	-	-	-		2020-07-01 14:51:32.377999
3376	1	TRNS                	Transcat Inc	27.30	-	-	-		2020-07-01 14:51:40.714911
3377	1	SGEN                	Seattle Genetics Inc	114.00	-	-	-		2020-07-01 14:51:47.757432
3378	1	TGA                 	TransGlobe Energy Corp	1.02	-	-	-		2020-07-01 14:51:56.602138
3379	1	EYES                	Second Sight Medical Products Inc	1.38	-	-	-		2020-07-01 14:52:02.433283
3380	1	TBIO                	Translate Bio Inc	17.68	-	-	-		2020-07-01 14:52:11.767283
3381	1	EYESW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:52:13.500804
3382	1	TMDX                	TransMedics Group Inc	17.63	-	-	-		2020-07-01 14:52:26.64879
3383	1	SECO                	Secoo Holding Ltd ADR	4.64	-	-	-		2020-07-01 14:52:28.674091
3384	1	TA                  	TravelCenters Of America Inc	40.26	-	-	-		2020-07-01 14:52:43.546395
3385	1	SCWX                	SecureWorks Corp A	13.29	-	-	-		2020-07-01 14:52:45.357419
3386	1	TANNI               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:52:54.674261
3387	1	SNFCA               	Security National Financial Corp Class A	7.82	-	-	-		2020-07-01 14:53:02.775333
3388	1	TANNL               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:53:05.902014
3389	1	TANNZ               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:53:17.241688
3390	1	SEEL                	Seelos Therapeutics Inc	0.96	-	-	-		2020-07-01 14:53:18.6139
3391	1	TZOO                	Travelzoo	8.21	-	-	-		2020-07-01 14:53:33.451333
3392	1	SEIC                	SEI Investments Co	51.00	-	-	-		2020-07-01 14:53:33.971055
3393	1	TRMT                	Tremont Mortgage Trust Registered Shs of Benef Interest	5.80	-	-	-		2020-07-01 14:53:49.041349
3394	1	SLCT                	Select Bancorp Inc	10.02	-	-	-		2020-07-01 14:53:49.374278
3395	1	TRVN                	Trevena Inc	1.68	-	-	-		2020-07-01 14:54:04.087664
3396	1	SIC                 	Select Interior Concepts Inc Ordinary Shares - Class A	6.24	-	-	-		2020-07-01 14:54:04.567322
3397	1	TRVI                	Trevi Therapeutics Inc	9.13	-	-	-		2020-07-01 14:54:19.472273
3398	1	SELB                	Selecta Biosciences Inc	2.57	-	-	-		2020-07-01 14:54:20.088892
3399	1	TPCO                	Tribune Publishing Co	14.07	-	-	-		2020-07-01 14:54:34.65093
3400	1	SIGI                	Selective Insurance Group Inc	57.90	-	-	-		2020-07-01 14:54:34.963921
3401	1	TCDA                	Tricida Inc	27.34	-	-	-		2020-07-01 14:54:50.202408
3402	1	SLS                 	SELLAS Life Sciences Group Inc	4.15	-	-	-		2020-07-01 14:54:50.262997
3403	1	LEDS                	SemiLEDs Corp	4.75	-	-	-		2020-07-01 14:55:05.212744
3404	1	TCBK                	TriCo Bancshares	33.98	-	-	-		2020-07-01 14:55:05.213121
3405	1	TDAC                	Trident Acquisitions Corp	10.16	-	-	-		2020-07-01 14:55:22.752687
3406	1	SMTC                	Semtech Corp	46.20	-	-	-		2020-07-01 14:55:22.957136
3407	1	SNCA                	Seneca Biopharma Inc	1.23	-	-	-		2020-07-01 14:55:38.960603
3408	1	TDACU               	-	—	-	-	-		2020-07-01 14:55:39.081062
3409	1	TDACW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 14:55:50.961298
3410	1	SENEA               	Seneca Foods Corp Class A	39.72	-	-	-		2020-07-01 14:55:54.167478
3411	1	TRIL                	Trillium Therapeutics Inc	7.68	-	-	-		2020-07-01 14:56:09.114288
3412	1	TRS                 	TriMas Corp	24.55	-	-	-		2020-07-01 14:56:24.302813
3413	1	TRMB                	Trimble Inc	47.76	-	-	-		2020-07-01 14:56:39.970431
3414	1	TRIB                	Trinity Biotech PLC ADR	0	-	-	-	Fair value not available	2020-07-01 14:56:59.600914
3415	1	TCOM                	Trip.com Group Ltd ADR	34.00	-	-	-		2020-07-01 14:57:15.357507
3416	1	TRIP                	TripAdvisor Inc	35.00	-	-	-		2020-07-01 14:57:30.719376
3417	1	TSC                 	TriState Capital Holdings Inc	24.43	-	-	-		2020-07-01 14:57:46.065316
3418	1	TSCAP               	TriState Capital Holdings Inc Pref Share	35.59	-	-	-		2020-07-01 14:58:04.695033
3420	1	SENEB               	Seneca Foods Corp Class B	38.77	-	-	-		2020-07-01 15:04:52.475446
3421	1	SNES                	SenesTech Inc	3.22	-	-	-		2020-07-01 15:05:10.212279
3422	1	TSCBP               	TriState Capital Holdings Inc Pref Share	35.74	-	-	-		2020-07-01 15:05:23.384725
3423	1	AIHS                	Senmiao Technology Ltd	1.18	-	-	-		2020-07-01 15:05:27.349887
3424	1	TBK                 	Triumph Bancorp Inc	28.46	-	-	-		2020-07-01 15:05:42.423863
3425	1	SRTS                	Sensus Healthcare Inc	4.76	-	-	-		2020-07-01 15:05:43.209291
3426	1	SQBG                	Sequential Brands Group Inc	0.52	-	-	-		2020-07-01 15:05:58.403451
3427	1	TRVG                	trivago NV ADR	3.62	-	-	-		2020-07-01 15:06:00.17758
3428	1	MCRB                	Seres Therapeutics Inc	4.46	-	-	-		2020-07-01 15:06:13.448157
3429	1	TRUE                	TrueCar Inc	4.20	-	-	-		2020-07-01 15:06:15.234243
3430	1	SVC                 	Service Properties Trust	13.78	-	-	-		2020-07-01 15:06:29.075836
3431	1	TRUP                	Trupanion Inc	37.23	-	-	-		2020-07-01 15:06:30.077167
3432	1	SREV                	ServiceSource International Inc	2.42	-	-	-		2020-07-01 15:06:43.806231
3433	1	TRST                	Trustco Bank Corp N Y	7.41	-	-	-		2020-07-01 15:06:44.844506
3434	1	SFBS                	Servisfirst Bancshares Inc	38.86	-	-	-		2020-07-01 15:06:59.548323
3435	1	TRMK                	Trustmark Corp	27.28	-	-	-		2020-07-01 15:07:03.699566
3436	1	SESN                	Sesen Bio Inc	0.87	-	-	-		2020-07-01 15:07:15.551719
3437	1	MEDS                	Trxade Group Inc	6.67	-	-	-		2020-07-01 15:07:24.962066
3438	1	SVBI                	Severn Bancorp Inc	8.59	-	-	-		2020-07-01 15:07:32.556036
3439	1	TSRI                	TSR Inc	6.98	-	-	-		2020-07-01 15:07:42.717779
3440	1	SGBX                	SG Blocks Inc	4.41	-	-	-		2020-07-01 15:07:50.840714
3441	1	TTEC                	TTEC Holdings Inc	47.18	-	-	-		2020-07-01 15:08:01.152655
3442	1	SGOC                	SGOCO Group Ltd	1.38	-	-	-		2020-07-01 15:08:06.587992
3443	1	TTMI                	TTM Technologies Inc	14.10	-	-	-		2020-07-01 15:08:21.000195
3444	1	SMED                	Sharps Compliance Corp	7.34	-	-	-		2020-07-01 15:08:21.418745
3445	1	SHSP                	SharpSpring Inc	11.71	-	-	-		2020-07-01 15:08:36.10282
3446	1	TC                  	TuanChe Ltd ADR	2.44	-	-	-		2020-07-01 15:08:42.326063
3447	1	SHEN                	Shenandoah Telecommunications Co	43.07	-	-	-		2020-07-01 15:08:51.72691
3448	1	TCX                 	Tucows Inc	54.55	-	-	-		2020-07-01 15:08:59.832287
3449	1	PIXY                	ShiftPixy Inc	8.19	-	-	-		2020-07-01 15:09:07.926386
3450	1	TOUR                	Tuniu Corp ADR	2.24	-	-	-		2020-07-01 15:09:17.513744
3451	1	SHLO                	Shiloh Industries Inc	4.26	-	-	-		2020-07-01 15:09:23.066083
3452	1	TPTX                	Turning Point Therapeutics Inc	62.46	-	-	-		2020-07-01 15:09:34.718677
3453	1	HEAR                	Turtle Beach Corp	17.75	-	-	-		2020-07-01 15:09:55.881133
3454	1	THCB                	Tuscan Holdings Corp	9.97	-	-	-		2020-07-01 15:10:13.102111
3455	1	THCBU               	-	—	-	-	-		2020-07-01 15:10:29.944045
3456	1	THCBW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:10:41.286662
3457	1	THCA                	Tuscan Holdings Corp II Ordinary Shares	7.71	-	-	-		2020-07-01 15:10:57.977927
3458	1	THCAU               	-	—	-	-	-		2020-07-01 15:11:14.864294
3459	1	THCAW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:11:26.365607
3460	1	TWIN                	Twin Disc Inc	8.59	-	-	-		2020-07-01 15:11:43.936146
3461	1	TWST                	Twist Bioscience Corp	45.30	-	-	-		2020-07-01 15:11:59.19514
3462	1	TYME                	Tyme Technologies Inc	1.26	-	-	-		2020-07-01 15:12:14.516698
3463	1	USCR                	US Concrete Inc	27.00	-	-	-		2020-07-01 15:12:29.378702
3464	1	PRTS                	U.S. Auto Parts Network Inc	10.29	-	-	-		2020-07-01 15:12:44.621335
3465	1	SCCIX               	-	0	Carillon Reams Core Bond Fund Class I	5	-		2020-07-01 15:28:02.769584
3466	1	TYHT                	Shineco Inc	0.89	-	-	-		2020-07-01 15:28:33.202891
3467	1	SWAV                	ShockWave Medical Inc	44.97	-	-	-		2020-07-01 15:28:48.355624
3468	1	SCVL                	Shoe Carnival Inc	37.56	-	-	-		2020-07-01 15:29:03.601675
3469	1	USEG                	US Energy Corp	8.00	-	-	-		2020-07-01 15:29:03.747997
3470	1	SHBI                	Shore Bancshares Inc	15.04	-	-	-		2020-07-01 15:29:35.677114
3471	1	GROW                	US Global Investors Inc Class A	2.67	-	-	-		2020-07-01 15:29:36.782506
3472	1	SSTI                	ShotSpotter Inc	22.19	-	-	-		2020-07-01 15:29:52.570146
3473	1	USAU                	U.S. Gold Corp	9.26	-	-	-		2020-07-01 15:29:53.662339
3474	1	SIBN                	SI-BONE Inc	21.50	-	-	-		2020-07-01 15:30:07.407499
3475	1	USWS                	U.S. Well Services Inc Class A	0.85	-	-	-		2020-07-01 15:30:09.560793
3476	1	USWSW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:30:20.692358
3477	1	SIEB                	Siebert Financial Corp	5.44	-	-	-		2020-07-01 15:30:22.57049
3478	1	UCL                 	Ucloudlink Group Inc ADR	12.57	-	-	-		2020-07-01 15:30:35.799004
3479	1	SIEN                	Sientra Inc	6.76	-	-	-		2020-07-01 15:30:37.728281
3480	1	UFPI                	UFP Industries Inc	51.84	-	-	-		2020-07-01 15:31:00.457764
3481	1	BSRR                	Sierra Bancorp	25.02	-	-	-		2020-07-01 15:31:01.860307
3482	1	SRRA                	Sierra Oncology Inc	17.46	-	-	-		2020-07-01 15:31:17.113626
3483	1	UFPT                	UFP Technologies Inc	46.81	-	-	-		2020-07-01 15:31:18.324687
3484	1	SWIR                	Sierra Wireless Inc	12.65	-	-	-		2020-07-01 15:31:31.771573
3485	1	ULTA                	Ulta Beauty Inc	214.00	-	-	-		2020-07-01 15:31:36.038339
3486	1	SIFY                	Sify Technologies Ltd ADR	1.04	-	-	-		2020-07-01 15:31:46.457707
3487	1	UCTT                	Ultra Clean Holdings Inc	25.52	-	-	-		2020-07-01 15:31:50.799133
3488	1	SIGA                	SIGA Technologies Inc	5.73	-	-	-		2020-07-01 15:32:01.637158
3489	1	RARE                	Ultragenyx Pharmaceutical Inc	76.80	-	-	-		2020-07-01 15:32:06.284021
3490	1	SGLB                	Sigma Labs Inc	3.47	-	-	-		2020-07-01 15:32:16.830422
3491	1	ULBI                	Ultralife Corp	8.48	-	-	-		2020-07-01 15:32:21.176391
3492	1	SGLBW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:32:28.059783
3493	1	UMBF                	UMB Financial Corp	57.02	-	-	-		2020-07-01 15:32:35.902755
3494	1	SGMA                	Sigmatron International Inc	5.94	-	-	-		2020-07-01 15:32:45.310688
3495	1	UMPQ                	Umpqua Holdings Corp	11.64	-	-	-		2020-07-01 15:32:50.752381
3496	1	SBNY                	Signature Bank	121.08	-	-	-		2020-07-01 15:33:00.589429
3497	1	UNAM                	Unico American Corp	7.75	-	-	-		2020-07-01 15:33:06.470085
3498	1	SLGN                	Silgan Holdings Inc	28.50	-	-	-		2020-07-01 15:33:15.181193
3499	1	LATN                	Union Acquisition Corp II Ordinary Shares	9.75	-	-	-		2020-07-01 15:33:21.371424
3500	1	SILC                	Silicom Ltd	39.50	-	-	-		2020-07-01 15:33:29.986172
3501	1	LATNU               	-	—	-	-	-		2020-07-01 15:33:36.274943
3502	1	SLAB                	Silicon Laboratories Inc	91.25	-	-	-		2020-07-01 15:33:44.754344
3503	1	LATNW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:33:47.348508
3504	1	SIMO                	Silicon Motion Technology Corp ADR	50.96	-	-	-		2020-07-01 15:33:59.955778
3505	1	UNB                 	Union Bankshares Inc	25.12	-	-	-		2020-07-01 15:34:02.123072
3506	1	SILK                	Silk Road Medical Inc	35.41	-	-	-		2020-07-01 15:34:14.791133
3507	1	QURE                	uniQure NV	44.05	-	-	-		2020-07-01 15:34:18.129995
3508	1	SSPK                	Silver Spike Acquisition Corp Ordinary Shares Class A	9.76	-	-	-		2020-07-01 15:34:30.622254
3509	1	UAL                 	United Airlines Holdings Inc	38.00	-	-	-		2020-07-01 15:34:33.26258
3510	1	SSPKU               	-	—	-	-	-		2020-07-01 15:34:46.343349
3511	1	UBCP                	United Bancorp Inc	13.75	-	-	-		2020-07-01 15:34:48.460578
3512	1	SSPKW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:34:57.577392
3513	1	UBOH                	United Bancshares Inc	23.76	-	-	-		2020-07-01 15:35:03.507578
3514	1	SAMG                	Silvercrest Asset Management Group Inc Class A	14.07	-	-	-		2020-07-01 15:35:12.163817
3515	1	UBSI                	United Bankshares Inc	30.52	-	-	-		2020-07-01 15:35:18.284126
3516	1	SSNT                	SilverSun Technologies Inc	3.08	-	-	-		2020-07-01 15:35:26.78799
3517	1	UCBI                	United Community Banks Inc	23.41	-	-	-		2020-07-01 15:35:34.244033
3518	1	SFNC                	Simmons First National Corp Class A	21.57	-	-	-		2020-07-01 15:35:41.572003
3519	1	UCBIO               	United Community Banks Inc Pref Share	28.58	-	-	-		2020-07-01 15:35:49.251165
3520	1	SLP                 	Simulations Plus Inc	37.41	-	-	-		2020-07-01 15:35:56.617685
3521	1	UFCS                	United Fire Group Inc	31.15	-	-	-		2020-07-01 15:36:04.998224
3522	1	SINA                	SINA Corp	—	-	-	-		2020-07-01 15:36:11.260574
3523	1	UIHC                	United Insurance Holdings Corp	9.00	-	-	-		2020-07-01 15:36:20.677264
3524	1	SBGI                	Sinclair Broadcast Group Inc	28.00	-	-	-		2020-07-01 15:36:27.129261
3525	1	UNFI                	United Natural Foods Inc	33.99	-	-	-		2020-07-01 15:36:35.39367
3526	1	SINO                	Sino-Global Shipping America Ltd	0.99	-	-	-		2020-07-01 15:36:43.867313
3527	1	UBFO                	United Security Bancshares	8.66	-	-	-		2020-07-01 15:36:50.368203
3528	1	SVA                 	Sinovac Biotech Ltd	6.70	-	-	-		2020-07-01 15:36:58.765213
3529	1	USLM                	United States Lime &amp Minerals Inc	89.70	-	-	-		2020-07-01 15:37:05.333809
3530	1	SINT                	SINTX Technologies Inc	3.17	-	-	-		2020-07-01 15:37:13.779267
3531	1	UTHR                	United Therapeutics Corp	107.00	-	-	-		2020-07-01 15:37:20.229375
3532	1	SG                  	Sirius International Insurance Group Ltd	8.14	-	-	-		2020-07-01 15:37:28.945732
3533	1	UG                  	United-Guardian Inc	14.16	-	-	-		2020-07-01 15:37:35.277869
3534	1	SIRI                	Sirius XM Holdings Inc	5.70	-	-	-		2020-07-01 15:37:44.374579
3535	1	UNIT                	Uniti Group Inc	10.00	-	-	-		2020-07-01 15:37:50.269551
3536	1	SRVA                	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:37:56.391724
3537	1	UNTY                	Unity Bancorp Inc	20.03	-	-	-		2020-07-01 15:38:05.328053
3538	1	SITM                	SiTime Corp Ordinary Shares	42.48	-	-	-		2020-07-01 15:38:11.125366
3539	1	UBX                 	Unity Biotechnology Inc	9.29	-	-	-		2020-07-01 15:38:20.712815
3540	1	SKYS                	Sky Solar Holdings Ltd ADR	5.50	-	-	-		2020-07-01 15:38:26.160092
3541	1	OLED                	Universal Display Corp	114.66	-	-	-		2020-07-01 15:38:36.001197
3542	1	SKYW                	SkyWest Inc	55.62	-	-	-		2020-07-01 15:38:41.187187
3543	1	UEIC                	Universal Electronics Inc	50.82	-	-	-		2020-07-01 15:38:51.118477
3544	1	SWKS                	Skyworks Solutions Inc	100.00	-	-	-		2020-07-01 15:38:56.114911
3545	1	ULH                 	Universal Logistics Holdings Inc	21.62	-	-	-		2020-07-01 15:39:06.270271
3546	1	SNBR                	Sleep Number Corp	51.35	-	-	-		2020-07-01 15:39:10.82409
3547	1	USAP                	Universal Stainless &amp Alloy Products Inc	12.80	-	-	-		2020-07-01 15:39:21.633039
3548	1	SLM                 	SLM Corp	8.53	-	-	-		2020-07-01 15:39:26.010922
3549	1	UVSP                	Univest Financial Corp	18.86	-	-	-		2020-07-01 15:39:36.396243
3550	1	SLMBP               	SLM Corp Pref Share	39.92	-	-	-		2020-07-01 15:39:41.650318
3551	1	UMRX                	Unum Therapeutics Inc	0.93	-	-	-		2020-07-01 15:39:51.934506
3552	1	SGH                 	SMART Global Holdings Inc	31.03	-	-	-		2020-07-01 15:39:56.810977
3553	1	SND                 	Smart Sand Inc	2.02	-	-	-		2020-07-01 15:40:12.729166
3554	1	SMBK                	SmartFinancial Inc	20.11	-	-	-		2020-07-01 15:40:35.594289
3555	1	TTTN                	-	0	TigerShares UP Fintech China-U.S. Internet Titans ETF	-	-		2020-07-01 15:40:38.383556
3556	1	SDC                 	SmileDirectClub Inc Ordinary Shares - Class A	9.50	-	-	-		2020-07-01 15:40:50.598929
3557	1	TIGR                	UP Fintech Holding Ltd ADR	4.42	-	-	-		2020-07-01 15:40:53.90946
3558	1	SWBI                	Smith &amp Wesson Brands Inc	23.01	-	-	-		2020-07-01 15:41:05.983414
3559	1	UPLD                	Upland Software Inc	38.59	-	-	-		2020-07-01 15:41:08.587103
3560	1	UPWK                	Upwork Inc	14.20	-	-	-		2020-07-01 15:41:24.077709
3561	1	UONE                	Urban One Inc	37.13	-	-	-		2020-07-01 15:41:39.473253
3562	1	UONEK               	Urban One Inc Class D	3.50	-	-	-		2020-07-01 15:41:57.521813
3563	1	SMSI                	Smith Micro Software Inc	4.83	-	-	-		2020-07-01 15:41:59.590913
3564	1	URBN                	Urban Outfitters Inc	26.00	-	-	-		2020-07-01 15:42:13.069954
3565	1	SMTX                	SMTC Corp	4.29	-	-	-		2020-07-01 15:42:16.807025
3566	1	MYT                 	Urban Tea Inc	0.72	-	-	-		2020-07-01 15:42:28.107159
3567	1	SCKT                	Socket Mobile Inc	2.37	-	-	-		2020-07-01 15:42:34.122834
3568	1	GIGE                	-	0	SoFi Gig Economy ETF	-	-		2020-07-01 15:43:19.526025
3569	1	URGN                	UroGen Pharma Ltd	31.03	-	-	-		2020-07-01 15:43:32.215273
3570	1	SAQN                	Software Acquisition Group Inc Ordinary Shares Class A	7.73	-	-	-		2020-07-01 15:43:34.627976
3571	1	SAQNU               	-	—	-	-	-		2020-07-01 15:43:50.125788
3572	1	UROV                	Urovant Sciences Ltd	8.94	-	-	-		2020-07-01 15:43:50.184734
3573	1	SAQNW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:44:01.236898
3574	1	ECOL                	US Ecology Inc	47.19	-	-	-		2020-07-01 15:44:07.814758
3575	1	SOHU                	Sohu.com Ltd ADR	15.01	-	-	-		2020-07-01 15:44:16.281026
3576	1	ECOLW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:44:19.730326
3577	1	SLRC                	Solar Capital Ltd	21.13	-	-	-		2020-07-01 15:44:31.771319
3578	1	USAK                	USA Truck Inc	11.74	-	-	-		2020-07-01 15:44:34.453733
3579	1	SUNS                	Solar Senior Capital Ltd	16.23	-	-	-		2020-07-01 15:44:50.347698
3580	1	USIO                	Usio Inc	2.71	-	-	-		2020-07-01 15:44:52.375744
3581	1	UTMD                	Utah Medical Products Inc	86.45	-	-	-		2020-07-01 15:45:07.110468
3582	1	SEDG                	SolarEdge Technologies Inc	111.90	-	-	-		2020-07-01 15:45:07.841308
3583	1	UTSI                	UTStarcom Holdings Corp	2.44	-	-	-		2020-07-01 15:45:21.747639
3584	1	SLNO                	Soleno Therapeutics Inc	2.05	-	-	-		2020-07-01 15:45:23.44552
3585	1	UXIN                	Uxin Ltd ADR	2.14	-	-	-		2020-07-01 15:45:36.764478
3586	1	SLGL                	Sol-Gel Technologies Ltd	12.09	-	-	-		2020-07-01 15:45:40.01531
3587	1	VCNX                	Vaccinex Inc	3.21	-	-	-		2020-07-01 15:45:51.759913
3588	1	SLDB                	Solid Biosciences Inc	4.36	-	-	-		2020-07-01 15:45:55.532181
3589	1	VLY                 	Valley National Bancorp	9.22	-	-	-		2020-07-01 15:46:07.099985
3590	1	SNGX                	Soligenix Inc	2.17	-	-	-		2020-07-01 15:46:10.353798
3591	1	SNGXW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:46:21.456033
3592	1	VLYPO               	Valley National Bancorp Pref Share	25.82	-	-	-		2020-07-01 15:46:22.534946
3593	1	SOLY                	Soliton Inc	7.00	-	-	-		2020-07-01 15:46:37.167494
3594	1	VLYPP               	Valley National Bancorp Pref Share	29.30	-	-	-		2020-07-01 15:46:37.417641
3595	1	SONM                	Sonim Technologies Inc	1.48	-	-	-		2020-07-01 15:46:52.25642
3596	1	VTKLF               	VTech Holdings Ltd	6.14	-	-	-		2020-07-01 15:46:52.433628
3597	1	SONN                	Sonnet BioTherapeutics Holdings Inc Ordinary Shares	4.14	-	-	-		2020-07-01 15:47:07.57638
3598	1	VALU                	Value Line Inc	25.37	-	-	-		2020-07-01 15:47:07.576958
3599	1	VNDA                	Vanda Pharmaceuticals Inc	14.89	-	-	-		2020-07-01 15:47:22.340259
3600	1	SNOA                	Sonoma Pharmaceuticals Inc	10.03	-	-	-		2020-07-01 15:47:22.566986
3601	1	SONO                	Sonos Inc	17.12	-	-	-		2020-07-01 15:47:37.305945
3602	1	SRNE                	Sorrento Therapeutics Inc	6.31	-	-	-		2020-07-01 15:47:58.76652
3603	1	BBH                 	-	0	VanEck Vectors Biotech ETF	2	-		2020-07-01 15:48:02.405106
3604	1	SOHO                	Sotherly Hotels Inc	4.49	-	-	-		2020-07-01 15:48:13.500344
3605	1	ANGL                	-	0	VanEck Vectors Fallen Angel High Yield Bond ETF	5	-		2020-07-01 15:48:20.701028
3606	1	SOHOB               	Sotherly Hotels Inc Pref Share	15.83	-	-	-		2020-07-01 15:48:28.357668
3607	1	BJK                 	-	0	VanEck Vectors Gaming ETF	1	-		2020-07-01 15:48:39.111503
3608	1	SOHON               	Sotherly Hotels Inc Pref Share	16.83	-	-	-		2020-07-01 15:48:44.814667
3609	1	PPH                 	-	0	VanEck Vectors Pharmaceutical ETF	2	-		2020-07-01 15:48:56.982766
3610	1	SOHOO               	Sotherly Hotels Inc Pref Share	15.80	-	-	-		2020-07-01 15:49:00.357087
3611	1	SFBC                	Sound Financial Bancorp Inc	32.68	-	-	-		2020-07-01 15:49:15.513227
3612	1	RTH                 	-	0	VanEck Vectors Retail ETF	5	-		2020-07-01 15:49:15.79212
3613	1	SMMC                	South Mountain Merger Corp Ordinary Shares - Class A	7.69	-	-	-		2020-07-01 15:49:30.654937
3614	1	SMH                 	-	0	VanEck Vectors Semiconductor ETF	3	-		2020-07-01 15:49:33.549809
3615	1	SMMCU               	South Mountain Merger Corp	8.00	-	-	-		2020-07-01 15:49:45.962119
3616	1	ESPO                	-	0	VanEck Vectors® Video Gaming and eSports ETF	-	-		2020-07-01 15:49:51.854418
3617	1	SMMCW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 15:49:57.080981
3618	1	VWOB                	-	0	Vanguard Emerging Markets Government Bond Index Fund ETF Shares	5	-		2020-07-01 15:50:09.793158
3619	1	SPFI                	South Plains Financial Inc	17.14	-	-	-		2020-07-01 15:50:12.135233
3620	1	SSB                 	South State Corp	54.39	-	-	-		2020-07-01 15:50:27.094861
3621	1	VNQI                	-	0	Vanguard Global ex-U.S. Real Estate Index Fund ETF Shares	3	-		2020-07-01 15:50:27.753162
3622	1	SFST                	Southern First Bancshares Inc	35.02	-	-	-		2020-07-01 15:50:43.81673
3623	1	VCIT                	-	0	Vanguard Intermediate-Term Corporate Bond Index Fund ETF Shares	4	-		2020-07-01 15:50:46.906539
3624	1	SMBC                	Southern Missouri Bancorp Inc	30.29	-	-	-		2020-07-01 15:50:58.608867
3625	1	VGIT                	-	0	Vanguard Intermediate-Term Treasury Index Fund ETF Shares	5	-		2020-07-01 15:51:04.835739
3626	1	VIGI                	-	0	Vanguard International Dividend Appreciation Index Fund ETF Shares	3	-		2020-07-01 15:51:23.181473
3627	1	VYMI                	-	0	Vanguard International High Dividend Yield Index Fund ETF Shares	3	-		2020-07-01 15:51:41.082743
3628	1	VCLT                	-	0	Vanguard Long-Term Corporate Bond Index Fund ETF Shares	3	-		2020-07-01 15:52:00.245228
3629	1	VGLT                	-	0	Vanguard Long-Term Treasury Index Fund ETF Shares	3	-		2020-07-01 15:52:18.671946
3630	1	VMBS                	-	0	Vanguard Mortgage-Backed Securities Index Fund ETF Shares	3	-		2020-07-01 15:52:37.007455
3631	1	VONE                	-	0	Vanguard Russell 1000 Index Fund ETF Shares	4	-		2020-07-01 15:52:55.226287
3632	1	VONG                	-	0	Vanguard Russell 1000 Growth Index Fund ETF Shares	4	-		2020-07-01 15:53:13.317069
3633	1	VONV                	-	0	Vanguard Russell 1000 Value Index Fund ETF Shares	3	-		2020-07-01 15:53:31.264939
3634	1	VTWO                	-	0	Vanguard Russell 2000 Index Fund ETF Shares	4	-		2020-07-01 15:53:49.32063
3635	1	VTWG                	-	0	Vanguard Russell 2000 Growth Index Fund ETF Shares	2	-		2020-07-01 15:54:07.566031
3636	1	VTWV                	-	0	Vanguard Russell 2000 Value Index Fund ETF Shares	4	-		2020-07-01 15:54:25.449279
3637	1	VTHR                	-	0	Vanguard Russell 3000 Index Fund ETF Shares	3	-		2020-07-01 15:54:44.304035
3638	1	VCSH                	-	0	Vanguard Short-Term Corporate Bond Index Fund ETF Shares	5	-		2020-07-01 15:55:02.942699
3639	1	VTIP                	-	0	Vanguard Short-Term Inflation-Protected Securities Index Fund ETF Shares	2	-		2020-07-01 15:55:20.971004
3640	1	VGSH                	-	0	Vanguard Short-Term Treasury Index Fund ETF Shares	3	-		2020-07-01 15:55:40.502593
3641	1	BND                 	-	0	Vanguard Total Bond Market Index Fund ETF Shares	4	-		2020-07-01 15:56:00.097271
3642	1	VTC                 	-	0	Vanguard Total Corporate Bond ETF ETF Shares	-	-		2020-07-01 15:56:18.874816
3643	1	BNDX                	-	0	-	4	-		2020-07-01 15:56:40.269043
3644	1	VXUS                	-	0	Vanguard Total International Stock Index Fund ETF Shares	4	-		2020-07-01 15:57:01.720679
3645	1	BNDW                	-	0	Vanguard Total World Bond ETF	-	-		2020-07-01 15:57:24.165686
3646	1	VREX                	Varex Imaging Corp	17.58	-	-	-		2020-07-01 15:57:41.101789
3647	1	VRNS                	Varonis Systems Inc	79.46	-	-	-		2020-07-01 15:57:58.272994
3648	1	VBLT                	Vascular Biogenics Ltd	1.53	-	-	-		2020-07-01 15:58:14.974712
3649	1	VXRT                	Vaxart Inc	7.49	-	-	-		2020-07-01 15:59:09.345327
3650	1	PCVX                	Vaxcyte Inc Ordinary Shares	29.56	-	-	-		2020-07-01 15:59:26.259991
3651	1	VBIV                	VBI Vaccines Inc	2.86	-	-	-		2020-07-01 15:59:43.751458
3652	1	VECO                	Veeco Instruments Inc	16.24	-	-	-		2020-07-01 15:59:58.874018
3653	1	VERO                	Venus Concept Inc	6.15	-	-	-		2020-07-01 16:00:13.61356
3654	1	VEON                	VEON Ltd ADR	—	-	-	-		2020-07-01 16:00:28.446282
3655	1	VRA                 	Vera Bradley Inc	7.25	-	-	-		2020-07-01 16:00:45.101195
3656	1	VCYT                	Veracyte Inc	25.79	-	-	-		2020-07-01 16:01:00.794459
3657	1	VSTM                	Verastem Inc	2.45	-	-	-		2020-07-01 16:01:16.185602
3658	1	VERB                	Verb Technology Co Inc	1.52	-	-	-		2020-07-01 16:01:30.901883
3659	1	VERBW               	-	0	-	-	-	No result in autocomplete search	2020-07-01 16:01:42.425177
3660	1	VCEL                	Vericel Corp	15.62	-	-	-		2020-07-01 16:01:57.663302
3661	1	VERY                	Vericity Inc Ordinary Shares	14.70	-	-	-		2020-07-01 16:02:12.629224
3662	1	VRNT                	Verint Systems Inc	—	-	-	-		2020-07-01 16:02:27.465879
3663	1	VRSN                	VeriSign Inc	—	-	-	-		2020-07-01 16:02:43.828132
3664	1	VRSK                	Verisk Analytics Inc	130.05	-	-	-		2020-07-01 16:02:58.521396
3665	1	VBTX                	Veritex Holdings Inc	25.38	-	-	-		2020-07-01 16:03:13.584777
3684	1	TXG                 	10x Genomics Inc Ordinary Shares - Class A	60.08	-	-	-		2020-07-02 10:08:32.322748
3685	1	YI                  	111 Inc 1 ADR represents 2 Class Common stocks	6.90	-	-	-		2020-07-02 10:08:50.659177
3686	1	PIH                 	1347 Property Insurance Holdings Inc	4.79	-	-	-		2020-07-02 10:09:09.169453
3687	1	PIHPP               	1347 Property Insurance Holdings Inc Pref Share	26.80	-	-	-		2020-07-02 10:09:25.684936
3688	1	TURN                	180 Degree Capital Corp	2.45	-	-	-		2020-07-02 10:09:40.882929
3689	1	FLWS                	1-800-Flowers.com Inc Class A	20.42	-	-	-		2020-07-02 10:09:57.284945
3690	1	BCOW                	1895 Bancorp of Wisconsin Inc Ordinary Shares	11.46	-	-	-		2020-07-02 10:10:13.745669
3691	1	ONEM                	1Life Healthcare Inc Ordinary Shares	27.39	-	-	-		2020-07-02 10:10:29.849332
3692	1	FCCY                	1st Constitution Bancorp	16.30	-	-	-		2020-07-02 10:10:46.658418
3693	1	SRCE                	1st Source Corp	38.95	-	-	-		2020-07-02 10:11:03.453472
3694	1	VNET                	21Vianet Group Inc ADR	23.40	-	-	-		2020-07-02 10:11:20.937657
3695	1	TWOU                	2U Inc	45.89	-	-	-		2020-07-02 10:11:37.385133
3696	1	QFIN                	360 Finance Inc ADR	11.67	-	-	-		2020-07-02 10:11:54.023521
3697	1	DNLI                	Denali Therapeutics Inc	25.50	-	-	-		2020-07-02 10:12:02.729715
3698	1	KRKR                	36KR Holdings Inc ADR	6.04	-	-	-		2020-07-02 10:12:09.58036
3699	1	DENN                	Denny"s Corp	12.39	-	-	-		2020-07-02 10:12:20.865339
3700	1	JOBS                	51job Inc ADR	64.78	-	-	-		2020-07-02 10:12:24.691676
3701	1	XRAY                	Dentsply Sirona Inc	40.00	-	-	-		2020-07-02 10:12:38.294053
3702	1	ETNB                	89bio Inc Ordinary Shares	29.78	-	-	-		2020-07-02 10:12:39.480193
3703	1	DRMT                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:12:49.738723
3704	1	JFK                 	8i Enterprises Acquisition Corp	10.83	-	-	-		2020-07-02 10:12:57.165744
3705	1	DMTK                	DermTech Inc	15.23	-	-	-		2020-07-02 10:13:04.875507
3706	1	JFKKR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:13:08.490039
3707	1	DXLG                	Destination XL Group Inc	1.31	-	-	-		2020-07-02 10:13:19.71508
3708	1	JFKKU               	-	—	-	-	-		2020-07-02 10:13:23.239199
3709	1	DSWL                	Deswell Industries Inc	3.10	-	-	-		2020-07-02 10:13:34.458401
3710	1	JFKKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:13:35.171071
3711	1	DXCM                	DexCom Inc	185.00	-	-	-		2020-07-02 10:13:51.332406
3712	1	EGHT                	8x8 Inc	—	-	-	-		2020-07-02 10:13:53.313832
3713	1	DFPH                	DFP Healthcare Acquisitions Corp Ordinary Shares	8.66	-	-	-		2020-07-02 10:14:06.120604
3714	1	NMTR                	9 Meters Biopharma Inc	0.68	-	-	-		2020-07-02 10:14:12.354786
3715	1	DFPHU               	-	—	-	-	-		2020-07-02 10:14:21.00717
3716	1	JFU                 	9F Inc ADR	6.42	-	-	-		2020-07-02 10:14:27.837506
3717	1	DFPHW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:14:32.239665
3718	1	AAON                	AAON Inc	41.72	-	-	-		2020-07-02 10:14:42.61459
3719	1	DMAC                	DiaMedica Therapeutics Inc	6.59	-	-	-		2020-07-02 10:14:47.372388
3720	1	ABEO                	Abeona Therapeutics Inc	4.10	-	-	-		2020-07-02 10:14:57.808228
3721	1	DHIL                	Diamond Hill Investment Group Inc Class A	120.41	-	-	-		2020-07-02 10:15:02.507493
3722	1	ABMD                	Abiomed Inc	199.21	-	-	-		2020-07-02 10:15:12.460485
3723	1	FANG                	Diamondback Energy Inc	87.00	-	-	-		2020-07-02 10:15:17.218075
3724	1	AXAS                	Abraxas Petroleum Corp	0.42	-	-	-		2020-07-02 10:15:28.248106
3725	1	DPHC                	DiamondPeak Holdings Corp Class A	9.67	-	-	-		2020-07-02 10:15:32.205687
3726	1	ACIU                	AC Immune SA	8.35	-	-	-		2020-07-02 10:15:43.293699
3727	1	DPHCU               	-	—	-	-	-		2020-07-02 10:15:47.141747
3728	1	DPHCW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:15:58.248013
3729	1	ACIA                	Acacia Communications Inc	58.72	-	-	-		2020-07-02 10:16:04.208304
3730	1	DRNA                	Dicerna Pharmaceuticals Inc	24.43	-	-	-		2020-07-02 10:16:13.243539
3731	1	ACTG                	Acacia Research Corp	4.59	-	-	-		2020-07-02 10:16:19.63364
3732	1	DFFN                	Diffusion Pharmaceuticals Inc	1.13	-	-	-		2020-07-02 10:16:28.479668
3733	1	ACHC                	Acadia Healthcare Co Inc	38.26	-	-	-		2020-07-02 10:16:35.969033
3734	1	DGII                	Digi International Inc	15.21	-	-	-		2020-07-02 10:16:43.166484
3735	1	ACAD                	ACADIA Pharmaceuticals Inc	38.93	-	-	-		2020-07-02 10:16:53.026321
3736	1	DMRC                	Digimarc Corp	19.49	-	-	-		2020-07-02 10:16:57.891968
3737	1	ACAM                	Acamar Partners Acquisition Corp Class A	9.49	-	-	-		2020-07-02 10:17:08.3591
3738	1	DRAD                	Digirad Corp	5.83	-	-	-		2020-07-02 10:17:12.567182
3739	1	ACAMU               	-	—	-	-	-		2020-07-02 10:17:23.08574
3740	1	DRADP               	Digirad Corp Pref Share	17.02	-	-	-		2020-07-02 10:17:27.849929
3741	1	ACAMW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:17:34.352051
3742	1	DGLY                	Digital Ally Inc	3.49	-	-	-		2020-07-02 10:17:42.895706
3743	1	ACST                	Acasti Pharma Inc	0.48	-	-	-		2020-07-02 10:17:49.153848
3744	1	APPS                	Digital Turbine Inc	9.34	-	-	-		2020-07-02 10:17:58.649202
3745	1	AXDX                	Accelerate Diagnostics Inc	15.67	-	-	-		2020-07-02 10:18:04.003016
3746	1	DCOM                	Dime Community Bancshares Inc	15.19	-	-	-		2020-07-02 10:18:14.60507
3747	1	DCOMP               	Dime Community Bancshares Inc Pref Share	24.09	-	-	-		2020-07-02 10:18:29.458643
3748	1	DIOD                	Diodes Inc	51.34	-	-	-		2020-07-02 10:18:44.774083
3749	1	DRTT                	Dirtt Environmental Solutions Ltd	2.04	-	-	-		2020-07-02 10:19:00.585457
3750	1	TXG                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:49:36.397342
3751	1	YI                  	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:49:47.655677
3752	1	PIH                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:49:58.739215
3753	1	PIHPP               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:50:10.146461
3754	1	TURN                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:50:21.234423
3755	1	FLWS                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:50:32.331383
3756	1	BCOW                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:50:43.825951
3757	1	ONEM                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:50:54.917582
3758	1	FCCY                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:51:05.973557
3759	1	SRCE                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:51:17.055339
3760	1	VNET                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:51:28.929756
3761	1	TWOU                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:51:40.025569
3762	1	QFIN                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:51:51.403115
3763	1	KRKR                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:52:02.997328
3764	1	JOBS                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:52:14.441848
3765	1	ETNB                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:52:26.01459
3766	1	JFK                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:52:37.774151
3767	1	JFKKR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:52:49.038718
3768	1	JFKKU               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:00.866392
3769	1	JFKKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:12.20947
3770	1	EGHT                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:23.306869
3771	1	NMTR                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:34.458727
3772	1	JFU                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:45.552431
3773	1	AAON                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:53:56.69078
3774	1	ABEO                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:54:07.909957
3775	1	ABMD                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:54:19.103027
3776	1	AXAS                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:54:30.23466
3777	1	ACIU                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:54:42.021013
3778	1	ACIA                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:54:53.101341
3779	1	ACTG                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:55:04.895502
3780	1	ACHC                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:55:16.258657
3781	1	ACAD                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:55:28.250908
3782	1	ACAM                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:55:39.338187
3783	1	ACAMU               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:55:50.471183
3784	1	ACAMW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:01.807916
3785	1	ACST                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:12.899721
3786	1	AXDX                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:24.203141
3787	1	ACCP                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:35.33944
3788	1	XLRN                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:46.917173
3789	1	ARAY                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:56:58.353613
3790	1	ACRX                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:57:09.654654
3791	1	ACER                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:57:20.868015
3792	1	ACHV                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:57:31.950476
3793	1	ACIW                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:57:43.451557
3794	1	ACRS                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:57:55.026527
3795	1	ACMR                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:58:06.287504
3796	1	ACNB                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:58:17.391244
3797	1	ACOR                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:58:29.155839
3798	1	ACTT                	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:58:40.468843
3799	1	ACTTU               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:58:51.898244
3800	1	ACTTW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 10:59:29.595742
3801	1	TXG                 	10x Genomics Inc Ordinary Shares - Class A	60.08	-	-	-		2020-07-02 11:23:26.847372
3802	1	YI                  	111 Inc 1 ADR represents 2 Class Common stocks	6.90	-	-	-		2020-07-02 11:23:48.96844
3803	1	PIH                 	1347 Property Insurance Holdings Inc	4.79	-	-	-		2020-07-02 11:24:06.674503
3804	1	PIHPP               	1347 Property Insurance Holdings Inc Pref Share	26.80	-	-	-		2020-07-02 11:24:24.626402
3805	1	TURN                	180 Degree Capital Corp	2.45	-	-	-		2020-07-02 11:24:41.71825
3806	1	FLWS                	1-800-Flowers.com Inc Class A	20.42	-	-	-		2020-07-02 11:25:00.539144
3807	1	BCOW                	1895 Bancorp of Wisconsin Inc Ordinary Shares	11.46	-	-	-		2020-07-02 11:25:16.401904
3808	1	ONEM                	1Life Healthcare Inc Ordinary Shares	27.39	-	-	-		2020-07-02 11:25:32.103652
3809	1	FCCY                	1st Constitution Bancorp	16.30	-	-	-		2020-07-02 11:25:47.375828
3810	1	SRCE                	1st Source Corp	38.95	-	-	-		2020-07-02 11:26:02.66712
3811	1	VNET                	21Vianet Group Inc ADR	23.40	-	-	-		2020-07-02 11:26:18.105317
3812	1	TWOU                	2U Inc	45.89	-	-	-		2020-07-02 11:26:34.276083
3813	1	QFIN                	360 Finance Inc ADR	11.67	-	-	-		2020-07-02 11:26:50.517791
3814	1	KRKR                	36KR Holdings Inc ADR	6.04	-	-	-		2020-07-02 11:27:05.931144
3815	1	JOBS                	51job Inc ADR	64.78	-	-	-		2020-07-02 11:27:20.778609
3816	1	ETNB                	89bio Inc Ordinary Shares	29.78	-	-	-		2020-07-02 11:27:36.467483
3817	1	JFK                 	8i Enterprises Acquisition Corp	10.83	-	-	-		2020-07-02 11:27:51.534393
3818	1	JFKKR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 11:28:02.941703
3819	1	JFKKU               	-	—	-	-	-		2020-07-02 11:28:19.287477
3820	1	JFKKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 11:28:30.550113
3821	1	EGHT                	8x8 Inc	—	-	-	-		2020-07-02 11:28:47.600704
3822	1	NMTR                	9 Meters Biopharma Inc	0.68	-	-	-		2020-07-02 11:29:02.762705
3823	1	JFU                 	9F Inc ADR	6.42	-	-	-		2020-07-02 11:29:18.627639
3824	1	AAON                	AAON Inc	41.72	-	-	-		2020-07-02 11:29:33.586146
3825	1	ABEO                	Abeona Therapeutics Inc	4.10	-	-	-		2020-07-02 11:29:48.64258
3826	1	ABMD                	Abiomed Inc	199.21	-	-	-		2020-07-02 11:30:03.350583
3827	1	AXAS                	Abraxas Petroleum Corp	0.42	-	-	-		2020-07-02 11:30:19.274569
3828	1	ACIU                	AC Immune SA	8.35	-	-	-		2020-07-02 11:30:35.344509
3829	1	ACIA                	Acacia Communications Inc	58.72	-	-	-		2020-07-02 11:30:50.725893
3830	1	ACTG                	Acacia Research Corp	4.59	-	-	-		2020-07-02 11:31:06.443945
3831	1	ACHC                	Acadia Healthcare Co Inc	38.26	-	-	-		2020-07-02 11:31:21.721549
3832	1	ACAD                	ACADIA Pharmaceuticals Inc	38.93	-	-	-		2020-07-02 11:31:37.421633
3833	1	ACAM                	Acamar Partners Acquisition Corp Class A	9.49	-	-	-		2020-07-02 11:31:52.273625
3834	1	ACAMU               	-	—	-	-	-		2020-07-02 11:32:07.770208
3835	1	ACAMW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 11:32:18.881127
3836	1	ACST                	Acasti Pharma Inc	0.48	-	-	-		2020-07-02 11:32:34.238295
3837	1	AXDX                	Accelerate Diagnostics Inc	15.67	-	-	-		2020-07-02 11:32:49.166432
3838	1	TXG                 	10x Genomics Inc Ordinary Shares - Class A	60.08	-	-	-		2020-07-02 16:19:58.99848
3839	1	YI                  	111 Inc 1 ADR represents 2 Class Common stocks	6.90	-	-	-		2020-07-02 16:20:17.699798
3840	1	PIH                 	1347 Property Insurance Holdings Inc	4.79	-	-	-		2020-07-02 16:20:35.655814
3841	1	PIHPP               	1347 Property Insurance Holdings Inc Pref Share	26.80	-	-	-		2020-07-02 16:20:53.48419
3842	1	TURN                	180 Degree Capital Corp	2.45	-	-	-		2020-07-02 16:21:13.547628
3843	1	FLWS                	1-800-Flowers.com Inc Class A	20.42	-	-	-		2020-07-02 16:21:34.101054
3923	1	DLHC                	DLH Holdings Corp	9.01	-	-	-		2020-07-02 16:33:18.00945
3844	1	BCOW                	1895 Bancorp of Wisconsin Inc Ordinary Shares	11.46	-	-	-		2020-07-02 16:21:52.107868
3845	1	ONEM                	1Life Healthcare Inc Ordinary Shares	27.39	-	-	-		2020-07-02 16:22:07.534467
3846	1	FCCY                	1st Constitution Bancorp	16.30	-	-	-		2020-07-02 16:22:22.348115
3847	1	SRCE                	1st Source Corp	38.95	-	-	-		2020-07-02 16:22:37.738275
3848	1	VNET                	21Vianet Group Inc ADR	23.40	-	-	-		2020-07-02 16:22:53.759045
3849	1	TWOU                	2U Inc	45.89	-	-	-		2020-07-02 16:23:09.481562
3850	1	QFIN                	360 Finance Inc ADR	11.67	-	-	-		2020-07-02 16:23:26.4423
3851	1	DNLI                	Denali Therapeutics Inc	25.50	-	-	-		2020-07-02 16:23:29.433755
3852	1	KRKR                	36KR Holdings Inc ADR	6.04	-	-	-		2020-07-02 16:23:42.160266
3853	1	DENN                	Denny"s Corp	12.39	-	-	-		2020-07-02 16:23:47.180848
3854	1	JOBS                	51job Inc ADR	64.78	-	-	-		2020-07-02 16:23:57.648678
3855	1	XRAY                	Dentsply Sirona Inc	40.00	-	-	-		2020-07-02 16:24:05.239843
3856	1	ETNB                	89bio Inc Ordinary Shares	29.78	-	-	-		2020-07-02 16:24:13.748143
3857	1	DRMT                	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:24:17.201736
3858	1	JFK                 	8i Enterprises Acquisition Corp	10.83	-	-	-		2020-07-02 16:24:29.26101
3859	1	DMTK                	DermTech Inc	15.23	-	-	-		2020-07-02 16:24:34.389613
3860	1	JFKKR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:24:40.380559
3861	1	DXLG                	Destination XL Group Inc	1.31	-	-	-		2020-07-02 16:24:51.059555
3862	1	JFKKU               	-	—	-	-	-		2020-07-02 16:24:55.398863
3863	1	JFKKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:25:06.754369
3864	1	DSWL                	Deswell Industries Inc	3.10	-	-	-		2020-07-02 16:25:12.349119
3865	1	EGHT                	8x8 Inc	—	-	-	-		2020-07-02 16:25:22.947022
3866	1	DXCM                	DexCom Inc	185.00	-	-	-		2020-07-02 16:25:29.329599
3867	1	NMTR                	9 Meters Biopharma Inc	0.68	-	-	-		2020-07-02 16:25:37.839135
3868	1	DFPH                	DFP Healthcare Acquisitions Corp Ordinary Shares	8.66	-	-	-		2020-07-02 16:25:45.942237
3869	1	JFU                 	9F Inc ADR	6.42	-	-	-		2020-07-02 16:25:54.615534
3870	1	DFPHU               	-	—	-	-	-		2020-07-02 16:26:03.942318
3871	1	AAON                	AAON Inc	41.72	-	-	-		2020-07-02 16:26:09.953295
3872	1	DFPHW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:26:15.632874
3873	1	ABEO                	Abeona Therapeutics Inc	4.10	-	-	-		2020-07-02 16:26:25.95574
3874	1	DMAC                	DiaMedica Therapeutics Inc	6.59	-	-	-		2020-07-02 16:26:30.441177
3875	1	ABMD                	Abiomed Inc	199.21	-	-	-		2020-07-02 16:26:41.127851
3876	1	DHIL                	Diamond Hill Investment Group Inc Class A	120.41	-	-	-		2020-07-02 16:26:46.547026
3877	1	AXAS                	Abraxas Petroleum Corp	0.42	-	-	-		2020-07-02 16:26:57.062648
3878	1	FANG                	-	0	-	-	-	Fair value not available	2020-07-02 16:27:06.100246
3879	1	ACIU                	AC Immune SA	8.35	-	-	-		2020-07-02 16:27:11.731178
3880	1	DPHC                	DiamondPeak Holdings Corp Class A	9.67	-	-	-		2020-07-02 16:27:21.059928
3881	1	ACIA                	Acacia Communications Inc	58.72	-	-	-		2020-07-02 16:27:27.028024
3882	1	DPHCU               	-	—	-	-	-		2020-07-02 16:27:39.099551
3883	1	ACTG                	Acacia Research Corp	4.59	-	-	-		2020-07-02 16:27:43.136998
3884	1	DPHCW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:27:50.353461
3885	1	ACHC                	Acadia Healthcare Co Inc	38.26	-	-	-		2020-07-02 16:27:58.212814
3886	1	DRNA                	Dicerna Pharmaceuticals Inc	24.43	-	-	-		2020-07-02 16:28:05.171526
3887	1	ACAD                	ACADIA Pharmaceuticals Inc	38.93	-	-	-		2020-07-02 16:28:13.553688
3888	1	DFFN                	Diffusion Pharmaceuticals Inc	1.13	-	-	-		2020-07-02 16:28:20.75913
3889	1	ACAM                	Acamar Partners Acquisition Corp Class A	9.49	-	-	-		2020-07-02 16:28:28.669233
3890	1	DGII                	Digi International Inc	15.21	-	-	-		2020-07-02 16:28:35.400538
3891	1	ACAMU               	-	—	-	-	-		2020-07-02 16:28:49.109674
3892	1	DMRC                	Digimarc Corp	19.49	-	-	-		2020-07-02 16:28:52.01484
3893	1	ACAMW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:29:00.700985
3894	1	DRAD                	Digirad Corp	5.83	-	-	-		2020-07-02 16:29:07.747096
3895	1	ACST                	Acasti Pharma Inc	0.48	-	-	-		2020-07-02 16:29:17.116287
3896	1	DRADP               	Digirad Corp Pref Share	17.02	-	-	-		2020-07-02 16:29:23.132977
3897	1	AXDX                	Accelerate Diagnostics Inc	15.67	-	-	-		2020-07-02 16:29:32.638213
3898	1	DGLY                	Digital Ally Inc	3.49	-	-	-		2020-07-02 16:29:39.185809
3899	1	APPS                	Digital Turbine Inc	9.34	-	-	-		2020-07-02 16:29:55.544163
3900	1	ACCPX               	-	0	American Century Core Plus Fund Class R	2	-		2020-07-02 16:30:16.399415
3901	1	DCOM                	Dime Community Bancshares Inc	15.19	-	-	-		2020-07-02 16:30:19.4065
3902	1	XLRN                	Acceleron Pharma Inc	74.12	-	-	-		2020-07-02 16:30:32.449087
3903	1	DCOMP               	Dime Community Bancshares Inc Pref Share	24.09	-	-	-		2020-07-02 16:30:36.725992
3904	1	ARAY                	-	2.90	-	-	-		2020-07-02 16:30:52.254451
3905	1	DIOD                	Diodes Inc	51.34	-	-	-		2020-07-02 16:30:53.35664
3906	1	ACRX                	AcelRx Pharmaceuticals Inc	1.07	-	-	-		2020-07-02 16:31:07.541084
3907	1	DRTT                	Dirtt Environmental Solutions Ltd	2.04	-	-	-		2020-07-02 16:31:13.688241
3908	1	ACER                	Acer Therapeutics Inc	4.40	-	-	-		2020-07-02 16:31:22.520798
3909	1	DISCA               	Discovery Inc Class A	28.00	-	-	-		2020-07-02 16:31:31.495592
3910	1	ACHV                	Achieve Life Sciences Inc	0.65	-	-	-		2020-07-02 16:31:39.018143
3911	1	DISCB               	Discovery Inc Class B	49.95	-	-	-		2020-07-02 16:31:47.225811
3912	1	ACIW                	ACI Worldwide Inc	28.39	-	-	-		2020-07-02 16:31:54.514107
3913	1	DISCK               	Discovery Inc C	28.00	-	-	-		2020-07-02 16:32:03.168939
3914	1	ACRS                	Aclaris Therapeutics Inc	2.68	-	-	-		2020-07-02 16:32:10.089808
3915	1	DISH                	DISH Network Corp Class A	35.00	-	-	-		2020-07-02 16:32:18.416695
3916	1	ACMR                	ACM Research Inc Class A	44.84	-	-	-		2020-07-02 16:32:25.597289
3917	1	DHC                 	Diversified Healthcare Trust	8.20	-	-	-		2020-07-02 16:32:37.060309
3918	1	ACNB                	ACNB Corp	31.17	-	-	-		2020-07-02 16:32:42.335327
3919	1	DHCNI               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:32:48.167564
3920	1	DHCNL               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:32:59.483383
3921	1	ACOR                	Acorda Therapeutics Inc	1.57	-	-	-		2020-07-02 16:32:59.701553
3922	1	ACTT                	-	—	-	-	-		2020-07-02 16:33:17.30723
3924	1	ACTTU               	-	—	-	-	-		2020-07-02 16:33:34.021888
3925	1	BOOM                	DMC Global Inc	32.77	-	-	-		2020-07-02 16:33:35.430345
3926	1	DOCU                	DocuSign Inc	102.00	-	-	-		2020-07-02 16:33:53.385088
3927	1	ACTTW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:34:04.134324
3928	1	DOGZ                	Dogness (International) Corp	2.21	-	-	-		2020-07-02 16:34:08.529788
3929	1	DLTR                	Dollar Tree Inc	85.00	-	-	-		2020-07-02 16:34:24.305195
3930	1	ATVI                	Activision Blizzard Inc	66.00	-	-	-		2020-07-02 16:34:32.794894
3931	1	DLPN                	Dolphin Entertainment Inc	1.30	-	-	-		2020-07-02 16:34:39.856396
3932	1	ADMS                	Adamas Pharmaceuticals Inc	3.68	-	-	-		2020-07-02 16:34:51.011536
3933	1	DLPNW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:34:51.721065
3934	1	DOMO                	Domo Inc	35.84	-	-	-		2020-07-02 16:35:06.749137
3935	1	ADMP                	Adamis Pharmaceuticals Corp	1.07	-	-	-		2020-07-02 16:35:08.907799
3936	1	DGICA               	Donegal Group Inc Class A	14.83	-	-	-		2020-07-02 16:35:21.895513
3937	1	AHCO                	AdaptHealth Corp Ordinary Shares	19.83	-	-	-		2020-07-02 16:35:23.663303
3938	1	DGICB               	Donegal Group Inc Class B	12.02	-	-	-		2020-07-02 16:35:36.696174
3939	1	ADAP                	Adaptimmune Therapeutics PLC ADR	9.59	-	-	-		2020-07-02 16:35:41.364258
3940	1	DMLP                	Dorchester Minerals LP	12.34	-	-	-		2020-07-02 16:35:52.381625
3941	1	ADPT                	Adaptive Biotechnologies Corp	36.09	-	-	-		2020-07-02 16:35:59.307119
3942	1	DORM                	Dorman Products Inc	68.07	-	-	-		2020-07-02 16:36:07.929834
3943	1	ADXN                	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:36:10.482341
3944	1	DOYU                	DouYu International Holdings Ltd ADR	11.61	-	-	-		2020-07-02 16:36:23.688245
3945	1	ADUS                	Addus HomeCare Corp	104.77	-	-	-		2020-07-02 16:36:26.210713
3946	1	DKNG                	DraftKings Inc Class A	36.09	-	-	-		2020-07-02 16:36:39.633113
3947	1	AEY                 	Addvantage Technologies Group Inc	5.54	-	-	-		2020-07-02 16:36:41.043498
3948	1	IOTS                	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:36:52.192733
3949	1	ADIL                	Adial Pharmaceuticals Inc	1.58	-	-	-		2020-07-02 16:37:09.413769
3950	1	DKNGW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:37:17.964983
3951	1	ADILW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:37:20.657538
3952	1	ADMA                	ADMA Biologics Inc	4.45	-	-	-		2020-07-02 16:37:45.29018
3953	1	LYL                 	Dragon Victory International Ltd Ordinary Shares	1.49	-	-	-		2020-07-02 16:38:13.128697
3954	1	ADBE                	Adobe Inc	350.00	-	-	-		2020-07-02 16:38:14.365062
3955	1	DBX                 	Dropbox Inc Class A	—	-	-	-		2020-07-02 16:38:31.255895
3956	1	ADTN                	Adtran Inc	—	-	-	-		2020-07-02 16:38:33.023852
3957	1	ADRO                	Aduro Biotech Inc	2.89	-	-	-		2020-07-02 16:38:48.927963
3958	1	DSPG                	DSP Group Inc	16.71	-	-	-		2020-07-02 16:38:50.983744
3959	1	ADES                	Advanced Emissions Solutions Inc	7.05	-	-	-		2020-07-02 16:39:07.136018
3960	1	DLTH                	Duluth Holdings Inc B	9.94	-	-	-		2020-07-02 16:39:10.003127
3961	1	AEIS                	-	71.97	-	-	-		2020-07-02 16:40:32.693757
3962	1	DNKN                	Dunkin" Brands Group Inc	72.00	-	-	-		2020-07-02 16:40:35.393642
3963	1	IUSS                	-	0	Invesco RAFI™ Strategic US Small Company ETF	-	-		2020-07-02 16:40:40.177622
3964	1	AMD                 	Advanced Micro Devices Inc	25.00	-	-	-		2020-07-02 16:40:52.531452
3965	1	DUOT                	Duos Technologies Group Inc	6.41	-	-	-		2020-07-02 16:40:54.513909
3966	1	USLB                	-	0	Invesco Russell 1000 Low Beta Equal Weight ETF	4	-		2020-07-02 16:41:01.717552
3967	1	ADXS                	Advaxis Inc	0.81	-	-	-		2020-07-02 16:41:07.394472
3968	1	DRRX                	Durect Corp	1.98	-	-	-		2020-07-02 16:41:11.893017
3969	1	PSCD                	-	0	Invesco S&ampP SmallCap Consumer Discretionary ETF	1	-		2020-07-02 16:41:22.366263
3970	1	ADVM                	Adverum Biotechnologies Inc	20.71	-	-	-		2020-07-02 16:41:22.396685
3971	1	DXPE                	DXP Enterprises Inc	27.28	-	-	-		2020-07-02 16:41:27.260321
3972	1	PSCC                	-	0	Invesco S&ampP SmallCap Consumer Staples ETF	4	-		2020-07-02 16:41:41.077596
3973	1	DYAI                	Dyadic International Inc	8.32	-	-	-		2020-07-02 16:43:04.999584
3974	1	DYNT                	Dynatronics Corp	1.61	-	-	-		2020-07-02 16:43:22.616588
3975	1	DWEQ                	-	0	-	-	-	Investment Name field not found	2020-07-02 16:43:39.656122
3976	1	DVAX                	Dynavax Technologies Corp	7.94	-	-	-		2020-07-02 16:43:40.381685
3977	1	ETFC                	E*TRADE Financial Corp	49.50	-	-	-		2020-07-02 16:43:55.530531
3978	1	DWAW                	-	0	-	-	-	Investment Name field not found	2020-07-02 16:44:00.509914
3979	1	SSP                 	The E W Scripps Co Class A	13.61	-	-	-		2020-07-02 16:44:13.263784
3980	1	DWUS                	-	0	-	-	-	Investment Name field not found	2020-07-02 16:44:21.35425
3981	1	EBMT                	Eagle Bancorp Montana Inc	21.17	-	-	-		2020-07-02 16:44:31.370643
3982	1	DWMC                	-	0	-	-	-	Investment Name field not found	2020-07-02 16:44:42.320092
3983	1	EGBN                	Eagle Bancorp Inc	36.15	-	-	-		2020-07-02 16:44:51.916668
3984	1	DWSH                	-	0	-	-	-	Investment Name field not found	2020-07-02 16:45:02.668948
3985	1	EGLE                	Eagle Bulk Shipping Inc	3.43	-	-	-		2020-07-02 16:45:10.55127
3986	1	ACT                 	-	0	-	-	-	Investment Name field not found	2020-07-02 16:45:22.93417
3987	1	EGRX                	Eagle Pharmaceuticals Inc	50.28	-	-	-		2020-07-02 16:45:28.686024
3988	1	IGLE                	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:45:40.057648
3989	1	AEGN                	Aegion Corp Class A	17.69	-	-	-		2020-07-02 16:45:41.735019
3990	1	ESSC                	East Stone Acquisition Corp Ordinary Shares	9.65	-	-	-		2020-07-02 16:45:57.404644
3991	1	AGLE                	Aeglea BioTherapeutics Inc	8.88	-	-	-		2020-07-02 16:45:59.190781
3992	1	ESSCR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:46:09.107912
3993	1	AEHR                	Aehr Test Systems	2.46	-	-	-		2020-07-02 16:46:15.631262
3994	1	ESSCU               	-	—	-	-	-		2020-07-02 16:46:26.207358
3995	1	AMTX                	Aemetis Inc	1.17	-	-	-		2020-07-02 16:46:31.571874
3996	1	ESSCW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:46:37.305711
3997	1	AERI                	Aerie Pharmaceuticals Inc	16.68	-	-	-		2020-07-02 16:46:50.914596
3998	1	EWBC                	East West Bancorp Inc	42.15	-	-	-		2020-07-02 16:47:00.30493
3999	1	AVAV                	AeroVironment Inc	72.88	-	-	-		2020-07-02 16:47:10.208057
4000	1	EML                 	The Eastern Co	22.97	-	-	-		2020-07-02 16:47:17.824817
4001	1	ARPO                	Aerpio Pharmaceuticals Inc	1.59	-	-	-		2020-07-02 16:47:28.082559
4002	1	EAST                	Eastside Distilling Inc	2.26	-	-	-		2020-07-02 16:47:33.755588
4003	1	AIH                 	Aesthetic Medical International Holdings Group Ltd ADR	7.33	-	-	-		2020-07-02 16:47:45.128824
4004	1	AEZS                	AEterna Zentaris Inc	0.64	-	-	-		2020-07-02 16:48:00.632881
4005	1	EVGBC               	-	0	Eaton Vance Global Income Builder NextShares™	4	-		2020-07-02 16:48:07.504976
4006	1	IUSS                	-	0	Invesco RAFI™ Strategic US Small Company ETF	-	-		2020-07-02 16:48:15.136975
4007	1	AEMD                	Aethlon Medical Inc	2.98	-	-	-		2020-07-02 16:48:18.429267
4008	1	EVSTC               	-	0	Eaton Vance Stock NextShares™	5	-		2020-07-02 16:48:26.787143
4009	1	USLB                	-	0	Invesco Russell 1000 Low Beta Equal Weight ETF	4	-		2020-07-02 16:48:36.069968
4010	1	AFMD                	Affimed NV	4.59	-	-	-		2020-07-02 16:48:36.292212
4011	1	EVLMC               	-	0	Eaton Vance TABS 5-to-15 Year Laddered Municipal Bond NextShares™	4	-		2020-07-02 16:48:44.969189
4012	1	AFYA                	Afya Ltd	19.93	-	-	-		2020-07-02 16:48:55.123904
4013	1	PSCD                	-	0	Invesco S&ampP SmallCap Consumer Discretionary ETF	1	-		2020-07-02 16:48:58.733224
4014	1	EBAY                	eBay Inc	46.00	-	-	-		2020-07-02 16:49:00.995208
4015	1	AGBA                	AGBA Acquisition Ltd	9.90	-	-	-		2020-07-02 16:49:10.195427
4016	1	EBAYL               	eBay Inc Pref Share	23.76	-	-	-		2020-07-02 16:49:16.485253
4017	1	PSCC                	-	0	Invesco S&ampP SmallCap Consumer Staples ETF	4	-		2020-07-02 16:49:19.440558
4018	1	AGBAR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:49:21.278303
4019	1	EBIX                	Ebix Inc	31.03	-	-	-		2020-07-02 16:49:31.378662
4020	1	AGBAU               	-	—	-	-	-		2020-07-02 16:49:36.272878
4021	1	PSCE                	-	0	Invesco S&ampP SmallCap Energy ETF	1	-		2020-07-02 16:49:40.675827
4022	1	ECHO                	Echo Global Logistics Inc	20.00	-	-	-		2020-07-02 16:49:46.300474
4023	1	AGBAW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:49:47.708046
4024	1	PSCF                	-	0	Invesco S&ampP SmallCap Financials ETF	3	-		2020-07-02 16:50:01.995233
4025	1	SATS                	EchoStar Corp	34.17	-	-	-		2020-07-02 16:50:03.605831
4026	1	AGEN                	Agenus Inc	4.10	-	-	-		2020-07-02 16:50:04.874247
4027	1	MOHO                	ECMOHO Ltd ADR	4.26	-	-	-		2020-07-02 16:50:18.451857
4028	1	AGRX                	Agile Therapeutics Inc	3.75	-	-	-		2020-07-02 16:50:19.847261
4029	1	PSCH                	-	0	Invesco S&ampP SmallCap Health Care ETF	4	-		2020-07-02 16:50:22.928178
4030	1	EDAP                	Edap TMS SA ADR	3.53	-	-	-		2020-07-02 16:50:33.565431
4031	1	AGYS                	Agilysys Inc	22.81	-	-	-		2020-07-02 16:50:34.864607
4032	1	PSCI                	-	0	Invesco S&ampP SmallCap Industrials ETF	2	-		2020-07-02 16:50:44.839481
4033	1	EDSA                	Edesa Biotech Inc	4.65	-	-	-		2020-07-02 16:50:52.477557
4034	1	AGIO                	Agios Pharmaceuticals Inc	55.26	-	-	-		2020-07-02 16:50:52.772922
4035	1	PSCT                	-	0	Invesco S&ampP SmallCap Information Technology ETF	2	-		2020-07-02 16:51:05.321624
4036	1	EDNT                	Edison Nation Inc	4.06	-	-	-		2020-07-02 16:51:08.084442
4037	1	AGMH                	AGM Group Holdings Inc Class A	14.57	-	-	-		2020-07-02 16:51:08.102674
4038	1	EDIT                	Editas Medicine Inc	30.11	-	-	-		2020-07-02 16:51:23.155944
4039	1	PSCM                	-	0	Invesco S&ampP SmallCap Materials ETF	3	-		2020-07-02 16:51:25.871999
4040	1	AGNC                	AGNC Investment Corp	15.18	-	-	-		2020-07-02 16:51:26.10126
4041	1	EDUC                	Educational Development Corp	11.94	-	-	-		2020-07-02 16:51:38.348214
4042	1	PSCU                	-	0	Invesco S&ampP SmallCap Utilities &amp Communication Services ETF	3	-		2020-07-02 16:51:47.092194
4043	1	EGAN                	eGain Corp	9.25	-	-	-		2020-07-02 16:51:56.245493
4044	1	VRIG                	-	0	Invesco Variable Rate Investment Grade ETF	2	-		2020-07-02 16:52:10.889897
4045	1	EH                  	EHang Holdings Ltd ADR	8.75	-	-	-		2020-07-02 16:52:14.698984
4046	1	AGNCM               	AGNC Investment Corp Pref Share	25.99	-	-	-		2020-07-02 16:52:31.177422
4047	1	EHTH                	eHealth Inc	95.42	-	-	-		2020-07-02 16:52:32.76595
4048	1	PHO                 	-	0	Invesco Water Resources ETF	-	-		2020-07-02 16:52:33.0864
4049	1	AGNCN               	AGNC Investment Corp Pref Share	26.98	-	-	-		2020-07-02 16:52:48.999983
4050	1	EIDX                	Eidos Therapeutics Inc	42.21	-	-	-		2020-07-02 16:52:50.178703
4051	1	ISTR                	Investar Holding Corp	22.85	-	-	-		2020-07-02 16:53:15.46439
4052	1	AGNCO               	AGNC Investment Corp Pref Share	25.67	-	-	-		2020-07-02 16:53:15.61653
4053	1	EIGR                	Eiger BioPharmaceuticals Inc	10.30	-	-	-		2020-07-02 16:53:17.16183
4054	1	CMFNL               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:53:26.736927
4055	1	AGNCP               	AGNC Investment Corp Pref Share	24.55	-	-	-		2020-07-02 16:53:33.27756
4056	1	EKSO                	Ekso Bionics Holdings Inc	9.79	-	-	-		2020-07-02 16:53:33.775747
4057	1	ICMB                	Investcorp Credit Management BDC Inc	5.20	-	-	-		2020-07-02 16:53:44.623794
4058	1	AGFS                	AgroFresh Solutions Inc	3.63	-	-	-		2020-07-02 16:53:50.138536
4059	1	LOCO                	El Pollo Loco Holdings Inc	17.84	-	-	-		2020-07-02 16:53:50.973416
4060	1	AGFSW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:54:01.280977
4061	1	ISBC                	Investors Bancorp Inc	9.63	-	-	-		2020-07-02 16:54:01.779806
4062	1	ESLT                	Elbit Systems Ltd	130.30	-	-	-		2020-07-02 16:54:08.314486
4063	1	ITIC                	Investors Title Co	127.97	-	-	-		2020-07-02 16:54:19.471291
4064	1	AIKI                	AIkido Pharma Inc	0.92	-	-	-		2020-07-02 16:54:19.554965
4065	1	ERI                 	Eldorado Resorts Inc	59.32	-	-	-		2020-07-02 16:54:24.972633
4066	1	NVIV                	InVivo Therapeutics Holdings Corp	2.50	-	-	-		2020-07-02 16:54:37.132715
4067	1	ALRN                	Aileron Therapeutics Inc	1.27	-	-	-		2020-07-02 16:54:37.189803
4068	1	SOLO                	Electrameccanica Vehicles Corp Ltd	2.06	-	-	-		2020-07-02 16:54:42.809945
4069	1	AIMT                	Aimmune Therapeutics Inc	19.29	-	-	-		2020-07-02 16:54:53.309551
4070	1	IONS                	Ionis Pharmaceuticals Inc	58.00	-	-	-		2020-07-02 16:54:53.344211
4071	1	AIRT                	Air T Inc	17.27	-	-	-		2020-07-02 16:55:11.083362
4072	1	IOVA                	Iovance Biotherapeutics Inc	23.49	-	-	-		2020-07-02 16:55:11.163553
4073	1	AIRTP               	Air T Inc Pref Share	31.51	-	-	-		2020-07-02 16:55:26.693824
4074	1	IPGP                	IPG Photonics Corp	135.57	-	-	-		2020-07-02 16:55:26.845386
4075	1	PGNY                	Progyny Inc	19.30	-	-	-		2020-07-02 16:55:37.767953
4076	1	AIRTW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:55:37.773813
4077	1	CLRG                	-	0	IQ Chaikin U.S. Large Cap ETF	-	-		2020-07-02 16:55:49.054246
4078	1	ATSG                	Air Transport Services Group Inc	24.99	-	-	-		2020-07-02 16:55:55.002295
4079	1	HLPPF               	Hang Lung Properties Ltd	3.00	-	-	-		2020-07-02 16:55:55.996653
4080	1	CSML                	-	0	IQ Chaikin U.S. Small Cap ETF	1	-		2020-07-02 16:56:10.533268
4081	1	AIRG                	Airgain Inc	12.84	-	-	-		2020-07-02 16:56:12.80021
4082	1	PFPT                	Proofpoint Inc	100.34	-	-	-		2020-07-02 16:56:14.380044
4083	1	ANTE                	AirNet Technology Inc ADR	1.31	-	-	-		2020-07-02 16:56:27.589529
4084	1	IQ                  	iQIYI Inc ADR	23.63	-	-	-		2020-07-02 16:56:28.113839
4085	1	PRPH                	ProPhase Labs Inc	1.89	-	-	-		2020-07-02 16:56:29.364528
4086	1	AKAM                	Akamai Technologies Inc	70.00	-	-	-		2020-07-02 16:56:42.492713
4087	1	PTAC                	PropTech Acquisition Corp Ordinary Shares Class A	7.70	-	-	-		2020-07-02 16:56:44.231544
4088	1	IRMD                	iRadimed Corp	21.65	-	-	-		2020-07-02 16:56:45.487816
4089	1	AKTX                	Akari Therapeutics PLC ADR	2.10	-	-	-		2020-07-02 16:56:57.922644
4090	1	PTACU               	-	—	-	-	-		2020-07-02 16:57:00.054262
4091	1	IRTC                	iRhythm Technologies Inc	90.53	-	-	-		2020-07-02 16:57:03.534871
4092	1	PTACW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:57:11.16484
4093	1	AKCA                	Akcea Therapeutics Inc	15.30	-	-	-		2020-07-02 16:57:12.954105
4094	1	IRIX                	IRIDEX Corp	3.24	-	-	-		2020-07-02 16:57:18.332141
4095	1	PRQR                	ProQR Therapeutics NV	6.65	-	-	-		2020-07-02 16:57:26.8788
4096	1	AKBA                	Akebia Therapeutics Inc	15.06	-	-	-		2020-07-02 16:57:28.656272
4097	1	IRDM                	Iridium Communications Inc	26.65	-	-	-		2020-07-02 16:57:34.148118
4098	1	KERN                	Akerna Corp Ordinary Shares - Class A	12.29	-	-	-		2020-07-02 16:57:43.429334
4099	1	IRBT                	iRobot Corp	89.90	-	-	-		2020-07-02 16:57:49.279507
4100	1	KERNW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:57:54.828404
4101	1	EQRR                	-	0	ProShares Equities for Rising Rates ETF	-	-		2020-07-02 16:58:02.302793
4102	1	IRWD                	Ironwood Pharmaceuticals Inc Class A	9.82	-	-	-		2020-07-02 16:58:05.371874
4103	1	AKRO                	Akero Therapeutics Inc	31.31	-	-	-		2020-07-02 16:58:09.804486
4104	1	BIB                 	-	0	ProShares Ultra Nasdaq Biotechnology	-	-		2020-07-02 16:58:20.920055
4105	1	IRCP                	IRSA Propiedades Comerciales SA ADR	10.28	-	-	-		2020-07-02 16:58:23.459398
4106	1	AKER                	Akers Biosciences Inc	5.90	-	-	-		2020-07-02 16:58:25.749334
4107	1	TQQQ                	-	0	ProShares UltraPro QQQ	-	-		2020-07-02 16:58:39.774048
4108	1	AKTS                	Akoustis Technologies Inc	7.84	-	-	-		2020-07-02 16:58:40.625808
4109	1	SLQD                	-	0	iShares 0-5 Year Investment Grade Corporate Bond ETF	5	-		2020-07-02 16:58:44.212267
4110	1	ALRM                	Alarm.com Holdings Inc	53.07	-	-	-		2020-07-02 16:58:56.428741
4111	1	SQQQ                	-	0	ProShares UltraPro Short QQQ	-	-		2020-07-02 16:58:59.229909
4112	1	ISHG                	-	0	iShares 1-3 Year International Treasury Bond ETF	2	-		2020-07-02 16:59:04.483764
4113	1	ALSK                	Alaska Communications Systems Group Inc	3.27	-	-	-		2020-07-02 16:59:11.551009
4114	1	BIS                 	-	0	ProShares UltraShort Nasdaq Biotechnology	-	-		2020-07-02 16:59:18.027089
4115	1	SHY                 	-	0	iShares 1-3 Year Treasury Bond ETF	3	-		2020-07-02 16:59:23.048407
4116	1	ALAC                	Alberton Acquisition Corp	10.20	-	-	-		2020-07-02 16:59:26.770074
4117	1	PSEC                	Prospect Capital Corporation	5.78	-	-	-		2020-07-02 16:59:33.229272
4118	1	ALACR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 16:59:37.920182
4119	1	TLT                 	-	0	iShares 20+ Year Treasury Bond ETF	3	-		2020-07-02 16:59:41.563555
4120	1	PTGX                	Protagonist Therapeutics Inc	16.34	-	-	-		2020-07-02 16:59:48.287836
4121	1	ALACU               	-	—	-	-	-		2020-07-02 16:59:52.935147
4122	1	IEI                 	-	0	iShares 3-7 Year Treasury Bond ETF	4	-		2020-07-02 17:00:00.465481
4123	1	TARA                	Protara Therapeutics Inc Ordinary Shares	33.21	-	-	-		2020-07-02 17:00:03.730468
4124	1	ALACW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:00:04.259394
4125	1	PTVCA               	Protective Insurance Corp Class A	19.30	-	-	-		2020-07-02 17:00:18.955625
4126	1	IEF                 	-	0	iShares 7-10 Year Treasury Bond ETF	1	-		2020-07-02 17:00:19.809118
4127	1	ALBO                	Albireo Pharma Inc	30.39	-	-	-		2020-07-02 17:00:20.043322
4128	1	PTVCB               	Protective Insurance Corp Class B	16.53	-	-	-		2020-07-02 17:00:34.454671
4129	1	ALDX                	Aldeyra Therapeutics Inc	5.36	-	-	-		2020-07-02 17:00:35.025139
4130	1	AIA                 	-	0	iShares Asia 50 ETF	4	-		2020-07-02 17:00:37.816488
4131	1	ALEC                	Alector Inc	24.09	-	-	-		2020-07-02 17:00:52.357688
4132	1	PTI                 	Proteostasis Therapeutics Inc	2.17	-	-	-		2020-07-02 17:00:52.555526
4133	1	USIG                	-	0	iShares Broad USD Investment Grade Corporate Bond ETF	3	-		2020-07-02 17:00:59.869451
4134	1	ALRS                	Alerus Financial Corp	20.74	-	-	-		2020-07-02 17:01:08.359297
4135	1	PRTA                	Prothena Corp PLC	13.07	-	-	-		2020-07-02 17:01:10.726092
4136	1	COMT                	-	0	iShares Commodities Select Strategy ETF	3	-		2020-07-02 17:01:19.630054
4137	1	ALXN                	Alexion Pharmaceuticals Inc	155.00	-	-	-		2020-07-02 17:01:23.737743
4138	1	PRVB                	Provention Bio Inc	12.81	-	-	-		2020-07-02 17:01:27.583112
4139	1	ALCO                	Alico Inc	37.57	-	-	-		2020-07-02 17:01:39.123319
4140	1	ISTB                	-	0	iShares Core 1-5 Year USD Bond ETF	5	-		2020-07-02 17:01:39.583701
4141	1	PVBC                	Provident Bancorp Inc	12.42	-	-	-		2020-07-02 17:01:45.452753
4142	1	ALYA                	Alithya Group Inc	2.13	-	-	-		2020-07-02 17:01:54.375503
4143	1	IXUS                	-	0	iShares Core MSCI Total International Stock ETF	4	-		2020-07-02 17:01:57.623519
4144	1	PROV                	Provident Financial Holdings Inc	16.28	-	-	-		2020-07-02 17:02:00.729051
4145	1	ALGN                	Align Technology Inc	175.00	-	-	-		2020-07-02 17:02:10.316672
4146	1	IUSG                	-	0	iShares Core S&ampP U.S. Growth ETF	4	-		2020-07-02 17:02:15.946783
4147	1	PBIP                	Prudential Bancorp Inc	15.14	-	-	-		2020-07-02 17:02:15.955461
4148	1	ALIM                	Alimera Sciences Inc	7.59	-	-	-		2020-07-02 17:02:26.064538
4149	1	PMD                 	Psychemedics Corp	8.17	-	-	-		2020-07-02 17:02:32.126751
4150	1	IUSV                	-	0	iShares Core S&ampP U.S. Value ETF	4	-		2020-07-02 17:02:34.820461
4151	1	ALYA                	Alithya Group Inc	2.13	-	-	-		2020-07-02 17:02:41.808657
4152	1	PTC                 	PTC Inc	77.00	-	-	-		2020-07-02 17:02:47.083276
4153	1	IUSB                	-	0	iShares Core Total USD Bond Market ETF	4	-		2020-07-02 17:02:53.998304
4154	1	ALJJ                	ALJ Regional Holdings Inc	1.15	-	-	-		2020-07-02 17:02:56.869967
4155	1	PTCT                	PTC Therapeutics Inc	51.62	-	-	-		2020-07-02 17:03:02.799311
4156	1	ALKS                	Alkermes PLC	20.76	-	-	-		2020-07-02 17:03:12.160662
4157	1	HEWG                	-	0	iShares Currency Hedged MSCI Germany ETF	-	-		2020-07-02 17:03:15.200576
4158	1	PHCF                	Puhui Wealth Investment Management Co Ltd Ordinary Shares	4.75	-	-	-		2020-07-02 17:03:18.38458
4159	1	ALLK                	Allakos Inc	63.31	-	-	-		2020-07-02 17:03:27.258187
4160	1	PULM                	Pulmatrix Inc	2.16	-	-	-		2020-07-02 17:03:33.043257
4161	1	SUSB                	-	0	iShares ESG 1-5 Year USD Corporate Bond ETF	-	-		2020-07-02 17:03:35.805699
4162	1	ABTX                	Allegiance Bancshares Inc	28.42	-	-	-		2020-07-02 17:03:42.634061
4163	1	PLSE                	Pulse Biosciences Inc	9.47	-	-	-		2020-07-02 17:03:47.903064
4164	1	ESGD                	-	0	iShares ESG MSCI EAFE ETF	4	-		2020-07-02 17:03:55.894828
4165	1	ALGT                	Allegiant Travel Co	130.71	-	-	-		2020-07-02 17:03:58.006576
4166	1	PBYI                	Puma Biotechnology Inc	13.06	-	-	-		2020-07-02 17:04:03.164525
4167	1	ALNA                	Allena Pharmaceuticals Inc	1.77	-	-	-		2020-07-02 17:04:12.68709
4168	1	ESGE                	-	0	iShares ESG MSCI EM ETF	4	-		2020-07-02 17:04:13.793497
4169	1	PACQ                	Pure Acquisition Corp Ordinary Shares - Class A	9.71	-	-	-		2020-07-02 17:04:18.351774
4170	1	ARLP                	Alliance Resource Partners LP	5.18	-	-	-		2020-07-02 17:04:28.141854
4171	1	PACQU               	-	—	-	-	-		2020-07-02 17:04:33.213023
4172	1	LNT                 	Alliant Energy Corp	47.00	-	-	-		2020-07-02 17:04:44.014086
4173	1	PACQW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:04:44.523105
4174	1	AESE                	Allied Esports Entertainment Inc Ordinary Shares	3.73	-	-	-		2020-07-02 17:05:00.204369
4175	1	PCYO                	Pure Cycle Corp	9.16	-	-	-		2020-07-02 17:05:00.698724
4176	1	LDEM                	-	0	iShares® ESG MSCI EM Leaders ETF	-	-		2020-07-02 17:05:11.739982
4177	1	AHPI                	Allied Healthcare Products Inc	17.14	-	-	-		2020-07-02 17:05:16.008835
4178	1	PRPL                	Purple Innovation Inc Ordinary Shares - Class A	21.58	-	-	-		2020-07-02 17:05:16.681881
4179	1	PUYI                	Puyi Inc ADR	5.75	-	-	-		2020-07-02 17:05:32.119137
4180	1	ESGU                	-	0	iShares ESG MSCI USA ETF	4	-		2020-07-02 17:05:33.978447
4181	1	PXS                 	Pyxis Tankers Inc	1.19	-	-	-		2020-07-02 17:05:47.384308
4182	1	SUSL                	-	0	iShares ESG MSCI USA Leaders ETF	-	-		2020-07-02 17:05:54.484649
4183	1	QK                  	Q&ampK International Group Ltd ADR	11.17	-	-	-		2020-07-02 17:06:02.590279
4184	1	AMOT                	Allied Motion Technologies Inc	40.31	-	-	-		2020-07-02 17:06:13.066708
4185	1	SUSC                	-	0	iShares ESG USD Corporate Bond ETF	-	-		2020-07-02 17:06:15.288751
4186	1	QADA                	QAD Inc	42.88	-	-	-		2020-07-02 17:06:17.612375
4187	1	ALLO                	-	36.32	-	-	-		2020-07-02 17:06:31.179922
4188	1	QADB                	QAD Inc	29.05	-	-	-		2020-07-02 17:06:32.914053
4189	1	XT                  	-	0	iShares Exponential Technologies ETF	-	-		2020-07-02 17:06:36.135592
4190	1	QCRH                	QCR Holdings Inc	35.47	-	-	-		2020-07-02 17:06:48.099073
4191	1	ALLT                	Allot Ltd	11.39	-	-	-		2020-07-02 17:06:48.426686
4192	1	FALN                	-	0	iShares Fallen Angels USD Bond ETF	4	-		2020-07-02 17:06:55.998742
4193	1	MDRX                	Allscripts Healthcare Solutions Inc	4.52	-	-	-		2020-07-02 17:07:03.143386
4194	1	QGEN                	Qiagen NV	43.00	-	-	-		2020-07-02 17:07:03.251056
4195	1	IFEU                	-	0	iShares Europe Developed Real Estate ETF	3	-		2020-07-02 17:07:14.149096
4196	1	QIWI                	QIWI PLC ADR	21.07	-	-	-		2020-07-02 17:07:18.315988
4197	1	ALNY                	Alnylam Pharmaceuticals Inc	142.00	-	-	-		2020-07-02 17:07:21.15145
4198	1	IFGL                	-	0	iShares International Developed Real Estate ETF	2	-		2020-07-02 17:07:34.5907
4199	1	QRVO                	Qorvo Inc	102.00	-	-	-		2020-07-02 17:07:36.172661
4200	1	AOSL                	Alpha &amp Omega Semiconductor Ltd	14.13	-	-	-		2020-07-02 17:07:39.642751
4201	1	BGRN                	-	0	iShares Global Green Bond ETF	-	-		2020-07-02 17:07:54.695198
4202	1	IGF                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:08:06.103562
4203	1	GNMA                	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:08:17.253368
4204	1	QCOM                	Qualcomm Inc	80.00	-	-	-		2020-07-02 17:08:29.131162
4205	1	GOOG                	Alphabet Inc Class C	1,400.00	-	-	-		2020-07-02 17:08:39.434628
4206	1	IBTA                	-	0	iShares iBonds Dec 2021 Term Treasury ETF	-	-		2020-07-02 17:08:39.881965
4207	1	QLGN                	Qualigen Therapeutics Inc Ordinary Shares	4.88	-	-	-		2020-07-02 17:08:46.221587
4208	1	GOOGL               	Alphabet Inc A	1,400.00	-	-	-		2020-07-02 17:08:58.840827
4209	1	IBTB                	-	0	iShares iBonds Dec 2022 Term Treasury ETF	-	-		2020-07-02 17:09:01.079364
4210	1	QLYS                	Qualys Inc	81.98	-	-	-		2020-07-02 17:09:03.402621
4211	1	QTRX                	Quanterix Corp	27.84	-	-	-		2020-07-02 17:09:20.447479
4212	1	IBTD                	-	0	iShares iBonds Dec 2023 Term Treasury ETF	-	-		2020-07-02 17:09:21.588999
4213	1	SMCP                	-	0	AlphaMark Actively Managed Small Cap ETF	1	-		2020-07-02 17:09:34.536231
4214	1	QMCO                	Quantum Corp	5.30	-	-	-		2020-07-02 17:09:35.160642
4215	1	IBTE                	-	0	iShares iBonds Dec 2024 Term Treasury ETF	-	-		2020-07-02 17:09:39.928512
4216	1	ATEC                	Alphatec Holdings Inc	6.54	-	-	-		2020-07-02 17:09:50.040384
4217	1	IBTF                	-	0	iShares iBonds Dec 2025 Term Treasury ETF	-	-		2020-07-02 17:09:57.988498
4218	1	ALPN                	Alpine Immune Sciences Inc	9.47	-	-	-		2020-07-02 17:10:05.021215
4219	1	IBTG                	-	0	iShares iBonds Dec 2026 Term Treasury ETF	-	-		2020-07-02 17:10:15.993745
4220	1	ALTR                	Altair Engineering Inc Class A	36.42	-	-	-		2020-07-02 17:10:19.999609
4221	1	QRHC                	Quest Resource Holding Corp	1.98	-	-	-		2020-07-02 17:10:23.523091
4222	1	IBTH                	-	0	iShares iBonds Dec 2027 Term Treasury ETF	-	-		2020-07-02 17:10:33.93534
4223	1	ATHE                	Alterity Therapeutics Ltd ADR	1.69	-	-	-		2020-07-02 17:10:34.916079
4224	1	QUIK                	QuickLogic Corp	4.55	-	-	-		2020-07-02 17:10:41.766236
4225	1	ALT                 	Altimmune Inc	10.15	-	-	-		2020-07-02 17:10:50.062074
4226	1	IBTI                	-	0	iShares iBonds Dec 2028 Term Treasury ETF	-	-		2020-07-02 17:10:52.658243
4227	1	QDEL                	Quidel Corp	140.29	-	-	-		2020-07-02 17:10:59.479964
4228	1	ASPS                	Altisource Portfolio Solutions SA	20.90	-	-	-		2020-07-02 17:11:05.158399
4229	1	IBTJ                	-	0	iShares iBonds Dec 2029 Term Treasury ETF	-	-		2020-07-02 17:11:11.107065
4230	1	QNST                	QuinStreet Inc	13.76	-	-	-		2020-07-02 17:11:14.552331
4231	1	AIMC                	Altra Industrial Motion Corp	40.59	-	-	-		2020-07-02 17:11:20.272258
4232	1	HYXE                	-	0	iShares iBoxx $ High Yield ex Oil &amp Gas Corporate Bond ETF	5	-		2020-07-02 17:11:28.99127
4233	1	QUMU                	Qumu Corp	5.12	-	-	-		2020-07-02 17:11:29.857727
4234	1	ALTM                	Altus Midstream Co Class A	19.46	-	-	-		2020-07-02 17:11:36.931577
4235	1	QTNT                	Quotient Ltd	7.14	-	-	-		2020-07-02 17:11:45.02043
4236	1	IGIB                	-	0	iShares Intermediate-Term Corporate Bond ETF	3	-		2020-07-02 17:11:47.489067
4237	1	AMAG                	AMAG Pharmaceuticals Inc	14.11	-	-	-		2020-07-02 17:11:52.174668
4238	1	QRTEA               	Qurate Retail Inc Class A	16.72	-	-	-		2020-07-02 17:12:00.164909
4239	1	IGOV                	-	0	iShares International Treasury Bond ETF	3	-		2020-07-02 17:12:06.061284
4240	1	AMAL                	Amalgamated Bank Ordinary Shares Class A	16.49	-	-	-		2020-07-02 17:12:07.609055
4241	1	QRTEB               	Qurate Retail Inc Class B	16.27	-	-	-		2020-07-02 17:12:15.336304
4242	1	EMB                 	-	0	iShares J.P. Morgan USD Emerging Markets Bond ETF	5	-		2020-07-02 17:12:25.385639
4243	1	AMRN                	Amarin Corp PLC ADR	8.81	-	-	-		2020-07-02 17:12:25.598003
4244	1	QTT                 	Qutoutiao Inc ADR	3.96	-	-	-		2020-07-02 17:12:30.760749
4245	1	AMRK                	A-Mark Precious Metals Inc	23.58	-	-	-		2020-07-02 17:12:40.952952
4246	1	RRD                 	R.R.Donnelley &amp Sons Co	1.79	-	-	-		2020-07-02 17:12:46.776814
4247	1	MBB                 	-	0	iShares MBS ETF	3	-		2020-07-02 17:12:46.945528
4248	1	AMZN                	Amazon.com Inc	2,500.00	-	-	-		2020-07-02 17:12:56.241741
4249	1	RCM                 	R1 RCM Inc	12.88	-	-	-		2020-07-02 17:13:02.14157
4250	1	JKI                 	-	0	iShares Morningstar Mid-Cap Value ETF	3	-		2020-07-02 17:13:07.203073
4251	1	AMBC                	Ambac Financial Group Inc	18.63	-	-	-		2020-07-02 17:13:13.146796
4252	1	RADA                	Rada Electronics Industries Ltd	7.76	-	-	-		2020-07-02 17:13:18.927782
4253	1	ACWX                	-	0	iShares MSCI ACWI ex U.S. ETF	3	-		2020-07-02 17:13:27.458848
4254	1	AMBA                	Ambarella Inc	47.31	-	-	-		2020-07-02 17:13:31.342089
4255	1	RDCM                	Radcom Ltd	10.13	-	-	-		2020-07-02 17:13:34.510431
4256	1	AMCX                	AMC Networks Inc A	46.00	-	-	-		2020-07-02 17:13:46.380287
4257	1	ACWI                	-	0	iShares MSCI ACWI ETF	3	-		2020-07-02 17:13:47.59043
4258	1	RDUS                	Radius Health Inc	16.64	-	-	-		2020-07-02 17:13:49.981199
4259	1	AMCI                	AMCI Acquisition Corp Class A	9.67	-	-	-		2020-07-02 17:14:01.581227
4260	1	RDNT                	RadNet Inc	21.95	-	-	-		2020-07-02 17:14:04.74602
4261	1	AAXJ                	-	0	iShares MSCI All Country Asia ex Japan ETF	3	-		2020-07-02 17:14:06.358514
4262	1	AMCIU               	-	—	-	-	-		2020-07-02 17:14:16.36287
4263	1	RDWR                	Radware Ltd	23.78	-	-	-		2020-07-02 17:14:20.279856
4264	1	EWZS                	-	0	iShares MSCI Brazil Small-Cap ETF	1	-		2020-07-02 17:14:26.9277
4265	1	AMCIW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:14:27.452265
4266	1	METC                	Ramaco Resources Inc	3.12	-	-	-		2020-07-02 17:14:35.613568
4267	1	DOX                 	Amdocs Ltd	—	-	-	-		2020-07-02 17:14:42.511204
4268	1	MCHI                	-	0	iShares MSCI China ETF	3	-		2020-07-02 17:14:47.498225
4269	1	RMBS                	Rambus Inc	16.02	-	-	-		2020-07-02 17:14:50.517142
4270	1	AMED                	Amedisys Inc	166.10	-	-	-		2020-07-02 17:14:58.17195
4271	1	RAND                	Rand Capital Corp	12.98	-	-	-		2020-07-02 17:15:05.359417
4272	1	SCZ                 	-	0	iShares MSCI EAFE Small-Cap ETF	4	-		2020-07-02 17:15:08.86161
4273	1	AMTB                	Amerant Bancorp Inc Ordinary Shares - Class A	17.77	-	-	-		2020-07-02 17:15:13.185524
4274	1	RNDB                	Randolph Bancorp Inc	13.35	-	-	-		2020-07-02 17:15:21.13021
4275	1	AMTBB               	Amerant Bancorp Inc Class B	13.37	-	-	-		2020-07-02 17:15:28.70926
4276	1	EEMA                	-	0	iShares MSCI Emerging Markets Asia ETF	3	-		2020-07-02 17:15:29.391634
4277	1	RPD                 	Rapid7 Inc	51.09	-	-	-		2020-07-02 17:15:36.975873
4278	1	UHAL                	Amerco Inc	328.16	-	-	-		2020-07-02 17:15:43.745313
4279	1	EMXC                	-	0	iShares MSCI Emerging Markets ex China ETF	-	-		2020-07-02 17:15:47.808939
4280	1	RAPT                	RAPT Therapeutics Inc Ordinary Shares	28.97	-	-	-		2020-07-02 17:15:52.717043
4281	1	AMRH                	Ameri Holdings Inc	3.47	-	-	-		2020-07-02 17:15:58.676871
4282	1	EUFN                	-	0	iShares MSCI Europe Financials ETF	1	-		2020-07-02 17:16:08.24461
4283	1	RTLR                	Rattler Midstream LP	13.88	-	-	-		2020-07-02 17:16:08.780237
4284	1	AMRHW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:16:09.914558
4285	1	RAVE                	Rave Restaurant Group Inc	1.10	-	-	-		2020-07-02 17:16:24.32273
4286	1	ATAX                	America First Multifamily Investors LP	4.81	-	-	-		2020-07-02 17:16:24.869291
4287	1	IEUS                	-	0	iShares MSCI Europe Small-Cap ETF	3	-		2020-07-02 17:16:28.936652
4288	1	RAVN                	Raven Industries Inc	22.97	-	-	-		2020-07-02 17:16:39.674552
4289	1	AMOV                	America Movil SAB de CV ADR	18.00	-	-	-		2020-07-02 17:16:40.301558
4290	1	RING                	-	0	iShares MSCI Global Gold Miners ETF	3	-		2020-07-02 17:16:49.063157
4291	1	RBB                 	RBB Bancorp	16.25	-	-	-		2020-07-02 17:16:55.201162
4292	1	AAL                 	American Airlines Group Inc	15.70	-	-	-		2020-07-02 17:16:55.220419
4293	1	SDG                 	-	0	iShares MSCI Global Impact ETF	4	-		2020-07-02 17:17:07.023909
4294	1	ROLL                	RBC Bearings Inc	130.42	-	-	-		2020-07-02 17:17:10.438018
4295	1	AFIN                	American Finance Trust Inc	12.70	-	-	-		2020-07-02 17:17:10.438244
4296	1	RICK                	RCI Hospitality Holdings Inc	19.82	-	-	-		2020-07-02 17:17:25.561217
4297	1	EWJE                	-	0	iShares MSCI Japan Equal Weighted ETF	-	-		2020-07-02 17:17:26.210689
4298	1	AFINP               	American Finance Trust Inc Pref Share	36.28	-	-	-		2020-07-02 17:17:28.237643
4299	1	RCMT                	RCM Technologies Inc	2.25	-	-	-		2020-07-02 17:17:41.135905
4300	1	AMNB                	American National Bankshares Inc	29.29	-	-	-		2020-07-02 17:17:44.070923
4301	1	EWJV                	-	0	iShares MSCI Japan Value ETF	-	-		2020-07-02 17:17:44.38517
4302	1	RDI                 	Reading International Inc Class A	6.49	-	-	-		2020-07-02 17:17:56.290036
4303	1	ANAT                	American National Insurance Co	92.71	-	-	-		2020-07-02 17:17:59.306821
4304	1	ENZL                	-	0	iShares MSCI New Zealand ETF	-	-		2020-07-02 17:18:02.642312
4305	1	RDIB                	Reading International Inc Class B	24.72	-	-	-		2020-07-02 17:18:11.28062
4306	1	APEI                	American Public Education Inc	34.03	-	-	-		2020-07-02 17:18:16.660649
4307	1	QAT                 	-	0	iShares MSCI Qatar ETF	-	-		2020-07-02 17:18:20.499213
4308	1	AREC                	American Resources Corp	1.37	-	-	-		2020-07-02 17:18:32.06897
4309	1	TUR                 	-	0	iShares MSCI Turkey ETF	-	-		2020-07-02 17:18:40.530266
4310	1	BLCN                	-	0	Reality Shares Nasdaq NexGen Economy ETF	-	-		2020-07-02 17:18:46.150005
4311	1	AMRB                	American River Bankshares	13.44	-	-	-		2020-07-02 17:18:50.123719
4312	1	UAE                 	-	0	iShares MSCI UAE ETF	-	-		2020-07-02 17:18:59.480608
4313	1	RNWK                	RealNetworks Inc	2.20	-	-	-		2020-07-02 17:19:01.109199
4314	1	AMSWA               	American Software Inc Class A	15.34	-	-	-		2020-07-02 17:19:05.674813
4315	1	RP                  	RealPage Inc	56.92	-	-	-		2020-07-02 17:19:17.931326
4316	1	AMSC                	American Superconductor Corp	9.26	-	-	-		2020-07-02 17:19:20.629578
4317	1	IBB                 	-	0	iShares Nasdaq Biotechnology ETF	3	-		2020-07-02 17:19:21.203043
4318	1	RETA                	Reata Pharmaceuticals Inc A	128.41	-	-	-		2020-07-02 17:19:33.24591
4319	1	AVCT                	American Virtual Cloud Technologies Inc	2.99	-	-	-		2020-07-02 17:19:36.846892
4320	1	SOXX                	-	0	iShares PHLX Semiconductor ETF	4	-		2020-07-02 17:19:39.982516
4321	1	RCON                	Recon Technology Ltd	1.91	-	-	-		2020-07-02 17:19:48.367813
4322	1	AVCTW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:19:48.74469
4323	1	PFF                 	-	0	iShares Preferred and Income Securities ETF	2	-		2020-07-02 17:19:58.870709
4324	1	AMWD                	American Woodmark Corp	87.06	-	-	-		2020-07-02 17:20:03.591443
4325	1	REPH                	Recro Pharma Inc	6.69	-	-	-		2020-07-02 17:20:03.608785
4326	1	AMCA                	-	0	iShares Russell 1000 Pure U.S. Revenue ETF	-	-		2020-07-02 17:20:17.38644
4327	1	RRBI                	Red River Bancshares Inc	49.86	-	-	-		2020-07-02 17:20:18.74315
4328	1	RRGB                	Red Robin Gourmet Burgers Inc	21.80	-	-	-		2020-07-02 17:20:33.993872
4329	1	EMIF                	-	0	iShares Emerging Markets Infrastructure ETF	1	-		2020-07-02 17:20:36.683802
4330	1	RRR                 	Red Rock Resorts Inc A	17.05	-	-	-		2020-07-02 17:20:49.118123
4331	1	CRMT                	America"s Car-Mart Inc	105.73	-	-	-		2020-07-02 17:20:51.336041
4332	1	ICLN                	-	0	iShares Global Clean Energy ETF	-	-		2020-07-02 17:20:55.139251
4333	1	RDVT                	Red Violet Inc Ordinary Shares	18.69	-	-	-		2020-07-02 17:21:04.445083
4334	1	ABCB                	Ameris Bancorp	27.74	-	-	-		2020-07-02 17:21:09.271594
4335	1	RDFN                	Redfin Corp	23.00	-	-	-		2020-07-02 17:21:19.406913
4336	1	AMSF                	AMERISAFE Inc	60.73	-	-	-		2020-07-02 17:21:26.444026
4337	1	RDHL                	Redhill Biopharma Ltd ADR	7.03	-	-	-		2020-07-02 17:21:34.657833
4338	1	ASRV                	AmeriServ Financial Inc	3.79	-	-	-		2020-07-02 17:21:44.794535
4339	1	REED                	Reed"s Inc	1.35	-	-	-		2020-07-02 17:21:50.289988
4340	1	WOOD                	-	0	iShares Global Timber &amp Forestry ETF	4	-		2020-07-02 17:21:59.701561
4341	1	ASRVP               	Ameriserv Financial Capital Trust I Pref Share	—	-	-	-		2020-07-02 17:22:03.430247
4342	1	REG                 	Regency Centers Corp	75.00	-	-	-		2020-07-02 17:22:06.05988
4343	1	REGN                	Regeneron Pharmaceuticals Inc	473.00	-	-	-		2020-07-02 17:22:20.889671
4344	1	ATLO                	Ames National Corp	22.63	-	-	-		2020-07-02 17:22:21.122159
4345	1	INDY                	-	0	iShares India 50 ETF	3	-		2020-07-02 17:22:21.974118
4346	1	RGNX                	Regenxbio Inc	43.29	-	-	-		2020-07-02 17:22:36.395433
4347	1	AMGN                	Amgen Inc	219.00	-	-	-		2020-07-02 17:22:36.764196
4348	1	IJT                 	-	0	iShares S&ampP Small-Cap 600 Growth ETF	3	-		2020-07-02 17:22:40.618317
4349	1	RGLS                	Regulus Therapeutics Inc	1.13	-	-	-		2020-07-02 17:22:52.678666
4350	1	FOLD                	Amicus Therapeutics Inc	13.40	-	-	-		2020-07-02 17:22:55.522286
4351	1	DVY                 	-	0	iShares Select Dividend ETF	3	-		2020-07-02 17:22:58.9689
4352	1	REKR                	Rekor Systems Inc	4.50	-	-	-		2020-07-02 17:23:08.222407
4353	1	AMKR                	Amkor Technology Inc	15.84	-	-	-		2020-07-02 17:23:10.718785
4354	1	SHV                 	-	0	iShares Short Treasury Bond ETF	2	-		2020-07-02 17:23:16.979091
4355	1	RBNC                	Reliant Bancorp Inc	21.58	-	-	-		2020-07-02 17:23:23.722923
4356	1	AMPH                	Amphastar Pharmaceuticals Inc	23.28	-	-	-		2020-07-02 17:23:25.929293
4357	1	IGSB                	-	0	iShares Short-Term Corporate Bond ETF	4	-		2020-07-02 17:23:36.162562
4358	1	ITMR                	Itamar Medical Ltd ADR	21.49	-	-	-		2020-07-02 17:23:59.75998
4359	1	IBUY                	-	0	Amplify Online Retail ETF	5	-		2020-07-02 17:23:59.94834
4360	1	RELV                	Reliv" International Inc	5.29	-	-	-		2020-07-02 17:24:13.880985
4361	1	ITI                 	Iteris Inc	6.63	-	-	-		2020-07-02 17:24:15.53904
4362	1	AMHC                	Amplitude Healthcare Acquisition Corp Ordinary Shares Class A	7.87	-	-	-		2020-07-02 17:24:18.604152
4363	1	RLMD                	Relmada Therapeutics Inc	41.17	-	-	-		2020-07-02 17:24:32.18893
4364	1	ITRM                	Iterum Therapeutics PLC	1.16	-	-	-		2020-07-02 17:24:33.44331
4365	1	AMHCU               	-	—	-	-	-		2020-07-02 17:24:36.374083
4366	1	AMHCW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:24:47.621443
4367	1	ITRI                	Itron Inc	71.85	-	-	-		2020-07-02 17:24:48.314432
4368	1	MARK                	Remark Holdings Inc	2.20	-	-	-		2020-07-02 17:24:49.767576
4369	1	ITRN                	Ituran Location and Control Ltd	19.67	-	-	-		2020-07-02 17:25:03.417797
4370	1	ASYS                	Amtech Systems Inc	7.41	-	-	-		2020-07-02 17:25:05.789149
4371	1	RNST                	Renasant Corp	27.89	-	-	-		2020-07-02 17:25:07.874009
4372	1	ISEE                	IVERIC bio Inc	5.94	-	-	-		2020-07-02 17:25:20.33357
4373	1	AMRS                	Amyris Inc	5.61	-	-	-		2020-07-02 17:25:25.162197
4374	1	REGI                	Renewable Energy Group Inc	33.14	-	-	-		2020-07-02 17:25:26.418436
4375	1	IZEA                	IZEA Worldwide Inc	1.57	-	-	-		2020-07-02 17:25:57.684269
4376	1	ADI                 	Analog Devices Inc	103.00	-	-	-		2020-07-02 17:26:01.103207
4377	1	RCII                	Rent-A-Center Inc	34.15	-	-	-		2020-07-02 17:26:01.902009
4378	1	JJSF                	J&ampJ Snack Foods Corp	127.10	-	-	-		2020-07-02 17:26:16.46663
4379	1	RPAY                	Repay Holdings Corp Ordinary Shares - Class A	22.49	-	-	-		2020-07-02 17:26:19.627683
4380	1	ANAB                	AnaptysBio Inc	35.13	-	-	-		2020-07-02 17:26:19.650454
4381	1	MAYS                	J. W. Mays Inc	29.83	-	-	-		2020-07-02 17:26:34.784932
4382	1	AVXL                	Anavex Life Sciences Corp	4.52	-	-	-		2020-07-02 17:26:37.150503
4383	1	RGEN                	Repligen Corp	94.87	-	-	-		2020-07-02 17:26:37.82892
4384	1	JBHT                	JB Hunt Transport Services Inc	97.00	-	-	-		2020-07-02 17:26:52.70611
4385	1	ANCN                	Anchiano Therapeutics Ltd ADR	2.22	-	-	-		2020-07-02 17:26:53.810539
4386	1	REPL                	Replimune Group Inc	23.07	-	-	-		2020-07-02 17:26:54.81939
4387	1	JCOM                	J2 Global Inc	65.37	-	-	-		2020-07-02 17:27:08.01768
4388	1	ANDA                	Andina Acquisition Corp III Ordinary Shares	9.96	-	-	-		2020-07-02 17:27:08.839282
4389	1	KRMD                	Repro-Med Systems Inc	6.01	-	-	-		2020-07-02 17:27:12.410873
4390	1	ANDAR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:27:20.088489
4391	1	JKHY                	Jack Henry &amp Associates Inc	131.00	-	-	-		2020-07-02 17:27:23.922617
4392	1	RBCAA               	Republic Bancorp Inc Class A	35.91	-	-	-		2020-07-02 17:27:30.089453
4393	1	ANDAU               	-	—	-	-	-		2020-07-02 17:27:34.934079
4394	1	JACK                	Jack In The Box Inc	91.62	-	-	-		2020-07-02 17:27:40.649233
4395	1	ANDAW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:27:46.73968
4396	1	FRBK                	Republic First Bancorp Inc	3.34	-	-	-		2020-07-02 17:27:50.281244
4397	1	JAGX                	Jaguar Health Inc	0.77	-	-	-		2020-07-02 17:28:01.822126
4398	1	ANGI                	ANGI Homeservices Inc A	12.31	-	-	-		2020-07-02 17:28:02.565294
4399	1	REFR                	Research Frontiers Inc	3.13	-	-	-		2020-07-02 17:28:08.00317
4400	1	ANGO                	AngioDynamics Inc	13.68	-	-	-		2020-07-02 17:28:18.027542
4401	1	JAKK                	Jakks Pacific Inc	1.21	-	-	-		2020-07-02 17:28:19.781731
4402	1	RSSS                	Research Solutions Inc	2.51	-	-	-		2020-07-02 17:28:25.446712
4403	1	ANIP                	ANI Pharmaceuticals Inc	43.34	-	-	-		2020-07-02 17:28:32.827056
4404	1	JRVR                	James River Group Holdings Ltd	47.63	-	-	-		2020-07-02 17:28:36.748263
4405	1	RESN                	Resonant Inc	2.67	-	-	-		2020-07-02 17:28:42.915876
4406	1	ANIK                	Anika Therapeutics Inc	51.89	-	-	-		2020-07-02 17:28:47.912962
4407	1	JAN                 	JanOne Inc	5.17	-	-	-		2020-07-02 17:28:53.884281
4408	1	RGP                 	Resources Connection Inc	13.27	-	-	-		2020-07-02 17:29:01.640818
4409	1	ANIX                	Anixa Biosciences Inc	2.82	-	-	-		2020-07-02 17:29:03.894769
4410	1	JSML                	-	0	Janus Henderson Small Cap Growth Alpha ETF	3	-		2020-07-02 17:29:12.592254
4411	1	TORC                	resTORbio Inc	3.24	-	-	-		2020-07-02 17:29:18.639671
4412	1	ANPC                	AnPac Bio-Medical Science Co Ltd ADR	5.58	-	-	-		2020-07-02 17:29:19.25908
4413	1	JSMD                	-	0	Janus Henderson Small/Mid Cap Growth Alpha ETF	2	-		2020-07-02 17:29:32.620746
4414	1	ROIC                	Retail Opportunity Investments Corp	15.43	-	-	-		2020-07-02 17:29:33.647604
4415	1	ANSS                	Ansys Inc	196.00	-	-	-		2020-07-02 17:29:34.022943
4416	1	JAZZ                	Jazz Pharmaceuticals PLC	135.00	-	-	-		2020-07-02 17:29:48.095081
4417	1	ATRS                	Antares Pharma Inc	2.95	-	-	-		2020-07-02 17:29:49.732525
4418	1	RETO                	ReTo Eco-Solutions Inc Ordinary Shares	1.89	-	-	-		2020-07-02 17:29:49.733763
4419	1	JD                  	JD.com Inc ADR	59.00	-	-	-		2020-07-02 17:30:03.905191
4420	1	ATEX                	Anterix Inc	44.27	-	-	-		2020-07-02 17:30:05.742479
4421	1	RTRX                	Retrophin Inc	22.05	-	-	-		2020-07-02 17:30:08.027886
4422	1	JRSH                	Jerash Holdings (US) Inc	6.50	-	-	-		2020-07-02 17:30:19.615281
4423	1	APA                 	Apache Corp	15.00	-	-	-		2020-07-02 17:30:20.82263
4424	1	RVNC                	Revance Therapeutics Inc	26.60	-	-	-		2020-07-02 17:30:27.374546
4425	1	JBLU                	JetBlue Airways Corp	—	-	-	-		2020-07-02 17:30:34.749677
4426	1	APLS                	Apellis Pharmaceuticals Inc	30.39	-	-	-		2020-07-02 17:30:35.809788
4427	1	RVMD                	Revolution Medicines Inc Ordinary Shares	32.50	-	-	-		2020-07-02 17:30:44.998614
4428	1	JCTCF               	Jewett-Cameron Trading Co Ltd	8.17	-	-	-		2020-07-02 17:30:49.878674
4429	1	APEX                	Apex Global Brands Inc	1.60	-	-	-		2020-07-02 17:30:50.76218
4430	1	RWLK                	ReWalk Robotics Ltd	2.40	-	-	-		2020-07-02 17:31:02.88142
4431	1	JFIN                	Jiayin Group Inc ADR	5.18	-	-	-		2020-07-02 17:31:05.685056
4432	1	APXT                	Apex Technology Acquisition Corp Ordinary Shares - Class A	7.48	-	-	-		2020-07-02 17:31:05.856874
4433	1	JMPNL               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:31:16.793253
4434	1	APXTU               	-	—	-	-	-		2020-07-02 17:31:21.061015
4435	1	REXN                	Rexahn Pharmaceuticals Inc	4.39	-	-	-		2020-07-02 17:31:21.715984
4436	1	JMPNZ               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:31:28.726827
4437	1	APXTW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:31:32.164248
4438	1	REYN                	Reynolds Consumer Products Inc Ordinary Shares	30.95	-	-	-		2020-07-02 17:31:39.4039
4439	1	JBSS                	John B Sanfilippo &amp Son Inc	82.94	-	-	-		2020-07-02 17:31:43.335279
4440	1	APHA                	Aphria Inc	11.00	-	-	-		2020-07-02 17:31:47.07314
4441	1	RFIL                	RF Industries Ltd	6.68	-	-	-		2020-07-02 17:31:57.329004
4442	1	JOUT                	Johnson Outdoors Inc Class A	92.14	-	-	-		2020-07-02 17:31:58.704815
4443	1	APOG                	Apogee Enterprises Inc	30.24	-	-	-		2020-07-02 17:32:01.715369
4444	1	JNCE                	Jounce Therapeutics Inc	9.83	-	-	-		2020-07-02 17:32:14.381494
4445	1	RGCO                	RGC Resources Inc	24.68	-	-	-		2020-07-02 17:32:15.889631
4446	1	APEN                	Apollo Endosurgery Inc	2.21	-	-	-		2020-07-02 17:32:17.067031
4447	1	YY                  	JOYY Inc ADR	105.00	-	-	-		2020-07-02 17:32:30.018023
4448	1	AINV                	Apollo Investment Corp	12.80	-	-	-		2020-07-02 17:32:31.954755
4449	1	RBKB                	Rhinebeck Bancorp Inc Ordinary Shares	8.43	-	-	-		2020-07-02 17:32:33.317833
4450	1	KALU                	Kaiser Aluminum Corp	79.68	-	-	-		2020-07-02 17:32:45.40219
4451	1	AMEH                	Apollo Medical Holdings Inc	19.09	-	-	-		2020-07-02 17:32:46.86325
4452	1	RYTM                	Rhythm Pharmaceuticals Inc	23.01	-	-	-		2020-07-02 17:32:51.01463
4453	1	KXIN                	Kaixin Auto Holdings Ordinary Shares	1.34	-	-	-		2020-07-02 17:33:01.300031
4454	1	APPF                	AppFolio Inc A	105.79	-	-	-		2020-07-02 17:33:01.728498
4455	1	RBBN                	Ribbon Communications Inc	5.55	-	-	-		2020-07-02 17:33:09.274681
4456	1	KALA                	Kala Pharmaceuticals Inc	10.64	-	-	-		2020-07-02 17:33:16.475095
4457	1	APPN                	Appian Corp A	39.60	-	-	-		2020-07-02 17:33:16.822895
4458	1	RIBT                	RiceBran Technologies	1.46	-	-	-		2020-07-02 17:33:26.94004
4459	1	AAPL                	Apple Inc	240.00	-	-	-		2020-07-02 17:33:31.756458
4460	1	KLDO                	Kaleido Biosciences Inc	7.36	-	-	-		2020-07-02 17:33:32.225078
4461	1	RELL                	Richardson Electronics Ltd	6.05	-	-	-		2020-07-02 17:33:45.119465
4462	1	KALV                	KalVista Pharmaceuticals Inc	16.71	-	-	-		2020-07-02 17:33:47.673441
4463	1	APDN                	Applied DNA Sciences Inc	11.85	-	-	-		2020-07-02 17:33:49.422958
4464	1	KMDA                	Kamada Ltd	9.78	-	-	-		2020-07-02 17:34:03.969671
4465	1	RMBI                	Richmond Mutual Bancorp Inc Ordinary Shares	12.78	-	-	-		2020-07-02 17:34:03.991452
4466	1	AGTC                	Applied Genetic Technologies Corp	8.49	-	-	-		2020-07-02 17:34:04.948107
4467	1	KNDI                	Kandi Technologies Group Inc	5.27	-	-	-		2020-07-02 17:34:19.303989
4468	1	AMAT                	Applied Materials Inc	65.00	-	-	-		2020-07-02 17:34:20.057874
4469	1	RIGL                	Rigel Pharmaceuticals Inc	—	-	-	-		2020-07-02 17:34:22.446246
4470	1	KRTX                	Karuna Therapeutics Inc	86.94	-	-	-		2020-07-02 17:34:35.015041
4471	1	RNET                	RigNet Inc	3.69	-	-	-		2020-07-02 17:34:40.035312
4472	1	KPTI                	Karyopharm Therapeutics Inc	18.79	-	-	-		2020-07-02 17:34:51.362761
4473	1	RMNI                	Rimini Street Inc	5.27	-	-	-		2020-07-02 17:34:58.407048
4474	1	KZIA                	Kazia Therapeutics Ltd ADR	3.64	-	-	-		2020-07-02 17:35:07.231872
4475	1	RIOT                	Riot Blockchain Inc	3.56	-	-	-		2020-07-02 17:35:16.647521
4476	1	KBLM                	KBL Merger Corp IV	9.21	-	-	-		2020-07-02 17:35:22.732166
4477	1	AMTI                	Applied Molecular Transport Inc Ordinary Shares	20.89	-	-	-		2020-07-02 17:35:24.065423
4478	1	KBLMR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:35:34.00007
4479	1	REDU                	RISE Education Cayman Ltd ADR	5.00	-	-	-		2020-07-02 17:35:37.16165
4480	1	AAOI                	Applied Optoelectronics Inc	15.27	-	-	-		2020-07-02 17:35:41.732647
4481	1	KBLMU               	KBL Merger Corp IV	10.24	-	-	-		2020-07-02 17:35:49.061868
4482	1	RVSB                	Riverview Bancorp Inc	6.66	-	-	-		2020-07-02 17:35:53.134907
4483	1	APLT                	Applied Therapeutics Inc	36.63	-	-	-		2020-07-02 17:35:58.891111
4484	1	RIVE                	Riverview Financial Corp	8.76	-	-	-		2020-07-02 17:36:08.242694
4485	1	APRE                	Aprea Therapeutics Inc	36.18	-	-	-		2020-07-02 17:36:14.738302
4486	1	KBLMW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:36:19.645175
4487	1	RCKT                	Rocket Pharmaceuticals Inc	22.29	-	-	-		2020-07-02 17:36:31.961551
4488	1	APVO                	Aptevo Therapeutics Inc	15.92	-	-	-		2020-07-02 17:36:32.808237
4489	1	APTX                	Aptinyx Inc	7.08	-	-	-		2020-07-02 17:36:48.57019
4490	1	RMTI                	Rockwell Medical Inc	2.58	-	-	-		2020-07-02 17:36:48.985312
4491	1	KBSF                	KBS Fashion Group Ltd	3.67	-	-	-		2020-07-02 17:36:51.979439
4492	1	APM                 	Aptorum Group Ltd Class A	4.12	-	-	-		2020-07-02 17:37:07.205724
4493	1	RCKY                	Rocky Brands Inc	26.73	-	-	-		2020-07-02 17:37:08.330623
4494	1	KRNY                	Kearny Financial Corp	9.43	-	-	-		2020-07-02 17:37:10.544078
4495	1	APTO                	Aptose Biosciences Inc	6.36	-	-	-		2020-07-02 17:37:25.282639
4496	1	RMCF                	Rocky Mountain Chocolate Factory Inc	5.88	-	-	-		2020-07-02 17:37:26.199882
4497	1	KELYA               	Kelly Services Inc Class A	20.10	-	-	-		2020-07-02 17:37:29.508767
4498	1	APYX                	Apyx Medical Corp	7.66	-	-	-		2020-07-02 17:37:43.748076
4499	1	ROKU                	Roku Inc Class A	84.62	-	-	-		2020-07-02 17:37:44.19138
4500	1	KELYB               	Kelly Services Inc Class B	20.37	-	-	-		2020-07-02 17:37:47.717823
4501	1	AQMS                	Aqua Metals Inc	1.93	-	-	-		2020-07-02 17:38:01.989908
4502	1	KFFB                	Kentucky First Federal Bancorp	8.21	-	-	-		2020-07-02 17:38:02.854596
4503	1	ROSE                	Rosehill Resources Inc Class A	1.19	-	-	-		2020-07-02 17:38:02.881163
4504	1	KROS                	Keros Therapeutics Inc	30.72	-	-	-		2020-07-02 17:38:20.836994
4505	1	AQB                 	AquaBounty Technologies Inc	3.42	-	-	-		2020-07-02 17:38:22.852129
4506	1	ROSEU               	Rosehill Resources Inc	1.31	-	-	-		2020-07-02 17:38:23.829857
4507	1	ROSEW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:38:34.945897
4508	1	KEQU                	Kewaunee Scientific Corp	14.99	-	-	-		2020-07-02 17:38:39.642203
4509	1	AQST                	Aquestive Therapeutics Inc	6.13	-	-	-		2020-07-02 17:38:40.695547
4510	1	ROST                	Ross Stores Inc	90.00	-	-	-		2020-07-02 17:38:52.897595
4511	1	KTCC                	Key Tronic Corp	7.67	-	-	-		2020-07-02 17:38:57.395115
4512	1	ARAV                	Aravive Inc	14.78	-	-	-		2020-07-02 17:38:58.196637
4513	1	ROCH                	Roth CH Acquisition I Co Ordinary Shares Class A	0	-	-	-	Fair value not available	2020-07-02 17:39:14.289679
4514	1	KZR                 	Kezar Life Sciences Inc	6.32	-	-	-		2020-07-02 17:39:15.913817
4515	1	ABUS                	Arbutus Biopharma Corp	1.86	-	-	-		2020-07-02 17:39:16.052175
4516	1	ABIO                	ARCA biopharma Inc	8.84	-	-	-		2020-07-02 17:39:31.137557
4517	1	KFRC                	Kforce Inc	31.42	-	-	-		2020-07-02 17:39:31.143001
4518	1	RKDA                	Arcadia Biosciences Inc	4.80	-	-	-		2020-07-02 17:39:46.062695
4519	1	KE                  	Kimball Electronics Inc	14.20	-	-	-		2020-07-02 17:39:46.232771
4520	1	ROCHU               	-	—	-	-	-		2020-07-02 17:39:58.72274
4521	1	ARCB                	ArcBest Corp	29.26	-	-	-		2020-07-02 17:40:00.768738
4522	1	KBAL                	Kimball International Inc Class B	14.63	-	-	-		2020-07-02 17:40:01.27534
4523	1	ROCHW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:40:10.212781
4524	1	ACGL                	Arch Capital Group Ltd	34.00	-	-	-		2020-07-02 17:40:19.164152
4525	1	KIN                 	Kindred Biosciences Inc	6.22	-	-	-		2020-07-02 17:40:19.352156
4526	1	RGLD                	Royal Gold Inc	108.48	-	-	-		2020-07-02 17:40:28.82593
4527	1	ACGLO               	Arch Capital Group Ltd Pref Share	29.69	-	-	-		2020-07-02 17:40:33.954903
4528	1	KGJI                	Kingold Jewelry Inc	1.27	-	-	-		2020-07-02 17:40:34.166293
4529	1	RTIX                	RTI Surgical Holdings Inc	4.65	-	-	-		2020-07-02 17:40:47.301428
4530	1	ACGLP               	Arch Capital Group Ltd Pref Share	29.17	-	-	-		2020-07-02 17:40:48.775418
4531	1	KC                  	Kingsoft Cloud Holdings Ltd ADR	24.88	-	-	-		2020-07-02 17:40:49.806138
4532	1	RBCN                	Rubicon Technology Inc	10.28	-	-	-		2020-07-02 17:41:03.967268
4533	1	FUV                 	Arcimoto Inc	4.94	-	-	-		2020-07-02 17:41:04.459705
4534	1	KINS                	Kingstone Companies Inc	5.82	-	-	-		2020-07-02 17:41:04.757156
4535	1	ARCE                	Arco Platform Ltd Class A	34.86	-	-	-		2020-07-02 17:41:19.597361
4536	1	RUBY                	Rubius Therapeutics Inc	8.53	-	-	-		2020-07-02 17:41:19.61583
4537	1	KNSA                	Kiniksa Pharmaceuticals Ltd Class A	24.73	-	-	-		2020-07-02 17:41:19.865926
4538	1	RUHN                	Ruhnn Holding Ltd ADR	4.46	-	-	-		2020-07-02 17:41:34.865603
4539	1	KNSL                	Kinsale Capital Group Inc	121.23	-	-	-		2020-07-02 17:41:34.97016
4540	1	ARCT                	Arcturus Therapeutics Holdings Inc	39.18	-	-	-		2020-07-02 17:41:35.047882
4541	1	RMBL                	RumbleON Inc Class B	20.52	-	-	-		2020-07-02 17:41:50.689459
4542	1	ARQT                	Arcutis Biotherapeutics Inc Ordinary Shares	30.00	-	-	-		2020-07-02 17:41:50.717559
4543	1	KIRK                	Kirkland"s Inc	5.25	-	-	-		2020-07-02 17:41:50.717604
4544	1	KTOV                	Kitov Pharma Ltd ADR	0.86	-	-	-		2020-07-02 17:42:05.914964
4545	1	RUSHA               	Rush Enterprises Inc A	48.00	-	-	-		2020-07-02 17:42:06.030628
4546	1	ARDX                	Ardelyx Inc	7.38	-	-	-		2020-07-02 17:42:06.078869
4547	1	KTOVW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:42:17.018802
4548	1	ARNA                	Arena Pharmaceuticals Inc	62.55	-	-	-		2020-07-02 17:42:21.233524
4549	1	RUSHB               	Rush Enterprises Inc Class B	42.04	-	-	-		2020-07-02 17:42:21.242448
4550	1	KLAC                	KLA Corp	160.00	-	-	-		2020-07-02 17:42:32.160028
4551	1	RUTH                	Ruth"s Hospitality Group Inc	11.99	-	-	-		2020-07-02 17:42:36.106812
4552	1	ARCC                	Ares Capital Corp	17.45	-	-	-		2020-07-02 17:42:36.174553
4553	1	KLXE                	KLX Energy Services Holdings Inc Ordinary Shares	4.80	-	-	-		2020-07-02 17:42:47.997434
4554	1	RYAAY               	Ryanair Holdings PLC ADR	72.47	-	-	-		2020-07-02 17:42:51.178571
4555	1	ARGX                	argenx SE ADR	181.82	-	-	-		2020-07-02 17:42:51.254433
4556	1	KOD                 	Kodiak Sciences Inc	46.12	-	-	-		2020-07-02 17:43:03.4644
4557	1	ARDS                	Aridis Pharmaceuticals Inc	5.96	-	-	-		2020-07-02 17:43:06.251698
4558	1	STBA                	S&ampT Bancorp Inc	26.53	-	-	-		2020-07-02 17:43:06.553435
4559	1	KOPN                	Kopin Corp	1.96	-	-	-		2020-07-02 17:43:19.859751
4560	1	ARKR                	Ark Restaurants Corp	17.87	-	-	-		2020-07-02 17:43:21.317674
4561	1	SANW                	S&ampW Seed Company	3.06	-	-	-		2020-07-02 17:43:21.555715
4562	1	KRNT                	Kornit Digital Ltd	42.66	-	-	-		2020-07-02 17:43:35.688317
4563	1	SBRA                	Sabra Health Care REIT Inc	22.05	-	-	-		2020-07-02 17:43:36.327686
4564	1	KOSS                	Koss Corp	2.23	-	-	-		2020-07-02 17:43:50.648369
4565	1	SABR                	Sabre Corp	17.50	-	-	-		2020-07-02 17:43:51.094141
4566	1	DWCR                	-	0	Arrow DWA Country Rotation ETF	-	-		2020-07-02 17:43:53.921163
4567	1	SAEX                	SAExploration Holdings Inc	1.74	-	-	-		2020-07-02 17:44:06.12499
4568	1	DWAT                	-	0	Arrow DWA Tactical ETF	2	-		2020-07-02 17:44:12.65625
4569	1	KWEB                	-	0	KraneShares CSI China Internet ETF	3	-		2020-07-02 17:44:20.40623
4570	1	SFET                	Safe-T Group Ltd ADR	3.07	-	-	-		2020-07-02 17:44:21.857434
4571	1	AROW                	Arrow Financial Corp	32.10	-	-	-		2020-07-02 17:44:28.428228
4572	1	KTOS                	Kratos Defense &amp Security Solutions Inc	17.22	-	-	-		2020-07-02 17:44:36.366896
4573	1	SAFT                	Safety Insurance Group Inc	76.82	-	-	-		2020-07-02 17:44:37.120901
4574	1	ARWR                	Arrowhead Pharmaceuticals Inc	30.60	-	-	-		2020-07-02 17:44:43.858809
4575	1	KRYS                	Krystal Biotech Inc	43.53	-	-	-		2020-07-02 17:44:51.749114
4576	1	SGA                 	Saga Communications Inc	29.62	-	-	-		2020-07-02 17:44:52.171967
4577	1	ARTL                	Artelo Biosciences Inc	1.96	-	-	-		2020-07-02 17:44:59.573873
4578	1	SAGE                	Sage Therapeutics Inc	56.82	-	-	-		2020-07-02 17:45:07.006413
4579	1	KLIC                	Kulicke &amp Soffa Industries Inc	22.43	-	-	-		2020-07-02 17:45:07.161578
4580	1	ARTLW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:45:10.67836
4581	1	SAIA                	Saia Inc	106.61	-	-	-		2020-07-02 17:45:22.067153
4582	1	KURA                	Kura Oncology Inc	18.19	-	-	-		2020-07-02 17:45:22.455053
4583	1	ARTNA               	Artesian Resources Corp Class A	35.36	-	-	-		2020-07-02 17:45:26.157312
4584	1	SLRX                	Salarius Pharmaceuticals Inc	2.39	-	-	-		2020-07-02 17:45:37.769292
4585	1	KRUS                	Kura Sushi USA Inc Ordinary Shares - Class A	21.23	-	-	-		2020-07-02 17:45:38.516262
4586	1	ARTW                	Art"s-Way Manufacturing Co Inc	3.12	-	-	-		2020-07-02 17:45:41.077756
4587	1	SALM                	Salem Media Group Inc Class A	2.39	-	-	-		2020-07-02 17:45:52.58779
4588	1	KVHI                	KVH Industries Inc	10.12	-	-	-		2020-07-02 17:45:53.806388
4589	1	ARVN                	Arvinas Inc	32.95	-	-	-		2020-07-02 17:45:55.870397
4590	1	SAL                 	Salisbury Bancorp Inc	48.96	-	-	-		2020-07-02 17:46:08.235594
4591	1	FSTR                	L.B. Foster Co Class A	18.17	-	-	-		2020-07-02 17:46:08.534125
4592	1	ARYBU               	-	—	-	-	-		2020-07-02 17:46:10.816645
4593	1	SAFM                	Sanderson Farms Inc	115.54	-	-	-		2020-07-02 17:46:23.299412
4594	1	LJPC                	La Jolla Pharmaceutical Co	5.09	-	-	-		2020-07-02 17:46:23.73668
4595	1	ARYA                	ARYA Sciences Acquisition Corp Ordinary Shares Class A	13.73	-	-	-		2020-07-02 17:46:25.740222
4596	1	SASR                	Sandy Spring Bancorp Inc	27.62	-	-	-		2020-07-02 17:46:38.339881
4597	1	LSBK                	Lake Shore Bancorp Inc	14.98	-	-	-		2020-07-02 17:46:38.691169
4598	1	ARYAU               	-	—	-	-	-		2020-07-02 17:46:40.505715
4599	1	ARYAW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:46:51.629948
4600	1	LBAI                	Lakeland Bancorp Inc	12.88	-	-	-		2020-07-02 17:46:53.353142
4601	1	SGMO                	Sangamo Therapeutics Inc	10.92	-	-	-		2020-07-02 17:46:53.476292
4602	1	ASNA                	Ascena Retail Group Inc	4.12	-	-	-		2020-07-02 17:47:06.405191
4603	1	LKFN                	Lakeland Financial Corp	46.84	-	-	-		2020-07-02 17:47:08.718029
4604	1	SANM                	Sanmina Corp	28.21	-	-	-		2020-07-02 17:47:08.78015
4605	1	ASND                	Ascendis Pharma A/S ADR	124.18	-	-	-		2020-07-02 17:47:21.861727
4606	1	SNY                 	Sanofi SA ADR	55.00	-	-	-		2020-07-02 17:47:24.269386
4607	1	LAKE                	Lakeland Industries Inc	26.68	-	-	-		2020-07-02 17:47:24.320403
4608	1	APWC                	Asia Pacific Wire &amp Cable Corp Ltd	1.59	-	-	-		2020-07-02 17:47:36.950909
4609	1	SPNS                	Sapiens International Corp NV	24.67	-	-	-		2020-07-02 17:47:39.362291
4610	1	LRCX                	Lam Research Corp	310.00	-	-	-		2020-07-02 17:47:39.431649
4611	1	ASLN                	ASLAN Pharmaceuticals Ltd ADR	1.88	-	-	-		2020-07-02 17:47:53.036172
4612	1	LAMR                	Lamar Advertising Co Class A	80.32	-	-	-		2020-07-02 17:47:54.882664
4613	1	SRPT                	Sarepta Therapeutics Inc	142.63	-	-	-		2020-07-02 17:47:55.247814
4614	1	ASML                	ASML Holding NV ADR	245.00	-	-	-		2020-07-02 17:48:09.046501
4615	1	LANC                	Lancaster Colony Corp	130.67	-	-	-		2020-07-02 17:48:10.802273
4616	1	STSA                	Satsuma Pharmaceuticals Inc Ordinary Shares	27.85	-	-	-		2020-07-02 17:48:12.903892
4617	1	ASPU                	Aspen Group Inc	9.68	-	-	-		2020-07-02 17:48:24.304917
4618	1	LCA                 	Landcadia Holdings II Inc Class A	12.74	-	-	-		2020-07-02 17:48:29.069482
4619	1	SVRA                	Savara Inc	3.52	-	-	-		2020-07-02 17:48:30.233863
4620	1	AZPN                	Aspen Technology Inc	114.00	-	-	-		2020-07-02 17:48:42.744913
4621	1	LCAHU               	-	—	-	-	-		2020-07-02 17:48:46.151811
4622	1	SBFG                	SB Financial Group Inc	21.17	-	-	-		2020-07-02 17:48:48.271705
4623	1	LCAHW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:48:57.468274
4624	1	SBBX                	SB One Bancorp	23.57	-	-	-		2020-07-02 17:49:06.173485
4625	1	LNDC                	Landec Corp	8.87	-	-	-		2020-07-02 17:49:15.917184
4626	1	SBAC                	SBA Communications Corp	170.00	-	-	-		2020-07-02 17:49:23.683767
4627	1	AWH                 	Aspira Womens Health Inc	2.89	-	-	-		2020-07-02 17:49:32.230192
4628	1	LARK                	Landmark Bancorp Inc	27.29	-	-	-		2020-07-02 17:49:33.384232
4629	1	SCSC                	ScanSource Inc	30.50	-	-	-		2020-07-02 17:49:41.044354
4630	1	ASMB                	Assembly Biosciences Inc	26.81	-	-	-		2020-07-02 17:49:50.592245
4631	1	LMRK                	Landmark Infrastructure Partners LP	12.29	-	-	-		2020-07-02 17:49:51.626115
4632	1	SMIT                	Schmitt Industries Inc	4.48	-	-	-		2020-07-02 17:49:56.805142
4633	1	ASRT                	Assertio Holdings Inc	1.43	-	-	-		2020-07-02 17:50:07.293611
4634	1	SCHN                	Schnitzer Steel Industries Inc Class A	15.00	-	-	-		2020-07-02 17:50:15.770982
4635	1	ASFI                	Asta Funding Inc	14.51	-	-	-		2020-07-02 17:50:24.936282
4636	1	SRRK                	Scholar Rock Holding Corp	17.63	-	-	-		2020-07-02 17:50:33.909572
4637	1	LMRKN               	Landmark Infrastructure Partners LP Pref Share	30.31	-	-	-		2020-07-02 17:50:41.083891
4638	1	ASTE                	Astec Industries Inc	46.36	-	-	-		2020-07-02 17:50:43.110769
4639	1	SCHL                	Scholastic Corp	—	-	-	-		2020-07-02 17:50:52.250973
4640	1	ATRO                	Astronics Corp	14.63	-	-	-		2020-07-02 17:50:57.931418
4641	1	LMRKO               	Landmark Infrastructure Partners LP Pref Share	28.86	-	-	-		2020-07-02 17:50:59.383273
4642	1	SDGR                	Schrodinger Inc Ordinary Shares	56.73	-	-	-		2020-07-02 17:51:09.080803
4643	1	ALOT                	AstroNova Inc	11.34	-	-	-		2020-07-02 17:51:12.881292
4644	1	LMRKP               	Landmark Infrastructure Partners LP Pref Share	29.97	-	-	-		2020-07-02 17:51:15.268946
4645	1	SAMA                	Schultze Special Purpose Acquisition Corp Ordinary Shares	9.97	-	-	-		2020-07-02 17:51:28.034035
4646	1	ASTC                	Astrotech Corp	2.76	-	-	-		2020-07-02 17:51:34.180584
4647	1	LE                  	Lands" End Inc	12.25	-	-	-		2020-07-02 17:51:35.281536
4648	1	SAMAU               	-	—	-	-	-		2020-07-02 17:51:46.635411
4649	1	ASUR                	Asure Software Inc	7.70	-	-	-		2020-07-02 17:51:52.758304
4650	1	LSTR                	Landstar System Inc	92.00	-	-	-		2020-07-02 17:51:54.431104
4651	1	SAMAW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:51:58.025153
4652	1	AACG                	ATA Creativity Global ADR	2.19	-	-	-		2020-07-02 17:52:08.39229
4653	1	LTRN                	Lantern Pharma Inc Ordinary Shares	10.86	-	-	-		2020-07-02 17:52:11.983269
4654	1	SJ                  	Scienjoy Holding Corp Ordinary Shares	7.36	-	-	-		2020-07-02 17:52:15.215151
4655	1	ATRA                	Atara Biotherapeutics Inc	17.00	-	-	-		2020-07-02 17:52:26.154779
4656	1	LNTH                	Lantheus Holdings Inc	17.12	-	-	-		2020-07-02 17:52:29.423178
4657	1	SGMS                	Scientific Games Corp Ordinary Shares	22.35	-	-	-		2020-07-02 17:52:33.014113
4658	1	ATNX                	Athenex Inc	15.88	-	-	-		2020-07-02 17:52:42.051438
4659	1	LTRX                	Lantronix Inc	5.46	-	-	-		2020-07-02 17:52:47.453964
4660	1	SCPL                	SciPlay Corp	11.99	-	-	-		2020-07-02 17:52:47.745646
4661	1	ATHX                	Athersys Inc	2.32	-	-	-		2020-07-02 17:52:57.85247
4662	1	SCPH                	scPharmaceuticals Inc	7.46	-	-	-		2020-07-02 17:53:02.98449
4663	1	LRMR                	Larimar Therapeutics Inc	14.20	-	-	-		2020-07-02 17:53:04.830921
4664	1	ATIF                	ATIF Holdings Ltd	1.52	-	-	-		2020-07-02 17:53:13.055251
4665	1	LSCC                	Lattice Semiconductor Corp	21.57	-	-	-		2020-07-02 17:53:23.118973
4666	1	AAME                	Atlantic American Corp	2.12	-	-	-		2020-07-02 17:53:28.795397
4667	1	LAUR                	Laureate Education Inc Class A	15.64	-	-	-		2020-07-02 17:53:38.805597
4668	1	ACBI                	Atlantic Capital Bancshares Inc	14.11	-	-	-		2020-07-02 17:53:44.117459
4669	1	WORX                	SCWorx Corp	8.06	-	-	-		2020-07-02 17:53:52.171694
4670	1	LAWS                	Lawson Products Inc	36.91	-	-	-		2020-07-02 17:53:53.906511
4671	1	AUB                 	Atlantic Union Bankshares Corp	25.96	-	-	-		2020-07-02 17:53:59.254134
4672	1	LAZY                	Lazydays Holdings Inc	13.74	-	-	-		2020-07-02 17:54:09.969692
4673	1	SCYX                	SCYNEXIS Inc	0.69	-	-	-		2020-07-02 17:54:10.264563
4674	1	AUBAP               	Atlantic Union Bankshares Corp Pref Share	29.95	-	-	-		2020-07-02 17:54:14.520548
4675	1	LCNB                	LCNB Corp	17.78	-	-	-		2020-07-02 17:54:25.158426
4676	1	SEAC                	SeaChange International Inc	2.33	-	-	-		2020-07-02 17:54:28.531127
4677	1	AY                  	Atlantica Sustainable Infrastructure PLC	29.73	-	-	-		2020-07-02 17:54:33.493888
4678	1	LPTX                	Leap Therapeutics Inc	2.05	-	-	-		2020-07-02 17:54:41.299273
4679	1	SBCF                	Seacoast Banking Corp of Florida Class A	22.86	-	-	-		2020-07-02 17:54:46.535695
4680	1	ATLC                	Atlanticus Holdings Corp	13.76	-	-	-		2020-07-02 17:54:51.10382
4681	1	LEGH                	Legacy Housing Corp	16.63	-	-	-		2020-07-02 17:54:56.517255
4682	1	STX                 	Seagate Technology PLC	42.00	-	-	-		2020-07-02 17:55:05.275903
4683	1	AAWW                	Atlas Air Worldwide Holdings Inc	57.10	-	-	-		2020-07-02 17:55:09.34298
4684	1	LEGN                	Legend Biotech Corp ADR	29.63	-	-	-		2020-07-02 17:55:13.788218
4685	1	SHIP                	Seanergy Maritime Holdings Corp	4.42	-	-	-		2020-07-02 17:55:23.865422
4686	1	AFH                 	Atlas Financial Holdings Inc	1.03	-	-	-		2020-07-02 17:55:24.665947
4687	1	SHIPW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:55:35.682904
4844	1	YVR                 	Liquid Media Group Ltd	1.69	-	-	-		2020-07-02 18:11:41.421277
4688	1	ATCX                	Atlas Technical Consultants Inc Ordinary Shares - Class A	8.83	-	-	-		2020-07-02 17:55:46.66689
4689	1	SHIPZ               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:55:47.224138
4690	1	INFR                	-	0	Legg Mason Global Infrastructure ETF	2	-		2020-07-02 17:55:53.038971
4691	1	ATCXW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:55:58.156644
4692	1	SPNE                	SeaSpine Holdings Corp	17.05	-	-	-		2020-07-02 17:56:02.83748
4693	1	LVHD                	-	0	Legg Mason Low Volatility High Dividend ETF	3	-		2020-07-02 17:56:13.405064
4694	1	TEAM                	Atlassian Corporation PLC A	150.00	-	-	-		2020-07-02 17:56:14.183428
4695	1	SGEN                	Seattle Genetics Inc	114.00	-	-	-		2020-07-02 17:56:18.259122
4696	1	SQLV                	-	0	Legg Mason Small-Cap Quality Value ETF	-	-		2020-07-02 17:56:31.951553
4697	1	ATNI                	ATN International Inc	67.14	-	-	-		2020-07-02 17:56:32.060716
4698	1	EYES                	Second Sight Medical Products Inc	1.40	-	-	-		2020-07-02 17:56:33.376737
4699	1	EYESW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:56:44.501445
4700	1	ATOM                	Atomera Inc	7.98	-	-	-		2020-07-02 17:56:52.553
4701	1	LACQ                	Leisure Acquisition Corp	9.39	-	-	-		2020-07-02 17:56:55.27458
4702	1	SECO                	Secoo Holding Ltd ADR	4.44	-	-	-		2020-07-02 17:57:00.453745
4703	1	ATOS                	Atossa Therapeutics Inc	4.38	-	-	-		2020-07-02 17:57:07.615716
4704	1	LACQU               	Leisure Acquisition Corp Units (1 Ord &amp 1/2 War)	10.59	-	-	-		2020-07-02 17:57:13.229447
4705	1	SCWX                	SecureWorks Corp A	13.69	-	-	-		2020-07-02 17:57:17.621463
4706	1	BCEL                	Atreca Inc	24.18	-	-	-		2020-07-02 17:57:23.750434
4707	1	LACQW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:57:24.876285
4708	1	SNFCA               	Security National Financial Corp Class A	7.56	-	-	-		2020-07-02 17:57:33.34409
4709	1	ATRC                	AtriCure Inc	43.15	-	-	-		2020-07-02 17:57:38.940468
4710	1	LMAT                	LeMaitre Vascular Inc	25.51	-	-	-		2020-07-02 17:57:42.498337
4711	1	SEEL                	Seelos Therapeutics Inc	0.96	-	-	-		2020-07-02 17:57:48.414027
4712	1	ATRI                	Atrion Corp	543.61	-	-	-		2020-07-02 17:57:54.410161
4713	1	TREE                	LendingTree Inc	304.78	-	-	-		2020-07-02 17:58:00.339834
4714	1	SEIC                	SEI Investments Co	51.00	-	-	-		2020-07-02 17:58:03.752275
4715	1	LIFE                	aTyr Pharma Inc	7.77	-	-	-		2020-07-02 17:58:10.983486
4716	1	LEVL                	Level One Bancorp Inc	21.47	-	-	-		2020-07-02 17:58:16.462615
4717	1	SLCT                	Select Bancorp Inc	9.66	-	-	-		2020-07-02 17:58:19.894205
4718	1	AUBN                	Auburn National Bancorp Inc	67.12	-	-	-		2020-07-02 17:58:29.90287
4719	1	LXRX                	Lexicon Pharmaceuticals Inc	2.66	-	-	-		2020-07-02 17:58:32.378986
4720	1	SIC                 	Select Interior Concepts Inc Ordinary Shares - Class A	6.22	-	-	-		2020-07-02 17:58:35.606576
4721	1	LX                  	LexinFintech Holdings Ltd DR	12.81	-	-	-		2020-07-02 17:58:47.882786
4722	1	AUDC                	AudioCodes Ltd	27.24	-	-	-		2020-07-02 17:58:48.46267
4723	1	SELB                	Selecta Biosciences Inc	2.51	-	-	-		2020-07-02 17:58:50.728164
4724	1	LFAC                	LF Capital Acquisition Corp Ordinary Shares - Class A	10.05	-	-	-		2020-07-02 17:59:03.716862
4725	1	SIGI                	Selective Insurance Group Inc	57.19	-	-	-		2020-07-02 17:59:06.287208
4726	1	AEYE                	AudioEye Inc	9.54	-	-	-		2020-07-02 17:59:06.821693
4727	1	LFACU               	-	—	-	-	-		2020-07-02 17:59:18.631497
4728	1	SLS                 	SELLAS Life Sciences Group Inc	3.80	-	-	-		2020-07-02 17:59:22.264994
4729	1	AUPH                	Aurinia Pharmaceuticals Inc	15.48	-	-	-		2020-07-02 17:59:25.202626
4730	1	LFACW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 17:59:29.689136
4731	1	LEDS                	SemiLEDs Corp	4.38	-	-	-		2020-07-02 17:59:37.602716
4732	1	EARS                	Auris Medical Holding Ltd	1.54	-	-	-		2020-07-02 17:59:40.585641
4733	1	LGIH                	LGI Homes Inc	100.07	-	-	-		2020-07-02 17:59:44.66034
4734	1	SMTC                	Semtech Corp	47.64	-	-	-		2020-07-02 17:59:52.492064
4735	1	JG                  	Aurora Mobile Ltd ADR	2.25	-	-	-		2020-07-02 17:59:55.894524
4736	1	LHCG                	LHC Group Inc	160.55	-	-	-		2020-07-02 18:00:00.07291
4737	1	SNCA                	Seneca Biopharma Inc	1.18	-	-	-		2020-07-02 18:00:08.3585
4738	1	ADSK                	Autodesk Inc	198.00	-	-	-		2020-07-02 18:00:13.781812
4739	1	LLIT                	Lianluo Smart Ltd Class A	0.61	-	-	-		2020-07-02 18:00:15.331889
4740	1	SENEA               	Seneca Foods Corp Class A	39.93	-	-	-		2020-07-02 18:00:23.503031
4741	1	AUTL                	Autolus Therapeutics PLC ADR	19.53	-	-	-		2020-07-02 18:00:29.234975
4742	1	LBRDA               	Liberty Broadband Corp A	111.20	-	-	-		2020-07-02 18:00:31.127695
4743	1	SENEB               	Seneca Foods Corp Class B	39.85	-	-	-		2020-07-02 18:00:39.052946
4744	1	LBRDK               	Liberty Broadband Corp C	112.23	-	-	-		2020-07-02 18:00:46.21721
4745	1	ADP                 	Automatic Data Processing Inc	136.00	-	-	-		2020-07-02 18:00:48.531246
4746	1	SNES                	SenesTech Inc	3.12	-	-	-		2020-07-02 18:00:53.983628
4747	1	LBTYA               	Liberty Global PLC Class A	33.00	-	-	-		2020-07-02 18:01:01.272605
4748	1	AUTO                	AutoWeb Inc	2.38	-	-	-		2020-07-02 18:01:04.703793
4749	1	AIHS                	Senmiao Technology Ltd	1.19	-	-	-		2020-07-02 18:01:09.787993
4750	1	LBTYB               	Liberty Global PLC Class B	30.51	-	-	-		2020-07-02 18:01:16.520102
4751	1	AVDL                	Avadel Pharmaceuticals PLC ADR	8.10	-	-	-		2020-07-02 18:01:20.016606
4752	1	SRTS                	Sensus Healthcare Inc	4.88	-	-	-		2020-07-02 18:01:25.07483
4753	1	LBTYK               	Liberty Global PLC C	29.71	-	-	-		2020-07-02 18:01:31.627839
4754	1	AHIX                	Aluf Holdings Inc	0.00	-	-	-		2020-07-02 18:01:35.663976
4755	1	SQBG                	Sequential Brands Group Inc	0.58	-	-	-		2020-07-02 18:01:40.841116
4756	1	LILA                	Liberty Latin America Ltd	15.70	-	-	-		2020-07-02 18:01:46.785921
4757	1	AVCO                	Avalon Globocare Corp	1.72	-	-	-		2020-07-02 18:01:52.036763
4758	1	MCRB                	Seres Therapeutics Inc	4.58	-	-	-		2020-07-02 18:01:55.771301
4759	1	LILAK               	Liberty Latin America Ltd Class C	15.33	-	-	-		2020-07-02 18:02:03.103661
4760	1	ATXI                	Avenue Therapeutics Inc	8.95	-	-	-		2020-07-02 18:02:07.378714
4761	1	SVC                 	Service Properties Trust	13.37	-	-	-		2020-07-02 18:02:11.206007
4762	1	BATRA               	Liberty Braves Group	21.91	-	-	-		2020-07-02 18:02:18.822916
4763	1	AVEO                	AVEO Pharmaceuticals Inc	5.97	-	-	-		2020-07-02 18:02:22.615287
4764	1	SREV                	ServiceSource International Inc	2.53	-	-	-		2020-07-02 18:02:26.544731
4765	1	BATRK               	Liberty Braves Group C	21.41	-	-	-		2020-07-02 18:02:34.206771
4766	1	AVNW                	Aviat Networks Inc	23.06	-	-	-		2020-07-02 18:02:40.161092
4767	1	SFBS                	Servisfirst Bancshares Inc	35.80	-	-	-		2020-07-02 18:02:41.591793
4768	1	FWONA               	Liberty Formula One Group A	31.00	-	-	-		2020-07-02 18:02:49.649229
4769	1	SESN                	Sesen Bio Inc	0.81	-	-	-		2020-07-02 18:02:57.571074
4770	1	CDMO                	Avid Bioservices Inc	7.28	-	-	-		2020-07-02 18:02:58.097806
4771	1	FWONK               	Liberty Formula One Group C	31.00	-	-	-		2020-07-02 18:03:05.178953
4772	1	SVBI                	Severn Bancorp Inc	8.39	-	-	-		2020-07-02 18:03:13.117093
4773	1	CDMOP               	Avid Bioservices Inc Pref Share	26.31	-	-	-		2020-07-02 18:03:16.278703
4774	1	LSXMA               	Liberty SiriusXM Group A	45.05	-	-	-		2020-07-02 18:03:21.000236
4775	1	SGBX                	SG Blocks Inc	4.32	-	-	-		2020-07-02 18:03:28.517056
4776	1	LSXMB               	Liberty SiriusXM Group B	48.31	-	-	-		2020-07-02 18:03:36.464923
4777	1	SGOC                	SGOCO Group Ltd	1.29	-	-	-		2020-07-02 18:04:04.864831
4778	1	LSXMK               	Liberty SiriusXM Group C	45.06	-	-	-		2020-07-02 18:04:06.413425
4779	1	LTRPA               	Liberty TripAdvisor Holdings Inc Class A	4.01	-	-	-		2020-07-02 18:04:21.726711
4780	1	SMED                	Sharps Compliance Corp	6.98	-	-	-		2020-07-02 18:04:24.555918
4781	1	LTRPB               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:04:33.059105
4782	1	SHSP                	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:04:36.290018
4783	1	AVID                	-	0	-	-	-	Fair value not available	2020-07-02 18:05:08.507759
4784	1	RNA                 	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:05:19.607576
4785	1	SHSP                	SharpSpring Inc	11.95	-	-	-		2020-07-02 18:05:30.654771
4786	1	AVGR                	Avinger Inc	0.59	-	-	-		2020-07-02 18:05:41.14923
4787	1	PIXY                	ShiftPixy Inc	8.29	-	-	-		2020-07-02 18:05:48.856725
4788	1	LSAC                	LifeSci Acquisition Corp Ordinary Shares	8.80	-	-	-		2020-07-02 18:05:55.7168
4789	1	CAR                 	Avis Budget Group Inc	34.48	-	-	-		2020-07-02 18:05:59.566546
4790	1	SHLO                	Shiloh Industries Inc	3.79	-	-	-		2020-07-02 18:06:06.701754
4791	1	LSACU               	-	—	-	-	-		2020-07-02 18:06:13.391298
4792	1	RCEL                	Avita Therapeutics Inc	37.51	-	-	-		2020-07-02 18:06:17.514178
4793	1	LSACW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:06:24.730052
4794	1	AVT                 	Avnet Inc	38.00	-	-	-		2020-07-02 18:06:37.072481
4795	1	LCUT                	Lifetime Brands Inc	10.07	-	-	-		2020-07-02 18:06:43.239795
4796	1	SCCIX               	-	0	Carillon Reams Core Bond Fund Class I	5	-		2020-07-02 18:06:44.025213
4797	1	AVRO                	Avrobio Inc	22.00	-	-	-		2020-07-02 18:06:56.226836
4798	1	LFVN                	Lifevantage Corp	15.08	-	-	-		2020-07-02 18:06:58.558588
4799	1	TYHT                	Shineco Inc	0.84	-	-	-		2020-07-02 18:07:00.720689
4800	1	LWAY                	Lifeway Foods Inc	3.11	-	-	-		2020-07-02 18:07:14.146049
4801	1	AWRE                	Aware Inc	3.65	-	-	-		2020-07-02 18:07:14.500263
4802	1	SWAV                	ShockWave Medical Inc	42.94	-	-	-		2020-07-02 18:07:16.430885
4803	1	LGND                	Ligand Pharmaceuticals Inc	109.99	-	-	-		2020-07-02 18:07:29.744103
4804	1	ACLS                	Axcelis Technologies Inc	31.27	-	-	-		2020-07-02 18:07:29.760893
4805	1	SCVL                	Shoe Carnival Inc	37.37	-	-	-		2020-07-02 18:07:32.388197
4806	1	LTBR                	Lightbridge Corp	6.54	-	-	-		2020-07-02 18:07:44.803663
4807	1	AXLA                	Axcella Health Inc	6.12	-	-	-		2020-07-02 18:07:45.189405
4808	1	SHBI                	Shore Bancshares Inc	14.36	-	-	-		2020-07-02 18:07:48.213788
4809	1	AXGN                	Axogen Inc	14.33	-	-	-		2020-07-02 18:08:00.48947
4810	1	LPTH                	LightPath Technologies Inc A	3.79	-	-	-		2020-07-02 18:08:00.590021
4811	1	SSTI                	ShotSpotter Inc	21.18	-	-	-		2020-07-02 18:08:04.292179
4812	1	LLEXQ               	Lilis Energy Inc	0.08	-	-	-		2020-07-02 18:08:15.839748
4813	1	AAXN                	Axon Enterprise Inc	75.03	-	-	-		2020-07-02 18:08:16.039674
4814	1	LMB                 	Limbach Holdings Inc	4.98	-	-	-		2020-07-02 18:08:31.107435
4815	1	AXNX                	Axonics Modulation Technologies Inc	34.84	-	-	-		2020-07-02 18:08:34.937932
4816	1	LLNW                	Limelight Networks Inc	6.99	-	-	-		2020-07-02 18:08:47.242575
4817	1	AXGT                	Axovant Gene Therapies Ltd	3.99	-	-	-		2020-07-02 18:08:51.239932
4818	1	SIBN                	SI-BONE Inc	21.20	-	-	-		2020-07-02 18:08:55.047112
4819	1	LMST                	Limestone Bancorp Inc	18.65	-	-	-		2020-07-02 18:09:02.552686
4820	1	AXSM                	Axsome Therapeutics Inc	63.21	-	-	-		2020-07-02 18:09:08.934686
4821	1	SIEB                	Siebert Financial Corp	5.35	-	-	-		2020-07-02 18:09:13.38525
4822	1	LMNL                	Liminal Biosciences Inc	20.47	-	-	-		2020-07-02 18:09:19.315541
4823	1	AXTI                	AXT Inc	6.35	-	-	-		2020-07-02 18:09:26.721183
4824	1	SIEN                	Sientra Inc	6.95	-	-	-		2020-07-02 18:09:31.175463
4825	1	LMNR                	Limoneira Co	17.27	-	-	-		2020-07-02 18:09:34.20722
4826	1	AYLA                	Ayala Pharmaceuticals Inc Ordinary Shares	9.12	-	-	-		2020-07-02 18:09:41.684407
4827	1	BSRR                	Sierra Bancorp	22.95	-	-	-		2020-07-02 18:09:48.669628
4828	1	LINC                	Lincoln Educational Services Corp	4.74	-	-	-		2020-07-02 18:09:52.065024
4829	1	AYRO                	AYRO Inc Ordinary Shares	3.51	-	-	-		2020-07-02 18:09:59.354618
4830	1	SRRA                	Sierra Oncology Inc	16.84	-	-	-		2020-07-02 18:10:09.694523
4831	1	LECO                	Lincoln Electric Holdings Inc	78.00	-	-	-		2020-07-02 18:10:15.061126
4832	1	AYTU                	Aytu BioScience Inc	2.44	-	-	-		2020-07-02 18:10:19.591774
4833	1	SWIR                	Sierra Wireless Inc	12.17	-	-	-		2020-07-02 18:10:35.390635
4834	1	LIND                	Lindblad Expeditions Holdings Inc	12.02	-	-	-		2020-07-02 18:10:37.224043
4835	1	AZRX                	AzurRx BioPharma Inc	0.93	-	-	-		2020-07-02 18:10:40.753181
4836	1	SIFY                	Sify Technologies Ltd ADR	1.05	-	-	-		2020-07-02 18:10:57.878528
4837	1	LPCN                	Lipocine Inc	1.21	-	-	-		2020-07-02 18:11:00.302002
4838	1	BCOM                	B Communications Ltd	3.22	-	-	-		2020-07-02 18:11:03.028863
4839	1	SIGA                	SIGA Technologies Inc	5.50	-	-	-		2020-07-02 18:11:19.18476
4840	1	LIQT                	LiqTech International Inc	6.13	-	-	-		2020-07-02 18:11:22.549655
4841	1	RILY                	B. Riley Financial Inc	25.59	-	-	-		2020-07-02 18:11:23.036571
4842	1	RILYG               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:11:34.12709
4843	1	SGLB                	Sigma Labs Inc	3.29	-	-	-		2020-07-02 18:11:38.96792
4845	1	RILYH               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:11:45.353649
4846	1	SGLBW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:11:50.061704
4847	1	RILYI               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:11:56.53667
4848	1	LQDA                	Liquidia Technologies Inc	7.94	-	-	-		2020-07-02 18:11:59.877682
4849	1	RILYM               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:12:07.602948
4850	1	SGMA                	Sigmatron International Inc	5.37	-	-	-		2020-07-02 18:12:09.576223
4851	1	LQDT                	Liquidity Service Inc	8.76	-	-	-		2020-07-02 18:12:17.965075
4852	1	RILYN               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:12:18.656611
4853	1	RILYO               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:12:29.725004
4854	1	SBNY                	Signature Bank	120.21	-	-	-		2020-07-02 18:12:29.983197
4855	1	LFUS                	Littelfuse Inc	180.00	-	-	-		2020-07-02 18:12:36.624023
4856	1	RILYP               	B. Riley Financial Inc Pref Share	25.84	-	-	-		2020-07-02 18:12:47.583677
4857	1	SLGN                	Silgan Holdings Inc	28.50	-	-	-		2020-07-02 18:12:48.76076
4858	1	LIVK                	LIV Capital Acquisition Corp Ordinary Shares Class A	9.46	-	-	-		2020-07-02 18:12:53.862891
4859	1	RILYZ               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:12:58.79652
4860	1	SILC                	Silicom Ltd	39.84	-	-	-		2020-07-02 18:13:06.075766
4861	1	LIVKU               	-	—	-	-	-		2020-07-02 18:13:10.96461
4862	1	BOSC                	BOS Better Online Solutions Ltd	3.85	-	-	-		2020-07-02 18:13:16.955624
4863	1	LIVKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:13:22.018951
4864	1	SLAB                	Silicon Laboratories Inc	89.90	-	-	-		2020-07-02 18:13:23.577662
4865	1	BIDU                	Baidu Inc ADR	191.00	-	-	-		2020-07-02 18:13:32.777768
4866	1	LIVN                	LivaNova PLC	68.00	-	-	-		2020-07-02 18:13:39.769929
4867	1	SIMO                	Silicon Motion Technology Corp ADR	52.15	-	-	-		2020-07-02 18:13:41.213948
4868	1	BCPC                	Balchem Corp	86.00	-	-	-		2020-07-02 18:13:48.229601
4869	1	LOB                 	Live Oak Bancshares Inc	17.72	-	-	-		2020-07-02 18:13:55.435071
4870	1	SILK                	Silk Road Medical Inc	35.41	-	-	-		2020-07-02 18:13:58.563538
4871	1	BLDP                	Ballard Power Systems Inc	11.43	-	-	-		2020-07-02 18:14:04.043889
4872	1	LIVE                	Live Ventures Inc	15.74	-	-	-		2020-07-02 18:14:10.450345
4873	1	SSPK                	Silver Spike Acquisition Corp Ordinary Shares Class A	9.40	-	-	-		2020-07-02 18:14:16.482461
4874	1	BANF                	BancFirst Corp	46.33	-	-	-		2020-07-02 18:14:19.944384
4875	1	SSPKU               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:14:27.571395
4876	1	LPSN                	LivePerson Inc	40.48	-	-	-		2020-07-02 18:14:36.447511
4877	1	SSPKW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:14:39.09416
4878	1	BANFP               	BFC Capital Trust II Pref Share	—	-	-	-		2020-07-02 18:14:41.805894
4879	1	SAMG                	Silvercrest Asset Management Group Inc Class A	14.35	-	-	-		2020-07-02 18:14:55.342454
4880	1	LIVX                	LiveXLive Media Inc	3.72	-	-	-		2020-07-02 18:14:55.519029
4881	1	BCTF                	Bancorp 34 Inc	14.87	-	-	-		2020-07-02 18:14:56.802439
4882	1	BAND                	Bandwidth Inc Class A	112.52	-	-	-		2020-07-02 18:15:12.098771
4883	1	LVGO                	Livongo Health Inc	51.12	-	-	-		2020-07-02 18:15:14.020737
4884	1	SSNT                	SilverSun Technologies Inc	3.07	-	-	-		2020-07-02 18:15:14.332634
4885	1	SFNC                	Simmons First National Corp Class A	20.41	-	-	-		2020-07-02 18:15:29.737239
4886	1	BFC                 	Bank First Corp	65.20	-	-	-		2020-07-02 18:15:31.144828
4887	1	LIZI                	Lizhi Inc ADR	6.47	-	-	-		2020-07-02 18:15:32.2185
4888	1	BOCH                	Bank of Commerce Holdings Inc	9.56	-	-	-		2020-07-02 18:15:46.090233
4889	1	SLP                 	Simulations Plus Inc	37.97	-	-	-		2020-07-02 18:15:48.876429
4890	1	LKQ                 	LKQ Corp	35.00	-	-	-		2020-07-02 18:15:50.92416
4891	1	BMRC                	Bank of Marin Bancorp	37.05	-	-	-		2020-07-02 18:16:04.586141
4892	1	SINA                	SINA Corp	—	-	-	-		2020-07-02 18:16:07.269522
4893	1	LMFA                	LM Funding America Inc	1.86	-	-	-		2020-07-02 18:16:09.171266
4894	1	LMFAW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:16:20.257953
4895	1	SBGI                	Sinclair Broadcast Group Inc	28.00	-	-	-		2020-07-02 18:16:26.060157
4896	1	LMPX                	LMP Automotive Holdings Inc Ordinary Shares	13.70	-	-	-		2020-07-02 18:16:40.169648
4897	1	BMLP                	-	0	BMO Dorsey Wright MLP Index Exchange Traded Notes	-	-		2020-07-02 18:16:41.0666
4898	1	SINO                	Sino-Global Shipping America Ltd	1.00	-	-	-		2020-07-02 18:16:44.389993
4899	1	LOGC                	LogicBio Therapeutics Inc	9.22	-	-	-		2020-07-02 18:16:58.016775
4900	1	BKSC                	Bank of South Carolina Corp	17.34	-	-	-		2020-07-02 18:16:59.056136
4901	1	SVA                 	Sinovac Biotech Ltd	6.67	-	-	-		2020-07-02 18:16:59.703567
4902	1	BOTJ                	Bank of the James Financial Group Inc	12.58	-	-	-		2020-07-02 18:17:14.839432
4903	1	LOGI                	Logitech International SA	—	-	-	-		2020-07-02 18:17:16.891306
4904	1	SINT                	SINTX Technologies Inc	2.80	-	-	-		2020-07-02 18:17:18.060882
4905	1	OZK                 	Bank OZK	27.39	-	-	-		2020-07-02 18:17:33.685239
4906	1	LOGM                	LogMeIn Inc	87.00	-	-	-		2020-07-02 18:17:34.846218
4907	1	SG                  	Sirius International Insurance Group Ltd	8.56	-	-	-		2020-07-02 18:17:35.940709
4908	1	BSVN                	Bank7 Corp	16.55	-	-	-		2020-07-02 18:17:48.64573
4909	1	SIRI                	Sirius XM Holdings Inc	5.70	-	-	-		2020-07-02 18:17:53.5851
4910	1	BFIN                	BankFinancial Corp	10.03	-	-	-		2020-07-02 18:18:04.283924
4911	1	CNCR                	-	0	Loncar Cancer Immunotherapy ETF	1	-		2020-07-02 18:18:05.124261
4912	1	SRVA                	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:18:05.220544
4913	1	BWFG                	Bankwell Financial Group Inc	21.90	-	-	-		2020-07-02 18:18:20.109406
4914	1	SITM                	SiTime Corp Ordinary Shares	39.98	-	-	-		2020-07-02 18:18:20.503886
4915	1	CHNA                	-	0	Loncar China BioPharma ETF	-	-		2020-07-02 18:18:23.46595
4916	1	SKYS                	Sky Solar Holdings Ltd ADR	5.64	-	-	-		2020-07-02 18:18:35.933093
4917	1	BANR                	Banner Corp	43.89	-	-	-		2020-07-02 18:18:35.935909
4918	1	LONE                	Lonestar Resources US Inc	1.36	-	-	-		2020-07-02 18:18:39.945444
4919	1	BZUN                	Baozun Inc ADR	41.04	-	-	-		2020-07-02 18:18:51.891008
4920	1	SKYW                	SkyWest Inc	52.65	-	-	-		2020-07-02 18:18:52.013167
4921	1	LOAC                	Longevity Acquisition Corp Ordinary Shares	10.45	-	-	-		2020-07-02 18:18:55.340727
4922	1	SWKS                	Skyworks Solutions Inc	100.00	-	-	-		2020-07-02 18:19:06.843324
4923	1	LOACR               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:19:07.091816
4924	1	SNBR                	Sleep Number Corp	51.64	-	-	-		2020-07-02 18:19:22.157733
4925	1	LOACU               	-	—	-	-	-		2020-07-02 18:19:24.988431
4926	1	LOACW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:19:36.168208
4927	1	SLM                 	SLM Corp	8.28	-	-	-		2020-07-02 18:19:37.645915
4928	1	DFVL                	-	0	iPath® US Treasury 5-year Bull ETN	-	-		2020-07-02 18:19:45.025076
4929	1	SLMBP               	SLM Corp Pref Share	39.76	-	-	-		2020-07-02 18:19:53.324648
4930	1	LOOP                	Loop Industries Inc	8.35	-	-	-		2020-07-02 18:19:54.696216
4931	1	DFVS                	-	0	iPath® US Treasury 5-year Bear ETN	-	-		2020-07-02 18:20:07.087231
4932	1	SGH                 	SMART Global Holdings Inc	29.82	-	-	-		2020-07-02 18:20:08.362327
4933	1	LORL                	Loral Space &amp Communications Inc	22.84	-	-	-		2020-07-02 18:20:12.50591
4934	1	SND                 	Smart Sand Inc	1.97	-	-	-		2020-07-02 18:20:23.447697
4935	1	DTUL                	-	0	iPath® US Treasury 2-year Bull ETN	-	-		2020-07-02 18:20:28.507243
4936	1	SMBK                	SmartFinancial Inc	19.14	-	-	-		2020-07-02 18:20:39.071954
4937	1	DTUS                	-	0	iPath® US Treasury 2-year Bear ETN	-	-		2020-07-02 18:20:50.428949
4938	1	SDC                 	SmileDirectClub Inc Ordinary Shares - Class A	10.13	-	-	-		2020-07-02 18:20:55.071582
4939	1	LPLA                	LPL Financial Holdings Inc	79.00	-	-	-		2020-07-02 18:21:02.482207
4940	1	SWBI                	Smith &amp Wesson Brands Inc	23.72	-	-	-		2020-07-02 18:21:10.276734
4941	1	DTYL                	-	0	iPath® US Treasury 10-year Bull ETN	-	-		2020-07-02 18:21:12.453498
4942	1	LYTS                	LSI Industries Inc	8.44	-	-	-		2020-07-02 18:21:22.753455
4943	1	SMSI                	Smith Micro Software Inc	4.50	-	-	-		2020-07-02 18:21:26.184237
4944	1	FLT                 	Fleetcor Technologies Inc	228.88	-	-	-		2020-07-02 18:21:37.911044
4945	1	LKREF               	Link Real Estate Investment Trust	9.79	-	-	-		2020-07-02 18:21:41.100132
4946	1	SMTX                	SMTC Corp	4.30	-	-	-		2020-07-02 18:21:41.359234
4947	1	SCKT                	Socket Mobile Inc	2.21	-	-	-		2020-07-02 18:21:56.851385
4948	1	LULU                	Lululemon Athletica Inc	142.00	-	-	-		2020-07-02 18:21:59.528496
4949	1	STPP                	-	0	iPath® US Treasury Steepener ETN	-	-		2020-07-02 18:21:59.955617
4950	1	LITE                	Lumentum Holdings Inc	—	-	-	-		2020-07-02 18:22:18.212291
4951	1	TAPR                	-	0	Barclays Inverse US Treasury Aggregate ETN	-	-		2020-07-02 18:22:24.279107
4952	1	GIGE                	-	0	SoFi Gig Economy ETF	-	-		2020-07-02 18:22:30.968695
4953	1	LMNX                	Luminex Corp	29.64	-	-	-		2020-07-02 18:22:33.390067
4954	1	BBSI                	Barrett Business Services Inc	69.34	-	-	-		2020-07-02 18:22:43.161408
4955	1	SAQN                	Software Acquisition Group Inc Ordinary Shares Class A	7.65	-	-	-		2020-07-02 18:22:46.985886
4956	1	LUMO                	Lumos Pharma Inc	25.45	-	-	-		2020-07-02 18:22:48.837179
4957	1	GOLD                	Barrick Gold Corp	15.00	-	-	-		2020-07-02 18:23:01.893173
4958	1	SAQNU               	-	—	-	-	-		2020-07-02 18:23:02.783402
4959	1	LUNA                	Luna Innovations Inc	6.35	-	-	-		2020-07-02 18:23:04.287294
4960	1	LKCO                	Luokung Technology Corp	1.27	-	-	-		2020-07-02 18:23:20.740134
4961	1	BSET                	Bassett Furniture Industries Inc	11.82	-	-	-		2020-07-02 18:23:22.696996
4962	1	SAQNW               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:23:33.631642
4963	1	ZTEST               	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:23:33.761586
4964	1	LBC                 	Luther Burbank Corp	10.81	-	-	-		2020-07-02 18:23:39.952095
4965	1	BXRX                	Baudax Bio Inc Ordinary Shares	3.70	-	-	-		2020-07-02 18:24:12.483113
4966	1	LYFT                	Lyft Inc Class A	50.00	-	-	-		2020-07-02 18:24:14.815031
4967	1	LYRA                	Lyra Therapeutics Inc Ordinary Shares	10.20	-	-	-		2020-07-02 18:24:32.404529
4968	1	SOHU                	Sohu.com Ltd ADR	14.96	-	-	-		2020-07-02 18:24:37.834
4969	1	BCML                	BayCom Corp	16.95	-	-	-		2020-07-02 18:24:39.965886
4970	1	MCBC                	Macatawa Bank Corp	8.62	-	-	-		2020-07-02 18:24:56.74766
4971	1	BBQ                 	BBQ Holdings Inc	5.11	-	-	-		2020-07-02 18:25:29.396964
4972	1	SLRC                	Solar Capital Ltd	19.70	-	-	-		2020-07-02 18:25:29.445896
4973	1	MFNC                	Mackinac Financial Corp	14.41	-	-	-		2020-07-02 18:25:34.149504
4974	1	BCBP                	BCB Bancorp Inc	10.64	-	-	-		2020-07-02 18:25:51.196852
4975	1	SUNS                	Solar Senior Capital Ltd	15.05	-	-	-		2020-07-02 18:25:51.725806
4976	1	MTSI                	MACOM Technology Solutions Holdings Inc	36.88	-	-	-		2020-07-02 18:25:58.268379
4977	1	BECN                	Beacon Roofing Supply Inc	39.08	-	-	-		2020-07-02 18:26:09.798971
4978	1	SEDG                	SolarEdge Technologies Inc	114.92	-	-	-		2020-07-02 18:26:10.420646
4979	1	MGNX                	Macrogenics Inc	28.19	-	-	-		2020-07-02 18:26:16.314169
4980	1	MDGL                	-	0	-	-	-	No result in autocomplete search	2020-07-02 18:26:27.750253
4981	1	MDGL                	Madrigal Pharmaceuticals Inc	113.19	-	-	-		2020-07-02 18:27:03.54715
4982	1	BEAM                	Beam Therapeutics Inc	28.97	-	-	-		2020-07-02 18:27:04.389159
4983	1	SLNO                	Soleno Therapeutics Inc	1.85	-	-	-		2020-07-02 18:27:05.533121
4984	1	MGLN                	Magellan Health Inc	93.82	-	-	-		2020-07-02 18:27:49.629316
4985	1	BBGI                	Beasley Broadcast Group Inc Class A	3.70	-	-	-		2020-07-02 18:27:50.042033
4986	1	SLGL                	Sol-Gel Technologies Ltd	11.63	-	-	-		2020-07-02 18:28:01.33697
\.


--
-- Name: records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.records_id_seq', 4986, true);


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
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

