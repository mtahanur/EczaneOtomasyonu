PGDMP         0                z            taha_eczane    13.4    13.4 
    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    41776    taha_eczane    DATABASE     h   CREATE DATABASE taha_eczane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE taha_eczane;
                postgres    false            ?            1259    41777    Alis    TABLE     ?   CREATE TABLE public."Alis" (
    alis_fiyat integer,
    alinan_firma character varying,
    alis_id integer NOT NULL,
    alinan_tarih date,
    updated timestamp with time zone,
    created timestamp without time zone
);
    DROP TABLE public."Alis";
       public         heap    postgres    false            ?            1259    41780    Satis    TABLE     ?   CREATE TABLE public."Satis" (
    satis_id integer NOT NULL,
    satis_fiyati integer,
    satilan_tarih character varying,
    created timestamp without time zone,
    updated timestamp without time zone
);
    DROP TABLE public."Satis";
       public         heap    postgres    false            ?          0    41777    Alis 
   TABLE DATA           c   COPY public."Alis" (alis_fiyat, alinan_firma, alis_id, alinan_tarih, updated, created) FROM stdin;
    public          postgres    false    200   ?
       ?          0    41780    Satis 
   TABLE DATA           Z   COPY public."Satis" (satis_id, satis_fiyati, satilan_tarih, created, updated) FROM stdin;
    public          postgres    false    201   \
       '           2606    41793    Alis Alis_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Alis"
    ADD CONSTRAINT "Alis_pkey" PRIMARY KEY (alis_id);
 <   ALTER TABLE ONLY public."Alis" DROP CONSTRAINT "Alis_pkey";
       public            postgres    false    200            )           2606    41795    Satis Satis_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Satis"
    ADD CONSTRAINT "Satis_pkey" PRIMARY KEY (satis_id);
 >   ALTER TABLE ONLY public."Satis" DROP CONSTRAINT "Satis_pkey";
       public            postgres    false    201            ?      x?????? ? ?      ?      x?????? ? ?     