FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Make Bookmarkable" for iTunes
written by Doug Adams
dougadams@mac.com

v2.1 sept 18, 2006
- deletes and re-adds tracks even if their files' extensions are already ".m4b"

v2.0 sept 15, 2006
-- deletes and then re-adds the track to iTunes so it appears in iTunes 7 or better Audiobooks Library

v1.5 dec 31, 2005
-- changes extension of selected tracks' files to ".m4b"

v1.0 mar 1, 2004
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 		� 
 " M a k e   B o o k m a r k a b l e "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 2 . 1   s e p t   1 8 ,   2 0 0 6 
 -   d e l e t e s   a n d   r e - a d d s   t r a c k s   e v e n   i f   t h e i r   f i l e s '   e x t e n s i o n s   a r e   a l r e a d y   " . m 4 b " 
 
 v 2 . 0   s e p t   1 5 ,   2 0 0 6 
 - -   d e l e t e s   a n d   t h e n   r e - a d d s   t h e   t r a c k   t o   i T u n e s   s o   i t   a p p e a r s   i n   i T u n e s   7   o r   b e t t e r   A u d i o b o o k s   L i b r a r y 
 
 v 1 . 5   d e c   3 1 ,   2 0 0 5 
 - -   c h a n g e s   e x t e n s i o n   o f   s e l e c t e d   t r a c k s '   f i l e s   t o   " . m 4 b " 
 
 v 1 . 0   m a r   1 ,   2 0 0 4 
 - -   i n i t i a l   r e l e a s e 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 l     ��������  ��  ��        l   � ����  O    �    Z   �  ��   >   
    1    ��
�� 
sele  J    	����    k   �       l   ��������  ��  ��        r        m       �    s  o      ���� 0 s         Z   $ ! "���� ! =    # $ # l    %���� % I   �� &��
�� .corecnte****       **** & 1    ��
�� 
sele��  ��  ��   $ m    ����  " r      ' ( ' m     ) ) � * *   ( o      ���� 0 s  ��  ��      + , + l  % %��������  ��  ��   ,  - . - I  % 5�� / 0
�� .sysodlogaskr        TEXT / b   % * 1 2 1 b   % ( 3 4 3 m   % & 5 5 � 6 6 � T h i s   s c r i p t   w i l l   a t t e m p t   t o   s e t   t h e   f i l e   t y p e   o f   t h e   s e l e c t e d   A A C   t r a c k 4 o   & '���� 0 s   2 m   ( ) 7 7 � 8 8 N   t o   w o r k   w i t h   i T u n e s '   b o o k m a r k   f e a t u r e . 0 �� 9 :
�� 
btns 9 J   + / ; ;  < = < m   + , > > � ? ?  C a n c e l =  @�� @ m   , - A A � B B  P r o c e e d��   : �� C��
�� 
dflt C m   0 1���� ��   .  D E D l  6 6��������  ��  ��   E  F G F r   6 ; H I H 1   6 9��
�� 
sele I o      ���� 0 sel   G  J K J Y   <� L�� M N�� L k   L� O O  P Q P r   L T R S R n   L P T U T 4   M P�� V
�� 
cobj V o   N O���� 0 i   U o   L M���� 0 sel   S o      ���� 
0 atr aTr Q  W�� W Z   U� X Y���� X F   U r Z [ Z =  U ` \ ] \ n   U \ ^ _ ^ m   X \��
�� 
pcls _ o   U X���� 
0 atr aTr ] m   \ _��
�� 
cFlT [ E   c n ` a ` n   c j b c b 1   f j��
�� 
pKnd c o   c f���� 
0 atr aTr a m   j m d d � e e  A A C Y k   u� f f  g h g Z   u � i j���� i @   u � k l k c   u ~ m n m 1   u z��
�� 
vers n m   z }��
�� 
TEXT l m   ~ � o o � p p  7 . 0 j O  � � q r q r   � � s t s J   � � u u  v w v 1   � ���
�� 
pPlC w  x y x 1   � ���
�� 
pPlD y  z { z 1   � ���
�� 
pSkC {  | } | 1   � ���
�� 
pSkD }  ~  ~ 1   � ���
�� 
pRte   � � � 1   � ���
�� 
pLoc �  ��� � 1   � ���
�� 
pDID��   t J       � �  � � � o      ���� 0 pc   �  � � � o      ���� 0 lp   �  � � � o      ���� 0 sc   �  � � � o      ���� 0 ls   �  � � � o      ���� 0 r   �  � � � o      ���� 0 loc   �  ��� � o      ���� 0 dbid  ��   r o   � ����� 
0 atr aTr��  ��   h  ��� � Z   �� � ����� � n  � � � � I   ��� ����� 0 set_type   �  ��� � o   ����� 0 loc  ��  ��   �  f   � � � Z  	� � ����� � @  	 � � � c  	 � � � 1  	��
�� 
vers � m  ��
�� 
TEXT � m   � � � � �  7 . 0 � k  � � �  � � � I 6�� ���
�� .coredelonull���    obj  � l 2 ����� � 6 2 � � � n  # � � � 3  #��
�� 
cTrk � 4  �� �
�� 
cLiP � m  ����  � = &1 � � � 1  '+��
�� 
pDID � o  ,0���� 0 dbid  ��  ��  ��   �  � � � r  7B � � � l 7> ����� � I 7>�� ���
�� .hookAdd cTrk      @ alis � o  7:���� 0 loc  ��  ��  ��   � o      ���� 
0 ntr nTr �  ��� � O  C� � � � k  I� � �  � � � r  Iv � � � J  IT � �  � � � o  IL���� 0 pc   �  � � � o  LO���� 0 sc   �  ��� � o  OR���� 0 r  ��   � J       � �  � � � 1  Y^��
�� 
pPlC �  � � � 1  di��
�� 
pSkC �  ��� � 1  ot��
�� 
pRte��   �  � � � Z w� � ����� � > w~ � � � o  wz���� 0 ls   � m  z}��
�� 
msng � r  �� � � � o  ������ 0 ls   � 1  ����
�� 
pSkD��  ��   �  ��� � Z �� � ����� � > �� � � � o  ������ 0 lp   � m  ����
�� 
msng � r  �� � � � o  ������ 0 lp   � 1  ����
�� 
pPlD��  ��  ��   � o  CF���� 
0 ntr nTr��  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 i   M m   ? @����  N I  @ G�� ���
�� .corecnte****       **** � n   @ C � � � 2  A C��
�� 
cobj � o   @ A���� 0 sel  ��  ��   K  ��� � I ��� � �
� .sysodlogaskr        TEXT � m  �� � � � � � 
 D o n e ! � �~ � �
�~ 
btns � J  �� � �  ��} � m  �� � � � � �  T h a n k s�}   � �| � �
�| 
dflt � m  ���{�{  � �z ��y
�z 
givu � m  ���x�x �y  ��  ��    I ���w � �
�w .sysodlogaskr        TEXT � m  �� � � � � � $ N o   t r a c k s   s e l e c t e d � �v � �
�v 
btns � J  �� � �  ��u � m  �� � � � � �  C a n c e l�u   � �t � �
�t 
dflt � m  ���s�s  � �r � �
�r 
disp � m  ���q�q  � �p ��o
�p 
givu � m  ���n�n �o    m      � ��                                                                                  hook   alis    L  Macintosh HD               ��*�H+   #�y
iTunes.app                                                      %��wA        ����  	                Applications    ���      �i1     #�y  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��     � � � l     �m�l�k�m  �l  �k   �  ��j � i     � � � I      �i ��h�i 0 set_type   �  ��g � o      �f�f 0 loc  �g  �h   � O     M � � � Q    L �  � k    B  r     m     �  M 4 B   n      	
	 1   	 �e
�e 
asty
 o    	�d�d 0 loc    r     l   �c�b e     n     1    �a
�a 
pnam o    �`�` 0 loc  �c  �b   o      �_�_ 0 nom   �^ Z    B�] H     D     o    �\�\ 0 nom   m     �  . m 4 b k    =  r    4  c    2!"! l   0#�[�Z# b    0$%$ l   .&�Y�X& n    .'(' 7   .�W)*
�W 
ctxt) m     "�V�V * d   # -++ l  $ ,,�U�T, [   $ ,-.- l  $ */�S�R/ n   $ *010 1   ( *�Q
�Q 
leng1 l  $ (2�P�O2 e   $ (33 n   $ (454 1   % '�N
�N 
nmxt5 o   $ %�M�M 0 loc  �P  �O  �S  �R  . m   * +�L�L �U  �T  ( o    �K�K 0 nom  �Y  �X  % m   . /66 �77  m 4 b�[  �Z  " m   0 1�J
�J 
TEXT  o      �I�I 
0 newnom   898 r   5 ::;: o   5 6�H�H 
0 newnom  ; n      <=< 1   7 9�G
�G 
pnam= o   6 7�F�F 0 loc  9 >�E> L   ; =?? m   ; <�D
�D boovtrue�E  �]   l  @ B@AB@ L   @ BCC m   @ A�C
�C boovtrueA   is already an "m4b" file   B �DD 2   i s   a l r e a d y   a n   " m 4 b "   f i l e�^    R      �BEF
�B .ascrerr ****      � ****E o      �A�A 0 m  F �@G�?
�@ 
errnG o      �>�> 0 n  �?   k   J LHH IJI l  J J�=KL�=  K $  display dialog m -- debugging   L �MM <   d i s p l a y   d i a l o g   m   - -   d e b u g g i n gJ N�<N L   J LOO m   J K�;
�; boovfals�<   � m     PP�                                                                                  MACS   alis    r  Macintosh HD               ��*�H+   #�n
Finder.app                                                      #��0�$        ����  	                CoreServices    ���      �0�     #�n #�* #�)  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �j       �:QRS TU�9�8�7�6�5V�4W�3�2�1�:  Q �0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!�0 0 set_type  
�/ .aevtoappnull  �   � ****�. 0 s  �- 0 sel  �, 
0 atr aTr�+ 0 pc  �* 0 lp  �) 0 sc  �( 0 ls  �' 0 r  �& 0 loc  �% 0 dbid  �$ 
0 ntr nTr�#  �"  �!  R �  ���XY��  0 set_type  � �Z� Z  �� 0 loc  �  X ������ 0 loc  � 0 nom  � 
0 newnom  � 0 m  � 0 n  Y P�����6��[
� 
asty
� 
pnam
� 
ctxt
� 
nmxt
� 
leng
� 
TEXT� 0 m  [ ���
� 
errn� 0 n  �  � N� J @��,FO��,EE�O�� '�[�\[Zk\Z��,E�,k'2�%�&E�O���,FOeY eW 	X 
 fUS �\�
�	]^�
� .aevtoappnull  �   � ****\ k    �__  ��  �
  �	  ] �� 0 i  ^ ; �� �� ) 5 7� > A�� �������������� d������ o������������������������������������ �����`�������� � ����� � �����
� 
sele� 0 s  
� .corecnte****       ****
� 
btns
� 
dflt�  
�� .sysodlogaskr        TEXT�� 0 sel  
�� 
cobj�� 
0 atr aTr
�� 
pcls
�� 
cFlT
�� 
pKnd
�� 
bool
�� 
vers
�� 
TEXT
�� 
pPlC
�� 
pPlD
�� 
pSkC
�� 
pSkD
�� 
pRte
�� 
pLoc
�� 
pDID�� �� 0 pc  �� 0 lp  �� 0 sc  �� 0 ls  �� �� 0 r  �� �� 0 loc  �� 0 dbid  �� 0 set_type  
�� 
cLiP
�� 
cTrk`  
�� .coredelonull���    obj 
�� .hookAdd cTrk      @ alis�� 
0 ntr nTr
�� 
msng
�� 
givu�� 
�� 
disp�� ����*�,jv��E�O*�,j k  �E�Y hO��%�%���lv�l� O*�,E�O{k��-j kh  ��/E` O_ a ,a  	 _ a ,a a &?*a ,a &a  y_  o*a ,*a ,*a ,*a ,*a ,*a ,*a ,a  vE[�k/E` !Z[�l/E` "Z[�m/E` #Z[��/E` $Z[�a %/E` &Z[�a '/E` (Z[�a  /E` )ZUY hO)_ (k+ * �*a ,a &a + �*a ,k/a -.a .[a ,\Z_ )81j /O_ (j 0E` 1O_ 1 __ !_ #_ &mvE[�k/*a ,FZ[�l/*a ,FZ[�m/*a ,FZO_ $a 2 _ $*a ,FY hO_ "a 2 _ "*a ,FY hUY hY hY h[OY��Oa 3�a 4kv�ka 5a 6a ' Y a 7�a 8kv�ka 9la 5a 6a : UT ��a�� a  UU bb c������c d������d  �������
�� 
cSrc�� (
�� kfrmID  
�� 
cUsP��   �V
�� kfrmID  
�� 
cFlT��  �
�� kfrmID  �9  
�8 
msng�7  
�6 
msng�5  Vbalis    ^   Macintosh HD               ��*�H+   sWThe Chris Moyles Show.m4a                                       sV��H��M4A hook����  	                Unknown Album     ���      �H��     sW sW &�� &�z &�y &�� #�b  �Macintosh HD:Users:danielctull:Music:iTunes:iTunes Music:Enjoy the perfect blend #735707:Unknown Album:The Chris Moyles Show.m4a  4  T h e   C h r i s   M o y l e s   S h o w . m 4 a    M a c i n t o s h   H D  �Users/danielctull/Music/iTunes/iTunes Music/Enjoy the perfect blend of music - with talking in between_/Unknown Album/The Chris Moyles Show.m4a   /    ��  �4  �W ee f������f g������g  �������
�� 
cSrc�� (
�� kfrmID  
�� 
cLiP��D
�� kfrmID  
�� 
cFlT��  ~8
�� kfrmID  �3  �2  �1   ascr  ��ޭ