FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
"New Played Count" for iTunes 4.1
written by Doug Adams
dougadams@mac.com

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.malcolmadams.com/itunes/
     � 	 	� 
 " N e w   P l a y e d   C o u n t "   f o r   i T u n e s   4 . 1 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . m a l c o l m a d a m s . c o m / i t u n e s / 
   
  
 p         ������ 0 thismany  ��        l    z ����  O     z    Z    y  ��   >   
    1    ��
�� 
sele  J    	����    k    i       r        1    ��
�� 
sele  o      ���� 0 sel        O       I    ��  ���� 0 tell_how_many      !�� ! m     " " � # #  ��  ��     f       $ % $ X    M &�� ' & k   / H ( (  ) * ) r   / 4 + , + n   / 2 - . - 1   0 2��
�� 
pcnt . o   / 0���� 0 t   , o      ���� 0 t   *  /�� / Z   5 H 0 1���� 0 =  5 : 2 3 2 n   5 8 4 5 4 m   6 8��
�� 
pcls 5 o   5 6���� 0 t   3 m   8 9��
�� 
cFlT 1 r   = D 6 7 6 l  = @ 8���� 8 c   = @ 9 : 9 o   = >���� 0 thismany   : m   > ?��
�� 
long��  ��   7 n       ; < ; 1   A C��
�� 
pPlC < o   @ A���� 0 t  ��  ��  ��  �� 0 t   ' o   " #���� 0 sel   %  =�� = I  N i�� > ?
�� .sysodlogaskr        TEXT > m   N O @ @ � A A 
 D o n e ! ? �� B C
�� 
btns B J   P U D D  E�� E m   P S F F � G G  T h a n k s��   C �� H I
�� 
dflt H m   X Y����  I �� J K
�� 
disp J m   \ ]����  K �� L��
�� 
givu L m   ` c���� ��  ��  ��    l  l y M N O M O  l y P Q P I   p x�� R���� 0 message_and_cancel   R  S�� S m   q t T T � U U & N o   t r a c k s   s e l e c t e d .��  ��   Q  f   l m N   no track selected    O � V V $   n o   t r a c k   s e l e c t e d  m      W W�                                                                                  hook  alis    L  Macintosh HD               ȁ��H+     �
iTunes.app                                                      �����        ����  	                Applications    ȁ��      ����       �  $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��     X Y X l     ��������  ��  ��   Y  Z [ Z i     \ ] \ I      �� ^���� 0 tell_how_many   ^  _�� _ o      ���� 0 addenda  ��  ��   ] k     ; ` `  a b a s      c d c n      e f e 1    ��
�� 
ttxt f l     g���� g I    �� h i
�� .sysodlogaskr        TEXT h l     j���� j b      k l k o     ���� 0 addenda   l m     m m � n n ^ S e t   t h e   " P l a y   C o u n t "   o f   t h e   s e l e c t e d   t r a c k s   t o :��  ��   i �� o p
�� 
dtxt o m     q q � r r   p �� s��
�� 
disp s m    ���� ��  ��  ��   d o      ���� 0 thismany   b  t�� t Q    ; u v w u Z   $ x y���� x =    z { z n     | } | 1    ��
�� 
pcls } l    ~���� ~ c      �  o    ���� 0 thismany   � m    ��
�� 
nmbr��  ��   { m    ��
�� 
long y L     ����  ��  ��   v R      ������
�� .ascrerr ****      � ****��  ��   w O  , ; � � � I   0 :�� ����� 0 tell_how_many   �  ��� � b   1 6 � � � b   1 4 � � � m   1 2 � � � � � " E n t e r   a   n u m b e r . . . � o   2 3��
�� 
ret  � o   4 5��
�� 
ret ��  ��   �  f   , -��   [  � � � l     ��������  ��  ��   �  ��� � i    � � � I      �� ����� 0 message_and_cancel   �  ��� � o      ���� 0 ms  ��  ��   � I    �� � �
�� .sysodlogaskr        TEXT � o     ���� 0 ms   � �� � �
�� 
btns � J     � �  ��� � m     � � � � �  C a n c e l��   � �� � �
�� 
dflt � m    ����  � �� ���
�� 
disp � m    	����  ��  ��       �� � � � � � �����   � �������������� 0 tell_how_many  �� 0 message_and_cancel  
�� .aevtoappnull  �   � ****�� 0 sel  �� 0 thismany  ��   � �� ]���� � ����� 0 tell_how_many  �� �� ���  �  ���� 0 addenda  ��   � ���� 0 addenda   �  m�� q�������������������� �����
�� 
dtxt
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 thismany  
�� 
nmbr
�� 
pcls
�� 
long��  ��  
�� 
ret �� 0 tell_how_many  �� <��%���k� �,EQ�O ��&�,�  hY hW X  ) *��%�%k+ U � �� ���~ � ��}�� 0 message_and_cancel  � �| ��|  �  �{�{ 0 ms  �~   � �z�z 0 ms   � �y ��x�w�v�u
�y 
btns
�x 
dflt
�w 
disp�v 
�u .sysodlogaskr        TEXT�} ���kv�k�j�  � �t ��s�r � ��q
�t .aevtoappnull  �   � **** � k     z � �  �p�p  �s  �r   � �o�o 0 t   �  W�n�m "�l�k�j�i�h�g�f�e�d�c @�b F�a�`�_�^�]�\ T�[
�n 
sele�m 0 sel  �l 0 tell_how_many  
�k 
kocl
�j 
cobj
�i .corecnte****       ****
�h 
pcnt
�g 
pcls
�f 
cFlT�e 0 thismany  
�d 
long
�c 
pPlC
�b 
btns
�a 
dflt
�` 
disp
�_ 
givu�^ �] 
�\ .sysodlogaskr        TEXT�[ 0 message_and_cancel  �q {� w*�,jv a*�,E�O) *�k+ UO -�[��l kh  ��,E�O��,�  ��&��,FY h[OY��O��a kva ka ka a a  Y ) 
*a k+ UU � �Z ��Z  �   � �  � �  ��Y�X�W �  ��V�U�T �  W�S�R�Q
�S 
cSrc�R D
�Q kfrmID  
�V 
cUsP�U  
�
�T kfrmID  
�Y 
cFlT�X  
��
�W kfrmID   � � � �  6��  ascr  ��ޭ