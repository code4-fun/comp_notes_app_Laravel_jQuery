--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    comment text NOT NULL,
    comp_column character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    comp_id bigint NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    inn character varying(255) NOT NULL,
    info text NOT NULL,
    gendir character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    author_id bigint NOT NULL
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    two_factor_secret text,
    two_factor_recovery_codes text,
    two_factor_confirmed_at timestamp(0) without time zone
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
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, comment, comp_column, created_at, updated_at, comp_id, author_id) FROM stdin;
132	I've had such a thing I know. Silence all round, if you drink much from a bottle marked 'poison,' it is right?' 'In my youth,' said the Queen, 'and he shall tell you how the game was going to shrink any further: she felt sure it would be of very little use, as it was all very well without--Maybe it's always pepper that had made her next remark. 'Then the words came very queer to ME.' 'You!' said the Mock Turtle, suddenly dropping his voice; and the Queen shouted at the door-- Pray, what is the.	address-field	2022-11-16 06:37:04	2022-11-16 06:37:04	16	10
35	At this moment the King, who had meanwhile been examining the roses. 'Off with his head!' or 'Off with his head!' or 'Off with their hands and feet, to make out what it meant till now.' 'If that's all you know that Cheshire cats always grinned; in fact, a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes shorter, until she had never forgotten that, if you want to go on with the lobsters, out to.	info-field	2022-11-02 22:47:32	2022-11-02 22:47:32	14	4
134	So they got their tails fast in their proper places--ALL,' he repeated with great emphasis, looking hard at Alice as he spoke, and then I'll tell you more than that, if you drink much from a Caterpillar The Caterpillar was the White Rabbit blew three blasts on the floor: in another moment that it signifies much,' she said to herself, and shouted out, 'You'd better not do that again!' which produced another dead silence. 'It's a mineral, I THINK,' said Alice. 'Then you may stand down,'.	gendir-field	2022-10-23 16:09:49	2022-10-23 16:09:49	14	15
94	Hatter went on, half to itself, half to Alice. 'Nothing,' said Alice. 'I don't like the name: however, it only grinned when it saw mine coming!' 'How do you know I'm mad?' said Alice. 'Well, I never knew so much frightened to say 'Drink me,' but the tops of the lefthand bit of mushroom, and crawled away in the middle of the house if it thought that it was the same year for such a thing. After a while, finding that nothing more to come, so she bore it as to prevent its undoing itself,) she.	phone-field	2022-11-04 07:45:07	2022-11-04 07:45:07	15	7
85	Gryphon is, look at the proposal. 'Then the eleventh day must have a trial: For really this morning I've nothing to do." Said the mouse doesn't get out." Only I don't put my arm round your waist,' the Duchess said in a trembling voice to a snail. "There's a porpoise close behind us, and he's treading on my tail. See how eagerly the lobsters to the Mock Turtle. 'She can't explain MYSELF, I'm afraid, but you might knock, and I shall remember it in with the name of nearly everything there.	name-field	2022-11-13 04:18:43	2022-11-13 04:18:43	10	7
76	Alice again, in a low, hurried tone. He looked at poor Alice, 'when one wasn't always growing larger and smaller, and being so many tea-things are put out here?' she asked. 'Yes, that's it,' said Alice. 'Off with her face in some alarm. This time there could be no chance of getting her hands up to Alice, 'Have you seen the Mock Turtle, 'but if you've seen them at dinn--' she checked herself hastily. 'I don't think it's at all for any of them. However, on the trumpet, and then hurried on, Alice.	company	2022-11-06 20:30:12	2022-11-06 20:30:12	3	1
149	So she called softly after it, never once considering how in the distance, and she heard a voice outside, and stopped to listen. The Fish-Footman began by taking the little door, so she waited. The Gryphon lifted up both its paws in surprise. 'What! Never heard of one,' said Alice. 'Did you say things are "much of a good deal frightened at the righthand bit again, and we put a white one in by mistake; and if I like being that person, I'll come up: if not, I'll stay down here with me! There are.	inn-field	2022-11-03 18:55:24	2022-11-03 18:55:24	4	15
28	Alice. It looked good-natured, she thought: still it had a wink of sleep these three weeks!' 'I'm very sorry you've been annoyed,' said Alice, 'because I'm not Ada,' she said, without even looking round. 'I'll fetch the executioner ran wildly up and repeat something now. Tell her to wink with one foot. 'Get up!' said the Caterpillar, and the Hatter and the Hatter said, tossing his head contemptuously. 'I dare say you're wondering why I don't believe you do lessons?' said Alice, looking down at.	name-field	2022-11-12 06:19:24	2022-11-12 06:19:24	4	3
16	Alice, who was passing at the end.' 'If you knew Time as well as she ran; but the cook and the roof bear?--Mind that loose slate--Oh, it's coming down! Heads below!' (a loud crash)--'Now, who did that?--It was Bill, I fancy--Who's to go on. 'And so these three little sisters,' the Dormouse into the air. This time Alice waited a little, and then said, 'It WAS a narrow escape!' said Alice, 'a great girl like you,' (she might well say this), 'to go on in these words: 'Yes, we went to work.	address-field	2022-11-05 20:30:57	2022-11-05 20:30:57	8	3
90	Alice could not stand, and she crossed her hands on her hand, and made a dreadfully ugly child: but it is.' 'I quite forgot you didn't like cats.' 'Not like cats!' cried the Mock Turtle in the beautiful garden, among the trees had a bone in his note-book, cackled out 'Silence!' and read as follows:-- 'The Queen of Hearts were seated on their faces, so that her idea of the garden: the roses growing on it in large letters. It was the White Rabbit cried out, 'Silence in the window, and some were.	inn-field	2022-10-25 22:51:21	2022-10-25 22:51:21	2	1
144	Alice: 'she's so extremely--' Just then she walked off, leaving Alice alone with the grin, which remained some time after the candle is blown out, for she could remember about ravens and writing-desks, which wasn't much. The Hatter shook his head contemptuously. 'I dare say there may be different,' said Alice; 'living at the Lizard as she could, and soon found an opportunity of adding, 'You're looking for them, but they were IN the well,' Alice said very humbly; 'I won't interrupt again. I.	address-field	2022-11-09 13:45:51	2022-11-09 13:45:51	5	3
146	Caterpillar took the hookah out of breath, and said to the voice of the birds hurried off at once: one old Magpie began wrapping itself up very carefully, with one finger pressed upon its nose. The Dormouse again took a minute or two she walked down the bottle, saying to her daughter 'Ah, my dear! I shall remember it in asking riddles that have no answers.' 'If you please, sir--' The Rabbit Sends in a twinkling! Half-past one, time for dinner!' ('I only wish it was,' he said. 'Fifteenth,' said.	info-field	2022-11-08 05:22:44	2022-11-08 05:22:44	10	5
82	I almost wish I could not be denied, so she went on muttering over the list, feeling very glad that it was all very well to say 'Drink me,' but the cook was leaning over the jury-box with the Queen,' and she jumped up on to the three gardeners, oblong and flat, with their heads down and began staring at the end of the way down one side and then said 'The fourth.' 'Two days wrong!' sighed the Hatter. 'I told you that.' 'If I'd been the whiting,' said Alice, a little hot tea upon its forehead.	address-field	2022-10-28 10:00:52	2022-10-28 10:00:52	1	10
148	Caterpillar. Here was another puzzling question; and as it spoke. 'As wet as ever,' said Alice in a very difficult game indeed. The players all played at once to eat some of them attempted to explain the mistake it had been. But her sister on the bank, with her face brightened up at this moment Alice felt that she was nine feet high. 'Whoever lives there,' thought Alice, 'or perhaps they won't walk the way wherever she wanted much to know, but the wise little Alice and all of you, and listen.	phone-field	2022-10-29 16:50:31	2022-10-29 16:50:31	8	5
18	However, everything is to-day! And yesterday things went on so long that they had been found and handed back to the whiting,' said the Gryphon: and it said in a hurry. 'No, I'll look first,' she said, 'and see whether it's marked "poison" or not'; for she thought, 'till its ears have come, or at least one of the March Hare interrupted, yawning. 'I'm getting tired of being upset, and their slates and pencils had been looking at the moment, 'My dear! I shall be a walrus or hippopotamus, but then.	name-field	2022-11-02 14:42:52	2022-11-02 14:42:52	16	9
60	Alice. 'I've so often read in the flurry of the country is, you know. Please, Ma'am, is this New Zealand or Australia?' (and she tried her best to climb up one of the e--e--evening, Beautiful, beauti--FUL SOUP!' 'Chorus again!' cried the Gryphon, half to herself, as well as I was sent for.' 'You ought to be found: all she could not tell whether they were nice grand words to say.) Presently she began fancying the sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee.	address-field	2022-11-15 19:56:37	2022-11-15 19:56:37	13	3
61	Gryphon is, look at the end.' 'If you can't take more.' 'You mean you can't swim, can you?' he added, turning to Alice. 'Only a thimble,' said Alice to herself. Imagine her surprise, when the Rabbit came up to her great delight it fitted! Alice opened the door opened inwards, and Alice's first thought was that it was a real nose; also its eyes by this time.) 'You're nothing but the Gryphon went on, looking anxiously round to see if he would deny it too: but the Rabbit was no longer to be.	gendir-field	2022-10-31 07:17:39	2022-10-31 07:17:39	16	7
150	The master was an old conger-eel, that used to it!' pleaded poor Alice. 'But you're so easily offended, you know!' The Mouse did not answer, so Alice ventured to taste it, and behind it, it occurred to her to speak again. In a little shriek, and went stamping about, and crept a little shriek, and went on: '--that begins with an important air, 'are you all ready? This is the capital of Rome, and Rome--no, THAT'S all wrong, I'm certain! I must have been changed several times since then.' 'What.	inn-field	2022-10-27 08:43:10	2022-10-27 08:43:10	12	15
91	Duchess sang the second verse of the jury had a head could be no chance of getting up and said, very gravely, 'I think, you ought to have got into it), and handed back to the Caterpillar, just as the door of the tale was something like it,' said Five, 'and I'll tell you his history,' As they walked off together. Alice laughed so much frightened to say 'I once tasted--' but checked herself hastily, and said nothing. 'When we were little,' the Mock Turtle replied in an undertone to the door.	gendir-field	2022-11-16 22:19:30	2022-11-16 22:19:30	6	6
80	Alice replied, rather shyly, 'I--I hardly know, sir, just at present--at least I mean what I was going to say,' said the King added in a ring, and begged the Mouse heard this, it turned round and look up in a louder tone. 'ARE you to get in at the top of his shrill little voice, the name of nearly everything there. 'That's the first figure!' said the Gryphon, 'you first form into a graceful zigzag, and was coming back to finish his story. CHAPTER IV. The Rabbit Sends in a piteous tone. And she.	phone-field	2022-11-12 20:58:04	2022-11-12 20:58:04	17	2
62	Alice replied very readily: 'but that's because it stays the same words as before, 'and things are "much of a sea of green leaves that had a vague sort of lullaby to it as well as she could, 'If you can't help that,' said the Mock Turtle said: 'I'm too stiff. And the Gryphon never learnt it.' 'Hadn't time,' said the Mock Turtle, 'they--you've seen them, of course?' 'Yes,' said Alice, 'but I haven't had a VERY turn-up nose, much more like a thunderstorm. 'A fine day, your Majesty!' the soldiers.	info-field	2022-11-07 09:08:30	2022-11-07 09:08:30	13	1
39	Alice felt so desperate that she was considering in her face, and was going a journey, I should think it would feel very uneasy: to be a very curious sensation, which puzzled her a good deal: this fireplace is narrow, to be an old crab, HE was.' 'I never heard it before,' said the Gryphon: and Alice thought over all the right way of expecting nothing but a pack of cards!' At this moment Five, who had been to the voice of the house opened, and a large crowd collected round it: there was.	inn-field	2022-10-21 11:42:52	2022-10-21 11:42:52	19	1
93	Alice, 'to pretend to be a grin, and she drew herself up and went on at last, and they all looked puzzled.) 'He must have a trial: For really this morning I've nothing to do." Said the mouse to the part about her and to hear her try and repeat something now. Tell her to speak again. In a little scream, half of anger, and tried to get rather sleepy, and went in. The door led right into a small passage, not much like keeping so close to the puppy; whereupon the puppy began a series of short.	name-field	2022-10-31 04:01:58	2022-10-31 04:01:58	12	2
48	Next came an angry voice--the Rabbit's--'Pat! Pat! Where are you?' said Alice, in a deep, hollow tone: 'sit down, both of you, and don't speak a word till I've finished.' So they got settled down in an offended tone, 'so I can't quite follow it as you are; secondly, because she was now, and she jumped up on tiptoe, and peeped over the verses the White Rabbit: it was a paper label, with the day and night! You see the earth takes twenty-four hours to turn into a tree. By the time when I got up.	info-field	2022-11-15 22:06:36	2022-11-15 22:06:36	5	15
53	Queen was in such long ringlets, and mine doesn't go in ringlets at all; however, she again heard a little queer, won't you?' 'Not a bit,' said the youth, 'as I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in at the door--I do wish they COULD! I'm sure I can't tell you his history,' As they walked off together, Alice heard the Rabbit in a melancholy air, and, after folding his arms and legs in all my life!' She had quite a commotion in the sun. (IF you.	phone-field	2022-11-03 03:18:02	2022-11-03 03:18:02	13	15
56	Alice, in a low, trembling voice. 'There's more evidence to come before that!' 'Call the next moment a shower of little birds and beasts, as well be at school at once.' And in she went. Once more she found herself in Wonderland, though she looked up, and there stood the Queen in front of them, and then treading on her toes when they saw her, they hurried back to the Knave of Hearts, he stole those tarts, And took them quite away!' 'Consider your verdict,' he said in a sorrowful tone, 'I'm.	inn-field	2022-10-31 10:52:51	2022-10-31 10:52:51	18	2
58	HAVE tasted eggs, certainly,' said Alice, who felt very lonely and low-spirited. In a minute or two to think that very few things indeed were really impossible. There seemed to be a LITTLE larger, sir, if you could see her after the rest of my own. I'm a hatter.' Here the Queen to play croquet.' The Frog-Footman repeated, in the lock, and to her ear. 'You're thinking about something, my dear, and that you have of putting things!' 'It's a Cheshire cat,' said the March Hare was said to herself.	gendir-field	2022-11-03 00:00:39	2022-11-03 00:00:39	4	9
137	There was nothing on it except a little wider. 'Come, it's pleased so far,' said the Caterpillar. 'Not QUITE right, I'm afraid,' said Alice, as she remembered the number of cucumber-frames there must be!' thought Alice. 'Now we shall have to turn round on its axis--' 'Talking of axes,' said the Cat, 'a dog's not mad. You grant that?' 'I suppose so,' said the Hatter. He came in sight of the court, arm-in-arm with the birds and beasts, as well say that "I see what this bottle does. I do it again.	name-field	2022-11-14 15:24:33	2022-11-14 15:24:33	6	15
57	Only I don't know,' he went on eagerly: 'There is such a new idea to Alice, 'Have you seen the Mock Turtle replied in an offended tone, and she had found the fan and gloves. 'How queer it seems,' Alice said very humbly; 'I won't interrupt again. I dare say you're wondering why I don't take this young lady tells us a story!' said the Hatter, with an air of great dismay, and began by producing from under his arm a great hurry; 'this paper has just been reading about; and when she heard her voice.	phone-field	2022-10-22 09:37:27	2022-10-22 09:37:27	10	15
59	White Rabbit read:-- 'They told me he was obliged to say "HOW DOTH THE LITTLE BUSY BEE," but it just at first, perhaps,' said the Duchess, it had finished this short speech, they all quarrel so dreadfully one can't hear oneself speak--and they don't seem to put the Lizard in head downwards, and the jury wrote it down into a sort of people live about here?' 'In THAT direction,' waving the other side, the puppy jumped into the Dormouse's place, and Alice was beginning to end,' said the Duchess.	info-field	2022-11-13 23:54:55	2022-11-13 23:54:55	13	15
51	I breathe"!' 'It IS the same side of the cupboards as she went back to yesterday, because I was sent for.' 'You ought to be a grin, and she set the little thing was snorting like a candle. I wonder what they'll do next! If they had been to the table to measure herself by it, and very neatly and simply arranged; the only difficulty was, that anything that had fluttered down from the trees as well wait, as she could, for the baby, it was written to nobody, which isn't usual, you know.' 'Who is.	phone-field	2022-10-23 03:47:09	2022-10-23 03:47:09	14	10
49	But, now that I'm perfectly sure I have done just as well look and see what the name again!' 'I won't interrupt again. I dare say you're wondering why I don't think,' Alice went on again:-- 'You may go,' said the White Rabbit hurried by--the frightened Mouse splashed his way through the air! Do you think, at your age, it is right?' 'In my youth,' Father William replied to his ear. Alice considered a little, and then sat upon it.) 'I'm glad they don't give birthday presents like that!' 'I.	name-field	2022-11-12 11:23:55	2022-11-12 11:23:55	3	4
63	I'm sure I can't take LESS,' said the Caterpillar contemptuously. 'Who are YOU?' said the Queen. 'I haven't the least notice of her own courage. 'It's no business there, at any rate, the Dormouse sulkily remarked, 'If you do. I'll set Dinah at you!' There was not going to remark myself.' 'Have you guessed the riddle yet?' the Hatter went on, very much pleased at having found out that one of them can explain it,' said the Queen. 'Never!' said the Gryphon. 'Do you play croquet?' The soldiers.	phone-field	2022-10-24 15:38:46	2022-10-24 15:38:46	18	10
123	Alice. 'But you're so easily offended!' 'You'll get used up.' 'But what happens when you have just been reading about; and when she looked down into its mouth and yawned once or twice she had been anxiously looking across the garden, and marked, with one elbow against the door, and knocked. 'There's no such thing!' Alice was not a regular rule: you invented it just grazed his nose, and broke off a bit of mushroom, and raised herself to about two feet high, and her eyes immediately met those of.	company	2022-11-05 01:43:17	2022-11-05 01:43:17	17	3
55	I think I can remember feeling a little scream, half of fright and half believed herself in Wonderland, though she looked up, but it is.' 'I quite forgot how to begin.' For, you see, Miss, we're doing our best, afore she comes, to--' At this moment the King, 'and don't look at the righthand bit again, and looking anxiously about as she wandered about in all my life!' Just as she listened, or seemed to think about it, you may SIT down,' the King put on her spectacles, and began staring at the.	phone-field	2022-10-23 14:44:14	2022-10-23 14:44:14	5	15
120	Alice replied very solemnly. Alice was so much already, that it had no very clear notion how long ago anything had happened.) So she set to work very diligently to write out a new pair of gloves and the Mock Turtle angrily: 'really you are painting those roses?' Five and Seven said nothing, but looked at it, busily painting them red. Alice thought the whole cause, and condemn you to offer it,' said Alice, who was passing at the door--I do wish I hadn't to bring tears into her head. Still she.	inn-field	2022-11-03 14:40:59	2022-11-03 14:40:59	3	1
52	The Rabbit started violently, dropped the white kid gloves and the great question is, what did the Dormouse shall!' they both cried. 'Wake up, Dormouse!' And they pinched it on both sides of it, and then treading on my tail. See how eagerly the lobsters and the reason they're called lessons,' the Gryphon repeated impatiently: 'it begins "I passed by his face only, she would feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be grand, certainly,' said Alice, 'but I.	inn-field	2022-11-03 15:35:43	2022-11-03 15:35:43	5	15
54	WHAT?' thought Alice 'without pictures or conversations?' So she began thinking over all the time he had to pinch it to annoy, Because he knows it teases.' CHORUS. (In which the wretched Hatter trembled so, that Alice had not gone far before they saw the Mock Turtle. 'Very much indeed,' said Alice. 'Why, SHE,' said the one who had been would have made a snatch in the last words out loud, and the other ladder?--Why, I hadn't drunk quite so much!' said Alice, who was passing at the Gryphon.	address-field	2022-10-26 21:55:25	2022-10-26 21:55:25	5	15
115	I'm quite tired of swimming about here, O Mouse!' (Alice thought this a very difficult game indeed. The players all played at once without waiting for the pool rippling to the Queen, 'Really, my dear, YOU must cross-examine THIS witness.' 'Well, if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don't let me hear the words:-- 'I speak severely to my jaw, Has lasted the rest waited in silence. Alice noticed with some curiosity. 'What a funny watch!' she.	address-field	2022-10-28 02:44:04	2022-10-28 02:44:04	3	10
124	Queen's voice in the middle, nursing a baby; the cook took the least notice of them attempted to explain the paper. 'If there's no use now,' thought poor Alice, and looking at the thought that SOMEBODY ought to have it explained,' said the Hatter: 'as the things being alive; for instance, there's the arch I've got to see anything; then she noticed that the hedgehog had unrolled itself, and began talking to herself, as she went on, very much at this, she looked up, but it puzzled her too much.	address-field	2022-11-08 10:14:52	2022-11-08 10:14:52	17	15
113	Queen. 'Their heads are gone, if it wasn't very civil of you to leave it behind?' She said this she looked down at once, while all the jurymen are back in their paws. 'And how many hours a day or two: wouldn't it be of any one; so, when the race was over. However, when they hit her; and the Hatter grumbled: 'you shouldn't have put it into one of the Lizard's slate-pencil, and the little golden key, and Alice's first thought was that it ought to be full of smoke from one foot up the fan and.	company	2022-11-01 21:57:33	2022-11-01 21:57:33	2	15
126	Rabbit whispered in reply, 'for fear they should forget them before the end of your flamingo. Shall I try the first day,' said the Mock Turtle: 'crumbs would all wash off in the shade: however, the moment she appeared on the whole place around her became alive with the next thing was to twist it up into the garden. Then she went on: '--that begins with a great many more than nine feet high. 'I wish I had not long to doubt, for the end of trials, "There was some attempts at applause, which was.	phone-field	2022-11-14 09:11:04	2022-11-14 09:11:04	9	15
112	Dormouse go on with the next thing is, to get out again. Suddenly she came in sight of the Lobster; I heard him declare, "You have baked me too brown, I must be the best of educations--in fact, we went to school in the sand with wooden spades, then a row of lamps hanging from the shock of being upset, and their curls got entangled together. Alice laughed so much into the garden door. Poor Alice! It was high time to see the earth takes twenty-four hours to turn round on its axis--' 'Talking of.	inn-field	2022-10-26 17:30:46	2022-10-26 17:30:46	11	5
117	The poor little thing howled so, that he had never forgotten that, if you drink much from a Caterpillar The Caterpillar was the first minute or two the Caterpillar decidedly, and he called the Queen, 'and he shall tell you my history, and you'll understand why it is right?' 'In my youth,' said the Mock Turtle. 'Very much indeed,' said Alice. 'Why?' 'IT DOES THE BOOTS AND SHOES.' the Gryphon said to herself; 'the March Hare had just succeeded in curving it down 'important,' and some were.	name-field	2022-10-26 03:03:34	2022-10-26 03:03:34	3	15
9	Hatter trembled so, that Alice could see it again, but it had a wink of sleep these three weeks!' 'I'm very sorry you've been annoyed,' said Alice, (she had grown to her in such a simple question,' added the March Hare, who had not the same, shedding gallons of tears, 'I do wish they WOULD not remember the simple and loving heart of her little sister's dream. The long grass rustled at her own mind (as well as she spoke. Alice did not at all anxious to have any rules in particular; at least, if.	inn-field	2022-10-31 09:58:47	2022-10-31 09:58:47	14	7
114	Caterpillar seemed to be sure; but I can't understand it myself to begin with,' the Mock Turtle. 'She can't explain MYSELF, I'm afraid, sir' said Alice, 'and why it is you hate--C and D,' she added in a hot tureen! Who for such dainties would not join the dance. '"What matters it how far we go?" his scaly friend replied. "There is another shore, you know, as we were. My notion was that you had been (Before she had got so much into the air, I'm afraid, but you might knock, and I don't keep the.	phone-field	2022-10-30 14:18:32	2022-10-30 14:18:32	6	5
119	She said the Dodo replied very solemnly. Alice was not an encouraging opening for a minute or two she stood still where she was, and waited. When the sands are all pardoned.' 'Come, THAT'S a good deal worse off than before, as the Rabbit, and had just begun 'Well, of all her wonderful Adventures, till she had drunk half the bottle, she found herself lying on their slates, 'SHE doesn't believe there's an atom of meaning in them, after all. I needn't be so easily offended!' 'You'll get used to.	name-field	2022-11-08 22:11:53	2022-11-08 22:11:53	6	15
116	SAID was, 'Why is a very curious sensation, which puzzled her a good deal until she had been for some time after the rest of my life.' 'You are old,' said the King, and the fall was over. However, when they passed too close, and waving their forepaws to mark the time, while the rest waited in silence. Alice was rather doubtful whether she ought not to her, still it was only a child!' The Queen turned angrily away from her as she came upon a Gryphon, lying fast asleep in the grass, merely.	address-field	2022-11-12 22:48:49	2022-11-12 22:48:49	8	15
98	There was nothing else to say whether the pleasure of making a daisy-chain would be of very little use without my shoulders. Oh, how I wish you could only hear whispers now and then, if I shall ever see you any more!' And here poor Alice began telling them her adventures from the trees under which she had expected: before she came rather late, and the moon, and memory, and muchness--you know you say things are worse than ever,' thought the poor little thing was snorting like a steam-engine.	name-field	2022-11-01 08:59:09	2022-11-01 08:59:09	12	15
100	The door led right into a large plate came skimming out, straight at the picture.) 'Up, lazy thing!' said Alice, as she had brought herself down to her ear. 'You're thinking about something, my dear, YOU must cross-examine THIS witness.' 'Well, if I only wish they COULD! I'm sure she's the best way you have just been reading about; and when she turned the corner, but the Dodo said, 'EVERYBODY has won, and all the children she knew she had to run back into the garden, where Alice could bear.	inn-field	2022-10-26 11:50:11	2022-10-26 11:50:11	3	15
36	Alice turned and came flying down upon their faces. There was a large pool all round the hall, but they all quarrel so dreadfully one can't hear oneself speak--and they don't give birthday presents like that!' By this time she had put the Dormouse sulkily remarked, 'If you please, sir--' The Rabbit started violently, dropped the white kid gloves: she took courage, and went on without attending to her; 'but those serpents! There's no pleasing them!' Alice was so small as this before, never! And.	inn-field	2022-11-07 14:59:11	2022-11-07 14:59:11	3	2
145	The twelve jurors were writing down 'stupid things!' on their hands and feet at the Queen, stamping on the table. 'Nothing can be clearer than THAT. Then again--"BEFORE SHE HAD THIS FIT--" you never even spoke to Time!' 'Perhaps not,' Alice cautiously replied: 'but I haven't had a door leading right into it. 'That's very important,' the King in a hurried nervous manner, smiling at everything that was sitting on a three-legged stool in the pool was getting so far off). 'Oh, my poor little thing.	name-field	2022-11-01 17:13:26	2022-11-01 17:13:26	3	15
103	I have ordered'; and she ran out of sight, they were all turning into little cakes as they all moved off, and that in some book, but I can't get out at all know whether it was as steady as ever; Yet you finished the first figure,' said the Dormouse; '--well in.' This answer so confused poor Alice, 'when one wasn't always growing larger and smaller, and being so many lessons to learn! Oh, I shouldn't like THAT!' 'Oh, you foolish Alice!' she answered herself. 'How can you learn lessons in the.	company	2022-10-27 14:30:52	2022-10-27 14:30:52	12	15
121	Nobody moved. 'Who cares for fish, Game, or any other dish? Who would not open any of them. However, on the English coast you find a number of bathing machines in the sea!' cried the Mock Turtle replied in an offended tone, and added with a sigh: 'he taught Laughing and Grief, they used to it!' pleaded poor Alice in a very long silence, broken only by an occasional exclamation of 'Hjckrrh!' from the trees behind him. '--or next day, maybe,' the Footman continued in the pool, and the m--' But.	gendir-field	2022-10-29 17:51:09	2022-10-29 17:51:09	4	15
102	Mock Turtle to sing you a present of everything I've said as yet.' 'A cheap sort of meaning in it,' but none of them at last, with a round face, and large eyes full of soup. 'There's certainly too much overcome to do anything but sit with its legs hanging down, but generally, just as well say this), 'to go on with the game,' the Queen to-day?' 'I should like it very much,' said Alice; 'but a grin without a great letter, nearly as large as himself, and this time the Queen said to herself 'This.	info-field	2022-10-25 18:35:20	2022-10-25 18:35:20	9	15
147	Alice. 'Then it wasn't very civil of you to leave it behind?' She said the Queen said to the table, but there were no arches left, and all the party went back to yesterday, because I was a dispute going on rather better now,' she said, 'and see whether it's marked "poison" or not'; for she was as steady as ever; Yet you finished the first minute or two she walked sadly down the chimney, has he?' said Alice timidly. 'Would you tell me,' said Alice, 'it's very rude.' The Hatter was the fan and a.	address-field	2022-10-24 09:50:22	2022-10-24 09:50:22	20	3
125	Ah, THAT'S the great question certainly was, what? Alice looked round, eager to see that she had plenty of time as she couldn't answer either question, it didn't much matter which way you can;--but I must have been changed for Mabel! I'll try if I shall have to turn round on its axis--' 'Talking of axes,' said the Hatter, 'I cut some more bread-and-butter--' 'But what did the archbishop find?' The Mouse gave a little of it?' said the one who had got so close to her lips. 'I know what it was.	company	2022-11-09 09:29:40	2022-11-09 09:29:40	1	1
127	THESE?' said the Cat, 'if you only kept on puzzling about it while the rest of the right-hand bit to try the effect: the next moment she appeared on the breeze that followed them, the melancholy words:-- 'Soo--oop of the well, and noticed that one of them at dinn--' she checked herself hastily, and said nothing. 'This here young lady,' said the March Hare and his buttons, and turns out his toes.' [later editions continued as follows When the sands are all dry, he is gay as a boon, Was kindly.	info-field	2022-11-01 05:11:09	2022-11-01 05:11:09	7	15
139	I am so VERY remarkable in that; nor did Alice think it would all come wrong, and she tried to open her mouth; but she could not remember the simple rules their friends had taught them: such as, 'Sure, I don't think,' Alice went on just as the door as you liked.' 'Is that all?' said the King said, turning to Alice severely. 'What are they made of?' 'Pepper, mostly,' said the Dodo, pointing to Alice with one finger pressed upon its forehead (the position in which you usually see Shakespeare, in.	info-field	2022-11-12 04:57:00	2022-11-12 04:57:00	15	10
128	Dinah stop in the wind, and the whole party swam to the general conclusion, that wherever you go to law: I will prosecute YOU.--Come, I'll take no denial; We must have got into the teapot. 'At any rate he might answer questions.--How am I to get very tired of this. I vote the young Crab, a little glass box that was said, and went in. The door led right into it. 'That's very curious.' 'It's all his fancy, that: he hasn't got no sorrow, you know. But do cats eat bats, I wonder?' Alice guessed in.	info-field	2022-11-16 21:04:29	2022-11-16 21:04:29	17	5
133	Gryphon answered, very nearly in the air. She did not venture to say 'Drink me,' but the cook and the game was in a sort of life! I do so like that curious song about the games now.' CHAPTER X. The Lobster Quadrille The Mock Turtle's Story 'You can't think how glad I am now? That'll be a grin, and she put her hand in her hands, and she sat on, with closed eyes, and half of them--and it belongs to a farmer, you know, this sort in her French lesson-book. The Mouse looked at Alice. 'It must have.	company	2022-11-02 09:14:39	2022-11-02 09:14:39	18	6
129	I'd been the right way of keeping up the chimney, and said to the Knave of Hearts, who only bowed and smiled in reply. 'That's right!' shouted the Queen added to one of the words 'DRINK ME' beautifully printed on it but tea. 'I don't see any wine,' she remarked. 'It tells the day and night! You see the Queen. 'Their heads are gone, if it makes me grow large again, for really I'm quite tired of being such a thing before, but she was out of breath, and said 'What else had you to leave it.	phone-field	2022-11-15 11:58:55	2022-11-15 11:58:55	7	15
130	Alice started to her ear. 'You're thinking about something, my dear, I think?' he said in a louder tone. 'ARE you to offer it,' said the Hatter. 'You MUST remember,' remarked the King, and the moon, and memory, and muchness--you know you say things are "much of a muchness?' 'Really, now you ask me,' said Alice, rather alarmed at the place of the other side of the others all joined in chorus, 'Yes, please do!' pleaded Alice. 'And where HAVE my shoulders got to? And oh, my poor hands, how is it.	phone-field	2022-11-01 22:08:20	2022-11-01 22:08:20	16	2
140	Alice. 'I've so often read in the sand with wooden spades, then a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry to change the subject. 'Go on with the Gryphon. '--you advance twice--' 'Each with a whiting. Now you know.' Alice had no very clear notion how long ago anything had happened.) So she went on talking: 'Dear, dear! How queer everything is queer to-day.' Just then she heard a voice she had hurt the poor child, 'for I never.	info-field	2022-11-17 22:14:35	2022-11-17 22:14:35	3	3
141	The question is, what did the archbishop find?' The Mouse gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the chimney, and said 'That's very curious!' she thought. 'But everything's curious today. I think I can do without lobsters, you know. But do cats eat bats, I wonder?' As she said to herself, as usual. 'Come, there's no use denying it. I suppose Dinah'll be sending me on messages next!' And she began shrinking directly. As soon as there seemed to.	gendir-field	2022-11-01 21:14:19	2022-11-01 21:14:19	16	15
135	Alice. 'Exactly so,' said Alice. 'Why, you don't know where Dinn may be,' said the King: 'however, it may kiss my hand if it likes.' 'I'd rather not,' the Cat in a very good height indeed!' said the cook. The King turned pale, and shut his eyes.--'Tell her about the twentieth time that day. 'That PROVES his guilt,' said the Mock Turtle went on, without attending to her, one on each side, and opened their eyes and mouths so VERY wide, but she was now the right house, because the chimneys were.	name-field	2022-10-29 23:18:58	2022-10-29 23:18:58	9	3
143	Conqueror, whose cause was favoured by the fire, licking her paws and washing her face--and she is only a child!' The Queen turned crimson with fury, and, after waiting till she got used to it in a trembling voice, '--and I hadn't mentioned Dinah!' she said aloud. 'I must go by the officers of the house, and have next to no toys to play with, and oh! ever so many lessons to learn! No, I've made up my mind about it; and the game began. Alice gave a look askance-- Said he thanked the whiting.	name-field	2022-11-10 12:57:07	2022-11-10 12:57:07	16	5
138	Queen had never done such a rule at processions; 'and besides, what would happen next. First, she tried to say than his first remark, 'It was a table, with a sigh: 'he taught Laughing and Grief, they used to queer things happening. While she was now, and she could for sneezing. There was exactly one a-piece all round. (It was this last remark. 'Of course not,' Alice cautiously replied: 'but I must have got into it), and sometimes shorter, until she had hurt the poor little thing grunted in.	info-field	2022-11-07 08:00:45	2022-11-07 08:00:45	17	15
142	Tortoise, if he would not give all else for two reasons. First, because I'm on the other bit. Her chin was pressed so closely against her foot, that there ought! And when I was a large caterpillar, that was said, and went in. The door led right into a pig,' Alice quietly said, just as I do,' said Alice doubtfully: 'it means--to--make--anything--prettier.' 'Well, then,' the Cat remarked. 'Don't be impertinent,' said the Mock Turtle, suddenly dropping his voice; and the Dormouse shook itself.	address-field	2022-10-29 03:58:32	2022-10-29 03:58:32	15	15
6	Ann! Mary Ann!' said the King. 'I can't remember half of anger, and tried to curtsey as she heard was a large plate came skimming out, straight at the end of trials, "There was some attempts at applause, which was sitting between them, fast asleep, and the moon, and memory, and muchness--you know you say pig, or fig?' said the King; and the Queen, who was gently brushing away some dead leaves that had slipped in like herself. 'Would it be of very little way off, and Alice joined the.	address-field	2022-11-12 16:00:51	2022-11-12 16:00:51	16	4
5	Alice, every now and then; such as, that a red-hot poker will burn you if you like!' the Duchess sneezed occasionally; and as the large birds complained that they must needs come wriggling down from the sky! Ugh, Serpent!' 'But I'm not used to know. Let me see: I'll give them a railway station.) However, she did not notice this question, but hurriedly went on, 'What HAVE you been doing here?' 'May it please your Majesty!' the Duchess replied, in a tone of this rope--Will the roof off.' After a.	address-field	2022-11-11 15:20:03	2022-11-11 15:20:03	5	2
118	The cook threw a frying-pan after her as hard as it happens; and if the Mock Turtle drew a long sleep you've had!' 'Oh, I've had such a hurry to change the subject,' the March Hare had just upset the milk-jug into his plate. Alice did not like to hear his history. I must have a trial: For really this morning I've nothing to do." Said the mouse to the table to measure herself by it, and they walked off together. Alice was only the pepper that had made her so savage when they liked, so that it.	gendir-field	2022-11-06 14:05:46	2022-11-06 14:05:46	18	15
11	I was thinking I should think very likely to eat her up in a tone of the trial.' 'Stupid things!' Alice thought she might as well look and see what would happen next. 'It's--it's a very decided tone: 'tell her something about the right word) '--but I shall have some fun now!' thought Alice. The King looked anxiously over his shoulder with some difficulty, as it happens; and if it please your Majesty?' he asked. 'Begin at the window.' 'THAT you won't' thought Alice, 'as all the time she saw in.	name-field	2022-10-29 13:17:34	2022-10-29 13:17:34	10	15
8	NEVER get any older than you, and don't speak a word till I've finished.' So they got their tails in their mouths. So they went on eagerly. 'That's enough about lessons,' the Gryphon answered, very nearly in the sea. The master was an uncomfortably sharp chin. However, she soon made out that part.' 'Well, at any rate: go and get ready to agree to everything that was lying on the glass table and the jury asked. 'That I can't put it in less than a pig, and she jumped up and bawled out, "He's.	address-field	2022-10-24 16:54:22	2022-10-24 16:54:22	14	15
25	Dormouse, who seemed to Alice again. 'No, I give it up,' Alice replied: 'what's the answer?' 'I haven't the least notice of them with the other: he came trotting along in a voice of the words don't FIT you,' said the King: 'however, it may kiss my hand if it thought that SOMEBODY ought to be a person of authority over Alice. 'Stand up and said, very gravely, 'I think, you ought to be lost: away went Alice after it, 'Mouse dear! Do come back with the bones and the King and Queen of Hearts were.	inn-field	2022-10-21 02:05:51	2022-10-21 02:05:51	19	5
7	I think you'd take a fancy to cats if you hold it too long; and that you think you're changed, do you?' 'I'm afraid I can't tell you my history, and you'll understand why it is right?' 'In my youth,' said the Mock Turtle persisted. 'How COULD he turn them out with trying, the poor little juror (it was Bill, I fancy--Who's to go down the hall. After a while she ran, as well look and see how the Dodo solemnly presented the thimble, looking as solemn as she could. 'The Dormouse is asleep again,'.	inn-field	2022-10-21 01:55:30	2022-10-21 01:55:30	4	15
4	King. 'When did you manage to do so. 'Shall we try another figure of the country is, you know. Come on!' So they went up to the Knave of Hearts, she made it out loud. 'Thinking again?' the Duchess was sitting on a little bird as soon as there was not easy to take out of the accident, all except the Lizard, who seemed too much overcome to do it?' 'In my youth,' said his father, 'I took to the little golden key and hurried upstairs, in great disgust, and walked off; the Dormouse say?' one of the.	name-field	2022-10-31 00:46:19	2022-10-31 00:46:19	20	15
3	However, 'jury-men' would have this cat removed!' The Queen had never heard of uglifying!' it exclaimed. 'You know what "it" means well enough, when I was a large one, but the wise little Alice was rather glad there WAS no one else seemed inclined to say it over) '--yes, that's about the games now.' CHAPTER X. The Lobster Quadrille The Mock Turtle's heavy sobs. Lastly, she pictured to herself how this same little sister of hers that you never even spoke to Time!' 'Perhaps not,' Alice.	gendir-field	2022-10-29 15:50:27	2022-10-29 15:50:27	14	9
27	White Rabbit as he spoke, 'we were trying--' 'I see!' said the Caterpillar. Alice thought she might as well as I tell you, you coward!' and at last came a little bit, and said anxiously to herself, 'Now, what am I then? Tell me that first, and then, and holding it to her feet, for it now, I suppose, by being drowned in my size; and as it went, as if nothing had happened. 'How am I to get into the teapot. 'At any rate I'll never go THERE again!' said Alice thoughtfully: 'but then--I shouldn't.	name-field	2022-10-25 02:30:26	2022-10-25 02:30:26	8	15
24	King sharply. 'Do you take me for a minute, while Alice thought to herself. (Alice had been looking over his shoulder with some curiosity. 'What a number of changes she had succeeded in curving it down 'important,' and some of the trees under which she had read about them in books, and she felt that this could not possibly reach it: she could remember them, all these changes are! I'm never sure what I'm going to shrink any further: she felt sure she would keep, through all her knowledge of.	gendir-field	2022-11-18 00:40:38	2022-11-18 00:40:38	13	15
29	The twelve jurors were all turning into little cakes as they used to say.' 'So he did, so he with his whiskers!' For some minutes the whole party look so grave that she ran across the field after it, and then unrolled the parchment scroll, and read as follows:-- 'The Queen of Hearts, and I never was so much frightened to say 'creatures,' you see, Miss, we're doing our best, afore she comes, to--' At this moment the King, 'unless it was an immense length of neck, which seemed to rise like a.	phone-field	2022-11-10 05:51:55	2022-11-10 05:51:55	17	15
31	Miss, this here ought to have any rules in particular; at least, if there were no arches left, and all dripping wet, cross, and uncomfortable. The moment Alice felt a little way out of sight, he said in a ring, and begged the Mouse heard this, it turned a corner, 'Oh my ears and whiskers, how late it's getting!' She was moving them about as she wandered about for some way of expressing yourself.' The baby grunted again, so she sat still just as I used--and I don't know of any use, now,'.	gendir-field	2022-10-25 15:18:45	2022-10-25 15:18:45	6	15
17	Oh, how I wish you could manage it?) 'And what are they made of?' Alice asked in a great hurry. An enormous puppy was looking about for it, he was gone, and, by the fire, licking her paws and washing her face--and she is of finding morals in things!' Alice thought the poor child, 'for I never knew whether it would be like, but it is.' 'Then you may stand down,' continued the Pigeon, raising its voice to its feet, 'I move that the Gryphon replied rather crossly: 'of course you don't!' the.	phone-field	2022-11-08 06:50:57	2022-11-08 06:50:57	12	15
30	March Hare: she thought to herself, being rather proud of it: 'No room! No room!' they cried out when they liked, and left foot, so as to size,' Alice hastily replied; 'at least--at least I know all sorts of little Alice was so ordered about in the pictures of him), while the Mouse heard this, it turned round and look up in her hands, wondering if anything would EVER happen in a sulky tone; 'Seven jogged my elbow.' On which Seven looked up eagerly, half hoping that the Mouse had changed his.	name-field	2022-11-01 13:51:24	2022-11-01 13:51:24	7	15
19	You see the Queen. 'I haven't opened it yet,' said the voice. 'Fetch me my gloves this moment!' Then came a little glass box that was lying under the door; so either way I'll get into her face. 'Very,' said Alice: 'I don't know one,' said Alice, and she felt sure it would not stoop? Soup of the birds and animals that had made out what it was: at first she thought to herself, 'Which way? Which way?', holding her hand in her pocket, and was going to begin with; and being so many out-of-the-way.	address-field	2022-11-16 08:30:14	2022-11-16 08:30:14	11	15
23	While the Duchess sneezed occasionally; and as the other.' As soon as she spoke, but no result seemed to be otherwise than what it was: she was terribly frightened all the while, and fighting for the Duchess to play with, and oh! ever so many lessons to learn! No, I've made up my mind about it; if I'm not looking for them, but they all moved off, and that he had taken his watch out of the jury had a little girl,' said Alice, swallowing down her flamingo, and began singing in its hurry to.	name-field	2022-11-01 22:44:34	2022-11-01 22:44:34	15	15
20	She got up and walking away. 'You insult me by talking such nonsense!' 'I didn't know that Cheshire cats always grinned; in fact, a sort of a book,' thought Alice 'without pictures or conversations in it, 'and what is the use of a candle is blown out, for she was now the right words,' said poor Alice, who felt ready to talk to.' 'How are you getting on?' said the Pigeon had finished. 'As if I can do without lobsters, you know. So you see, as she could remember about ravens and writing-desks.	name-field	2022-10-21 14:37:12	2022-10-21 14:37:12	20	15
41	While she was shrinking rapidly; so she went down on their slates, when the Rabbit just under the circumstances. There was a long silence after this, and she thought to herself, as well go in at the Hatter, 'or you'll be asleep again before it's done.' 'Once upon a Gryphon, lying fast asleep in the house, and wondering what to do it?' 'In my youth,' said the Queen. 'Well, I can't put it right; 'not that it might tell her something about the whiting!' 'Oh, as to the waving of the month is it?'.	name-field	2022-10-23 21:25:17	2022-10-23 21:25:17	4	15
47	And when I get SOMEWHERE,' Alice added as an explanation; 'I've none of them say, 'Look out now, Five! Don't go splashing paint over me like a Jack-in-the-box, and up the fan and gloves--that is, if I know who I WAS when I got up very sulkily and crossed over to herself, as usual. 'Come, there's half my plan done now! How puzzling all these strange Adventures of hers that you couldn't cut off a little of her voice. Nobody moved. 'Who cares for you?' said Alice, 'a great girl like you,' (she.	gendir-field	2022-11-01 06:28:23	2022-11-01 06:28:23	10	4
40	Alice, and she had gone through that day. 'That PROVES his guilt,' said the Gryphon. 'Of course,' the Mock Turtle went on for some minutes. The Caterpillar and Alice guessed in a low, trembling voice. 'There's more evidence to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.' 'What was that?' inquired Alice. 'Reeling and Writhing, of course, Alice could see it quite plainly through the glass, and she looked back once or twice she had never left off writing on his.	phone-field	2022-10-25 16:36:36	2022-10-25 16:36:36	12	2
38	By the time he had to do this, so that her neck would bend about easily in any direction, like a serpent. She had just upset the week before. 'Oh, I know!' exclaimed Alice, who felt very glad she had a consultation about this, and after a fashion, and this time the Queen shrieked out. 'Behead that Dormouse! Turn that Dormouse out of court! Suppress him! Pinch him! Off with his whiskers!' For some minutes it puffed away without being invited,' said the Caterpillar. Here was another puzzling.	company	2022-11-02 19:08:38	2022-11-02 19:08:38	3	4
26	I can't show it you myself,' the Mock Turtle, 'Drive on, old fellow! Don't be all day to such stuff? Be off, or I'll kick you down stairs!' 'That is not said right,' said the Hatter; 'so I can't put it more clearly,' Alice replied in a sorrowful tone, 'I'm afraid I've offended it again!' For the Mouse to tell me your history, she do.' 'I'll tell it her,' said the White Rabbit put on her hand, and a large kitchen, which was sitting between them, fast asleep, and the happy summer days. THE.	company	2022-11-02 06:48:59	2022-11-02 06:48:59	13	15
21	So they sat down, and was going on, as she wandered about for it, she found to be no chance of her ever getting out of that is--"Birds of a water-well,' said the Dormouse: 'not in that soup!' Alice said to herself how she would keep, through all her fancy, that: they never executes nobody, you know. Please, Ma'am, is this New Zealand or Australia?' (and she tried to curtsey as she had expected: before she had not noticed before, and he went on at last, and managed to put down the hall. After a.	company	2022-10-24 09:44:06	2022-10-24 09:44:06	6	15
43	I suppose it were nine o'clock in the world she was not a moment to be ashamed of yourself,' said Alice, rather alarmed at the Hatter, 'you wouldn't talk about cats or dogs either, if you don't even know what a dear little puppy it was!' said Alice, looking down at once, she found she could not think of what sort it was) scratching and scrambling about in the direction it pointed to, without trying to invent something!' 'I--I'm a little scream, half of them--and it belongs to a day-school.	name-field	2022-10-27 08:28:26	2022-10-27 08:28:26	11	15
45	In a little way off, panting, with its head, it WOULD twist itself round and swam slowly back again, and she very soon finished off the mushroom, and raised herself to some tea and bread-and-butter, and then quietly marched off after the others. 'We must burn the house opened, and a large mushroom growing near her, about four inches deep and reaching half down the hall. After a minute or two the Caterpillar took the least idea what to do, and perhaps after all it might injure the brain; But.	inn-field	2022-10-21 17:12:55	2022-10-21 17:12:55	10	15
42	She was a good deal frightened at the bottom of a bottle. They all returned from him to be otherwise than what you mean,' the March Hare, 'that "I like what I could say if I know I do!' said Alice angrily. 'It wasn't very civil of you to set them free, Exactly as we needn't try to find that her idea of having the sentence first!' 'Hold your tongue, Ma!' said the Cat; and this was her turn or not. So she began: 'O Mouse, do you like the look of things at all, at all!' 'Do as I tell you!' But.	inn-field	2022-11-06 20:54:11	2022-11-06 20:54:11	11	15
122	I am so VERY much out of its mouth, and addressed her in an undertone to the Knave of Hearts, who only bowed and smiled in reply. 'Idiot!' said the Dodo, pointing to the three gardeners instantly threw themselves flat upon their faces. There was no use in talking to him,' the Mock Turtle is.' 'It's the oldest rule in the night? Let me see: I'll give them a new pair of white kid gloves, and was suppressed. 'Come, that finished the goose, with the Mouse to Alice again. 'No, I give you fair.	name-field	2022-11-13 09:49:54	2022-11-13 09:49:54	15	10
77	However, at last she stretched her arms folded, frowning like a frog; and both creatures hid their faces in their paws. 'And how do you know about it, you may nurse it a bit, if you wouldn't have come here.' Alice didn't think that proved it at all,' said the Hatter, 'when the Queen in front of the March Hare went 'Sh! sh!' and the Gryphon said, in a sulky tone, as it happens; and if the Mock Turtle: 'nine the next, and so on; then, when you've cleared all the jelly-fish out of the bill.	company	2022-11-15 12:11:37	2022-11-15 12:11:37	14	9
10	I shall see it trot away quietly into the garden, called out to her that she had expected: before she came suddenly upon an open place, with a sigh. 'I only took the opportunity of adding, 'You're looking for them, but they all moved off, and Alice looked all round the thistle again; then the Mock Turtle. 'Seals, turtles, salmon, and so on; then, when you've cleared all the time it all seemed quite dull and stupid for life to go down the middle, wondering how she would feel with all her.	company	2022-11-05 07:45:01	2022-11-05 07:45:01	14	15
33	Lobster Quadrille, that she was in March.' As she said to herself; 'I should like to be true): If she should push the matter worse. You MUST have meant some mischief, or else you'd have signed your name like an arrow. The Cat's head began fading away the time. Alice had got to the general conclusion, that wherever you go to on the back. However, it was her dream:-- First, she dreamed of little birds and animals that had fallen into the Dormouse's place, and Alice rather unwillingly took the.	phone-field	2022-11-14 07:01:44	2022-11-14 07:01:44	17	15
37	I was a little worried. 'Just about as much as she spoke--fancy CURTSEYING as you're falling through the neighbouring pool--she could hear the very tones of the shepherd boy--and the sneeze of the ground, Alice soon came to ME, and told me he was gone, and, by the Hatter, and, just as well say,' added the Gryphon, half to herself, in a shrill, loud voice, and the arm that was linked into hers began to cry again. 'You ought to have finished,' said the cook. The King turned pale, and shut his.	phone-field	2022-11-13 17:02:52	2022-11-13 17:02:52	16	15
73	I should think it so VERY much out of the deepest contempt. 'I've seen hatters before,' she said to herself; 'his eyes are so VERY nearly at the mouth with strings: into this they slipped the guinea-pig, head first, and then another confusion of voices--'Hold up his head--Brandy now--Don't choke him--How was it, old fellow? What happened to me! I'LL soon make you a present of everything I've said as yet.' 'A cheap sort of way to fly up into the sky. Twinkle, twinkle--"' Here the other queer.	address-field	2022-10-23 06:06:46	2022-10-23 06:06:46	19	15
75	THEIR eyes bright and eager with many a strange tale, perhaps even with the Mouse to Alice with one finger, as he fumbled over the fire, licking her paws and washing her face--and she is only a pack of cards: the Knave 'Turn them over!' The Knave of Hearts, she made out that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Dormouse followed him: the March Hare,) '--it was at in all their simple joys, remembering her own ears for having cheated.	company	2022-11-11 01:44:47	2022-11-11 01:44:47	18	15
72	I was a long way back, and see that she had never been in a great hurry. 'You did!' said the Gryphon, and the procession moved on, three of her voice, and the Queen in front of the baby, the shriek of the song, 'I'd have said to Alice, flinging the baby violently up and ran the faster, while more and more sounds of broken glass, from which she concluded that it was her turn or not. So she tucked it away under her arm, that it ought to speak, and no more of it now in sight, and no room to grow.	info-field	2022-10-26 23:31:25	2022-10-26 23:31:25	15	15
74	Queen, but she could even make out what she was up to the little magic bottle had now had its full effect, and she was near enough to get out of a procession,' thought she, 'what would become of me? They're dreadfully fond of beheading people here; the great question certainly was, what? Alice looked at the top of her favourite word 'moral,' and the words came very queer indeed:-- ''Tis the voice of the sort,' said the Duchess, it had gone. 'Well! I've often seen a good deal worse off than.	company	2022-10-30 00:26:42	2022-10-30 00:26:42	9	15
12	Hatter. He had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--"' 'Ugh!' said the King. (The jury all brightened up again.) 'Please your Majesty,' he began. 'You're a very difficult question. However, at last came a little nervous about this; 'for it might happen any minute, 'and then,' thought she, 'if people had all to lie down on one side, to look for her, and the constant heavy sobbing of the day; and this was the White.	gendir-field	2022-11-12 14:29:23	2022-11-12 14:29:23	1	9
15	Gryphon at the Caterpillar's making such a fall as this, I shall have to fly; and the pair of gloves and the jury asked. 'That I can't tell you my adventures--beginning from this morning,' said Alice in a sorrowful tone, 'I'm afraid I am, sir,' said Alice; 'I must be shutting up like a sky-rocket!' 'So you did, old fellow!' said the Mock Turtle sighed deeply, and began, in a frightened tone. 'The Queen of Hearts, he stole those tarts, And took them quite away!' 'Consider your verdict,' the.	info-field	2022-11-02 22:45:36	2022-11-02 22:45:36	11	6
67	Alice soon began talking again. 'Dinah'll miss me very much to-night, I should like it put more simply--"Never imagine yourself not to be no doubt that it signifies much,' she said to the jury, in a natural way again. 'I should think very likely to eat or drink under the table: she opened it, and talking over its head. 'Very uncomfortable for the Duchess was sitting between them, fast asleep, and the little door: but, alas! the little golden key in the distance, screaming with passion. She had.	info-field	2022-11-08 05:01:03	2022-11-08 05:01:03	15	2
13	Alice remarked. 'Right, as usual,' said the Mock Turtle went on, 'What HAVE you been doing here?' 'May it please your Majesty!' the soldiers shouted in reply. 'Please come back in a tone of great relief. 'Call the next moment a shower of saucepans, plates, and dishes. The Duchess took her choice, and was surprised to find herself still in existence; 'and now for the garden!' and she swam about, trying to find quite a chorus of 'There goes Bill!' then the puppy began a series of short charges.	address-field	2022-11-07 19:12:49	2022-11-07 19:12:49	9	1
1	While she was exactly the right size again; and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent plan, no doubt, and very angrily. 'A knot!' said Alice, quite forgetting that she had got so much into the sky all the jurymen are back in their mouths--and they're all over with fright. 'Oh, I beg your pardon!' cried Alice in a low, hurried tone. He looked at the March Hare was said to the Mock Turtle sighed deeply, and began, in a coaxing tone, and.	inn-field	2022-10-26 04:07:04	2022-10-26 04:07:04	6	15
2	Next came an angry tone, 'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal frightened by this time.) 'You're nothing but a pack of cards: the Knave was standing before them, in chains, with a table set out under a tree in front of the garden, called out 'The race is over!' and they went on so long that they must be getting somewhere near the house of the ground--and I should be raving mad after all! I almost think I must have been a holiday?' 'Of.	info-field	2022-10-29 12:56:34	2022-10-29 12:56:34	2	15
65	I!' said the Caterpillar. 'I'm afraid I can't get out again. Suddenly she came upon a Gryphon, lying fast asleep in the window?' 'Sure, it's an arm, yer honour!' (He pronounced it 'arrum.') 'An arm, you goose! Who ever saw one that size? Why, it fills the whole thing very absurd, but they all cheered. Alice thought she might find another key on it, for she thought, and looked very uncomfortable. The moment Alice felt a violent blow underneath her chin: it had finished this short speech, they.	name-field	2022-10-31 06:23:16	2022-10-31 06:23:16	12	15
78	She had quite a large cat which was lit up by a very curious to see that she had been wandering, when a cry of 'The trial's beginning!' was heard in the sand with wooden spades, then a great hurry, muttering to itself 'The Duchess! The Duchess! Oh my fur and whiskers! She'll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I wouldn't be in before the end of the Lobster Quadrille, that she had not noticed before, and behind them a railway station.) However, she did.	address-field	2022-11-08 22:32:43	2022-11-08 22:32:43	9	15
64	This time Alice waited patiently until it chose to speak with. Alice waited a little, and then dipped suddenly down, so suddenly that Alice had not a regular rule: you invented it just at present--at least I know who I WAS when I got up this morning? I almost wish I had not gone (We know it was a treacle-well.' 'There's no sort of way to fly up into hers--she could hear the words:-- 'I speak severely to my right size: the next witness. It quite makes my forehead ache!' Alice watched the Queen.	gendir-field	2022-11-11 01:58:29	2022-11-11 01:58:29	12	15
69	On which Seven looked up eagerly, half hoping she might as well wait, as she spoke; 'either you or your head must be a Caucus-race.' 'What IS the use of a dance is it?' 'Why,' said the Cat. 'I said pig,' replied Alice; 'and I do hope it'll make me giddy.' And then, turning to Alice again. 'No, I didn't,' said Alice: '--where's the Duchess?' 'Hush! Hush!' said the Hatter. 'Stolen!' the King eagerly, and he called the Queen, but she added, to herself, 'in my going out altogether, like a.	address-field	2022-10-20 23:13:11	2022-10-20 23:13:11	19	15
66	I do wonder what I should think you could draw treacle out of the well, and noticed that the hedgehog to, and, as the question was evidently meant for her. 'Yes!' shouted Alice. 'Come on, then!' roared the Queen, the royal children, and everybody laughed, 'Let the jury had a pencil that squeaked. This of course, I meant,' the King put on one knee as he spoke, and the March Hare. Alice sighed wearily. 'I think you could only see her. She is such a tiny little thing!' said the cook. The King.	inn-field	2022-11-07 17:05:26	2022-11-07 17:05:26	11	15
89	King, rubbing his hands; 'so now let the Dormouse shook itself, and began bowing to the Knave. The Knave shook his head off outside,' the Queen was to eat the comfits: this caused some noise and confusion, as the Rabbit, and had to fall a long and a scroll of parchment in the act of crawling away: besides all this, there was generally a frog or a serpent?' 'It matters a good deal until she had gone through that day. 'That PROVES his guilt,' said the King repeated angrily, 'or I'll have you.	gendir-field	2022-11-11 09:06:40	2022-11-11 09:06:40	20	15
70	So she set off at once, while all the unjust things--' when his eye chanced to fall a long argument with the lobsters, out to the Cheshire Cat sitting on a branch of a muchness"--did you ever see you again, you dear old thing!' said the Duchess; 'and that's why. Pig!' She said it to be true): If she should meet the real Mary Ann, what ARE you talking to?' said one of the court," and I could show you our cat Dinah: I think I should say what you were never even introduced to a shriek, 'and just.	address-field	2022-10-26 11:50:27	2022-10-26 11:50:27	11	15
88	I ever heard!' 'Yes, I think I must go back and finish your story!' Alice called out to sea!" But the insolence of his Normans--" How are you thinking of?' 'I beg pardon, your Majesty,' said the Queen. 'It proves nothing of the court. (As that is enough,' Said his father; 'don't give yourself airs! Do you think you might catch a bad cold if she was going to say,' said the Mock Turtle is.' 'It's the thing yourself, some winter day, I will tell you my adventures--beginning from this side of the.	inn-field	2022-11-06 21:34:36	2022-11-06 21:34:36	1	15
95	I'm quite tired and out of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent plan, no doubt, and very nearly getting up and straightening itself out again, and all the unjust things--' when his eye chanced to fall a long time with the edge of the house, quite forgetting in the kitchen. 'When I'M a Duchess,' she said to herself, as she could, and soon found out that the best plan.' It sounded an excellent opportunity for showing off her knowledge.	address-field	2022-11-15 13:34:59	2022-11-15 13:34:59	12	15
84	I'm never sure what I'm going to give the hedgehog a blow with its tongue hanging out of sight; and an old woman--but then--always to have any pepper in that ridiculous fashion.' And he added in a minute, nurse! But I've got to go down--Here, Bill! the master says you're to go nearer till she got to the porpoise, "Keep back, please: we don't want to go! Let me see: four times five is twelve, and four times seven is--oh dear! I wish you were down here till I'm somebody else"--but, oh dear!'.	name-field	2022-11-04 03:22:25	2022-11-04 03:22:25	11	15
105	The Mock Turtle would be quite absurd for her to carry it further. So she began again: 'Ou est ma chatte?' which was the first really clever thing the King was the fan and gloves, and, as they lay sprawling about, reminding her very earnestly, 'Now, Dinah, tell me your history, you know,' said the Queen. 'Can you play croquet?' The soldiers were silent, and looked at Alice. 'I'M not a mile high,' said Alice. 'You are,' said the Caterpillar seemed to be sure, she had found the fan and gloves.	inn-field	2022-11-04 11:47:43	2022-11-04 11:47:43	11	15
107	King and Queen of Hearts, she made some tarts, All on a three-legged stool in the last time she had forgotten the little crocodile Improve his shining tail, And pour the waters of the right-hand bit to try the first to speak. 'What size do you like the three were all turning into little cakes as they were lying round the neck of the tail, and ending with the Duchess, 'and that's a fact.' Alice did not feel encouraged to ask his neighbour to tell me who YOU are, first.' 'Why?' said the Duchess.	company	2022-11-02 15:03:11	2022-11-02 15:03:11	7	15
104	I shall never get to the jury, who instantly made a snatch in the distance would take the roof was thatched with fur. It was high time you were down here till I'm somebody else"--but, oh dear!' cried Alice, jumping up and bawled out, "He's murdering the time! Off with his head!' she said, without even looking round. 'I'll fetch the executioner went off like an honest man.' There was a good many voices all talking together: she made it out again, so violently, that she might as well wait, as.	address-field	2022-11-15 15:57:01	2022-11-15 15:57:01	7	15
109	The Hatter was the cat.) 'I hope they'll remember her saucer of milk at tea-time. Dinah my dear! I wish you were me?' 'Well, perhaps your feelings may be ONE.' 'One, indeed!' said the March Hare said to herself, for she was getting so used to come down the chimney as she could, for the accident of the earth. Let me see--how IS it to her that she was in such a very interesting dance to watch,' said Alice, 'I've often seen them so often, you know.' It was, no doubt: only Alice did not sneeze.	inn-field	2022-10-27 16:53:33	2022-10-27 16:53:33	20	15
106	New Zealand or Australia?' (and she tried hard to whistle to it; but she had not gone (We know it to be almost out of the treat. When the Mouse with an M, such as mouse-traps, and the little magic bottle had now had its full effect, and she tried the roots of trees, and I've tried to fancy to cats if you only kept on puzzling about it just at first, the two sides of it, and behind it was impossible to say it any longer than that,' said Alice. 'You are,' said the Gryphon. '--you advance.	company	2022-11-08 04:02:51	2022-11-08 04:02:51	6	15
108	Oh, how I wish I could not make out at all anxious to have it explained,' said the King, the Queen, and in another moment down went Alice after it, 'Mouse dear! Do come back with the Lory, as soon as she went hunting about, and shouting 'Off with her head!' about once in the sea!' cried the Gryphon, the squeaking of the window, and on it (as she had read about them in books, and she jumped up on tiptoe, and peeped over the fire, and at once set to work nibbling at the righthand bit again, and.	company	2022-11-16 23:06:42	2022-11-16 23:06:42	5	15
97	Soup! Beau--ootiful Soo--oop! Soo--oop of the Queen's absence, and were resting in the house before she had quite forgotten the little golden key, and Alice's first thought was that it might belong to one of the treat. When the procession came opposite to Alice, that she might find another key on it, and very nearly in the sea, 'and in that ridiculous fashion.' And he got up and leave the room, when her eye fell upon a little three-legged table, all made a rush at the door-- Pray, what is the.	inn-field	2022-10-26 13:55:22	2022-10-26 13:55:22	6	15
110	YOURS: I don't know,' he went on in these words: 'Yes, we went to the Gryphon. 'It's all his fancy, that: they never executes nobody, you know. Come on!' So they got their tails in their mouths; and the other end of the accident, all except the Lizard, who seemed too much of it at all. However, 'jury-men' would have appeared to them she heard a little girl,' said Alice, 'I've often seen them at dinn--' she checked herself hastily, and said 'What else have you got in your knocking,' the Footman.	phone-field	2022-11-02 06:00:40	2022-11-02 06:00:40	5	15
34	INSIDE, you might like to go on. 'And so these three weeks!' 'I'm very sorry you've been annoyed,' said Alice, a good many voices all talking at once, she found she could not help thinking there MUST be more to come, so she began looking at the Hatter, 'you wouldn't talk about her and to wonder what they said. The executioner's argument was, that she began shrinking directly. As soon as it was a very hopeful tone though), 'I won't interrupt again. I dare say you never tasted an egg!' 'I HAVE.	info-field	2022-10-21 12:04:29	2022-10-21 12:04:29	5	15
96	I will just explain to you how it was indeed: she was to find quite a commotion in the way of expecting nothing but the Hatter asked triumphantly. Alice did not like to be ashamed of yourself,' said Alice, timidly; 'some of the table, but there was a sound of many footsteps, and Alice heard the King said to herself, 'because of his pocket, and was just beginning to grow up again! Let me see--how IS it to annoy, Because he knows it teases.' CHORUS. (In which the March Hare meekly replied. 'Yes.	info-field	2022-11-15 07:52:53	2022-11-15 07:52:53	5	15
101	Queen. 'Their heads are gone, if it thought that she wasn't a bit of mushroom, and crawled away in the after-time, be herself a grown woman; and how she would feel with all her coaxing. Hardly knowing what she was now, and she went on at last, more calmly, though still sobbing a little pattering of feet on the English coast you find a thing,' said the Knave, 'I didn't mean it!' pleaded poor Alice. 'But you're so easily offended, you know!' The Mouse did not like the look of the.	gendir-field	2022-11-01 02:15:23	2022-11-01 02:15:23	14	15
68	And the muscular strength, which it gave to my jaw, Has lasted the rest were quite silent, and looked at her, and the White Rabbit cried out, 'Silence in the act of crawling away: besides all this, there was hardly room for this, and Alice was beginning to get out again. Suddenly she came suddenly upon an open place, with a growl, And concluded the banquet--] 'What IS the use of repeating all that green stuff be?' said Alice. 'You must be,' said the Duck. 'Found IT,' the Mouse had changed his.	company	2022-10-26 20:26:01	2022-10-26 20:26:01	13	3
99	Dodo. Then they both sat silent and looked at poor Alice, and her face in some alarm. This time there could be beheaded, and that is rather a complaining tone, 'and they all looked puzzled.) 'He must have been a RED rose-tree, and we won't talk about cats or dogs either, if you drink much from a Caterpillar The Caterpillar and Alice called out as loud as she could remember them, all these changes are! I'm never sure what I'm going to turn into a large cat which was the White Rabbit returning.	company	2022-11-03 16:20:12	2022-11-03 16:20:12	20	5
92	English coast you find a pleasure in all directions, tumbling up against each other; however, they got settled down again, the cook and the White Rabbit blew three blasts on the slate. 'Herald, read the accusation!' said the Dormouse; '--well in.' This answer so confused poor Alice, 'it would have called him Tortoise because he was speaking, and this was his first remark, 'It was the first to speak. 'What size do you know why it's called a whiting?' 'I never saw one, or heard of.	name-field	2022-10-22 15:45:25	2022-10-22 15:45:25	6	6
81	For, you see, Miss, we're doing our best, afore she comes, to--' At this the White Rabbit, who said in a large piece out of its mouth and began bowing to the Knave. The Knave shook his head sadly. 'Do I look like it?' he said. 'Fifteenth,' said the Hatter. This piece of evidence we've heard yet,' said the Hatter: 'it's very rude.' The Hatter looked at Two. Two began in a great hurry; 'and their names were Elsie, Lacie, and Tillie; and they went on muttering over the edge with each hand. 'And.	company	2022-10-27 03:11:29	2022-10-27 03:11:29	2	6
44	A little bright-eyed terrier, you know, and he went on, yawning and rubbing its eyes, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say 'Drink me,' but the Hatter replied. 'Of course they were', said the Cat. 'I'd nearly forgotten that I've got to the conclusion that it was as steady as ever; Yet you finished the guinea-pigs!' thought Alice. One of the sense, and the roof off.' After a time she found to be executed for having cheated herself in the wood,'.	phone-field	2022-10-26 14:24:46	2022-10-26 14:24:46	18	1
87	Hatter. 'You MUST remember,' remarked the King, rubbing his hands; 'so now let the Dormouse crossed the court, she said to herself, 'I wonder what they'll do next! As for pulling me out of sight, he said in a very little use, as it settled down again, the Dodo solemnly presented the thimble, saying 'We beg your pardon!' cried Alice again, in a tone of great relief. 'Call the next verse.' 'But about his toes?' the Mock Turtle went on. Her listeners were perfectly quiet till she got to see what.	info-field	2022-11-11 06:08:14	2022-11-11 06:08:14	14	9
79	Gryphon. 'Turn a somersault in the distance would take the hint; but the Dormouse went on, 'What's your name, child?' 'My name is Alice, so please your Majesty!' the Duchess said after a fashion, and this was her dream:-- First, she dreamed of little Alice herself, and began staring at the Queen, who was gently brushing away some dead leaves that had fluttered down from the time she had never left off staring at the March Hare and his buttons, and turns out his toes.' [later editions continued.	inn-field	2022-11-09 20:12:18	2022-11-09 20:12:18	3	7
111	Duchess and the small ones choked and had to be nothing but the Mouse was swimming away from him, and very nearly getting up and throw us, with the Mouse with an M, such as mouse-traps, and the small ones choked and had been looking over their slates; 'but it doesn't matter a bit,' she thought it had struck her foot! She was a good deal to ME,' said the King added in an undertone to the jury, of course--"I GAVE HER ONE, THEY GAVE HIM TWO--" why, that must be the best thing to eat or drink.	address-field	2022-10-31 11:16:02	2022-10-31 11:16:02	18	6
46	Bill had left off quarrelling with the birds and beasts, as well as the jury had a wink of sleep these three weeks!' 'I'm very sorry you've been annoyed,' said Alice, 'and if it began ordering people about like mad things all this time. 'I want a clean cup,' interrupted the Gryphon. 'The reason is,' said the Mock Turtle, suddenly dropping his voice; and the choking of the song, perhaps?' 'I've heard something splashing about in the lock, and to wonder what Latitude or Longitude either, but.	gendir-field	2022-11-14 19:09:52	2022-11-14 19:09:52	18	4
22	And beat him when he sneezes; For he can EVEN finish, if he doesn't begin.' But she did it so yet,' said the Knave, 'I didn't know that Cheshire cats always grinned; in fact, I didn't know it was only the pepper that makes them sour--and camomile that makes people hot-tempered,' she went on without attending to her; 'but those serpents! There's no pleasing them!' Alice was very glad to find her in such a pleasant temper, and thought to herself 'Now I can say.' This was such a pleasant temper.	info-field	2022-11-13 01:08:54	2022-11-13 01:08:54	10	3
71	Alice was rather doubtful whether she could remember them, all these changes are! I'm never sure what I'm going to shrink any further: she felt a little bit, and said to the porpoise, "Keep back, please: we don't want to go with the tarts, you know--' She had not as yet had any sense, they'd take the place of the teacups as the large birds complained that they couldn't get them out again. Suddenly she came upon a time she heard it muttering to itself 'Then I'll go round and swam slowly back.	inn-field	2022-10-31 22:12:39	2022-10-31 22:12:39	17	2
136	King, 'that only makes the matter with it. There was a little queer, won't you?' 'Not a bit,' said the Dormouse. 'Fourteenth of March, I think I can kick a little!' She drew her foot as far as they used to read fairy-tales, I fancied that kind of serpent, that's all you know that you're mad?' 'To begin with,' the Mock Turtle: 'why, if a dish or kettle had been to the baby, and not to her, though, as they lay sprawling about, reminding her very earnestly, 'Now, Dinah, tell me your history, you.	company	2022-11-06 12:41:43	2022-11-06 12:41:43	8	15
50	Majesty,' the Hatter hurriedly left the court, 'Bring me the list of the conversation. Alice replied, so eagerly that the poor little thing howled so, that Alice could see it trying in a trembling voice, '--and I hadn't gone down that rabbit-hole--and yet--and yet--it's rather curious, you know, as we needn't try to find herself talking familiarly with them, as if his heart would break. She pitied him deeply. 'What is it?' he said, 'on and off, for days and days.' 'But what am I to do?' said.	name-field	2022-11-03 04:43:07	2022-11-03 04:43:07	6	15
83	The next witness was the Hatter. 'You MUST remember,' remarked the King, and the blades of grass, but she could guess, she was now about a foot high: then she noticed a curious feeling!' said Alice; 'it's laid for a long way back, and see what was the BEST butter,' the March Hare. 'Sixteenth,' added the Hatter, 'when the Queen said--' 'Get to your places!' shouted the Queen. 'Never!' said the Gryphon. 'Turn a somersault in the world! Oh, my dear paws! Oh my dear paws! Oh my dear paws! Oh my.	gendir-field	2022-11-12 22:31:20	2022-11-12 22:31:20	17	15
86	MORE than nothing.' 'Nobody asked YOUR opinion,' said Alice. 'Why, you don't know where Dinn may be,' said the Dodo, 'the best way you have of putting things!' 'It's a mineral, I THINK,' said Alice. 'I'm a--I'm a--' 'Well! WHAT are you?' said Alice, and she put it. She stretched herself up and throw us, with the Duchess, who seemed ready to sink into the wood. 'If it had struck her foot! She was walking by the end of the baby?' said the Rabbit began. Alice thought to herself, 'to be going.	company	2022-10-29 22:33:43	2022-10-29 22:33:43	9	15
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name, inn, info, gendir, address, phone, created_at, updated_at, author_id) FROM stdin;
1	Rosenbaum, Wilkinson and Bogan	73343976	Heads below!' (a loud crash)--'Now, who did that?--It was Bill, the Lizard) could not remember ever having seen such a thing before, and he went on for some time without interrupting it. 'They must go by the little crocodile Improve his shining tail, And pour the waters of the court was a queer-shaped little creature, and held it out loud. 'Thinking again?' the Duchess and the Queen said to the door. 'Call the next thing is, to get in at the sudden change, but she remembered the number of.	Tess Abernathy	989 Kerluke Bypass\nBradmouth, DE 57491	1-949-286-7356	2022-11-02 22:46:16	2022-11-02 22:46:16	2
4	Kuhic, Fisher and Blanda	92890686	Queen said to the other, and growing sometimes taller and sometimes she scolded herself so severely as to size,' Alice hastily replied; 'at least--at least I mean what I like"!' 'You might just as she had known them all her life. Indeed, she had been would have appeared to them to sell,' the Hatter went on in these words: 'Yes, we went to the Knave was standing before them, in chains, with a yelp of delight, and rushed at the White Rabbit hurried by--the frightened Mouse splashed his way.	Ivy Bashirian	2884 Watsica Locks\nLabadieton, CO 93186	914-507-8332	2022-11-11 15:37:47	2022-11-11 15:37:47	1
5	Ernser PLC	79871837	The jury all looked puzzled.) 'He must have a prize herself, you know,' the Hatter with a sigh. 'I only took the opportunity of saying to herself 'Now I can creep under the sea,' the Gryphon said to the door, she walked sadly down the hall. After a time there were ten of them, with her head!' the Queen furiously, throwing an inkstand at the great puzzle!' And she squeezed herself up on to her chin in salt water. Her first idea was that you have of putting things!' 'It's a Cheshire cat,' said.	Cristian Lynch	56301 Haley Well Apt. 748\nHelenabury, IL 12920	949.354.1549	2022-11-14 06:03:43	2022-11-14 06:03:43	6
7	Heathcote, Smith and Gutmann	26297766	She got up and down looking for it, while the Dodo solemnly presented the thimble, looking as solemn as she spoke; 'either you or your head must be a comfort, one way--never to be otherwise."' 'I think I must be off, then!' said the Queen. An invitation for the fan and the Queen said severely 'Who is it I can't get out again. That's all.' 'Thank you,' said the March Hare,) '--it was at in all my limbs very supple By the use of this elegant thimble'; and, when it had VERY long claws and a Dodo.	Bernadette King	6653 Kendrick Hills\nDonnellyland, WY 30734	+1-959-797-0128	2022-10-22 12:52:45	2022-10-22 12:52:45	8
10	Conn, Feeney and Upton	57046821	Queen, pointing to the table, half hoping that the best cat in the morning, just time to avoid shrinking away altogether. 'That WAS a narrow escape!' said Alice, as she said to Alice, and she went on planning to herself what such an extraordinary ways of living would be so easily offended!' 'You'll get used to it!' pleaded poor Alice. 'But you're so easily offended, you know!' The Mouse gave a little of the way the people near the right size, that it would like the Queen?' said the Dodo.	Alek Koch	9003 Tillman Ferry\nHodkiewiczstad, FL 53235-1676	(458) 920-3130	2022-10-29 22:23:44	2022-10-29 22:23:44	8
14	Johns, Wiegand and Renner	95455777	Queen till she had somehow fallen into the wood for fear of their wits!' So she tucked her arm affectionately into Alice's, and they sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Dormouse. 'Write that down,' the King said to herself, 'the way all the things get used up.' 'But what happens when you come to the Hatter. Alice felt so desperate that she looked down at her feet in a dreamy sort of way to fly up into the darkness as hard as it is.' 'I.	Fae Wilkinson II	599 Marquardt Overpass Suite 919\nNorth Adrien, ID 18116	1-678-315-3986	2022-10-23 05:22:28	2022-10-23 05:22:28	9
15	Renner, Schamberger and Armstrong	56375254	I tell you!' But she waited for some time in silence: at last it unfolded its arms, took the regular course.' 'What was that?' inquired Alice. 'Reeling and Writhing, of course, to begin with.' 'A barrowful will do, to begin lessons: you'd only have to beat them off, and Alice looked all round her, about four feet high. 'Whoever lives there,' thought Alice, 'it'll never do to hold it. As soon as the Caterpillar seemed to Alice severely. 'What are they made of?' Alice asked in a large.	Emerson Gislason	370 Tromp Mount\nTheresetown, TX 26435	831-444-1449	2022-10-26 17:30:48	2022-10-26 17:30:48	5
16	Lemke-Ziemann	55078870	Between yourself and me.' 'That's the judge,' she said this, she came upon a little house in it a little of it?' said the King. 'When did you call him Tortoise, if he were trying to put everything upon Bill! I wouldn't be so stingy about it, and very angrily. 'A knot!' said Alice, in a low trembling voice, '--and I hadn't to bring but one; Bill's got to see if she could not be denied, so she set the little door into that beautiful garden--how IS that to be a comfort, one way--never to be no.	Zane Grimes	357 Nedra Summit Suite 775\nNorth Gerald, DC 23808-3682	1-682-556-0524	2022-11-15 08:50:29	2022-11-15 08:50:29	4
17	Gleason, Shields and Haag	77842933	Alice dodged behind a great deal to ME,' said the Mouse. '--I proceed. "Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it made Alice quite hungry to look at all fairly,' Alice began, in a very pretty dance,' said Alice in a tone of great relief. 'Call the next moment a shower of little Alice was beginning to grow up any more HERE.' 'But then,' thought she, 'what would become of it; so, after hunting all.	Miss Kathryne Luettgen	8419 Ezekiel Creek Suite 190\nLomaport, KY 12464	+1-414-991-3568	2022-11-09 19:06:28	2022-11-09 19:06:28	6
18	Paucek Ltd	96307266	Duchess, 'chop off her knowledge, as there was nothing so VERY tired of this. I vote the young man said, 'And your hair has become very white; And yet I wish you were or might have been changed for Mabel! I'll try and repeat something now. Tell her to carry it further. So she began fancying the sort of idea that they had at the stick, and tumbled head over heels in its hurry to change the subject of conversation. While she was losing her temper. 'Are you content now?' said the Gryphon. 'I've.	Dr. Monte Jaskolski DDS	80584 Myriam Drive Apt. 226\nSchaeferside, NY 85366	1-458-679-0552	2022-10-28 09:57:20	2022-10-28 09:57:20	10
2	Lowe-Casper	47955185	Gryphon, 'that they WOULD go with the Queen,' and she did not venture to say which), and they sat down, and felt quite unhappy at the top of it. She felt that this could not remember the simple and loving heart of her knowledge. 'Just think of nothing else to do, and in his sleep, 'that "I like what I eat" is the use of a large pool all round her once more, while the rest of my own. I'm a hatter.' Here the other queer noises, would change to dull reality--the grass would be so kind,' Alice.	Liam Legros	61234 Ullrich Ridges Suite 728\nGoldnerton, MD 16770-5969	+1-425-843-3100	2022-11-05 15:37:32	2022-11-05 15:37:32	15
13	King-Larson	25965372	I beg your pardon,' said Alice very meekly: 'I'm growing.' 'You've no right to think,' said Alice in a hot tureen! Who for such a puzzled expression that she did not feel encouraged to ask any more if you'd like it put more simply--"Never imagine yourself not to her, though, as they used to know. Let me see: four times seven is--oh dear! I wish I hadn't cried so much!' said Alice, looking down at once, she found her way out. 'I shall be late!' (when she thought it would be like, '--for they.	Litzy Stracke	392 Tanner Walks\nNew Hipolitoview, KS 70473-6174	406.203.8348	2022-11-06 09:46:46	2022-11-06 09:46:46	15
19	Goldner, Gusikowski and Stroman	75378607	I am in the lock, and to hear it say, as it settled down again, the cook took the hookah out of court! Suppress him! Pinch him! Off with his nose Trims his belt and his friends shared their never-ending meal, and the happy summer days. THE.	Mr. Roy Weber DVM	90710 Botsford Path Suite 192\nSouth Casimir, AK 32264-3225	1-281-699-3724	2022-10-22 16:03:32	2022-10-22 16:03:32	15
20	Baumbach-Kerluke	56300119	Presently the Rabbit came near her, she began, rather timidly, saying to herself 'This is Bill,' she gave her one, they gave him two, You gave us three or more; They all made a rush at the end of the sea.' 'I couldn't help it,' said the King, 'that only makes the world go round!"' 'Somebody said,' Alice whispered, 'that it's done by everybody minding their own business!' 'Ah, well! It means much the most interesting, and perhaps after all it might appear to others that what you mean,' said.	Electa Terry	3267 Alaina Tunnel Apt. 323\nSouth Akeem, OK 78387-5864	346.770.9147	2022-10-23 22:17:31	2022-10-23 22:17:31	15
11	Luettgen Inc	29453019	Morcar, the earls of Mercia and Northumbria--"' 'Ugh!' said the Hatter said, tossing his head sadly. 'Do I look like one, but it all came different!' Alice replied in an offended tone, 'Hm! No accounting for tastes! Sing her "Turtle Soup," will you, old fellow?' The Mock Turtle said: 'advance twice, set to work very carefully, nibbling first at one end of your nose-- What made you so awfully clever?' 'I have answered three questions, and that you weren't to talk about her and to stand on your.	Reymundo Veum	10255 Boyle Squares\nEastonfurt, NM 08088-6482	+16157208867	2022-11-02 10:09:04	2022-11-02 10:09:04	15
12	Hartmann, Funk and Schowalter	58242354	White Rabbit, jumping up in such confusion that she knew that it was certainly too much of a book,' thought Alice to herself. 'I dare say you're wondering why I don't know of any that do,' Alice hastily replied; 'only one doesn't like changing so often, you know.' 'I don't see how he did it,) he did with the clock. For instance, suppose it were white, but there were three little sisters--they were learning to draw,' the Dormouse said--' the Hatter went on, without attending to her; 'but those.	Prof. Keven Franecki MD	7364 Purdy Meadow\nWittinghaven, NY 35130	(339) 859-1432	2022-11-17 23:39:47	2022-11-17 23:39:47	15
9	Nicolas-Feil	72964017	Knave shook his head off outside,' the Queen said severely 'Who is this?' She said the Gryphon. 'Do you mean by that?' said the Mock Turtle. 'She can't explain MYSELF, I'm afraid, but you might knock, and I could say if I know is, something comes at me like that!' He got behind him, and very nearly getting up and walking away. 'You insult me by talking such nonsense!' 'I didn't mean it!' pleaded poor Alice. 'But you're so easily offended!' 'You'll get used to it!' pleaded poor Alice began in a.	Bettye Veum	16925 Frank Port Suite 049\nEast Guychester, NM 21726-4837	+13417764301	2022-11-02 22:08:38	2022-11-02 22:08:38	15
8	Daugherty PLC	62129205	It sounded an excellent plan, no doubt, and very neatly and simply arranged; the only difficulty was, that she hardly knew what she was looking about for it, you may SIT down,' the King said, turning to Alice as he came, 'Oh! the Duchess, it had finished this short speech, they all moved off, and she thought it would be QUITE as much as she swam about, trying to put everything upon Bill! I wouldn't be so kind,' Alice replied, rather shyly, 'I--I hardly know, sir, just at present--at least I.	Riley Kshlerin	744 Feil Shores\nBlandaville, TX 26658-2137	+1-531-997-1434	2022-10-21 06:15:34	2022-10-21 06:15:34	15
6	Hickle-Gottlieb	85341168	Cat sitting on a bough of a globe of goldfish she had never seen such a long and a Long Tale They were just beginning to think about stopping herself before she found that her shoulders were nowhere to be ashamed of yourself for asking such a nice soft thing to nurse--and she's such a rule at processions; 'and besides, what would happen next. First, she dreamed of little cartwheels, and the Queen, stamping on the spot.' This did not quite know what "it" means well enough, when I get.	Priscilla Crooks	76783 Feest Squares\nLakinshire, DE 94823-5397	680-939-0450	2022-10-29 18:27:08	2022-10-29 18:27:08	15
3	Corkery Group	62453214	There was a table in the world! Oh, my dear paws! Oh my fur and whiskers! She'll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered'; and she was now more than that, if you were all writing very busily on slates. 'What are they made of?' Alice asked in a solemn tone, 'For the Duchess. An invitation for the moment they saw Alice coming. 'There's PLENTY of room!' said Alice a little bottle that stood near. The three soldiers wandered about for a rabbit! I suppose it were.	Mr. Jacinto Trantow	3358 Madaline Canyon Suite 419\nMyronbury, SC 38023-9682	+1-317-516-6178	2022-11-04 00:50:25	2022-11-04 00:50:25	15
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_11_19_171107_create_companies_table	1
6	2022_11_19_171232_create_comments_table	1
7	2014_10_12_200000_add_two_factor_columns_to_users_table	2
8	2022_11_25_121945_add_new_author_id_culumn_to_comments_table	3
9	2022_11_25_122922_make_author_id_culumn_of_comments_table_non_nullable	4
10	2023_01_11_190520_add_cascade_constraint_to_comments_table	5
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, two_factor_secret, two_factor_recovery_codes, two_factor_confirmed_at) FROM stdin;
1	Dr. Neha Wisozk	dnienow@example.com	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1xs99H0oRJ	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
2	Prof. Forrest Fay	grover22@example.com	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	SqkvrVgupN	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
3	Mr. Sammy Langosh Jr.	clotilde36@example.net	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	wuMPbytMS2	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
4	Nicole Sanford	dedric05@example.com	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	lkKwkRc8Td	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
5	Rhiannon Schamberger	monahan.rosie@example.net	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qavA46MujK	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
6	Jeanie Muller	audreanne.stamm@example.org	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	sM4zAeLGkM	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
7	Jayce Stark Jr.	rene.schmitt@example.org	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	4li87o9NgD	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
8	Anastasia Ortiz	kaden.grant@example.net	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	TjVhG1tipg	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
9	Vidal Botsford	wmohr@example.net	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	cxyMCSTv8I	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
10	Ms. Gladys Treutel MD	kcarroll@example.net	2022-11-19 19:24:39	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	uLGgx3lmxq	2022-11-19 19:24:39	2022-11-19 19:24:39	\N	\N	\N
15	user	user@mail.com	\N	$2y$10$PVjxdACbn2KJI8/Qp1UNVezGczUdljr43uGVtowIg1gc8GPBK8QpK	\N	2023-01-11 19:28:34	2023-01-11 19:28:34	\N	\N	\N
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 308, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 32, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 15, true);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: comments comments_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.users(id);


--
-- Name: comments comments_comp_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_comp_id_foreign FOREIGN KEY (comp_id) REFERENCES public.companies(id) ON DELETE CASCADE;


--
-- Name: companies companies_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

