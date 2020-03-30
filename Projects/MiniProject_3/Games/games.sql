--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-03-22 20:08:30

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
-- TOC entry 202 (class 1259 OID 24721)
-- Name: game_viewers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_viewers (
    date date,
    id bigint,
    name text,
    viewers bigint,
    channels bigint
);


ALTER TABLE public.game_viewers OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24727)
-- Name: steam_topselledgames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.steam_topselledgames (
    game_name text,
    date_released text,
    discount text,
    price text
);


ALTER TABLE public.steam_topselledgames OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24733)
-- Name: top_channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.top_channels (
    date date,
    streamer_id bigint,
    streamer_name text,
    game_name text,
    viewers bigint,
    language text,
    followers bigint,
    views bigint
);


ALTER TABLE public.top_channels OWNER TO postgres;

--
-- TOC entry 2822 (class 0 OID 24721)
-- Dependencies: 202
-- Data for Name: game_viewers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 21779, 'League of Legends', 314143, 6048);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509658, 'Just Chatting', 261569, 3282);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 33214, 'Fortnite', 221334, 10571);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512710, 'Call of Duty: Modern Warfare', 217878, 12485);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32399, 'Counter-Strike: Global Offensive', 182543, 3610);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156439, 2600);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 149620, 2358);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81400, 2299);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509658, 'Just Chatting', 261569, 3281);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 33214, 'Fortnite', 221333, 10569);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512710, 'Call of Duty: Modern Warfare', 217879, 12485);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32399, 'Counter-Strike: Global Offensive', 182543, 3611);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156436, 2599);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 149620, 2358);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81400, 2300);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 33214, 'Fortnite', 220768, 10486);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512710, 'Call of Duty: Modern Warfare', 217120, 12416);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32399, 'Counter-Strike: Global Offensive', 182544, 3569);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156252, 2581);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 150567, 2350);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81194, 2285);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 63729, 978);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55679, 1513);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 42876, 3061);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38606, 1667);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512710, 'Call of Duty: Modern Warfare', 217120, 12416);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32399, 'Counter-Strike: Global Offensive', 182544, 3569);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156252, 2581);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 150567, 2350);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81194, 2285);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 63729, 978);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55679, 1513);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 42876, 3061);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38606, 1667);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 37990, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32399, 'Counter-Strike: Global Offensive', 182540, 3608);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156431, 2598);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 149592, 2354);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81391, 2298);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64450, 975);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55903, 1519);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43107, 3072);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38551, 1672);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37801, 2231);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 32982, 'Grand Theft Auto V', 156439, 2600);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 149620, 2358);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81400, 2299);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38556, 1673);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37808, 2237);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 509538, 'Animal Crossing: New Horizons', 149620, 2358);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81400, 2300);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38556, 1673);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37808, 2237);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 511224, 'Apex Legends', 32876, 2968);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 506442, 'Doom Eternal', 81400, 2299);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38556, 1673);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37808, 2237);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 511224, 'Apex Legends', 32876, 2969);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 513143, 'Teamfight Tactics', 25015, 988);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 29595, 'Dota 2', 64453, 977);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55948, 1521);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38556, 1673);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37808, 2237);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 511224, 'Apex Legends', 32876, 2968);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 513143, 'Teamfight Tactics', 25015, 988);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 460630, 'Tom Clancy''s Rainbow Six: Siege', 23453, 2654);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 512804, 'FIFA 20', 55679, 1513);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 42876, 3061);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38606, 1667);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 37990, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37783, 2233);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 511224, 'Apex Legends', 32682, 2957);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 513143, 'Teamfight Tactics', 24916, 990);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 460630, 'Tom Clancy''s Rainbow Six: Siege', 23650, 2639);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 498566, 'Slots', 23100, 136);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 27471, 'Minecraft', 43139, 3075);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 491931, 'Escape From Tarkov', 38556, 1673);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 488190, 'Poker', 38080, 296);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 18122, 'World of Warcraft', 37808, 2237);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 511224, 'Apex Legends', 32876, 2968);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 513143, 'Teamfight Tactics', 25015, 988);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 460630, 'Tom Clancy''s Rainbow Six: Siege', 23453, 2654);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 498566, 'Slots', 23063, 137);
INSERT INTO public.game_viewers (date, id, name, viewers, channels) VALUES ('2020-03-22', 497057, 'Destiny 2', 22899, 1639);


--
-- TOC entry 2823 (class 0 OID 24727)
-- Dependencies: 203
-- Data for Name: steam_topselledgames; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Grand Theft Auto V', '13 Apr, 2015', '-50%', '34.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Age of Empires II: Definitive Edition', '14 Nov, 2019', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Pummel Party', '20 Sep, 2018', '', '28.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('RESIDENT EVIL 3', '2020/04/03', '', '129.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('DOOM Eternal', '19 Mar, 2020', '', '199.00');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Monster Hunter World: Iceborne', '9 Jan, 2020', '-25%', '67.49');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('CS:GO Prime Status Upgrade', '21 Aug, 2012', '', '55.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Counter-Strike: Condition Zero', '', '', '20.69');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('UNO', '3 Jan, 2017', '-70%', '8.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Motorsport Manager', '9 Nov, 2016', '', '63.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Assassin''s Creed® Odyssey', '5 Oct, 2018', '-67%', '59.39');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('MONSTER HUNTER: WORLD', '9 Aug, 2018', '-34%', '46.19');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Stardew Valley', '26 Feb, 2016', '', '24.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Grand Theft Auto V: Premium Online Edition', '', '-52%', '43.11');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Age of Empires II (2013)', '9 Apr, 2013', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Shadow of the Tomb Raider: Definitive Edition', '', '-82%', '58.73');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Don''t Starve Together', '21 Apr, 2016', '', '27.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Far Cry® 5', '26 Mar, 2018', '-75%', '44.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Tom Clancy''s Rainbow Six® Siege', '1 Dec, 2015', '-60%', '23.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('RESIDENT EVIL 2 / BIOHAZARD RE:2', '24 Jan, 2019', '-50%', '44.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('STAR WARS Jedi: Fallen Order™', '15 Nov, 2019', '-35%', '155.35');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Outward', '26 Mar, 2019', '-60%', '36.00');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Friday the 13th: The Game', '25 May, 2017', '-75%', '9.49');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Red Dead Redemption 2', '5 Dec, 2019', '-20%', '191.20');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Age of Empires II: Definitive Edition + Age of Empires II (2013)', '', '', '55.48');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('7 Days to Die', '13 Dec, 2013', '-66%', '15.29');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Euro Truck Simulator 2', '12 Oct, 2012', '', '39.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('RESIDENT EVIL 2 / BIOHAZARD RE:2 Deluxe Edition', '24 Jan, 2019', '-50%', '54.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Monster Hunter World: Iceborne Master Edition', '', '-21%', '102.69');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Counter-Strike Complete', '', '', '26.90');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Left 4 Dead 2', '16 Nov, 2009', '', '20.69');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Half-Life: Alyx

VR Only', '23 Mar, 2020', '-10%', '98.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Raft', '23 May, 2018', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('RIDE 3', '30 Nov, 2018', '-70%', '28.19');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Grand Theft Auto V - Criminal Enterprise Starter Pack', '14 Dec, 2017', '', '18.90');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Tabletop Simulator

VR Supported', '5 Jun, 2015', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Terraria', '16 May, 2011', '', '19.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Rocket League®', '6 Jul, 2015', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Counter-Strike: Source', '1 Nov, 2004', '', '20.69');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('State of Decay 2: Juggernaut Edition', '13 Mar, 2020', '', '79.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Age of Mythology: Extended Edition', '8 May, 2014', '', '55.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Ori and the Will of the Wisps', '10 Mar, 2020', '', '129.00');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Monster Hunter World: Iceborne Master Edition Digital Deluxe', '', '-18%', '122.69');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('The Forest

VR Supported', '30 Apr, 2018', '', '37.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Dead by Daylight', '14 Jun, 2016', '', '36.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('Arma 3', '12 Sep, 2013', '-70%', '20.99');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('PLAYERUNKNOWN''S BATTLEGROUNDS', '21 Dec, 2017', '', '56.00');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('New World', 'May 2020', '', '75.49');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('eFootball  PES 2020', '10 Sep, 2019', '', 'Free');
INSERT INTO public.steam_topselledgames (game_name, date_released, discount, price) VALUES ('NBA 2K20', '6 Sep, 2019', '', '119.00');


--
-- TOC entry 2824 (class 0 OID 24733)
-- Dependencies: 204
-- Data for Name: top_channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 140772558, 'baiano', 'League of Legends', 97530, 'pt', 191471, 4276679);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 124420521, 'lcs', 'League of Legends', 78003, 'en', 921383, 83624803);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 31239503, 'esl_csgo', 'Counter-Strike: Global Offensive', 51541, 'en', 3599930, 442676923);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 39276140, 'rubius', 'Just Chatting', 42135, 'es', 3593105, 43954065);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 23161357, 'lirik', 'Doom Eternal', 27025, 'en', 2560342, 335659323);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 181077473, 'gaules', 'Counter-Strike: Global Offensive', 19352, 'pt', 985496, 97395921);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 44445592, 'pokimane', 'Animal Crossing: New Horizons', 18124, 'en', 4048463, 98258740);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 213748641, 'csgomc_ru', 'Counter-Strike: Global Offensive', 15435, 'ru', 312518, 21082472);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 26946000, 'nightblue3', 'League of Legends', 13981, 'en', 2591490, 224754963);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 502491182, 's1mplelpdb', 'Counter-Strike: Global Offensive', 12145, 'en', 32, 307);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 103825127, 'hanryang1125', 'Animal Crossing: New Horizons', 10824, 'ko', 458971, 83480366);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 85397463, 'noway4u_sir', 'League of Legends', 9990, 'de', 333564, 46786068);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 27595376, 'bryonato', 'Doom Eternal', 9287, 'en', 19476, 248558);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 490523982, 'flashpoint', 'Counter-Strike: Global Offensive', 8386, 'en', 55968, 3165473);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 26513896, 'imls', 'League of Legends', 7947, 'en', 289619, 14607056);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 36138196, 'alexelcapo', 'Animal Crossing: New Horizons', 6599, 'es', 536550, 32485224);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 94269217, 'fengrush', 'Doom Eternal', 6353, 'en', 81670, 50161972);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 30904062, 'saddummy', 'Animal Crossing: New Horizons', 6240, 'ko', 558197, 68568277);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 7236692, 'dansgaming', 'Doom Eternal', 3690, 'en', 805460, 119182929);
INSERT INTO public.top_channels (date, streamer_id, streamer_name, game_name, viewers, language, followers, views) VALUES ('2020-03-22', 10397006, 'jericho', 'Doom Eternal', 1910, 'en', 1159245, 32442054);


-- Completed on 2020-03-22 20:08:31

--
-- PostgreSQL database dump complete
--

