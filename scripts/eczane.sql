PGDMP         8                z            EczaneSistemi    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16403    EczaneSistemi    DATABASE     l   CREATE DATABASE "EczaneSistemi" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "EczaneSistemi";
                postgres    false            ?            1259    16425    hasta    TABLE     %  CREATE TABLE public.hasta (
    hasta_id integer NOT NULL,
    hasta_name character varying(250) NOT NULL,
    hasta_tc character varying(250) NOT NULL,
    ilac_id integer,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.hasta;
       public         heap    postgres    false            ?            1259    16424    hasta_hasta_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hasta_hasta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hasta_hasta_id_seq;
       public          postgres    false    212            ?           0    0    hasta_hasta_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hasta_hasta_id_seq OWNED BY public.hasta.hasta_id;
          public          postgres    false    211            ?            1259    16405    ilac    TABLE     1  CREATE TABLE public.ilac (
    ilac_id integer NOT NULL,
    seri_no character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    type character varying(250) NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.ilac;
       public         heap    postgres    false            ?            1259    16404    ilac_ilac_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ilac_ilac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ilac_ilac_id_seq;
       public          postgres    false    210                        0    0    ilac_ilac_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ilac_ilac_id_seq OWNED BY public.ilac.ilac_id;
          public          postgres    false    209            c           2604    16428    hasta hasta_id    DEFAULT     p   ALTER TABLE ONLY public.hasta ALTER COLUMN hasta_id SET DEFAULT nextval('public.hasta_hasta_id_seq'::regclass);
 =   ALTER TABLE public.hasta ALTER COLUMN hasta_id DROP DEFAULT;
       public          postgres    false    212    211    212            a           2604    16408    ilac ilac_id    DEFAULT     l   ALTER TABLE ONLY public.ilac ALTER COLUMN ilac_id SET DEFAULT nextval('public.ilac_ilac_id_seq'::regclass);
 ;   ALTER TABLE public.ilac ALTER COLUMN ilac_id DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16425    hasta 
   TABLE DATA           Z   COPY public.hasta (hasta_id, hasta_name, hasta_tc, ilac_id, created, updated) FROM stdin;
    public          postgres    false    212   ?       ?          0    16405    ilac 
   TABLE DATA           N   COPY public.ilac (ilac_id, seri_no, name, type, created, updated) FROM stdin;
    public          postgres    false    210                     0    0    hasta_hasta_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hasta_hasta_id_seq', 3, true);
          public          postgres    false    211                       0    0    ilac_ilac_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ilac_ilac_id_seq', 8, true);
          public          postgres    false    209            h           2606    16433    hasta hasta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT hasta_pkey PRIMARY KEY (hasta_id);
 :   ALTER TABLE ONLY public.hasta DROP CONSTRAINT hasta_pkey;
       public            postgres    false    212            f           2606    16413    ilac ilac_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ilac
    ADD CONSTRAINT ilac_pkey PRIMARY KEY (ilac_id);
 8   ALTER TABLE ONLY public.ilac DROP CONSTRAINT ilac_pkey;
       public            postgres    false    210            i           2606    16434    hasta ilac_fk    FK CONSTRAINT     p   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT ilac_fk FOREIGN KEY (ilac_id) REFERENCES public.ilac(ilac_id);
 7   ALTER TABLE ONLY public.hasta DROP CONSTRAINT ilac_fk;
       public          postgres    false    3174    210    212            ?   b   x?m?-?0@a=s
.?f~;?w??^3f?b ????`??<?O???XԼ??H!-?P??,^???
,Ƕ?/????@??C?????J!?ߊ???!      ?   ?   x?}ν?0@??<??u??ٸ???4rdKHL????X??~??#?*"?X?e-??]?????\`dPVK?%fR??v=??H& ??i???+-???=??}N|?`?3??q~ԭ???<g
.*u=qLB???1_I?<7     