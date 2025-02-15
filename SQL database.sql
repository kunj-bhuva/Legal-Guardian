PGDMP  "                    |         	   202201275    10.20    16.0 E               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    277849 	   202201275    DATABASE     w   CREATE DATABASE "202201275" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE "202201275";
             	   202201275    false                        2615    382048    police    SCHEMA        CREATE SCHEMA police;
    DROP SCHEMA police;
             	   202201275    false            �            1259    382640    all_case    TABLE     {   CREATE TABLE police.all_case (
    case_id integer NOT NULL,
    open_since date NOT NULL,
    filed_by bigint NOT NULL
);
    DROP TABLE police.all_case;
       police         	   202201275    false    13            �            1259    433421    case_detail    TABLE     L   CREATE TABLE police.case_detail (
    cid integer,
    closing_date date
);
    DROP TABLE police.case_detail;
       police         	   202201275    false    13            �            1259    433413    criminal_detail    TABLE     d   CREATE TABLE police.criminal_detail (
    aadhar_no bigint,
    gang_name character varying(255)
);
 #   DROP TABLE police.criminal_detail;
       police         	   202201275    false    13            �            1259    458065    evidence    TABLE     �   CREATE TABLE police.evidence (
    item character varying(30) NOT NULL,
    place_of_discovery character varying(30) NOT NULL,
    cid integer NOT NULL
);
    DROP TABLE police.evidence;
       police         	   202201275    false    13            �            1259    382755 	   inventory    TABLE     �   CREATE TABLE police.inventory (
    sid character varying NOT NULL,
    name_of_item character varying(20) NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE police.inventory;
       police         	   202201275    false    13            �            1259    382305    people    TABLE     �   CREATE TABLE police.people (
    aadhar_no bigint NOT NULL,
    fname character varying(20) NOT NULL,
    mname character varying(20),
    lname character varying(20) NOT NULL,
    dob date,
    gender character(1)
);
    DROP TABLE police.people;
       police         	   202201275    false    13            �            1259    382356    police_personal    TABLE     �   CREATE TABLE police.police_personal (
    aadhar_no bigint NOT NULL,
    police_id integer NOT NULL,
    station_id character varying(20),
    rank integer
);
 #   DROP TABLE police.police_personal;
       police         	   202201275    false    13            �            1259    412329    police_station    TABLE     �   CREATE TABLE police.police_station (
    station_incharge integer NOT NULL,
    station_id character varying(20) NOT NULL,
    pincode integer
);
 "   DROP TABLE police.police_station;
       police         	   202201275    false    13            �            1259    384689    shifts    TABLE     �   CREATE TABLE police.shifts (
    pid integer NOT NULL,
    date date NOT NULL,
    morning character(1),
    evening character(1)
);
    DROP TABLE police.shifts;
       police         	   202201275    false    13            �            1259    382731    solved_cases    TABLE     �   CREATE TABLE police.solved_cases (
    aadhar_no bigint NOT NULL,
    cid integer NOT NULL,
    verdict character varying(60) NOT NULL
);
     DROP TABLE police.solved_cases;
       police         	   202201275    false    13            �            1259    382681    suspects    TABLE     {   CREATE TABLE police.suspects (
    aadhar_no bigint NOT NULL,
    cid integer NOT NULL,
    alias character varying(60)
);
    DROP TABLE police.suspects;
       police         	   202201275    false    13            �            1259    384778    transfer    TABLE     �   CREATE TABLE police.transfer (
    pid integer NOT NULL,
    date date NOT NULL,
    old_station_id character varying(20),
    new_station_id character varying(20)
);
    DROP TABLE police.transfer;
       police         	   202201275    false    13            �            1259    382768    vehicles    TABLE     �   CREATE TABLE police.vehicles (
    registration_no character varying(10) NOT NULL,
    sid character varying(20) NOT NULL,
    model character varying(50),
    purchase_year integer
);
    DROP TABLE police.vehicles;
       police         	   202201275    false    13            �            1259    383996    warrant    TABLE     �   CREATE TABLE police.warrant (
    warrant_no integer NOT NULL,
    pid integer NOT NULL,
    offence character varying(50),
    valid_till date,
    against_aadhar bigint NOT NULL
);
    DROP TABLE police.warrant;
       police         	   202201275    false    13            �            1259    382706    witness    TABLE     q   CREATE TABLE police.witness (
    aadhar_no bigint NOT NULL,
    cid integer NOT NULL,
    date date NOT NULL
);
    DROP TABLE police.witness;
       police         	   202201275    false    13            �            1259    384488    workings    TABLE     U   CREATE TABLE police.workings (
    pid integer NOT NULL,
    cid integer NOT NULL
);
    DROP TABLE police.workings;
       police         	   202201275    false    13                      0    382640    all_case 
   TABLE DATA           A   COPY police.all_case (case_id, open_since, filed_by) FROM stdin;
    police       	   202201275    false    229   wT                 0    433421    case_detail 
   TABLE DATA           8   COPY police.case_detail (cid, closing_date) FROM stdin;
    police       	   202201275    false    241   kY                 0    433413    criminal_detail 
   TABLE DATA           ?   COPY police.criminal_detail (aadhar_no, gang_name) FROM stdin;
    police       	   202201275    false    240   �Z                 0    458065    evidence 
   TABLE DATA           A   COPY police.evidence (item, place_of_discovery, cid) FROM stdin;
    police       	   202201275    false    242   �]                 0    382755 	   inventory 
   TABLE DATA           @   COPY police.inventory (sid, name_of_item, quantity) FROM stdin;
    police       	   202201275    false    233   2_                 0    382305    people 
   TABLE DATA           M   COPY police.people (aadhar_no, fname, mname, lname, dob, gender) FROM stdin;
    police       	   202201275    false    227   �_                 0    382356    police_personal 
   TABLE DATA           Q   COPY police.police_personal (aadhar_no, police_id, station_id, rank) FROM stdin;
    police       	   202201275    false    228   �                 0    412329    police_station 
   TABLE DATA           O   COPY police.police_station (station_incharge, station_id, pincode) FROM stdin;
    police       	   202201275    false    239   [�                 0    384689    shifts 
   TABLE DATA           =   COPY police.shifts (pid, date, morning, evening) FROM stdin;
    police       	   202201275    false    237   ��                 0    382731    solved_cases 
   TABLE DATA           ?   COPY police.solved_cases (aadhar_no, cid, verdict) FROM stdin;
    police       	   202201275    false    232   S�       	          0    382681    suspects 
   TABLE DATA           9   COPY police.suspects (aadhar_no, cid, alias) FROM stdin;
    police       	   202201275    false    230   ʕ                 0    384778    transfer 
   TABLE DATA           M   COPY police.transfer (pid, date, old_station_id, new_station_id) FROM stdin;
    police       	   202201275    false    238   @�                 0    382768    vehicles 
   TABLE DATA           N   COPY police.vehicles (registration_no, sid, model, purchase_year) FROM stdin;
    police       	   202201275    false    234   ˙                 0    383996    warrant 
   TABLE DATA           W   COPY police.warrant (warrant_no, pid, offence, valid_till, against_aadhar) FROM stdin;
    police       	   202201275    false    235   ��       
          0    382706    witness 
   TABLE DATA           7   COPY police.witness (aadhar_no, cid, date) FROM stdin;
    police       	   202201275    false    231   �                 0    384488    workings 
   TABLE DATA           ,   COPY police.workings (pid, cid) FROM stdin;
    police       	   202201275    false    236   ��       d           2606    382644    all_case current_case_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY police.all_case
    ADD CONSTRAINT current_case_pkey PRIMARY KEY (case_id);
 D   ALTER TABLE ONLY police.all_case DROP CONSTRAINT current_case_pkey;
       police         	   202201275    false    229            z           2606    458069    evidence evidence_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY police.evidence
    ADD CONSTRAINT evidence_pkey PRIMARY KEY (item, place_of_discovery, cid);
 @   ALTER TABLE ONLY police.evidence DROP CONSTRAINT evidence_pkey;
       police         	   202201275    false    242    242    242            l           2606    382762    inventory inventory_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY police.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (name_of_item, sid);
 B   ALTER TABLE ONLY police.inventory DROP CONSTRAINT inventory_pkey;
       police         	   202201275    false    233    233            j           2606    386539    solved_cases old_criminals_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY police.solved_cases
    ADD CONSTRAINT old_criminals_pkey PRIMARY KEY (aadhar_no, cid);
 I   ALTER TABLE ONLY police.solved_cases DROP CONSTRAINT old_criminals_pkey;
       police         	   202201275    false    232    232            `           2606    386503    people people_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY police.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (aadhar_no);
 <   ALTER TABLE ONLY police.people DROP CONSTRAINT people_pkey;
       police         	   202201275    false    227            b           2606    382360 $   police_personal police_personal_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY police.police_personal
    ADD CONSTRAINT police_personal_pkey PRIMARY KEY (police_id);
 N   ALTER TABLE ONLY police.police_personal DROP CONSTRAINT police_personal_pkey;
       police         	   202201275    false    228            x           2606    412333 "   police_station police_station_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY police.police_station
    ADD CONSTRAINT police_station_pkey PRIMARY KEY (station_id);
 L   ALTER TABLE ONLY police.police_station DROP CONSTRAINT police_station_pkey;
       police         	   202201275    false    239            t           2606    384693    shifts shifts_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY police.shifts
    ADD CONSTRAINT shifts_pkey PRIMARY KEY (date, pid);
 <   ALTER TABLE ONLY police.shifts DROP CONSTRAINT shifts_pkey;
       police         	   202201275    false    237    237            f           2606    386550    suspects suspects_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY police.suspects
    ADD CONSTRAINT suspects_pkey PRIMARY KEY (aadhar_no, cid);
 @   ALTER TABLE ONLY police.suspects DROP CONSTRAINT suspects_pkey;
       police         	   202201275    false    230    230            v           2606    384782    transfer transfer_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY police.transfer
    ADD CONSTRAINT transfer_pkey PRIMARY KEY (date, pid);
 @   ALTER TABLE ONLY police.transfer DROP CONSTRAINT transfer_pkey;
       police         	   202201275    false    238    238            n           2606    382772    vehicles vehicles_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY police.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (registration_no);
 @   ALTER TABLE ONLY police.vehicles DROP CONSTRAINT vehicles_pkey;
       police         	   202201275    false    234            p           2606    384000    warrant warrant_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY police.warrant
    ADD CONSTRAINT warrant_pkey PRIMARY KEY (warrant_no);
 >   ALTER TABLE ONLY police.warrant DROP CONSTRAINT warrant_pkey;
       police         	   202201275    false    235            h           2606    386561    witness witness_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY police.witness
    ADD CONSTRAINT witness_pkey PRIMARY KEY (aadhar_no, cid);
 >   ALTER TABLE ONLY police.witness DROP CONSTRAINT witness_pkey;
       police         	   202201275    false    231    231            r           2606    384492    workings workings_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY police.workings
    ADD CONSTRAINT workings_pkey PRIMARY KEY (cid, pid);
 @   ALTER TABLE ONLY police.workings DROP CONSTRAINT workings_pkey;
       police         	   202201275    false    236    236            �           2606    433416    criminal_detail aadhar_no    FK CONSTRAINT     �   ALTER TABLE ONLY police.criminal_detail
    ADD CONSTRAINT aadhar_no FOREIGN KEY (aadhar_no) REFERENCES police.people(aadhar_no);
 C   ALTER TABLE ONLY police.criminal_detail DROP CONSTRAINT aadhar_no;
       police       	   202201275    false    240    227    3680            �           2606    433424    case_detail cid    FK CONSTRAINT     r   ALTER TABLE ONLY police.case_detail
    ADD CONSTRAINT cid FOREIGN KEY (cid) REFERENCES police.all_case(case_id);
 9   ALTER TABLE ONLY police.case_detail DROP CONSTRAINT cid;
       police       	   202201275    false    3684    229    241            |           2606    386580 #   all_case current_case_filed_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.all_case
    ADD CONSTRAINT current_case_filed_by_fkey FOREIGN KEY (filed_by) REFERENCES police.people(aadhar_no) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY police.all_case DROP CONSTRAINT current_case_filed_by_fkey;
       police       	   202201275    false    227    3680    229            �           2606    458070    evidence evidence_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.evidence
    ADD CONSTRAINT evidence_cid_fkey FOREIGN KEY (cid) REFERENCES police.all_case(case_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY police.evidence DROP CONSTRAINT evidence_cid_fkey;
       police       	   202201275    false    242    229    3684            �           2606    386540 )   solved_cases old_criminals_aadhar_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.solved_cases
    ADD CONSTRAINT old_criminals_aadhar_no_fkey FOREIGN KEY (aadhar_no) REFERENCES police.people(aadhar_no) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY police.solved_cases DROP CONSTRAINT old_criminals_aadhar_no_fkey;
       police       	   202201275    false    3680    232    227            {           2606    412571 /   police_personal police_personal_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.police_personal
    ADD CONSTRAINT police_personal_station_id_fkey FOREIGN KEY (station_id) REFERENCES police.police_station(station_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY police.police_personal DROP CONSTRAINT police_personal_station_id_fkey;
       police       	   202201275    false    228    3704    239            �           2606    412334 3   police_station police_station_station_incharge_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.police_station
    ADD CONSTRAINT police_station_station_incharge_fkey FOREIGN KEY (station_incharge) REFERENCES police.police_personal(police_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY police.police_station DROP CONSTRAINT police_station_station_incharge_fkey;
       police       	   202201275    false    228    3682    239            �           2606    384694    shifts shifts_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.shifts
    ADD CONSTRAINT shifts_pid_fkey FOREIGN KEY (pid) REFERENCES police.police_personal(police_id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY police.shifts DROP CONSTRAINT shifts_pid_fkey;
       police       	   202201275    false    237    3682    228            �           2606    384426 "   solved_cases solved_cases_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.solved_cases
    ADD CONSTRAINT solved_cases_cid_fkey FOREIGN KEY (cid) REFERENCES police.all_case(case_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY police.solved_cases DROP CONSTRAINT solved_cases_cid_fkey;
       police       	   202201275    false    229    232    3684            }           2606    386551     suspects suspects_aadhar_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.suspects
    ADD CONSTRAINT suspects_aadhar_no_fkey FOREIGN KEY (aadhar_no) REFERENCES police.people(aadhar_no) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY police.suspects DROP CONSTRAINT suspects_aadhar_no_fkey;
       police       	   202201275    false    3680    230    227            ~           2606    382691    suspects suspects_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.suspects
    ADD CONSTRAINT suspects_cid_fkey FOREIGN KEY (cid) REFERENCES police.all_case(case_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY police.suspects DROP CONSTRAINT suspects_cid_fkey;
       police       	   202201275    false    3684    230    229            �           2606    384783    transfer transfer_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.transfer
    ADD CONSTRAINT transfer_pid_fkey FOREIGN KEY (pid) REFERENCES police.police_personal(police_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY police.transfer DROP CONSTRAINT transfer_pid_fkey;
       police       	   202201275    false    228    3682    238            �           2606    386589 "   warrant warrant_againt_aadhar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.warrant
    ADD CONSTRAINT warrant_againt_aadhar_fkey FOREIGN KEY (against_aadhar) REFERENCES police.people(aadhar_no) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY police.warrant DROP CONSTRAINT warrant_againt_aadhar_fkey;
       police       	   202201275    false    3680    235    227            �           2606    384001    warrant warrant_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.warrant
    ADD CONSTRAINT warrant_pid_fkey FOREIGN KEY (pid) REFERENCES police.police_personal(police_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY police.warrant DROP CONSTRAINT warrant_pid_fkey;
       police       	   202201275    false    228    3682    235                       2606    386562    witness witness_aadhar_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.witness
    ADD CONSTRAINT witness_aadhar_no_fkey FOREIGN KEY (aadhar_no) REFERENCES police.people(aadhar_no) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY police.witness DROP CONSTRAINT witness_aadhar_no_fkey;
       police       	   202201275    false    3680    231    227            �           2606    382716    witness witness_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.witness
    ADD CONSTRAINT witness_cid_fkey FOREIGN KEY (cid) REFERENCES police.all_case(case_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY police.witness DROP CONSTRAINT witness_cid_fkey;
       police       	   202201275    false    231    3684    229            �           2606    384493    workings workings_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.workings
    ADD CONSTRAINT workings_cid_fkey FOREIGN KEY (cid) REFERENCES police.all_case(case_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY police.workings DROP CONSTRAINT workings_cid_fkey;
       police       	   202201275    false    229    3684    236            �           2606    384498    workings workings_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY police.workings
    ADD CONSTRAINT workings_pid_fkey FOREIGN KEY (pid) REFERENCES police.police_personal(police_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY police.workings DROP CONSTRAINT workings_pid_fkey;
       police       	   202201275    false    228    3682    236               �  x�U�Kr�HEǪ�TGB��K�}H˒{�/�I�~@�֥K�W�w�KV����]Y�[��r�{���fJl�1���r��e�RM̟<%��k�J���˯�%$���M��^�g��.�$�bq������k�ʏ��ž�T�,Ŷ�4�7Ş��eo�(-�f>�����˺]Z���|�_�KL�üZ����cvJC��J=�;&��Ȫr �#b��B��B}b�|��� ��B,����*�i��#{�X�մ8y��<y�J#��p���A��}-�b�m/G�Wik�r���F�*WO�
���.�2[����b� ym��[S�G|�,ĵGc�mӈ�!hXg��M;����]	�m;ĉ��b_�h�֦K�6]��%�n��/yh? �*x����6�D)K�\�m��!��S�(�tP�'��п��գ�TB~@�V�2�����EU�ȗW���r�M#���6z�~a��5�z��$_[b���c-bo9&��8�L���nA�g����d��"�e�,`gh_��#���;�"�D1�ز���%�@8����w�� gP�ԭEUt0������v�7��5��u%�c��#�����a�z�g�)��Q�'��YVH�/`�#��K�!�q
��ˏ�'2a�Ox��xH~��W�l��Tb��� ��^��="(k|2�bY��h(�����0����G�ej��2�';��f���;&O��ܐN�����Be��{��rf,(hn&�1��W7��t��!(�u��?P�z���bĻ��zQi<��b���g���s�
0�]���/�� �ᾇ!�{����q��< @=����vD	��S#ȫ}�)�#�Y��QĹ5g�M�<�d����~���X�˧_���g�ƕ�/�����������2�>�|L�'�)�9� �sg���f^v��{z�fDT����B/��X;g���<{�ͪF~�|�p�4��G��C��b�[>�s�X!l�9(��O��|�07��=�r�|��9g� ��@W!r��귚�Ӧ�1g�.�&������.��r�Ր�4q��U=�͇jgőg�����?�mA߄v����U���w��J܃�Y�l8`F������tۅ��Gx�n͂Gi|ʱ6϶ڿ^8璵��.�Ѵ�%!��;��h��C��D�Uk.���O>�X�hX��^F�\�
��ׇz��4�ė=j�\��a!�6��#���|>����         /  x�MRKn1[7wI&߻���x���J��1���@�W�������V��,�U�jcW�����c����(���;��`��/�V�I�V��TJ<g}���fC�8��"`���2�Tr���q����{��R� �{���"�jY�j���=VO��̎7�I��l����$ժʮZ��-��-LKG#bo7+����̤��6Ot���L��Yi�.��x9�I��dD8-�Wh�r��Ӡ�>�*����["fe�}S2�c��܂��(,h�1#I��1�Q��#�or����J���﷔��Y��         �  x��TKo�6>ۿB���EQ�M��6��AO�hwƈ���ɯ��̤�n���:����Ay1��5�������t�n��������<��\��dRK٪�q6S[�ݧ�WW�1KN�Rusl�ihݗej��]���s�y1㘒��v]S����<��t?�)e
Y)
�e�6��u"���Suٗ���^��qh�ڈ�̯�TקI��Ќ�a�����5+IRF˲� ����e���b�$Aq×���N�v���a��q�:�Ds�H���so>*��o������ni�|<L��4ݼ���gI_zKE�Us�T]_\]��H��D�T��� �a~���m5��=W��]�O��0g �1@�����'�G״����e�ơ��Sc���!�jH^��Q�C&VI!����}��6�R�"�����W�	؅� �G�S
^1g�ުO]�w+T̡�D2Uw����T�maSN��;�ɞ�@"��oe_ qp��aF�
a
�� P�@ ����a�������Y���ϤyEE)*�~�5��\}>.7��yA�u77ݡǊx�@��M{X�fV�X	��p����k˾ƞ��Ŝc5��6������"��W����5���3%�S��BP�߀�x4�"�b�ȯ5�{�.�#I2�0����'�7���s�#�bY�5������R��
<�"J��)����]-�
����n?G�����8�k$         �  x�uT�n� <���T�1���Jm�K���;�~H��Կ/�����3ÎSmz]�Nu�[����Ѵ��m��
9,7j��i\I��:��m�Q�Cϓ����.��*؛����%%'e���m��l�X�C@���+L��"rA��0h���u��|i{<�F�ȷ�
��\$%��>��V�^��M=P(���ģ���FFjխ@�7e��XɼP��8�NY��Z5��\�B����D �����R����j*�1���U/9nQ5��7��Rx�Տ�9�scw\��(,&�8Ќ2��&4�h��@=��]@ł�#�,=$��C���������$���&���6��9���N`���L8������p�y�]��j�t� �oB���@�CS         �   x�mPK� ]�)<����vѦ��ѭ��4����󫩃Md9�7o�nA=>�hm  �^�k���cgvG=����8�$��蜙�~��n1a�Jm��C B�SS�d��8&�{��V���~"Ί�*_Wp�7���
`��*	e��R[V"�~#)6�T���X&�r�g������P���            x�]��r�H���QO�w}�ǰ/�Z2�k�:%��j;$C$� �H��O?������t�T7E""����i^�e��E���i8��}���7D���Q�Tٻ8��ѷ��&+�&.������}��߭��4��w��[���&~��2��[UM�TI��U��m�����k�C�����J>��KS� +�4�뤨�4��Z�;�����8u.�Ѿn�+=W�.���~��&Κ2.�4��ֻn������uӸ��&}����F��"��$O������m�m<���ihOG=M�.�i
����<�S�[}u/]��ݶC��m���p]���wI�7�E��I�U���l�4G_��&��NS���� �Gѓ7Y]Tu�g��}���������6���ݼk�7e���u
Y�d�|\'Mt=��p���OO������4�{{��v��/�$�˦�����޻a�9�����og��2����iR�y��iQF���#��q����^���wYlgP�M^5�������<���3����W�����x��llgEY6Y'�?�їq7m�-���ݬ�W:d{��L����(��a|ޱ��4��9���͸֪K�[�@M�u��I���i$�]t�kgǣ�r��4�����OҦi�ۢ��Ϯ�q����N�"��Pd�MS5y�$y�EG��S�:%R{���]�Z.�ڤTkH��̪�,�@S�ihc���s���>K�$Y'e^eEݴ�0�8�����J�R��ܼHn���ٓ��9DN����A�E�_��Y��Y��;�t<ά�tl�M�t�s��/�,��kl�w���6z�ǳ��d�1H�"�6�l"�X�?v�Nw�8k,��/'�"˒R������n$��p��%bxC����)�2)��K{^s,�aӷg�a�����x��o�,��8��8ox���ɷ�ɽF��{�����4nؿ����o	^���'7m�&l9_��TqNP���vC���Y!sp�Bd���f����X~�h��Ӎ�&ڸ�w���Z��xM`�u�eUU��D��fD�.�������r*���i��i��`��h�(oO��Ua0"�I@���ͪ� j�� 4��Qlz�S�d�t"h�<.����C���n<����ߏ��qY����IIY�&���~>��� �;�3fq�V)���dK9��"+~�~)"����=�	����f����*&|>ï�������} O���(RU9�7�����p���a~��.���y��\���!% ���W}�̄T��c7�M�l�.ӣ)EA8����F�>Nsgat�>$"=��#������J�?�IcXm��-�qPY	���dP��=X�G8��>�g�8Ko,�+�׺)�2O���n8:r����Τ�v��|#< �0u��/-��{3��c��-W�
��ج9���l�x�p$�z�2|5O��4���S��a��Y�V�w?uǣA�p"dD�aKJ���n�r�o����
��_y^e7c���2��l#�I�n����<R���2+�+�,+*�bC��M�=N�*�؊���ĉg �YTeIU����;��bף�u�g�tY��(2�~� ^�$���&P��??�[eނ��b��O!b��)�����goO=?8��ڗֳ�� ����$M<�����Q~߷/��2���}����p��GXp8�tR�%����q<�٬��4����"���rX!O�!	��8�_���rG��Cg�P����$N�cD;��>��[�q�1 3�-��'2�,K�:f�+t�Mn#�B.��hJ�P!�Da^q=�@�W�(��#�4�*-�سL����$H����0�o�F����K��b!y��������u?G�7[��L��%����d�`�[Θ4�iw<v��:?�o��.)��������;���-�k

;	��FM�l��Nz�>��	�q�vC^�A�Td)X]������۳��q�5z5��GB������N�t<�����~�X�����¯*rv'��[�a���l�$d~��¢K��y�#���ɢ�]/�yxm�v���%/J�
e�!8�dJ
�3!�ü��6UkW��"����G~@>γi٫1�eۑŕ�$XR%Em�����=�p���f��@e�$bTia7�ah7��}���N4I����4_!%�:�����r��P(Q �EA����˷�ﭭ���<]	�c�`���:�^�l|m��[�	�i8_ӤǛ����:�;��������,�.S��4
,W����<�E;��zU��G�&��($uo�Ӂ8�v�n��:32PAe4X��@4ܴ������-�|ޯ����{�
 2%;�������E_��8 kI/�w�L�؇5������k�+�eI�cI�����qղ�_�vC����&��0�uVb2"��6�E��ٳ7��,3�N�h��]'�dkX��q2�ns��oZz�֤�y�\�����͌�֣i=8g��L�Ͽ2�Ϗqţ_�G˫/}��ޔj�����\�N(��F�
X�ԭz�C%��mV		f�r*�}ܹ��7�oN���+[r-�`�_�Ԓ4�����		�Y7��gS���Jg�b��A�J4�8�ֿ�{)���������+`<I@8I�n�[��;�w2��Q���7�x����S�@��ѽ8Ȓ_8�1��`-Q�MBN"��;��U�������D}΋ۍ��.ѿy��1��\�bȅ{���8]̮��^)��f�n�S��s7�p�_b������Fж�� G���n�
�[g�2?b�C4�Uc�D;���pF�=OVGxI��|G��'�Lx�'avVz��?�����>���Y��_�W���=;{��nN�g �$�r�t��_���~3�S�Q��G郣6�`�,aVG�Wݦkw*&H���O6aV�45�T��k�g�?�>z��Ky/�0�"�'g`�S���b�Nn����:�/���$@��6aw��\#;7�P���Cf�@yV��	x�zW*E}[��3}i2�x��OKx,�%��?�����o��7����iQ'�;h{ ����Q�����L:%F��G6T�ưC��
����G��WXX��cg���<��w/ �#�an0�>��*��ޗno��G���Y����K�M�nb���YF�[Ui����ȩ�lT	GF-O�W$���=�߫����������bx.��dINv����c���������T��*L��q���
����Nz�{I̥�Jbh���=)��EU\*�5\R�<U�Z�F��9���n񃩯
�H����<9)����l�"ʌy�O P�ył%d��G���	G�v�]آ�@���k��b_�!hvp��.P�y�r��H${�Tg���E�����q=���M.���Y�F�����9��+nKŵ�O�A�i�0�~BF��s�.�9��$�B/��JL/Eۿ�,��*�*��b5pw1�}�Ehc�C���W��	(oI4�4�A���%���ۭ�����g��
Zi\���i߯Feq�W[��[VpgrHz~`W@������+��B�a�U�W���I��c���Vq4	�)	Ҥ@n���_��Hο�f��c(�z+g"\�U�E�e��F.���7#�iP�RNl�r}ZGf~Q��B*��K�}�_P�(JT|g�5�֬�/�;����P�;PÝݥd��9�ը���U�|m�:���v�Y���O!*9�裡~��������t��W�>��o%\^�iV�@�����r��Y����S�_��E��؊+�I��x��Z/���*�9�7[��LU�"&�R��?�ᨷq7�������)���gqWYC�t���SPAA���BT�U^`%I>��CN�����s��u�K
B>+b��*f~l7�Уk���[���v�K�EQd
�m���ib�{w��\���R�u������KQF:E�E��2J^;�Gg�Ye�؅��{,lLE�R�%N/X�V*n�`��z
���<��c�Pu)&�/��F��R~�    ���PaQ6������y��듧�kg-��3�Ƿ���-���������}�k|Msi@%�y�JE�/�Q�r�Mwb��!�S�i�bN *qTO��׶���}��.%+a(���,�ً�8u@��z����R���`�A�R��Ua���/�[�lY�pj����y�Z�?,����'��Kkb#��:�4��O>Q�w�������q�������zQPP���7�
���Kſ)1�y$p<��j�O��*��ĖfM��\"�%m�1�-"��4W~�|�ZYw�l/�������:�A�B�L� ��P�� �������.��7"��A�VMJL���Ⱥ?�,u��7\�&����=�t��a3T��ٹy>bT�����)ܮc=z�B�=?bW�қ��3��=,�VaA�ܛ���<<w*.=���V�|���2A�<�b~p�0�p1�A�-�)<O��*U��ck��6/�v&?>�r������2���Z��������p�Ѡ���/�{#Zg��֨b5L��$h�wJ��&h��k�T��9��T����oB�k�i+�/�X�y�|L��J�'��BOO�^-�[Ƀ�8U�끀���!�ܠJ�'����"�}ÁZGWu<՛6g����N�k���FQB\�p�P�|P�&�����T����$֝CP&V-K���s�f+6é0��0�� �@��.��P�9��O� *���p�����/LXũJc� O��5�~�G�g��O��,}$�2����/��#�"��i}��zy}X��x�e�D51[5�w������̩ WL�	��ш�&n
�q��1�u�D��f5�8�UJک�
��fq&Z'�Q@�%����r�@S��<,?�s2���~��#��õZ����+BH|׮�5�b��fگ�b����I�'�	��8B<�x����Y��w*^|)-�r����?�|0^��F�grz<[M`�<�U����U��M�"K0�/��c���ig��1��TfI
�TyZYy���"��ݼ�ԩ݆�Z$����Jg������6�˫Dn(K�߈�H��v���?�pr�fR��G\�P?�4s������M��d����~��uM��[]�X_�������S��_q���S�6���H��@���̜�e�c |p՟�4�Ҏ��&I�r��)35�c������o58��*t�P�}�Ǒ�_�֊�* \*��C���w�B
+J��p�NVi��Nu#�6�������Xt�&È��tV��~5}_��� <�S)5�D��	�V���pw>M��[�A�X����4���B�A��[	��a�^�ZYU9K�@���ܴ �U��t!맧 ��I���Ԗ%ݮ��N�z7�����ef%�cQd��s/
27p��^�XҚ��^,�KC���8U�o�-[��tU(�7��	-(@��_����Wy��U��M���׮ߩO(��� �*t�$��r5ª�}Bc�u�[�m_��B;&�P����"������I��帒 ĕ4[ʁ5VB\��j�`}�u�-C-�*uV�>d&�m7HDݍ�/��\�& }|�i��"�F�h��_���8Z��k��bn��>�A��L"z����Ɨ�0S�AH���1,�ˌƶɿ���N���5w}��Pl�m)�1]'h򰌮��A-=+縓�~<ARU�l�+W�W�0�A�e|m{����1�j�ni~��P�ѧq���wH��d�����,�`���g�L#<���Mg��1z�V�&����U���H�%8ё�$������ʒ( �ި��m��u��(=�Ai��_ڃ��oT�Jި�L��wv����L_DĢ�l���n�|`��Na��%.�v�_��>��ō:9~2��������q�
�$*t��nSh��h��?����R�$4�������nq��x+�Muݠ�M'�u�����1Ρ�ED�6�s���ܩ�������Q��pl��>IU�`���vq)�ֲ<֍��x��W�`�0l��{�T?J&��3���]����% �V+gE�	�@N#�q�bF�{nձ;@��O��U4�Љ�[)����-xw$���+,�k}���_2�<��d}p��ӹ�ۗq��T�T�Z|�f)����q�3qxp���旖#���Il	rX���&$oO�V�B���7�� ��U�G���n�j��I�~g�Ee���}�̬���g���������2#"7S�� �O@������#�}X�Jj��&͉;�w�r�_�a�'5��W�r5��Rz�.d��yuj��H(��D�^�q��\_��r8��bk ��̌�$AXe�\Y"N
5]4�r�%�����SV�
:O5�F�!'�2����u��$��L�s��0a꫺[�6˦1�'���8͛n�����9m����U�1q���/���o�A��I��R��f8���ۘ���2!�o���BXk(G�RՂhU/�Ċ��A�̃\�JA4�~��ەl�G��L#&P������Jw���ur�C�GBt�v��9F˰�-CПr"V�|�~�����4����_��R���</5��W����|�Kz���:T��]8��ԫK08+9/]dO����b��Q�"�	�z��w�Ȥ���ſ5�K�$��"�l[>��	R�������>��2؍YPF��f5n4�9�}�|��#n�[��7�&��Ҽ��U����u�.M��DN�<VaR|��|�W�X��vYI�AU��LI���s_:��ài�eP����E��J���W�,Ľ_W�v{��0��*ہ]Ljt{V�^O���`�G��rg+��~�g�eL����o��/�!�8c��g�!�ԗ����Ňe�g�\S+<�dl.[��G�w�Լ�"�*�B���kd)�d��>��w�m�t<3/�-�I�\�S� ���{�郿�E��K�1���.G�;��� !5���CR�a|5:C�?��k���8�&/ӗ�2�C�@%l\��l�l����ri���T��5/)��l���Z�6;�W�AŲ�u��
A�)��@�	 ����lPg-b�����_Y^�hi�]u��G�� 5����T(��RөBA<OD~AJ�=��� �	hX�{/�˿	�<g+�H�o��:��.�E?oRX+T���U1����:)}�y���l,ThH,Nrr*�$Z��h4���B�OIÍe�:���y�N��ީ-lU��2}�VT�e�V�m��{lf��2=�-�7M�׾P�f��l�>�L5HCٷ��'R���r������uE\��K��Kĸ�$��~b|M#�h����x?����=��-������&���E��[Y�ݩY�*`��5L]VjsU���=���'7-�?�"ɫy|l`]e�{���Ϯ�< ����EI�&��+����K�˴|[�I�V�e�W��K"�W2~�^BN�q�*V����N�2'N�q:�^��X���:γ2)l
9�WkOCHߧ�jW�����*m�~��<lTxF|7�y�n{)���!�����f�(
d��XԂlW�UƤ@/mWo��>�6!4˅{��\� ,�J6C"v�pߤ�"�\�<A�*� ;Ј�+��m4�����(�^�Ap��� W��&9����Cw�5#܇9Խ���q3$�B������K���e�V�Y����s[7x�����|9�c�]u(�쬷���O�KgM�S�����~�x�(a��)b6
��@�S��NBs�mA�ix�5U�޶œz
�-�ܵҕ/�#F^�y��X�C�W���d�M���{D�D�u/G�L ���|���e5߁5-va�Ӵ�4)�"SA�ai���}G���F+��X�
�%��v;�d�����wTP'��b�c�xl�Ro ���ͣ;�*�7��{��7����&��|-9O����F�}�	Ct��E�0W!cd�D���vj٪�gߠ���T���]��ع�i�G�'*?����O��u藐$ �ܢ��y'���&��n��'��RDƸ�W�NC�/�hly����L���� �  K8@�s$�M	��ϩ��nO�c��G���m.D{��-l�G�]]	��:^�a݂P��Li��~d�ɬ�7���hx�0�f��g �\P�����������!X�[�Ϯ���H'���U�Ï�ݞ�Q�ğ6� �D�UM�F6�`�d�_5��Pd�!{�0D��L�lIL��}��9��������k׿��`��AWN_ܼt��P��A�2� :o�Y��ρ�{g�2�$4Y��u�i�����f۵�<u/�_8(8ŚgIl���1�6Tow�TQ���S7����LW�5��w�&T�M�d���I��UV��¤�� �ɂ����J�1t�*�J��U��#	���aجB�!�ytO�%|{Ǿ}�$��촇�0	'�&��>|�8mς0U�%4"�`��X7W��8c�f�����t�j�C��KM&'{s] NPG+O�m�*���q\&ؓؖT�[g�X��*ݶ���B�yid���<��ȍ[+��N�g�ӓ�y7�cB?���T�×>=i��Ox��n�44�e���AUi ��U��a4rS2y���l�5�t�aĎ�]�C�d� �g-�M6ە�B�a�$�%N���F�wfL�� �?�H�N7zԕ�I��u�<�{�Dh7Vi�y��媘V།r�R�G�jP�wk���T�,���IWΣ?mh�gڿ^=��u-լ��?;~����¸Dc�۠ʮ��5����tD����n�.5�2��0?����А';x�&8X#ɭA�7���_��mU\BDoGn<��6�w�V�p%�|�s��j��`}4�J
��4�[|����}ǵ�>�����h����)�e�0t��XwQ!G]�8X= �����pi�.B�\ �F��USJ��hׯ�g�!��w�3�uLedo�O�)dg7��8a���\Wj<ݘ��Էx:��n�`"፯�*8W�%�(������xu���G���Qv?��鑦��K��pa��S	.3�۟��S%��X����<���Rʲ5 M� `.�	
�Z�}�?'��Cw�[�[=��A���4[dWӾ����h��PN�,�*�U�JR����b8��\[��jx=��2��:��ª�.�O�q�����8�۝�h����r�Su3��#|�95~+�i]M�mt��� *�(��% 6=�뻚1��˽���w�l̫
B�d(�N�~�'z��@N{Xͻn�¥q�qT��c��M�Lu�~z��a�o��5�F_�(767e3��念���|0H�� 1A�K��%��i�+���2@��<�Q*KQ�IV�ƲT�BmNs<;��M})ԣ
�$i�:��vgw(�&c����@j�PNY��I= �7�FS~i^�_��bq)���N#��Dw�W����w�0�g��L�
�<��RKu𕗏��}Z���m6K��c]=>M��*	���}U߂�T���,��@�]�W��jրYPf����I4E ��1�H��h��?���&�2���⒢y��9�vדw�W���&�t��̤]���.�A?�� "�°^7$�u�4�4���v������	�Fey- V�V�5�X3L�ogwm(�ٳ�~{4�^K�؜��z���6�Y�.�N�t�J����k.�ǶS��+�c��<�ȔsBס\Yvn��K�vͿ�W�2�����o5'�&iz�u	�a%����/+�`F|TBa[��ӓ��۩��K���$�I4��vH7�����<���_XJ=�`1u!��Dߧކ�^ƣ����J��o��B��M��C��,�a5����Y��UY�{,��Z���Ń�A�a�.֍S{��HG�h��p�K7����W�2�K"��С]
�ޫ)]�7����E%�9�ZM���6��w�s{��\�^��6��N���[�#N3���yZ�m��?E�v�����5�'�h9�;7�c(`-���l������W���z�a��u���_ b����Nt���zP���I�p���r�jh�;���İ9ߎ��h��J@w�]f�ED�N7�����g��y��i�~0�4Y��N\Q a����qj`�}Y^��u	(���YC�a=钕^��1�:��l�_4������q:�/�98�&�#4���%��+O�3��7�nOL�28m�R�N��0�aYֺ
��ПupJH],��O���$��U&���L^���\�1�m)�V6Xd�e��������5�݆hy��R����j���h��y���kg��evтe����G�%�:3��v�\��|���רyj3�H���Z�E�~�wE��(�}�LiP�7D�5�`ӭ�vu9P��14��NiŤ?������#�؇����K�]��z=��6hc���^��N�'/��/ȃ� ,J�hV��a8�^nO��Y�6����z����㺿���ș�i6zy�f.+�\�[���n�)\;��+����ԏ�.o���f�s����7"<��6[T���ز�j,9���F�j\z�����i��k���+��������Ә��襾X��䟎.�(:̺�5���n:���jT�z������[��fG6���ޒ�j�quֈf40����)�mݽ���ϗj�TUi��-���ӵއ!x�$�6�[���(%rF�&�����d�O9��R���P��P����������V	��]�&����,�/Պ�\ϧx(�Y�l��{��>u3��
�/���nu�Y�ݼ�A-�45ԷN҂� ��ݮ��ο��64�d���`��n�c���:�S-��1�x;�լˠ���.��I�cA��>�j2�g�qT�ӓױ~rN��0̀K���Mو�W�W{���O�,%zg�
*�j���o�ۥE��A��JD��&��p�Mt�r�fӅ�w��~_����M]l���������RH�=KI��Y�^�S{l������K��mfNw����e�M�uh_��W�↪	�B4�W��fQAm�@c����_�{�t��smS _lJ���Cν7Y~��O ��i|O�[����ٝ�Mh[5ť�lM�<I�ɤY7��}��q#����q���f��Ae��F� AJTU���G���Jb�"��2�5>�������_�&@W���YC����,���픯���X��i���BJ�K�@*k��i���Gpnk�CWK?�%��!9E������ݟ2��B��M�4��U�*��h�5~b��?;�4��o/2�/u8�.�qdg���7�T�^E�v�A��F�b���`>�=��rܱF$�s�B��~{��_R�6��0���z�q�f�B�Dm�F�]%<vhUD�?^���j2����`�_N�h����v]�-T��V;7�GW�Wiȇ�拧��d6�%&��+��=|�o�_7���]�eq\�6��j�|��n��z���ooP,�L.���d��=���x��6K�8SHe���-��ڪ�Vx�������������J��z�6^��[G�������U���;�h�W��&�����{�݇�) M������8��$�9��z�/m,B�b�z^�g��H��:�"��O�5����4DX�?���C{�rw��?w��E��$I�i���b��_�C,m� ܖ
P
'�~��F��2����>Ux�.��,0���T._-��nP�u��v�{!��7�{���7)�VL�����&�-Fƅ4�<�����M��\k�9��a�Z�oz�skPA�c̨�������$���*��R{O�����	��7��=�FV�J��NR.���;+���l�@$�������~�_6{�v         g  x�U�[j1��gSt�������:���O!p�Ȓ����f�e!ri���燚��.�V	�K]j���cQ�f���b�鬾�|L���nf���Z^ʷ|��^+Kc�U�M��Z�HY����u���5�Ä���o,��I.��R��L�=\!��ť+���_t�O�R�Xm���Z��Q�	j���O��U��P7A��6��5��(��s�TYb%n{*5�>�U*�_�e0H�w�����5��d��Sqa�ϻ�C�5��ꓣ���2��F��lv��L��3R�8�]ݎ�����ԫŬ�F�]��a�A����w�o�R��Z�V.�C�n���8�s�06JB�Do,�=\���l�;�e$g|S��`9y���`[���L���ڳ��X�ؔ��)P�0yT�6};G��/'���]kN_K��dK�l �a��`�|����DYxJjO�#�"6�S�����!�lo�l�C�����= V�s��D�*�O�������dl_{��_;{��kg�dNVЄh
2�K͒ü֎CJ�c����7�� �ѽ�hgϗ�]]i���h=_��#���xC�Q#~�]]�h�������Bq���i�?d^�H͖����}�� �[         L   x����0�3c�&�4ib<���w|�I�T�:Ċ�Һ���a�ϵi�m�s��+��مAi�ރ�?���         �  x�M�˭+ADמ\��?t�[����aƖ�:.��`��E������z_Hv ��a�OB��{���G��X�vC��,���8�r�ɂG����]ؼ��J��T��~ߤQ*�����je>kqtw���&��
�<�-x)�=���5�r}�T��yh2o�"l�&��R�����c)Z霳�2�
��>u��~�ۼ;K�F�0���.�8Z�	�4���g�iO�+��O !࣌�grR�딋z[��-�����1�;�Zj�'�	��{q�{8�`�Vn��@����(��7���X��0���������nw9��~��h��*o�6!WJ7��]F7�O�m��d�/���I>?�V��s���s6����g�Z���?�߿�����H         g  x�eT�nQ��_�4�GB���Ɗa)�I��s��������sg�cF�$H��|������.���?��w����]�8/��~�����p�v���ʔ�hN��%VŞ)(�3,�pf�v��@u��m��u{�%���"�ӫElT2�l��iݿ�|���u{\w���A�(�o-�J��A3��:0*�E������3Yt�+��]�p���x@Y>�\]ڲ�R�''��V#���!jAT����,���Y���_��w��}�;ۊ٠�p����)�>��M���H���h+�D��VL�"?��R	�-�]\��lDqiAF좢��ɰ/%��l�3g$�.�"H� �1�nج} �J�^(�yAt1�b�n�l$8N:%�?Jd�r�C����Iˋ�p�`�}�aD�!���7�
�m,U�p)oW�`��f�U�k¤�i���h�Fa�c�����"D��`�@����� ]Dc6�4<@�Q�1��B��*! 4�#����>ؘߢ8
�x;�ȷ�T��Cdl8T����c}x~���2��M��l`ᰬ0��ޟj�@����;�#q8y�H�Yµ�x���Z�����e?`�      	   f  x��T���8=�_���%�(���3����`
,Z��8nb�c��m��}rgS��I񑏏$���T,�q֚�~�sE�'�1��3�S�<��q��*�$N�yg�޼���m^�q��D���@p���O��\��>7����~Xơ�?>�d}R+\���5W���e�d�g�al���2�h�H��p������{޹���[�z������n^��T4�S�A�q����䣄�k�p�s�����%�șwǶ~�O]��j
Q,@y�r��ɧ�]����v�� �C
�$�@6�y�^絆�%����n8�y���aE��ڐW=��J(��<��򡼺��\)����ƀ~�=�Ӯ���v�#�T.��!�Jjރ�C};^����lЦEsD���̫ӹ���ׯ���O��	�&���(�تP
j��澛.s��1��Aޙ'6�0ځ�ȓ�k���t&ZqdV� �6o�汽��q7e�	p����}4�\�v~�~7_� I|�Q=��h��2!���˼�T�-�L���
8'�9�9��d��\�.�G ��n� �7�S� a!���ś�y�wx�
1P�ׄ�?{	��b�bI��/]��,��^�jI+�&�Ԙ\K�Jh^�e��t'Ho_�J��)��h^��0/ ꮛ��ܣ�hw���A�5w����:ay�L�K��If��n�k�P�B�8�@���ǷUr�%���b�.�`�P��b�$�Z_l��|+~~���bc��ϸm�\l�XG��?�M��[���&��Jr6&[�ۊT\5v86�/������R�]��srmǰɊK
X�`��|���{U��m}���
ަ��jN1C�i�E"���Fq��l7UU}R�w�         {   x�]�]
�0���xXv��l
cϽ�9�lN=�d![�I�!Ѵ���>[oV[�����2�e�bgi���^������rk���LK?&\�,��C��cܧ���_:~":��/�         �   x�}��j�0E��W��F��h)J��&Ѝ�&5-Qqm����ɢi���ܫ룀�P��#4�IK�bw>��eR�}
�Xr,?%*�y��!�wcѴs7�H^����Ʋ�rR�; �
��WY���~��\VF�:
��ꛨ�h^�S�!jS9$�ʠ��>��,a�c���~+.rq�{m$���4}Mo}�8���ªuU�,I�3r0`s$���g1͟8���g         K  x����n]7�׺O�H!�"%.�v�]QtՍ�#���"oߏ���_ؾ#���.Mu��_�޿�xs��i��ˋ>[h��[�b=���~�����?�o޽�}������	k����bHrb51~k|~�������$j7�]LF��gd�)k��2YGM��M}zxwW� �w�)�����'��%c�<�l��Mbp�����u�fs� �$�e����ݛ��������r��p%~1�i:m��"2ǚ�|HXId����7���o?�}<�isd��b�oR ��ݩ�U�:,o�߾�����y�B����؛ʀ��7_?��}��=\�/��M�d�CAP� ը�MPD}��[sS˘|]j�RĜ��z�MId_>+�V�r�#F��åǢ  �ޱ0���Qb�1�E��i6EW��3h��{��5MSdp=���݃���@��G��Q4wڰ$ǅ
�@��M뮖=ЫBMR�Q� �.7K:*hE!�A�K��i�?M�='↤����yB*ʎ�� S�d�#�ׯ�ՁkPn�
���TI��Ϋ�R���5�#=�I�W� W�k�.0�_c��P3F�)���}.����A��S�MtE[P���xO�]�v�<֤��N��a���XG"4����D��\�	�"&��m�F����0�Xe{B>��.�ʊY~H2WZk�eӰ�1x>�҇bg�+��Lb���n�Ty3?r��]%[��F���u1h��W4�gC���TȔ��G���(®� �K�Z��rfYmR��Љ��3q�blA��J788;?��1�VW�Ϋ�t�p��r�����'�`���dڧ�;H�0Qg���f�Թ3o2��\�/%�E�mX�_"1z=���x�c+#�fY�q��tu9�D��&<�39b��@��#ʨ�B�w����Y@�w�ɶ�t�������?M�ޓ���u��tu9��WdNz���E��� �ʌ������r �a/ٹ��ː��A� LSe:_�f9����1/����Ap��U-�|Ŏ�:C�:B�~��j�|\Fv�/\ �S&��5�@fi���f�'Ʊ�l�jo\�b�9a/���\.�τ�      
   �  x�ETɑ1|r�#��%�浽 �"�e:r<fa~�E^�W��Y�*R���b�r�Ҕ���|0[�_�W�tR��;ۀ0՗�� S�F,�V`�����f.���L].�ԣ�Y1���r�W��Ԣ��#�����$�*�p��3�p�l��hh�է�s\��9��,fW��3����^l �[�\4��g�����
�/��9���f`ysНò����=�v�r�Io��b01��3��h�W������L/���*0&���z��a�؁_!?�:!�����*h�o~��H�6��v��G��D�
N���H�\0�!7U�u��W`!Eu�:\�~�d��Z���ͨ!jg�iK�z���^�cc2��9���BGC�����T�Lw�/��u*��0D<���^+�1�?���Kق#��	����t����P���>_�qG<��Jɺ�ȵ:"��kK(���2�*�+:P�=r���V'�y��(K��,����ȜA['V�){�)��&����'���=�݂mU��GՁR��Y�W\-9 �č��s>,�Q8��w�ڢ*A[L� ��Q�pOOpl<�2�3���@7^HD0v�+=O�6<��ƺ���@������6L�6,�����v��         S  x�=�˵e!��5�^R�h./�8�
��X~�b�W���f��0�;k3�f��d4��������h�t�[���~fܱ�a>�˙����18w��,`��k0R�>��Y��40�>:�l���c��3:��j��񴉜e��Z�P�G�!���7���7M;T�t�mhLY��:��P}���X�2�c[�M�1:o�TU,�]�e��K�݇U-�w3�=�F��ô�p,�Q�\w�_�ҭ
��]�y��>�\c��|1ߞ����#��Zk�C3���\wXHc<�k�s���g�,ל��\�]sVP���g}iΚ˜7*s�����|}�z�k�W��z�k�>s��5��5��̥u�eY����3�ϼ?󱞹~�5�o*s��k�_w���y��4�~�������~�5g/��z�g����g����}=������z���C˜�\���4��2�|}�2�^#͡�Hs���9�C����90��ce}�[�9�3�2��4G���a�̡���^� ���#^�c��]7Os��s���\\���U�5ǈ2G�>G}��ʜPe���<�yΦ9��dN�2��2G��ۏY��S�+s|�8��1N�c�2G���_k�?8I��     