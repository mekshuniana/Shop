PGDMP     
    ;                {            Shop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16588    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16590    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16589    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16597    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16596    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16604    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16603    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16611    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16610    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16620    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16630    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16629    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16619    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16593    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16600    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16607 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16614 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16623 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16633    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    16590    category 
   TABLE DATA                 public          postgres    false    215   o9       *          0    16597    image 
   TABLE DATA                 public          postgres    false    217   �9       ,          0    16604    orders 
   TABLE DATA                 public          postgres    false    219   �=       .          0    16611    person 
   TABLE DATA                 public          postgres    false    221   �=       0          0    16620    product 
   TABLE DATA                 public          postgres    false    223   �>       2          0    16630    product_cart 
   TABLE DATA                 public          postgres    false    225   VN       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 65, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 6, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 13, true);
          public          postgres    false    222            �           2606    16595    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16602    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16609    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16618    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16635    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16628    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16637 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16643 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    16653 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    16648 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    16638 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    16663 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    16658 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b�Ŧ�.l���b����b녽v\�ua���5�'if�̜a��Ƌ���e�1Ȉy6�t�d  ��T0      *   �  x���ͪ]7F�y�3KW�H�DGd()4i�Ŗ�pK҆Ҽ?���������������o~�p{���Ϸ/_�'|�<>�۫�x���O��?���p���_�����)^�~��_߼�������E$R՝�8�E�5��f�u��������Ǘ7}�Ë�wA;�Y��T��jī5@ˤ�W�9-�n@�ˠ
�.�T6���"��i�DZ���m�Y ��A�ɾf�D�K%��i�^(o��i�>P�
�	P�ͪ'%S<,�]i��)�٘VW��\̀&�>b���4+w�n{��>K�E���-��i�I�h"�%���D0�+�$� -�A�Y��v���/�xs5�d���[���2(jKkDdB�h�bO��A{�2Va�P@�2����]0>�r'nQ�lmZI:�E��i�\=F�ji�X�
����lk[T�H��Fs�RNwS��,�����0b��lu&/c�.%P�u��Z0/=m>�ڊ`g7>6��=�W�^G=RJ��:^t%�)LB�m�3U��x�/�ʱ�`�6R����=e�]'i^��J�~�F��-yJ}�4j6�u%��e�I�.��B��OS��Z�e��Qx���O�3!	p�Nf�ԋ�Z��1E�-G�&�D����6cA9��:�1��k�flN3�j�b`_׀&b���@��GM�-9���Q+R����v��%mo~�r��)��I8a��:�F#�Ԓ�2�y�������%w	R�H�aK3u���]"�j��z�$�rj�	�e������i��:�q(5T)b��c�8�Z�!�Zp�/��㦈�F�L���biG]A�+�'����u��αB\(�d�����L-�lJV��y����㦚��!ԁ����I�ySku��SB��4�O�榹}F��+Χ!X_���Z�ڞ��~*K��8�,a�0B���ӣh����4�O=n��`@7���M��B���n�w���=Oӡ�x�/;f��      ,   
   x���          .   �   x����o�0 �;E$hB�|hvb�\��F�,E
TZ:���~xY�{{y�{���6Hv �w�>��q�i'��Xn��-YcN��i���ښ������,$����>'�l���K��h�e�g��"����ieodu�t��I�w��i3����OϏ��?i�C0g��%�fw0w]���j���(˫���q�p*���٥��+>I�W)/����~��\���^^[      0   h  x��ZKo���WtN���\�ҒA
�Č-9 � 9�����I��mw)�2H��� ���v�a`�1�pvg	����T}U���Y��(��ٞ��z|�Uu��޼�qǬ߾�y����ֽ��;�����3�[�=sk���^�&��ܽ��z��j?��Ý�=z����n�xf���M�_l�4?i�Kޣ?n������+�/7����Ms��K�Z}�jm��b�ԗ�V�W��zci���|�L�~2M{&�Пg�I�D��������(	?�GI�&g&9�_h0�e��ޥz�$	�n�M��c�Mz�'K{��үdv��ڃ�O��gɀ>	�Iz�`����ؘ��Ľ�(}ƃ��)�3����8������ �����-�4C�ѧ}��oq����Ƿ��-�ӓ_#���ȫs��~����=�.JNx��Sz��W���7�&�.���9�hI� �sF;����Ԫ;�#��ʅ2:0��8�M�Or�YQ�G+�����|4lDZ��OfH@������>}؃0>D9`�T�y{�}��~N�i�:Γİ4����4,>�i7OH�����J�x2�,��a�a%�O�ذ�Hv �lZ����#vv)�b�����+(��e�K���$I�HIJfݰ_A��q�c��˟����tU��+l�$�i��(Ԁ�������Z���}8t�&��ci�[��:�*����3R�O[���<Y>h]�UN~� ؗ�c��)	2�ב��=+��5Q�d#��Y�j��Ŏ���xb]���D*�x2��؈9ٯ2w$�2z��h�"m�C�Kj�$�e�`8v�1��Q:bm��s)���ȆL2Hw���Q���C�C�1T;���&r�t���}���6H^��w뜞\���}���r^ͫ����K�Y��|�ň�j�L&�c���b�Z����G�!m�&Ys/؛
��������Ѿ���-�o�*arR��`�H�/����d�R^��;�o���2�嵥�����rmb>WH�SH4��V ���e��Q�,3/�j5�|M
��q�M��h�5�i<Q���dz�8�Ea���/�j*��s[��/a��4b�S�{�tr}2-R2�:��F ��L~�E�H�8��X���=Q���+fӟ}���=ƘE݁M'�M����aQ6yGs!��I�z�A΋��3�,ɨ��dt�`���J������ DM�B&�1b
��KV����E,A$�i��T�
���f\�蕂�c�j6�,g�E�H���P�I�6�	�<-+H�(@W1�����ߓ���xJ�v"ݶ,��l~bm-��R����Q�?�
��,��E�n�_�z��r����h���	�>��f�X��L�3BJ�9�Ī|�U��<��Hs�Χa21Rf��u�/g��Sa~j;��z}�aq����o�w�1ps�փO�f�:�����Aq����.���60�!Xj�#��E�y���X����k���J���*U�wj�{��>S�G�ߎ���1�<(�#�G1�H0d��Т�P�,pz�q�=R>P�+�{)�})�R) �I�d�¾�O���ud�''�����bALH����ba)� �/<v6�Ρ��]�7;�U���j��iS�ɴ�{��`��7�΁P�&��$�X��R�����B,�:�v����'��fc�Ai��1���0�c!�L��a��P<�82p�6B(��ێV�S[0���V�ϱ�!b��rl+�@m[�܁'5�?χ� �4���"���VO=�5���0��f= S���T]%��î�ђ0#5���n'�L4UO|�ੴ?� 0`�����|����)���&S���8�d�̑�
�5�8�Bs�����bP�y��}� ̚K��c�>�h~ef���$9�
�D!�Ҍg&���OXM�Ĥ�6;����?��b����U�Q�8�ѩ)�/d��9�#^���-) � �rt.Hkx<��b�,�@��е���V/Q�Cy�s�R�Bi|Wѽ�|5c��a���K( e�LK�D�l(��Iy��l���F�:3�����w?��$}k�����N{&����m��5�$�@%ۘ�o5�"��\�(�C�Z�De1OTVM��F�,���VV�C����i+����W�qM;K� �3���j���H���?��ri�^�Z|A��'�YR����P�G�}#/mnଉR荾`����wr�}E�������Es�u����r������Y�����{��$JCm�:Tp���ͥR��&�26ho4�:A�|��X�|��G�DZ(wG6u��:+8��é�T ��`�9���`,��{Ў}�������u�"�A_�lN9n�+ߟg9P+��Srfl��y,?K/�k�5\��O�)+�K�v܇�E��b��S������X�08vD�h��̢�/4�&�\R�q�aM)T�jRi�z�\�ok�cO��P� }ؘ�.�p8�
IF�E����*�9�� D)Xd������10�6�o��a��-`�H�#���=��w�B��׸4~�����nqzy��]�SP�ƨLUX>�	�ȭ��ܺ�Vk,�j���KҟV�u��y������NT�s&U�T�f�K���hO�,�g��Og���j�m��̩~��&�Sm����N��gz�q���@;~�}2�L_��>ڏ ߌ�"؅/��C�[�%�'urp�*fRL�@�*�4L9I'ENĀ+r�j��(
�(j^���E�kD3���gVč$�!7Ϙ5b ��&r�S9A���
6�L([�J�{9fK�n�A>�@�{�$�����A+j_��G,��ͣصa&�bY��XM{��o[�e�<�HN��g����i�E�.�lBMP�s@�.lK}B@P��¹��u
�&H���=A\��)U�=t��/#qD�^�͗�-��-:��&Vc�rlFnL��$�!4z�⽦���i�"ꁍ��.��k�Țr��U�P��y�xΕt����_ N�*&�H����iJT�i1�JA�}/���E�B+��ط�>/S�_=eNk���\]�!�)~I�U�F"�f�i;�qڻ2��>�A�#�a6�^P_9�W��d�H6�d��?]�s&+��LX���;Օ��܅CL��B�]�����e�hֿ���̲�9g�Ko��,�r����k˵F�&��M.B�~�����Own޾��in�ؼss㗱�� }�d�s�_~�c{����l��6�i�Ui�噇W��C��@!i���	��b����؁~.X�޾ov�}�no��P��W��҈#;Wr�H��"��=�@{���%��D/�O�<���boZ:P���i�{������a!�׵Ԝ�����AIY!�D0̚�y��[0�`_���:�\.�4G^YMN��z��p��Y<�Xo(�����KWRA]��c>�Mή�¨r�L2�
�s%;X���K�δ�7$�o���T�r0������d���@w7�Fr'qr����z%�ĎHE7b�>E+F��A��/���S��'��_}��%嚽஧u���Qմ��\�;�{��������ɽ�	.;i׹��<*AD�&�� ������3�-^!�C���J�G��$�E�^���C/i�֧�d�n�Cݑ��L,�e�}��W�I���9���v�.O"�j�"g��n�\����b�Y;)R��Og��~ڻ���ڏqU���N�~vՆFgӊ�x�;��/��>��<rx ���4%�vD_�&�Y�m�Jx)�:�:�ĞJ��T�}\���Nk�"a^L7��&��~��Q���1ű�\���%�a�\����5��.���0C�}N��h��t��i>x��5��v��;����?��^H      2   
   x���         