FasdUAS 1.101.10   ��   ��    k             l     ��  ��    = 7 original code by Joe Maller <http://www.joemaller.com>     � 	 	 n   o r i g i n a l   c o d e   b y   J o e   M a l l e r   < h t t p : / / w w w . j o e m a l l e r . c o m >   
  
 l     ��  ��      authored March 2005     �   (   a u t h o r e d   M a r c h   2 0 0 5      l     ��  ��      revised May 2005     �   "   r e v i s e d   M a y   2 0 0 5      l     ��  ��      revised October 2005     �   *   r e v i s e d   O c t o b e r   2 0 0 5      l     ��  ��    * $ revised January 2006 (for iPhoto 6)     �   H   r e v i s e d   J a n u a r y   2 0 0 6   ( f o r   i P h o t o   6 )      l     ��   !��     P J licensed under Creative Commons Attribution Non Commercial ShareAlike 2.0    ! � " " �   l i c e n s e d   u n d e r   C r e a t i v e   C o m m o n s   A t t r i b u t i o n   N o n   C o m m e r c i a l   S h a r e A l i k e   2 . 0   # $ # l     �� % &��   % 8 2 http://creativecommons.org/licenses/by-nc-sa/2.0/    & � ' ' d   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 2 . 0 / $  ( ) ( l     ��������  ��  ��   )  * + * l     ��������  ��  ��   +  , - , l     ��������  ��  ��   -  . / . l      �� 0 1��   0 6 0   BEGIN COMMON DATE GLOBALS AND SUBROUTINES        1 � 2 2 `       B E G I N   C O M M O N   D A T E   G L O B A L S   A N D   S U B R O U T I N E S         /  3 4 3 l     ��������  ��  ��   4  5 6 5 l     ��������  ��  ��   6  7 8 7 l      9 : ; 9 p       < < ������ 0 
dateformat 
dateFormat��   : = 7 either true or false. True means flip date/month order    ; � = = n   e i t h e r   t r u e   o r   f a l s e .   T r u e   m e a n s   f l i p   d a t e / m o n t h   o r d e r 8  > ? > l     @ A B @ r      C D C m     ��
�� 
msng D o      ���� 0 
dateformat 
dateFormat A % initially unset (missing value)    B � E E > i n i t i a l l y   u n s e t   ( m i s s i n g   v a l u e ) ?  F G F l     ��������  ��  ��   G  H I H p       J J ������ 0 iphotoversion iPhotoVersion��   I  K L K l    M N O M O    P Q P r     R S R c     T U T l    V���� V n     W X W 4    �� Y
�� 
cha  Y m    ����  X l    Z���� Z c     [ \ [ 1    ��
�� 
vers \ m    ��
�� 
ctxt��  ��  ��  ��   U m    ��
�� 
long S o      ���� 0 iphotoversion iPhotoVersion Q m     ] ]�                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��   N   get iPhoto version    O � ^ ^ &   g e t   i P h o t o   v e r s i o n L  _ ` _ l   ( a���� a Z    ( b c���� b A     d e d o    ���� 0 iphotoversion iPhotoVersion e m    ����  c k    $ f f  g h g I   !�� i��
�� .sysodlogaskr        TEXT i m     j j � k k ` T h e s e   s c r i p t s   r e q u i r e   i P h o t o   v e r s i o n   4   o r   l a t e r .��   h  l�� l L   " $����  ��  ��  ��  ��  ��   `  m n m l     ��������  ��  ��   n  o p o i      q r q I      �� s���� 0 iphotosetdate iPhotoSetDate s  t u t o      ���� 0 photoid photoID u  v�� v o      ���� 0 thedate theDate��  ��   r k    / w w  x y x l     �� z {��   z C = original subroutine by Joe Maller <http://www.joemaller.com>    { � | | z   o r i g i n a l   s u b r o u t i n e   b y   J o e   M a l l e r   < h t t p : / / w w w . j o e m a l l e r . c o m > y  } ~ } l     ��  ���      authored March 2005    � � � � (   a u t h o r e d   M a r c h   2 0 0 5 ~  � � � l     �� � ���   � P J licensed under Creative Commons Attribution Non Commercial ShareAlike 2.0    � � � � �   l i c e n s e d   u n d e r   C r e a t i v e   C o m m o n s   A t t r i b u t i o n   N o n   C o m m e r c i a l   S h a r e A l i k e   2 . 0 �  � � � l     �� � ���   � 8 2 http://creativecommons.org/licenses/by-nc-sa/2.0/    � � � � d   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 2 . 0 / �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � c ] 1.1 added extra tabbing to workaround another weirdness in iPhoto's Batch Change date fields    � � � � �   1 . 1   a d d e d   e x t r a   t a b b i n g   t o   w o r k a r o u n d   a n o t h e r   w e i r d n e s s   i n   i P h o t o ' s   B a t c h   C h a n g e   d a t e   f i e l d s �  � � � l     �� � ���   � � � 1.2 (May 2005) Finally figured out how to hit the info pane in iPhotorevised GUI Scripting calls to eliminate any language-specific menu dependencies    � � � �,   1 . 2   ( M a y   2 0 0 5 )   F i n a l l y   f i g u r e d   o u t   h o w   t o   h i t   t h e   i n f o   p a n e   i n   i P h o t o r e v i s e d   G U I   S c r i p t i n g   c a l l s   t o   e l i m i n a t e   a n y   l a n g u a g e - s p e c i f i c   m e n u   d e p e n d e n c i e s �  � � � l     �� � ���   � � � 1.3 (June 2005) Nailed down a state bug where System Events was running off without regard for the current status of iPhoto. Sending an Apple Event instead of a return/tab keystroke solved it.    � � � ��   1 . 3   ( J u n e   2 0 0 5 )   N a i l e d   d o w n   a   s t a t e   b u g   w h e r e   S y s t e m   E v e n t s   w a s   r u n n i n g   o f f   w i t h o u t   r e g a r d   f o r   t h e   c u r r e n t   s t a t u s   o f   i P h o t o .   S e n d i n g   a n   A p p l e   E v e n t   i n s t e a d   o f   a   r e t u r n / t a b   k e y s t r o k e   s o l v e d   i t . �  � � � l     �� � ���   �  y 1.4 (January 2006) Now works on the main iPhoto window even if other windows are open, added date exception for iPhoto 6    � � � � �   1 . 4   ( J a n u a r y   2 0 0 6 )   N o w   w o r k s   o n   t h e   m a i n   i P h o t o   w i n d o w   e v e n   i f   o t h e r   w i n d o w s   a r e   o p e n ,   a d d e d   d a t e   e x c e p t i o n   f o r   i P h o t o   6 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � > 8 sets the date of photoID to theDate using GUI scripting    � � � � p   s e t s   t h e   d a t e   o f   p h o t o I D   t o   t h e D a t e   u s i n g   G U I   s c r i p t i n g �  � � � l     �� � ���   �  	 returns:    � � � �    r e t u r n s : �  � � � l     �� � ���   �  		0 : failed    � � � �  	 	 0   :   f a i l e d �  � � � l     �� � ���   �  		1 : date set    � � � �  	 	 1   :   d a t e   s e t �  � � � l     �� � ���   � " 		2 : dates match, not reset    � � � � 8 	 	 2   :   d a t e s   m a t c h ,   n o t   r e s e t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � Z     * � ����� � =     � � � o     ���� 0 iphotoversion iPhotoVersion � m    ����  � O    & � � � k   
 % � �  � � � I  
 �� ���
�� .iPhoisalnull��� ��� obj  � o   
 ���� 0 photoid photoID��   �  ��� � Z    % � ��� � � =    � � � n     � � � 1    ��
�� 
idat � o    ���� 0 photoid photoID � o    ���� 0 thedate theDate � l    � � � � L     � � m    ����  �   dates match    � � � �    d a t e s   m a t c h��   � k    % � �  � � � l   " � � � � r    " � � � o    ���� 0 thedate theDate � n       � � � 1    !��
�� 
idat � o    ���� 0 photoid photoID �   set the date    � � � �    s e t   t h e   d a t e �  ��� � L   # % � � m   # $���� ��  ��   � m     � ��                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  ��  ��   �  � � � l  + +��������  ��  ��   �  � � � l  + +��������  ��  ��   �  � � � l  + +��������  ��  ��   �  � � � l  + +�� � ���   � M G  find index of main iPhoto window, which is always the backmost window    � � � � �     f i n d   i n d e x   o f   m a i n   i P h o t o   w i n d o w ,   w h i c h   i s   a l w a y s   t h e   b a c k m o s t   w i n d o w �  � � � O  + A � � � O  / @ � � � r   6 ? � � � I  6 =�� ���
�� .corecnte****       **** � 2  6 9��
�� 
cwin��   � o      ���� 0 iphotowindow iPhotoWindow � 4   / 3�� �
�� 
prcs � m   1 2 � � � � �  i P h o t o � m   + , � ��                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �    l  B B��������  ��  ��   �� Y   B/���� k   L*  O   L p	
	 k   P o  Z   P c���� =  P Z n  P X I   Q X�����  0 exifdatedecode EXIFDateDecode �~ n   Q T 1   R T�}
�} 
idat o   Q R�|�| 0 photoid photoID�~  �    f   P Q o   X Y�{�{ 0 thedate theDate l  ] _ L   ] _ m   ] ^�z�z    dates match, do nothing    � 0   d a t e s   m a t c h ,   d o   n o t h i n g��  ��    I  d i�y�x
�y .iPhoisalnull��� ��� obj  o   d e�w�w 0 photoid photoID�x    �v  l  j o!"#! I  j o�u�t�s
�u .miscactvnull��� ��� null�t  �s  " !  bring iPhoto back to front   # �$$ 6   b r i n g   i P h o t o   b a c k   t o   f r o n t�v  
 m   L M%%�                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��   &'& l  q q�r�q�p�r  �q  �p  ' (�o( Q   q*)*+) O   t,-, O   x./. k   00 121 Z    �345�n3 =   �676 o    ��m�m 0 iphotoversion iPhotoVersion7 m   � ��l�l 4 r   � �898 l  � �:�k�j: N   � �;; n   � �<=< 4   � ��i>
�i 
txtf> m   � ��h�h = n   � �?@? 4   � ��gA
�g 
sgrpA m   � ��f�f @ n   � �BCB 4   � ��eD
�e 
splgD m   � ��d�d C n   � �EFE 4   � ��cG
�c 
splgG m   � ��b�b F 4   � ��aH
�a 
cwinH o   � ��`�` 0 iphotowindow iPhotoWindow�k  �j  9 o      �_�_ 0 thefield theField5 IJI =  � �KLK o   � ��^�^ 0 iphotoversion iPhotoVersionL m   � ��]�] J MNM r   � �OPO l  � �Q�\�[Q N   � �RR n   � �STS 4   � ��ZU
�Z 
txtfU m   � ��Y�Y T n   � �VWV 4   � ��XX
�X 
sgrpX m   � ��W�W W n   � �YZY 4   � ��V[
�V 
splg[ m   � ��U�U Z n   � �\]\ 4   � ��T^
�T 
splg^ m   � ��S�S ] 4   � ��R_
�R 
cwin_ o   � ��Q�Q 0 iphotowindow iPhotoWindow�\  �[  P o      �P�P 0 thefield theFieldN `a` =  � �bcb o   � ��O�O 0 iphotoversion iPhotoVersionc m   � ��N�N a ded r   � �fgf l  � �h�M�Lh N   � �ii n   � �jkj 4   � ��Kl
�K 
txtfl m   � ��J�J k n   � �mnm 4   � ��Io
�I 
splgo m   � ��H�H n n   � �pqp 4   � ��Gr
�G 
splgr m   � ��F�F q 4   � ��Es
�E 
cwins o   � ��D�D 0 iphotowindow iPhotoWindow�M  �L  g o      �C�C 0 thefield theFielde tut =  � �vwv o   � ��B�B 0 iphotoversion iPhotoVersionw m   � ��A�A u x�@x r   � �yzy l  � �{�?�>{ N   � �|| n   � �}~} 4   � ��=
�= 
txtf m   � ��<�< ~ n   � ���� 4   � ��;�
�; 
splg� m   � ��:�: � n   � ���� 4   � ��9�
�9 
splg� m   � ��8�8 � 4   � ��7�
�7 
cwin� o   � ��6�6 0 iphotowindow iPhotoWindow�?  �>  z o      �5�5 0 thefield theField�@  �n  2 ��� l  � ��4�3�2�4  �3  �2  � ��� Z   �����1�0� =  ���� n  � ���� o   � ��/�/ 0 
dateformat 
dateFormat�  f   � �� m   ��.
�. 
msng� k  ��� ��� I �-��,
�- .ascrcmnt****      � ****� m  �� ��� 2 * * * * * * * * 	 C a l i b r a t i n g   D a t e�,  � ��� s  ��� o  �+�+ 0 thedate theDate� o      �*�* 0 testdate testDate� ��� l �)�(�'�)  �(  �'  � ��� Z  K���&�%� G  2��� ? ��� n  ��� 1  �$
�$ 
day � o  �#�# 0 thedate theDate� m  �"�" � = .��� l '��!� � c  '��� n  #��� 1  #�
� 
day � o  �� 0 thedate theDate� m  #&�
� 
long�!  �   � l '-���� n '-��� I  (-���� 0 
monthtonum 
monthToNum� ��� o  ()�� 0 thedate theDate�  �  �  f  '(�  �  � k  5G�� ��� l  55����  � � �			Date contains non-ambiguous values, but the string is unknown. A wrong guess with these values will result in an error. Set the date with an ambiguous value, check for placement of values, then reset the date with the actual values.
					   � ���� 	 	 	 D a t e   c o n t a i n s   n o n - a m b i g u o u s   v a l u e s ,   b u t   t h e   s t r i n g   i s   u n k n o w n .   A   w r o n g   g u e s s   w i t h   t h e s e   v a l u e s   w i l l   r e s u l t   i n   a n   e r r o r .   S e t   t h e   d a t e   w i t h   a n   a m b i g u o u s   v a l u e ,   c h e c k   f o r   p l a c e m e n t   o f   v a l u e s ,   t h e n   r e s e t   t h e   d a t e   w i t h   t h e   a c t u a l   v a l u e s . 
 	 	 	 	 	� ��� l 5G���� r  5G��� l 5A���� [  5A��� `  5?��� l 5;���� n 5;��� I  6;���� 0 
monthtonum 
monthToNum� ��� o  67�� 0 testdate testDate�  �  �  f  56�  �  � m  ;>�� � m  ?@�� �  �  � n      ��� 1  BF�

�
 
day � o  AB�	�	 0 testdate testDate� ; 5 set the day to a known ambiguous value, month +/- 1    � ��� j   s e t   t h e   d a y   t o   a   k n o w n   a m b i g u o u s   v a l u e ,   m o n t h   + / -   1  �  �&  �%  � ��� l LL����  �  �  � ��� r  LZ��� m  LM�
� boovtrue� n      ��� 1  UY�
� 
valL� n  MU��� 4  NU��
� 
attr� m  QT�� ���  A X F o c u s e d� o  MN�� 0 thefield theField� ��� I [i��� 
� .prcskprsnull��� ��� utxt� b  [e��� n [a��� I  \a������� $0 formatdatestring formatDateString� ���� o  \]���� 0 testdate testDate��  ��  �  f  [\� o  ad��
�� 
ret �   � ��� t  j~��� l n}���� O n}��� r  r|��� n rz��� I  sz�������  0 exifdatedecode EXIFDateDecode� ���� n  sv��� 1  tv��
�� 
idat� o  st���� 0 photoid photoID��  ��  �  f  rs� o      ���� 0 	photodate 	photoDate� m  no���                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  � 5 / this will sometimes wander off for 10+ seconds   � ��� ^   t h i s   w i l l   s o m e t i m e s   w a n d e r   o f f   f o r   1 0 +   s e c o n d s� m  jm���� <� ��� l ��������  ��  ��  � ��� I ������
�� .ascrcmnt****      � ****� b  ���� m  ��� ���  P H O T O D A T E :  � o  ������ 0 	photodate 	photoDate��  � ��� I ���� ��
�� .ascrcmnt****      � ****  b  �� m  �� �  T E S T D A T E :   o  ������ 0 testdate testDate��  �  I ������
�� .ascrcmnt****      � **** b  ��	 m  ��

 �  T H E D A T E :  	 o  ������ 0 thedate theDate��    l ����������  ��  ��   �� Z  ���� = �� o  ������ 0 	photodate 	photoDate o  ������ 0 testdate testDate l �� k  ��  I ������
�� .ascrcmnt****      � **** m  �� � f * * * * * * * * 	 D a t e   w a s   s e t   c o r r e c t l y ,   c a l i b r a t i o n   s t o r e d��    l ����������  ��  ��     r  ��!"! m  ����
�� boovtrue" n     #$# o  ������ 0 
dateformat 
dateFormat$  f  ��  %��% l ��&'(& Z ��)*����) = ��+,+ o  ������ 0 	photodate 	photoDate, o  ������ 0 thedate theDate* L  ��-- m  ������ ��  ��  '   and we're done   ( �..    a n d   w e ' r e   d o n e��   < 6 date was set correctly, set format and return success    �// l   d a t e   w a s   s e t   c o r r e c t l y ,   s e t   f o r m a t   a n d   r e t u r n   s u c c e s s��   k  ��00 121 I ����3��
�� .ascrcmnt****      � ****3 m  ��44 �55 � * * * * * * * * 	 D a t e   w a s   s e t   i n c o r r e c t l y ,   c a l i b r a t i o n   s t o r e d ,   s e t t i n g   d a t e   a g a i n��  2 676 l ����������  ��  ��  7 8��8 l ��9:;9 r  ��<=< m  ����
�� boovfals= n     >?> o  ������ 0 
dateformat 
dateFormat?  f  ��: : 4 set date format, continue normally and set the date   ; �@@ h   s e t   d a t e   f o r m a t ,   c o n t i n u e   n o r m a l l y   a n d   s e t   t h e   d a t e��  ��  �1  �0  � ABA l ����������  ��  ��  B CDC r  ��EFE m  ����
�� boovtrueF n      GHG 1  ����
�� 
valLH n  ��IJI 4  ����K
�� 
attrK m  ��LL �MM  A X F o c u s e dJ o  ������ 0 thefield theFieldD NON l ����������  ��  ��  O PQP I ����R��
�� .prcskprsnull��� ��� utxtR b  ��STS n ��UVU I  ����W���� $0 formatdatestring formatDateStringW X��X o  ������ 0 thedate theDate��  ��  V  f  ��T o  ����
�� 
ret ��  Q YZY l ��[\][ O ��^_^ I ��������
�� .miscactvnull��� ��� null��  ��  _ m  ��``�                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  \ ( " fast apple event to recover state   ] �aa D   f a s t   a p p l e   e v e n t   t o   r e c o v e r   s t a t eZ bcb l ����������  ��  ��  c d��d L  �ee m  � ���� ��  / 4   x |��f
�� 
prcsf m   z {gg �hh  i P h o t o- m   t uii�                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  * R      ��jk
�� .ascrerr ****      � ****j l     l����l o      ���� 0 error_message  ��  ��  k ��m��
�� 
errnm l     n����n o      ���� 0 error_number  ��  ��  ��  + k  *oo pqp I $��r��
�� .ascrcmnt****      � ****r b   sts b  uvu b  wxw b  yzy b  {|{ b  }~} m   ��� ( E r r o r   s e t t i n g   d a t e :  ~ l ������ o  ���� 0 error_number  ��  ��  | m  �� ���  .  z l ������ o  ���� 0 error_message  ��  ��  x m  �� ��� j ,   r e s t a r t i n g   S y s t e m   E v e n t s   a n d   t r y i n g   a g a i n   ( a t t e m p t  v o  ���� 0 x  t m  �� ���  )��  q ���� I  %*�������� 0 	restartse 	restartSE��  ��  ��  �o  �� 0 x   m   E F����  m   F G���� ��  ��   p ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 formatdatestring formatDateString� ���� o      ���� 0 thedate theDate��  ��  � l    ����� k     ��� ��� l     ��������  ��  ��  � ��� l     ������  � Y S the following are for backwards compatibilty with pre-10.4 versions of AppleScript   � ��� �   t h e   f o l l o w i n g   a r e   f o r   b a c k w a r d s   c o m p a t i b i l t y   w i t h   p r e - 1 0 . 4   v e r s i o n s   o f   A p p l e S c r i p t� ��� r     ��� _     ��� l    ������ n     ��� 1    ��
�� 
time� o     ���� 0 thedate theDate��  ��  � 1    ��
�� 
hour� o      ���� 0 thehours theHours� ��� r    ��� \    ��� _    ��� l   ������ l   ����� n    ��� 1   	 �~
�~ 
time� o    	�}�} 0 thedate theDate��  �  ��  ��  � 1    �|
�| 
min � ]    ��� o    �{�{ 0 thehours theHours� 1    �z
�z 
min � o      �y�y 0 
theminutes 
theMinutes� ��� r    ��� `    ��� l   ��x�w� n    ��� 1    �v
�v 
time� o    �u�u 0 thedate theDate�x  �w  � m    �t�t <� o      �s�s 0 
theseconds 
theSeconds� ��� l   �r�q�p�r  �q  �p  � ��� l   ���� r    ��� 1    �o
�o 
tab � o      �n�n 0 
timestring  � $  tab to time field in iPhoto 5   � ��� <   t a b   t o   t i m e   f i e l d   i n   i P h o t o   5� ��� Z    -���m�l� A    #��� o     !�k�k 0 iphotoversion iPhotoVersion� m   ! "�j�j � r   & )��� m   & '�� ���   � o      �i�i 0 
timestring  �m  �l  � ��� r   . Q��� b   . O��� b   . G��� b   . E��� b   . =��� b   . ;��� o   . /�h�h 0 
timestring  � n  / :��� I   0 :�g��f�g 0 zeropad zeroPad� ��� _   0 5��� l  0 3��e�d� n   0 3��� 1   1 3�c
�c 
time� o   0 1�b�b 0 thedate theDate�e  �d  � 1   3 4�a
�a 
hour� ��`� m   5 6�_�_ �`  �f  �  f   / 0� m   ; <�� ���  :� n  = D��� I   > D�^��]�^ 0 zeropad zeroPad� ��� o   > ?�\�\ 0 
theminutes 
theMinutes� ��[� m   ? @�Z�Z �[  �]  �  f   = >� m   E F�� ���  :� n  G N��� I   H N�Y��X�Y 0 zeropad zeroPad� ��� o   H I�W�W 0 
theseconds 
theSeconds� ��V� m   I J�U�U �V  �X  �  f   G H� o      �T�T 0 
timestring  � ��� l  R R�S�R�Q�S  �R  �Q  �  �P  Z   R ��O =  R W n  R U o   S U�N�N 0 
dateformat 
dateFormat  f   R S m   U V�M
�M boovfals l  Z 	
 L   Z  b   Z ~ b   Z | b   Z o b   Z k b   Z a b   Z _ m   Z [ �   n   [ ^ 1   \ ^�L
�L 
year o   [ \�K�K 0 thedate theDate m   _ ` �  / n  a j I   b j�J �I�J 0 zeropad zeroPad  !"! n   b e#$# 1   c e�H
�H 
day $ o   b c�G�G 0 thedate theDate" %�F% m   e f�E�E �F  �I    f   a b m   k n&& �''  / n  o {()( I   p {�D*�C�D 0 zeropad zeroPad* +,+ n  p v-.- I   q v�B/�A�B 0 
monthtonum 
monthToNum/ 0�@0 o   q r�?�? 0 thedate theDate�@  �A  .  f   p q, 1�>1 m   v w�=�= �>  �C  )  f   o p o   | }�<�< 0 
timestring  	 ; 5 this will be tried on when dateFormat is not set yet   
 �22 j   t h i s   w i l l   b e   t r i e d   o n   w h e n   d a t e F o r m a t   i s   n o t   s e t   y e t�O   L   � �33 b   � �454 b   � �676 b   � �898 b   � �:;: b   � �<=< b   � �>?> m   � �@@ �AA  ? n   � �BCB 1   � ��;
�; 
yearC o   � ��:�: 0 thedate theDate= m   � �DD �EE  /; n  � �FGF I   � ��9H�8�9 0 zeropad zeroPadH IJI n  � �KLK I   � ��7M�6�7 0 
monthtonum 
monthToNumM N�5N o   � ��4�4 0 thedate theDate�5  �6  L  f   � �J O�3O m   � ��2�2 �3  �8  G  f   � �9 m   � �PP �QQ  /7 n  � �RSR I   � ��1T�0�1 0 zeropad zeroPadT UVU n   � �WXW 1   � ��/
�/ 
day X o   � ��.�. 0 thedate theDateV Y�-Y m   � ��,�, �-  �0  S  f   � �5 o   � ��+�+ 0 
timestring  �P  � \ V returns the date as a string with order based on iPhoto version and global dateformat   � �ZZ �   r e t u r n s   t h e   d a t e   a s   a   s t r i n g   w i t h   o r d e r   b a s e d   o n   i P h o t o   v e r s i o n   a n d   g l o b a l   d a t e f o r m a t� [\[ l     �*�)�(�*  �)  �(  \ ]^] l     �'�&�%�'  �&  �%  ^ _`_ l     �$�#�"�$  �#  �"  ` aba i    cdc I      �!e� �! 0 zeropad zeroPade fgf o      �� 0 theval theValg h�h o      �� 0 	endlength 	endLength�  �   d k     (ii jkj l     �lm�  l 4 . endLength is number of total digits to return   m �nn \   e n d L e n g t h   i s   n u m b e r   o f   t o t a l   d i g i t s   t o   r e t u r nk opo U     qrq l   stus s    vwv b    xyx m    zz �{{  0 0 0 0 0 0 0 0 0 0y o    �� 0 theval theValw o      �� 0 theval theValt   add 10 zeros at a time   u �|| .   a d d   1 0   z e r o s   a t   a   t i m er [    
}~} l   �� c    ��� ^    ��� o    �� 0 	endlength 	endLength� m    �� 
� m    �
� 
long�  �  ~ m    	�� p ��� l   ����  �  �  � ��� L    (�� n    '��� 7   &���
� 
ctxt� l   "���� ]    "��� o     �� 0 	endlength 	endLength� m     !�����  �  � m   # %�
�
��� o    �	�	 0 theval theVal�  b ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ��� �  �  �   � ��� i    ��� I      �������  0 exifdatedecode EXIFDateDecode� ���� o      ���� 0 
iphotodate 
iPhotoDate��  ��  � l    ����� k     ��� ��� l     ������  � C = original subroutine by Joe Maller <http://www.joemaller.com>   � ��� z   o r i g i n a l   s u b r o u t i n e   b y   J o e   M a l l e r   < h t t p : / / w w w . j o e m a l l e r . c o m >� ��� l     ������  �   authored March 2005   � ��� (   a u t h o r e d   M a r c h   2 0 0 5� ��� l     ������  � P J licensed under Creative Commons Attribution Non Commercial ShareAlike 2.0   � ��� �   l i c e n s e d   u n d e r   C r e a t i v e   C o m m o n s   A t t r i b u t i o n   N o n   C o m m e r c i a l   S h a r e A l i k e   2 . 0� ��� l     ������  � 8 2 http://creativecommons.org/licenses/by-nc-sa/2.0/   � ��� d   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 2 . 0 /� ��� l     ��������  ��  ��  � ��� l     ������  � d ^ 1.1 Added a month key to workaround an ambiguity problem with some international date formats   � ��� �   1 . 1   A d d e d   a   m o n t h   k e y   t o   w o r k a r o u n d   a n   a m b i g u i t y   p r o b l e m   w i t h   s o m e   i n t e r n a t i o n a l   d a t e   f o r m a t s� ��� l     ������  � T N 1.2 (May 2005) removed any English language dependencies from date rebuilding   � ��� �   1 . 2   ( M a y   2 0 0 5 )   r e m o v e d   a n y   E n g l i s h   l a n g u a g e   d e p e n d e n c i e s   f r o m   d a t e   r e b u i l d i n g� ��� l     ������  � b \ 1.3 (May 2005) rebuilt date extraction for compatibility with older versions of Applescript   � ��� �   1 . 3   ( M a y   2 0 0 5 )   r e b u i l t   d a t e   e x t r a c t i o n   f o r   c o m p a t i b i l i t y   w i t h   o l d e r   v e r s i o n s   o f   A p p l e s c r i p t� ��� l     ������  � Y S 1.5 (January 2006) Adapted for iPhoto 6, now checks to see if iPhotoDate is a date   � ��� �   1 . 5   ( J a n u a r y   2 0 0 6 )   A d a p t e d   f o r   i P h o t o   6 ,   n o w   c h e c k s   t o   s e e   i f   i P h o t o D a t e   i s   a   d a t e� ��� l     ��������  ��  ��  � ��� l     ������  � I CiPhoto 6 returns a date object instead of an exif-formatted string:   � ��� � i P h o t o   6   r e t u r n s   a   d a t e   o b j e c t   i n s t e a d   o f   a n   e x i f - f o r m a t t e d   s t r i n g :� ��� Z    ������� =    ��� n     ��� 1    ��
�� 
pcls� o     ���� 0 
iphotodate 
iPhotoDate� m    ��
�� 
ldt � L    
�� o    	���� 0 
iphotodate 
iPhotoDate��  ��  � ��� l   ��������  ��  ��  � ��� l   ������  � y s EXIF dates are always #### ## ## ##:##:## [-####], extract characters to desired places, translate months to words   � ��� �   E X I F   d a t e s   a r e   a l w a y s   # # # #   # #   # #   # # : # # : # #   [ - # # # # ] ,   e x t r a c t   c h a r a c t e r s   t o   d e s i r e d   p l a c e s ,   t r a n s l a t e   m o n t h s   t o   w o r d s� ���� Z    ������� A    ��� n    ��� 1    ��
�� 
leng� o    ���� 0 
iphotodate 
iPhotoDate� m    ���� � l   ���� L    �� m    ��
�� boovfals� ( " fail on too short a supplied date   � ��� D   f a i l   o n   t o o   s h o r t   a   s u p p l i e d   d a t e��  � k    ��� ��� l   .���� r    .��� J    ,�� ��� m    ��
�� 
jan � ��� m    ��
�� 
feb � ��� m    ��
�� 
mar � ��� m     ��
�� 
apr � ��� m     !��
�� 
may �    m   ! "��
�� 
jun   m   " #��
�� 
jul   m   # $��
�� 
aug   m   $ %��
�� 
sep  	 m   % &��
�� 
oct 	 

 m   & '��
�� 
nov  �� m   ' (��
�� 
dec ��  � o      ���� 0 	monthlist 	monthList� 2 , month constants, seems work internationally   � � X   m o n t h   c o n s t a n t s ,   s e e m s   w o r k   i n t e r n a t i o n a l l y�  l  / 4 r   / 4 m   / 2 �  1 / 1 / 1   2 : 2 : 2 o      ���� 0 thedate theDate %  save a call to "current date"     � >   s a v e   a   c a l l   t o   " c u r r e n t   d a t e "    r   5 ; 4   5 9��
�� 
ldt  o   7 8���� 0 thedate theDate o      ���� 0 thedate theDate  r   < Y  n   < S!"! 4   = S��#
�� 
cobj# l  @ R$����$ n   @ R%&% 7  A Q��'(
�� 
ctxt' m   G K���� ( m   L P���� & o   @ A���� 0 
iphotodate 
iPhotoDate��  ��  " o   < =���� 0 	monthlist 	monthList  n      )*) m   T X��
�� 
mnth* o   S T���� 0 thedate theDate +,+ r   Z q-.- n   Z k/0/ 7  [ k��12
�� 
ctxt1 m   a e���� 	2 m   f j���� 
0 o   Z [���� 0 
iphotodate 
iPhotoDate. n      343 1   l p��
�� 
day 4 o   k l���� 0 thedate theDate, 565 r   r �787 n   r �9:9 7  s ���;<
�� 
ctxt; m   y {���� < m   | ����� : o   r s���� 0 
iphotodate 
iPhotoDate8 n      =>= 1   � ���
�� 
year> o   � ����� 0 thedate theDate6 ?@? r   � �ABA l  � �C����C [   � �DED [   � �FGF ]   � �HIH l  � �J����J n   � �KLK 7  � ���MN
�� 
ctxtM m   � ����� N m   � ����� L o   � ����� 0 
iphotodate 
iPhotoDate��  ��  I 1   � ���
�� 
hourG ]   � �OPO l  � �Q����Q n   � �RSR 7  � ���TU
�� 
ctxtT m   � ����� U m   � ����� S o   � ����� 0 
iphotodate 
iPhotoDate��  ��  P 1   � ���
�� 
min E l  � �V����V n   � �WXW 7  � ���YZ
�� 
ctxtY m   � ����� Z m   � ����� X o   � ����� 0 
iphotodate 
iPhotoDate��  ��  ��  ��  B n      [\[ 1   � ���
�� 
time\ o   � ����� 0 thedate theDate@ ]��] L   � �^^ o   � ����� 0 thedate theDate��  ��  � 8 2 converts EXIF dates into AppleScript Date objects   � �__ d   c o n v e r t s   E X I F   d a t e s   i n t o   A p p l e S c r i p t   D a t e   o b j e c t s� `a` l     ��������  ��  ��  a bcb l     ��������  ��  ��  c ded i    fgf I      ��h���� 0 
monthtonum 
monthToNumh i��i o      ���� 0 thedate theDate��  ��  g k     �jj klk l     ��mn��  m H B the following is nearly 300% faster than a loop and indexed list    n �oo �   t h e   f o l l o w i n g   i s   n e a r l y   3 0 0 %   f a s t e r   t h a n   a   l o o p   a n d   i n d e x e d   l i s t  l pqp Z    rs����r =    tut n     vwv m    ��
�� 
mnthw o     ���� 0 thedate theDateu m    ��
�� 
jan s L    
xx m    	���� ��  ��  q yzy Z   {|����{ =   }~} n    � m    ��
�� 
mnth� o    ���� 0 thedate theDate~ m    ��
�� 
feb | L    �� m    ���� ��  ��  z ��� Z   ,������� =   #��� n    !��� m    !��
�� 
mnth� o    ���� 0 thedate theDate� m   ! "�
� 
mar � L   & (�� m   & '�~�~ ��  ��  � ��� Z  - ;���}�|� =  - 2��� n   - 0��� m   . 0�{
�{ 
mnth� o   - .�z�z 0 thedate theDate� m   0 1�y
�y 
apr � L   5 7�� m   5 6�x�x �}  �|  � ��� Z  < J���w�v� =  < A��� n   < ?��� m   = ?�u
�u 
mnth� o   < =�t�t 0 thedate theDate� m   ? @�s
�s 
may � L   D F�� m   D E�r�r �w  �v  � ��� Z  K Y���q�p� =  K P��� n   K N��� m   L N�o
�o 
mnth� o   K L�n�n 0 thedate theDate� m   N O�m
�m 
jun � L   S U�� m   S T�l�l �q  �p  � ��� Z  Z h���k�j� =  Z _��� n   Z ]��� m   [ ]�i
�i 
mnth� o   Z [�h�h 0 thedate theDate� m   ] ^�g
�g 
jul � L   b d�� m   b c�f�f �k  �j  � ��� Z  i w���e�d� =  i n��� n   i l��� m   j l�c
�c 
mnth� o   i j�b�b 0 thedate theDate� m   l m�a
�a 
aug � L   q s�� m   q r�`�` �e  �d  � ��� Z  x ����_�^� =  x }��� n   x {��� m   y {�]
�] 
mnth� o   x y�\�\ 0 thedate theDate� m   { |�[
�[ 
sep � L   � ��� m   � ��Z�Z 	�_  �^  � ��� Z  � ����Y�X� =  � ���� n   � ���� m   � ��W
�W 
mnth� o   � ��V�V 0 thedate theDate� m   � ��U
�U 
oct � L   � ��� m   � ��T�T 
�Y  �X  � ��� Z  � ����S�R� =  � ���� n   � ���� m   � ��Q
�Q 
mnth� o   � ��P�P 0 thedate theDate� m   � ��O
�O 
nov � L   � ��� m   � ��N�N �S  �R  � ��M� Z  � ����L�K� =  � ���� n   � ���� m   � ��J
�J 
mnth� o   � ��I�I 0 thedate theDate� m   � ��H
�H 
dec � L   � ��� m   � ��G�G �L  �K  �M  e ��� l     �F�E�D�F  �E  �D  � ��� l     �C�B�A�C  �B  �A  � ��� i    ��� I      �@�?�>�@ (0 iphotoshowinfopane iPhotoShowInfoPane�?  �>  � l    ����� k     ��� ��� I    �=��<
�= .ascrcmnt****      � ****� m     �� ���  S H O W I N F O P A N E�<  � ��� O   ��� I  
 �;�:�9
�; .miscactvnull��� ��� null�:  �9  � m    ���                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  � ��� Z   ���8�7� @    ��� o    �6�6 0 iphotoversion iPhotoVersion� m    �5�5 � L    �� m    �4
�4 boovtrue�8  �7  � ��� l   �3�2�1�3  �2  �1  � ��� Y    ���0���/� l  ( �� � k   ( �  Q   ( � k   + � 	
	 l  + +�.�-�,�.  �-  �,  
  l  + +�+�+   M G  find index of main iPhoto window, which is always the backmost window    � �     f i n d   i n d e x   o f   m a i n   i P h o t o   w i n d o w ,   w h i c h   i s   a l w a y s   t h e   b a c k m o s t   w i n d o w  O   + M O   / L k   6 K  r   6 ? I  6 =�*�)
�* .corecnte****       **** 2  6 9�(
�( 
cwin�)   o      �'�' 0 iphotowindow iPhotoWindow �& r   @ K m   @ A�%
�% boovtrue n        1   H J�$
�$ 
valL  n   A H!"! 4   E H�##
�# 
attr# m   F G$$ �%%  A X F o c u s e d" 4   A E�"&
�" 
cwin& o   C D�!�! 0 iphotowindow iPhotoWindow�&   4   / 3� '
�  
prcs' m   1 2(( �))  i P h o t o m   + ,**�                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   +,+ l  N N����  �  �  , -.- l  N N�/0�  / [ U  iPhoto 4's info pane is always usable, even when hidden, no need to show info pane.   0 �11 �     i P h o t o   4 ' s   i n f o   p a n e   i s   a l w a y s   u s a b l e ,   e v e n   w h e n   h i d d e n ,   n o   n e e d   t o   s h o w   i n f o   p a n e .. 232 l  N N����  �  �  3 454 Z   N �67��6 F   N Y898 @   N Q:;: o   N O�� 0 iphotoversion iPhotoVersion; m   O P�� 9 A   T W<=< o   T U�� 0 iphotoversion iPhotoVersion= m   U V�� 7 l  \ �>?@> O   \ �ABA O   ` �CDC O   i �EFE k   p �GG HIH r   p �JKJ l  p �L��L I  p ��M�
� .corecnte****       ****M n   p �NON 2   � ��
� 
sttxO n   p �PQP 4   { ��R
� 
sgrpR m   ~ �� Q n   p {STS 4   v {�U
� 
splgU m   y z�
�
 T 4   p v�	V
�	 
splgV m   t u�� �  �  �  K o      �� (0 infowindowcontents infoWindowContentsI W�W Z   � �XY��X A   � �Z[Z o   � ��� (0 infowindowcontents infoWindowContents[ m   � ��� Y k   � �\\ ]^] l  � ��_`�  _ h b Number of static text items varies by view. Keyword view contains 1, calendar view contains none.   ` �aa �   N u m b e r   o f   s t a t i c   t e x t   i t e m s   v a r i e s   b y   v i e w .   K e y w o r d   v i e w   c o n t a i n s   1 ,   c a l e n d a r   v i e w   c o n t a i n s   n o n e .^ bcb I  � �� d��
�  .ascrcmnt****      � ****d m   � �ee �ff 4 * * * * * 	 C l i c k i n g   i n f o   b u t t o n��  c g��g I  � ���h��
�� .prcsclicnull���    obj h 4   � ���i
�� 
butTi m   � ����� ��  ��  �  �  �  F 4   i m��j
�� 
cwinj o   k l���� 0 iphotowindow iPhotoWindowD 4   ` f��k
�� 
prcsk m   b ell �mm  i P h o t oB m   \ ]nn�                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ? #  check global version number,   @ �oo :   c h e c k   g l o b a l   v e r s i o n   n u m b e r ,�  �  5 pqp l  � ���������  ��  ��  q rsr l  � �tuvt L   � �ww m   � ���
�� boovtrueu / ) no errors, bail out of this subroutine .   v �xx R   n o   e r r o r s ,   b a i l   o u t   o f   t h i s   s u b r o u t i n e   .s y��y l  � ���������  ��  ��  ��   R      ��z{
�� .ascrerr ****      � ****z l     |����| o      ���� 0 error_message  ��  ��  { ��}��
�� 
errn} l     ~����~ o      ���� 0 error_number  ��  ��  ��   k   � � ��� I  � ������
�� .ascrcmnt****      � ****� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� ( E r r o r   s e t t i n g   d a t e :  � l  � ������� o   � ����� 0 error_number  ��  ��  � m   � ��� ���  .  � l  � ������� o   � ����� 0 error_message  ��  ��  � m   � ��� ��� j ,   r e s t a r t i n g   S y s t e m   E v e n t s   a n d   t r y i n g   a g a i n   ( a t t e m p t  � o   � ����� 0 x  � m   � ��� ���  )��  � ���� I   � ��������� 0 	restartse 	restartSE��  ��  ��   ���� l  � ���������  ��  ��  ��    ; 5 loop over this to accomodate System Events bugginess    ��� j   l o o p   o v e r   t h i s   t o   a c c o m o d a t e   S y s t e m   E v e n t s   b u g g i n e s s�0 0 x  � m   ! "���� � m   " #���� �/  � ��� l  � ����� O  � ���� I  � ������
�� .sysodlogaskr        TEXT� m   � ��� ��� � T h e   s c r i p t   f a i l e d   d u r i n g   i P h o t o S h o w I n f o P a n e ( ) ,   p l e a s e   s e n d   a   r e p o r t   t o   j o e @ j o e m a l l e r . c o m��  � m   � ����                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  �   fail visibly   � ���    f a i l   v i s i b l y� ���� l  � ����� R   � ������
�� .ascrerr ****      � ****� m   � ��� ��� � T h e   s c r i p t   f a i l e d   d u r i n g   i P h o t o S h o w I n f o P a n e ( ) ,   p l e a s e   s e n d   a   r e p o r t   t o   j o e @ j o e m a l l e r . c o m��  � G A this will kill the script silently when run from the script menu   � ��� �   t h i s   w i l l   k i l l   t h e   s c r i p t   s i l e n t l y   w h e n   r u n   f r o m   t h e   s c r i p t   m e n u��  �   reveals info pane   � ��� $   r e v e a l s   i n f o   p a n e� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 	osversion 	OSVersion��  ��  � k     -�� ��� l     ������  � L Freturns the system version as a four digit integer (ie. 10.4.2 = 1042)   � ��� � r e t u r n s   t h e   s y s t e m   v e r s i o n   a s   a   f o u r   d i g i t   i n t e g e r   ( i e .   1 0 . 4 . 2   =   1 0 4 2 )� ��� l     ������  � ( " based on examples on Apple's site   � ��� D   b a s e d   o n   e x a m p l e s   o n   A p p l e ' s   s i t e� ��� r     ��� I    �����
�� .fndrgstlns          type� m     �� ���  s y s v��  � l     ������ o      ���� 0 hexdata hexData��  ��  � ��� r    ��� J    
����  � o      ���� 0 	hexstring 	hexString� ��� U    (��� k    #�� ��� r    ��� b    ��� l   ������ c    ��� l   ������ `    ��� o    ���� 0 hexdata hexData� m    ���� ��  ��  � m    ��
�� 
TEXT��  ��  � o    ���� 0 	hexstring 	hexString� o      ���� 0 	hexstring 	hexString� ���� r    #��� _    !��� o    ���� 0 hexdata hexData� m     ���� � o      ���� 0 hexdata hexData��  � m    ���� � ���� L   ) -�� c   ) ,��� o   ) *���� 0 	hexstring 	hexString� m   * +��
�� 
TEXT��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 	uienabled 	UIEnabled��  ��  � l    ����� k     ��� ��� l     ������  �   returns   � ���    r e t u r n s� ��� s     ��� I     �������� 0 	osversion 	OSVersion��  ��  � o      ���� 0 
os_version 
OS_version� � � l  	 	��������  ��  ��    �� Y   	 ����� Z    ��� A    	 l   
����
 o    ���� 0 
os_version 
OS_version��  ��  	 m     �  1 0 3 0 k    )  l   & I   &��
�� .sysodlogaskr        TEXT m     � � T h i s   s c r i p t   r e q u i r e s   t h e   i n s t a l l a t i o n   o f   M a c   O S   X   1 0 . 3   o r   h i g h e r . ��
�� 
btns J     �� m     �  O K��   ��
�� 
dflt m     ����  ����
�� 
disp m   ! "���� ��     caution icon    �      c a u t i o n   i c o n !��! L   ' )"" m   ' (��
�� boovfals��  ��   Q   , �#$%# O   / �&'& k   3 �(( )*) Z   3 �+,����+ =  3 8-.- 1   3 6��
�� 
uien. m   6 7��
�� boovfals, Z   ; �/0��1/ @   ; >232 l  ; <4����4 o   ; <���� 0 
os_version 
OS_version��  ��  3 m   < =55 �66  1 0 4 00 k   A Q77 898 l  A H:;<: I  A H��=>
�� .sysodlogaskr        TEXT= m   A B?? �@@ � T h i s   s c r i p t   r e q u i r e s   U I   S c r i p t i n g .   P l e a s e   c l i c k   O K   t h e n   e n t e r   y o u r   p a s s w o r d   t o   e n a b l e   U I   S c r i p t i n g .> �A�~
� 
dispA m   C D�}�} �~  ;  
 note icon   < �BB    n o t e   i c o n9 CDC l  I NEFGE r   I NHIH m   I J�|
�| boovtrueI 1   J M�{
�{ 
uienF   set UI Scripting to true   G �JJ 2   s e t   U I   S c r i p t i n g   t o   t r u eD K�zK l  O QLMNL L   O QOO m   O PPP �QQ  r e s t o r eM Y S used to ask whether or not to restore UI Elements Enabled at the end of the script   N �RR �   u s e d   t o   a s k   w h e t h e r   o r   n o t   t o   r e s t o r e   U I   E l e m e n t s   E n a b l e d   a t   t h e   e n d   o f   t h e   s c r i p t�z  ��  1 k   T �SS TUT O   T �VWV k   X �XX YZY I  X ]�y�x�w
�y .miscactvnull��� ��� null�x  �w  Z [\[ r   ^ l]^] 4   ^ f�v_
�v 
xppb_ m   b e`` �aa H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s^ 1   f k�u
�u 
xpcp\ b�tb l  m �cdec I  m ��sfg
�s .sysodlogaskr        TEXTf b   m |hih b   m xjkj b   m tlml m   m pnn �oo � T h i s   s c r i p t   u t i l i z e s   t h e   b u i l t - i n   G r a p h i c   U s e r   I n t e r f a c e   S c r i p t i n g   a r c h i t e c t u r e   o f   M a c   O S   X   w h i c h   i s   c u r r e n t l y   d i s a b l e d .m o   p s�r
�r 
ret k o   t w�q
�q 
ret i m   x {pp �qq Y o u   c a n   a c t i v a t e   G U I   S c r i p t i n g   b y   s e l e c t i n g   t h e   c h e c k b o x   " E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s "   i n   t h e   U n i v e r s a l   A c c e s s   p r e f e r e n c e   p a n e .g �prs
�p 
dispr m   } ~�o�o s �ntu
�n 
btnst J    �vv w�mw m    �xx �yy  O K�m  u �lz�k
�l 
dfltz m   � ��j�j �k  d  
 note icon   e �{{    n o t e   i c o n�t  W m   T U||�                                                                                  sprf   alis    |  Macintosh HD               ��*�H+   #�ySystem Preferences.app                                          $f��0��        ����  	                Applications    ���      �0��     #�y  0Macintosh HD:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  U }�i} L   � �~~ m   � ��h
�h boovfals�i  ��  ��  * �g L   � ��� m   � ��f
�f boovtrue�g  ' m   / 0���                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  $ R      �e��
�e .ascrerr ****      � ****� l     ��d�c� o      �b�b 0 error_message  �d  �c  � �a��`
�a 
errn� l     ��_�^� o      �]�] 0 error_number  �_  �^  �`  % k   � ��� ��� I  � ��\��[
�\ .ascrcmnt****      � ****� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� ( E r r o r   s e t t i n g   d a t e :  � l  � ���Z�Y� o   � ��X�X 0 error_number  �Z  �Y  � m   � ��� ���  .  � l  � ���W�V� o   � ��U�U 0 error_message  �W  �V  � m   � ��� ��� j ,   r e s t a r t i n g   S y s t e m   E v e n t s   a n d   t r y i n g   a g a i n   ( a t t e m p t  � o   � ��T�T 0 x  � m   � ��� ���  )�[  � ��S� I   � ��R�Q�P�R 0 	restartse 	restartSE�Q  �P  �S  �� 0 x   m    �O�O  m    �N�N ��  ��  � A ; originally based on an example function from Apple's site    � ��� v   o r i g i n a l l y   b a s e d   o n   a n   e x a m p l e   f u n c t i o n   f r o m   A p p l e ' s   s i t e  � ��� l     �M�L�K�M  �L  �K  � ��� i     #��� I      �J��I�J 0 	uirestore 	UIRestore� ��H� o      �G�G 0 thestate theState�H  �I  � Z     m���F�E� =    ��� o     �D�D 0 thestate theState� m    �� ���  r e s t o r e� k    i�� ��� l   ���� I   �C��
�C .sysodlogaskr        TEXT� m    �� ���> T h i s   s c r i p t   e n a b l e d   U I   S c r i p t i n g .   C l i c k   " D i s a b l e   U I   S c r i p t i n g "   a n d   e n t e r   y o u r   p a s s w o r d   t o   d i s a b l e   U I   S c r i p t i n g ,   o r   c l i c k   " L e a v e   E n a b l e d "   t o   k e e p   t h i s   s e t t i n g .  � �B��
�B 
btns� J    �� ��� m    	�� ���  L e a v e   E n a b l e d� ��A� m   	 
�� ��� ( D i s a b l e   U I   S c r i p t i n g�A  � �@��
�@ 
dflt� m    �� ��� ( D i s a b l e   U I   S c r i p t i n g� �?��>
�? 
disp� m    �=�= �>  �  
 note icon   � ���    n o t e   i c o n� ��� Z   #���<�;� =   ��� n    ��� 1    �:
�: 
bhit� l   ��9�8� 1    �7
�7 
rslt�9  �8  � m    �� ���  L e a v e   E n a b l e d� L    �6�6  �<  �;  � ��5� Y   $ i��4���3� Q   . d���� k   1 =�� ��� l  1 ;���� O  1 ;��� r   5 :��� m   5 6�2
�2 boovfals� 1   6 9�1
�1 
uien� m   1 2���                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �   set UI Scripting to true   � ��� 2   s e t   U I   S c r i p t i n g   t o   t r u e� ��0�  S   < =�0  � R      �/��
�/ .ascrerr ****      � ****� l     ��.�-� o      �,�, 0 error_message  �.  �-  � �+��*
�+ 
errn� l     ��)�(� o      �'�' 0 error_number  �)  �(  �*  � k   E d�� ��� I  E ^�&��%
�& .ascrcmnt****      � ****� b   E Z��� b   E V��� b   E T��� b   E P��� b   E N��� b   E J��� m   E H�� �   ( E r r o r   s e t t i n g   d a t e :  � l  H I�$�# o   H I�"�" 0 error_number  �$  �#  � m   J M �  .  � l  N O�!�  o   N O�� 0 error_message  �!  �   � m   P S � j ,   r e s t a r t i n g   S y s t e m   E v e n t s   a n d   t r y i n g   a g a i n   ( a t t e m p t  � o   T U�� 0 x  � m   V Y �  )�%  � 	�	 I   _ d���� 0 	restartse 	restartSE�  �  �  �4 0 x  � m   ' (�� � m   ( )�� �3  �5  �F  �E  � 

 l     ����  �  �    l     ����  �  �    l      ��   restartSE() is meant to catch and deal with several errors which happened when trying to quit System Events. Several (up to 5) attempts are made to quit System Events by conventional commands. Lastly, a shell script is used to check for System Events and kill it if still running. The shell script is used to detect the process because the native AppleScript method uses System Events. A script can't use System Events to check whether or not System Events is running because the application will launch to check for itself.
    �   r e s t a r t S E ( )   i s   m e a n t   t o   c a t c h   a n d   d e a l   w i t h   s e v e r a l   e r r o r s   w h i c h   h a p p e n e d   w h e n   t r y i n g   t o   q u i t   S y s t e m   E v e n t s .   S e v e r a l   ( u p   t o   5 )   a t t e m p t s   a r e   m a d e   t o   q u i t   S y s t e m   E v e n t s   b y   c o n v e n t i o n a l   c o m m a n d s .   L a s t l y ,   a   s h e l l   s c r i p t   i s   u s e d   t o   c h e c k   f o r   S y s t e m   E v e n t s   a n d   k i l l   i t   i f   s t i l l   r u n n i n g .   T h e   s h e l l   s c r i p t   i s   u s e d   t o   d e t e c t   t h e   p r o c e s s   b e c a u s e   t h e   n a t i v e   A p p l e S c r i p t   m e t h o d   u s e s   S y s t e m   E v e n t s .   A   s c r i p t   c a n ' t   u s e   S y s t e m   E v e n t s   t o   c h e c k   w h e t h e r   o r   n o t   S y s t e m   E v e n t s   i s   r u n n i n g   b e c a u s e   t h e   a p p l i c a t i o n   w i l l   l a u n c h   t o   c h e c k   f o r   i t s e l f . 
  i   $ ' I      ���� 0 	restartse 	restartSE�  �   k     u  U     . l   ) Q    ) ! k   
 "" #$# I  
 �%�
� .aevtquitnull��� ��� null% m   
 &&�                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  $ '(' I   �)�

� .ascrcmnt****      � ****) m    ** �++ " Q u i t   s u c c e s s f u l l y�
  ( ,�	,  S    �	    R      �-.
� .ascrerr ****      � ****- o      �� 0 errormsg errorMSG. �/�
� 
errn/ o      �� 0 errornum errorNUM�  ! l   )0120 I   )�3�
� .ascrcmnt****      � ****3 J    %44 565 b    "787 m     99 �:: d f a i l e d   t r y i n g   t o   q u i t   S y s t e m   E v e n t s   i n   r e s t a r t S E :  8 o     !�� 0 errormsg errorMSG6 ;� ; o   " #���� 0 errornum errorNUM�   �  1      2 �<<    P J try to quit via Apple Events several times, the loop is exited on success    �== �   t r y   t o   q u i t   v i a   A p p l e   E v e n t s   s e v e r a l   t i m e s ,   t h e   l o o p   i s   e x i t e d   o n   s u c c e s s m    ����  >?> l  / /��������  ��  ��  ? @A@ l   / /��BC��  B�� killing System Events with a shell script seems to orphan a reference somewhere and AppleScript then sends commands to the non-existent application, the above quit commands, which often fail, are enough to clear the caching even if they fail to fully quit System Events. Just in case the above quit commands failed entirely, check for System Events via shell script and kill it if it's running    C �DD   k i l l i n g   S y s t e m   E v e n t s   w i t h   a   s h e l l   s c r i p t   s e e m s   t o   o r p h a n   a   r e f e r e n c e   s o m e w h e r e   a n d   A p p l e S c r i p t   t h e n   s e n d s   c o m m a n d s   t o   t h e   n o n - e x i s t e n t   a p p l i c a t i o n ,   t h e   a b o v e   q u i t   c o m m a n d s ,   w h i c h   o f t e n   f a i l ,   a r e   e n o u g h   t o   c l e a r   t h e   c a c h i n g   e v e n   i f   t h e y   f a i l   t o   f u l l y   q u i t   S y s t e m   E v e n t s .   J u s t   i n   c a s e   t h e   a b o v e   q u i t   c o m m a n d s   f a i l e d   e n t i r e l y ,   c h e c k   f o r   S y s t e m   E v e n t s   v i a   s h e l l   s c r i p t   a n d   k i l l   i t   i f   i t ' s   r u n n i n g  A EFE Q   / FGH��G k   2 =II JKJ l  2 7LMNL I  2 7��O��
�� .sysoexecTEXT���     TEXTO m   2 3PP �QQ > p s   - a x   |   g r e p   ' [ S ] y s t e m   E v e n t s '��  M 6 0 throws an error if System Events is not running   N �RR `   t h r o w s   a n   e r r o r   i f   S y s t e m   E v e n t s   i s   n o t   r u n n i n gK S��S l  8 =TUVT I  8 =��W��
�� .sysoexecTEXT���     TEXTW m   8 9XX �YY . k i l l a l l   ' S y s t e m   E v e n t s '��  U - ' above didn't error, kill System Events   V �ZZ N   a b o v e   d i d n ' t   e r r o r ,   k i l l   S y s t e m   E v e n t s��  H R      ������
�� .ascrerr ****      � ****��  ��  ��  F [\[ l  G G��������  ��  ��  \ ]^] l  G G��������  ��  ��  ^ _`_ l   G G��ab��  a j d next restart System Events and insert a delay so the system can catch up without going out of sync    b �cc �   n e x t   r e s t a r t   S y s t e m   E v e n t s   a n d   i n s e r t   a   d e l a y   s o   t h e   s y s t e m   c a n   c a t c h   u p   w i t h o u t   g o i n g   o u t   o f   s y n c  ` d��d Q   G uefge U   J chih l  Q ^jklj k   Q ^mm non I  Q V��p��
�� .aevtoappnull  �   � ****p m   Q Rqq�                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  o rsr l  W \tuvt I  W \��w��
�� .sysoexecTEXT���     TEXTw m   W Xxx �yy > p s   - a x   |   g r e p   ' [ S ] y s t e m   E v e n t s '��  u 6 0 throws an error if System Events is not running   v �zz `   t h r o w s   a n   e r r o r   i f   S y s t e m   E v e n t s   i s   n o t   r u n n i n gs {��{  S   ] ^��  k 0 * repeat to work around occasional failures   l �|| T   r e p e a t   t o   w o r k   a r o u n d   o c c a s i o n a l   f a i l u r e si m   M N���� f R      ��}~
�� .ascrerr ****      � ****} o      ���� 0 errormsg errorMSG~ ����
�� 
errn o      ���� 0 errornum errorNUM��  g l  k u���� I  k u�����
�� .ascrcmnt****      � ****� J   k q�� ��� b   k n��� m   k l�� ��� p f a i l e d   t r y i n g   t o   r u n   S y s t e m   E v e n t s   a t   e n d   o f   r e s t a r t S E :  � o   l m���� 0 errormsg errorMSG� ���� o   n o���� 0 errornum errorNUM��  ��  � !  this is purely for logging   � ��� 6   t h i s   i s   p u r e l y   f o r   l o g g i n g��   ��� l     ��������  ��  ��  � ��� l      ������  � W Q This is just a formatting routine to convert seconds into more digestable times    � ��� �   T h i s   i s   j u s t   a   f o r m a t t i n g   r o u t i n e   t o   c o n v e r t   s e c o n d s   i n t o   m o r e   d i g e s t a b l e   t i m e s  � ��� l     ��������  ��  ��  � ��� i   ( +��� I      ������� 0 secondstohms secondsToHMS� ���� o      ���� 0 
theseconds 
theSeconds��  ��  � k     ��� ��� l     ������  � = 7 returns value of seconds in hours, minutes and seconds   � ��� n   r e t u r n s   v a l u e   o f   s e c o n d s   i n   h o u r s ,   m i n u t e s   a n d   s e c o n d s� ��� l     ��������  ��  ��  � ��� r     ��� _     ��� o     ���� 0 
theseconds 
theSeconds� m    ����� o      ���� 0 thehours theHours� ��� r    ��� `    ��� _    	��� o    ���� 0 
theseconds 
theSeconds� m    ���� <� m   	 
���� <� o      ���� 0 
theminutes 
theMinutes� ��� r    ��� `    ��� o    ���� 0 
theseconds 
theSeconds� m    ���� <� o      ���� 0 
theseconds 
theSeconds� ��� l   ��������  ��  ��  � ��� r    ��� m    �� ���  � o      ���� 0 	outstring 	outString� ��� Z    =������� ?    ��� o    ���� 0 thehours theHours� m    ����  � k    9�� ��� r    !��� m    �� ���   � o      ���� 0 s  � ��� Z  " /������� >  " %��� o   " #���� 0 thehours theHours� m   # $���� � r   ( +��� m   ( )�� ���  s  � o      ���� 0 s  ��  ��  � ���� r   0 9��� b   0 7��� b   0 5��� b   0 3��� o   0 1���� 0 	outstring 	outString� o   1 2���� 0 thehours theHours� m   3 4�� ��� 
   h o u r� o   5 6���� 0 s  � o      ���� 0 	outstring 	outString��  ��  ��  � ��� Z   > c������� ?   > A��� o   > ?���� 0 
theminutes 
theMinutes� m   ? @����  � k   D _�� ��� r   D G��� m   D E�� ���   � o      ���� 0 s  � ��� Z  H U������� >  H K��� o   H I���� 0 
theminutes 
theMinutes� m   I J���� � r   N Q��� m   N O�� ���  s  � o      ���� 0 s  ��  ��  � ���� r   V _��� b   V ]��� b   V [��� b   V Y   o   V W���� 0 	outstring 	outString o   W X���� 0 
theminutes 
theMinutes� m   Y Z �    m i n u t e� o   [ \���� 0 s  � o      ���� 0 	outstring 	outString��  ��  ��  �  Z   d ����� ?   d g	 o   d e���� 0 
theseconds 
theSeconds	 m   e f����   k   j �

  r   j m m   j k �    o      ���� 0 s    Z  n {���� >  n q o   n o���� 0 
theseconds 
theSeconds m   o p����  r   t w m   t u �  s o      ���� 0 s  ��  ��   �� r   | � b   | � b   | � !  b   | �"#" b   | $%$ o   | }���� 0 	outstring 	outString% o   } ~���� 0 
theseconds 
theSeconds# m    �&& �''    s e c o n d! o   � ����� 0 s   m   � �(( �))  . o      ���� 0 	outstring 	outString��  ��  ��   *��* L   � �++ o   � ����� 0 	outstring 	outString��  � ,-, l     ��������  ��  ��  - ./. l     ��������  ��  ��  / 010 l     ��������  ��  ��  1 232 l      ��45��  4 4 .   END COMMON DATE GLOBALS AND SUBROUTINES       5 �66 \       E N D   C O M M O N   D A T E   G L O B A L S   A N D   S U B R O U T I N E S        3 787 l     ��������  ��  ��  8 9:9 l     ��~�}�  �~  �}  : ;<; l     �|�{�z�|  �{  �z  < =>= l     �y�x�w�y  �x  �w  > ?@? l     �v�u�t�v  �u  �t  @ ABA l     �s�r�q�s  �r  �q  B CDC l     �p�o�n�p  �o  �n  D EFE l     �m�l�k�m  �l  �k  F GHG l     �j�i�h�j  �i  �h  H IJI l     �g�f�e�g  �f  �e  J KLK l     �d�c�b�d  �c  �b  L MNM l     �a�`�_�a  �`  �_  N OPO i   , /QRQ I      �^�]�\�^ 0 gettimeoffset getTimeOffset�]  �\  R l   �STUS k    �VV WXW l     �[�Z�Y�[  �Z  �Y  X YZY l      �X[\�X  [ 3 -  All localizable strings for dialogs here:     \ �]] Z     A l l   l o c a l i z a b l e   s t r i n g s   f o r   d i a l o g s   h e r e :    Z ^_^ l     �W`a�W  `   First text-entry dialog   a �bb 0   F i r s t   t e x t - e n t r y   d i a l o g_ cdc r     efe m     gg �hh B S h i f t   t i m e   o f   s e l e c t e d   i m a g e s   b y :f o      �V�V *0 dialogstring1prompt dialogString1Promptd iji r    klk m    mm �nn  H H : M M : S Sl o      �U�U ,0 dialogstring1default dialogstring1Defaultj opo r    qrq J    ss tut m    	vv �ww  C a n c e lu xyx m   	 
zz �{{  B a c k   ( - )y |�T| m   
 }} �~~  F o r w a r d   ( + )�T  r o      �S�S 0 buttonlist1 buttonList1p � l   �R�Q�P�R  �Q  �P  � ��� l   �O���O  �   parsing error   � ���    p a r s i n g   e r r o r� ��� r    ��� m    �� ��� � P a r s e   E r r o r .   P l e a s e   e n t e r   t i m e   o f f s e t   u s i n g   n u m b e r s   s e p a r a t e d   b y   c o l o n s   ( : ) .� o      �N�N 0 
parseerror 
ParseError� ��� l   �M�L�K�M  �L  �K  � ��� l   �J���J  � 7 1 prompt shared by second-level formatting dialogs   � ��� b   p r o m p t   s h a r e d   b y   s e c o n d - l e v e l   f o r m a t t i n g   d i a l o g s� ��� r    ��� m    �� ��� ( S h i f t   P h o t o s '   d a t e s  � o      �I�I ,0 dialogstring2prompt1 dialogString2Prompt1� ��� l   �H�G�F�H  �G  �F  � ��� l   �E���E  � ( " Second dialog, two number entered   � ��� D   S e c o n d   d i a l o g ,   t w o   n u m b e r   e n t e r e d� ��� l   �D�C�B�D  �C  �B  � ��� l   �A���A  � ' ! third dialog, one number entered   � ��� B   t h i r d   d i a l o g ,   o n e   n u m b e r   e n t e r e d� ��� r    ��� J    �� ��� m    �� ��� 
 H o u r s� ��� m    �� ���  M i n u t e s� ��@� m    �� ���  S e c o n d s�@  � o      �?�? 0 buttonlist3 buttonList3� ��� l     �>�=�<�>  �=  �<  � ��� l      �;���;  � !   end localizable strings     � ��� 6     e n d   l o c a l i z a b l e   s t r i n g s    � ��� l     �:�9�8�:  �9  �8  � ��� l    4���� O    4��� r   $ 3��� I  $ 1�7��
�7 .sysodlogaskr        TEXT� o   $ %�6�6 *0 dialogstring1prompt dialogString1Prompt� �5��
�5 
dtxt� o   & '�4�4 ,0 dialogstring1default dialogstring1Default� �3��
�3 
btns� o   ( )�2�2 0 buttonlist1 buttonList1� �1��
�1 
dflt� m   * +�0�0 � �/��.
�/ 
disp� m   , -�-�- �.  � o      �,�, 0 
timechange 
timeChange� m     !���                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  �  
 note icon   � ���    n o t e   i c o n� ��� l  5 5�+�*�)�+  �*  �)  � ��� l  5 5�(���(  � 1 +	copy text returned of result to timeChange   � ��� V 	 c o p y   t e x t   r e t u r n e d   o f   r e s u l t   t o   t i m e C h a n g e� ��� I  5 >�'��&
�' .ascrcmnt****      � ****� n   5 :��� 1   6 :�%
�% 
bhit� o   5 6�$�$ 0 
timechange 
timeChange�&  � ��� l  ? ?�#�"�!�#  �"  �!  � ��� Z   ? x���� � =  ? K��� n   ? D��� 1   @ D�
� 
bhit� o   ? @�� 0 
timechange 
timeChange� l  D J���� n   D J��� 4   E J��
� 
cobj� m   H I�� � o   D E�� 0 buttonlist1 buttonList1�  �  � l  N Y���� k   N Y�� ��� r   N Q��� m   N O����� o      �� 0 thedirection theDirection� ��� r   R W��� m   R U�� ���  b a c k� o      �� &0 thedirectionlabel theDirectionLabel� ��� l  X X����  �  �  �  �  	 backward   � ���    b a c k w a r d� �	 � =  \ h			 n   \ a			 1   ] a�
� 
bhit	 o   \ ]�� 0 
timechange 
timeChange	 l  a g	��	 n   a g			 4   b g�	
� 
cobj	 m   e f�� 	 o   a b�� 0 buttonlist1 buttonList1�  �  	  		�
		 l  k t	
			
 k   k t		 			 r   k n			 m   k l�	�	 	 o      �� 0 thedirection theDirection	 	�	 r   o t			 m   o r		 �		  f o r w a r d	 o      �� &0 thedirectionlabel theDirectionLabel�  	   forward   	 �		    f o r w a r d�
  �   � 			 l  y y����  �  �  	 			 s   y �			 1   y ~�
� 
txdl	 o      �� 0 	olddelims 	oldDelims	 			 r   � �	 	!	  m   � �	"	" �	#	#  :	! 1   � �� 
�  
txdl	 	$	%	$ l  � �	&	'	(	& r   � �	)	*	) n   � �	+	,	+ 2   � ���
�� 
citm	, n   � �	-	.	- 1   � ���
�� 
ttxt	. o   � ����� 0 
timechange 
timeChange	* o      ���� 0 thetimelist theTimeList	' 5 / extract stuff between colons from entered text   	( �	/	/ ^   e x t r a c t   s t u f f   b e t w e e n   c o l o n s   f r o m   e n t e r e d   t e x t	% 	0	1	0 r   � �	2	3	2 o   � ����� 0 	olddelims 	oldDelims	3 1   � ���
�� 
txdl	1 	4	5	4 l  � ���������  ��  ��  	5 	6	7	6 Y   � �	8��	9	:��	8 Z   � �	;	<��	=	; E  � �	>	?	> J   � �	@	@ 	A	B	A m   � �	C	C �	D	D  H H	B 	E	F	E m   � �	G	G �	H	H  M M	F 	I��	I m   � �	J	J �	K	K  S S��  	? n   � �	L	M	L 4   � ���	N
�� 
cobj	N o   � ����� 0 i  	M o   � ����� 0 thetimelist theTimeList	< k   � �	O	O 	P	Q	P I  � ���	R��
�� .ascrcmnt****      � ****	R m   � �	S	S �	T	T  i n   t h e r e��  	Q 	U��	U r   � �	V	W	V m   � �����  	W n      	X	Y	X 4   � ���	Z
�� 
cobj	Z o   � ����� 0 i  	Y o   � ����� 0 thetimelist theTimeList��  ��  	= Q   � �	[	\	]	[ l  � �	^	_	`	^ [   � �	a	b	a l  � �	c����	c n   � �	d	e	d 4   � ���	f
�� 
cobj	f o   � ����� 0 i  	e o   � ����� 0 thetimelist theTimeList��  ��  	b m   � �����  	_   check for numberness   	` �	g	g *   c h e c k   f o r   n u m b e r n e s s	\ R      ������
�� .ascrerr ****      � ****��  ��  	] k   � �	h	h 	i	j	i l  � �	k	l	m	k I  � ���	n	o
�� .sysodlogaskr        TEXT	n o   � ����� 0 
parseerror 
ParseError	o ��	p��
�� 
disp	p m   � ����� ��  	l   caution icon   	m �	q	q    c a u t i o n   i c o n	j 	r��	r L   � �	s	s m   � ���
�� boovfals��  �� 0 i  	9 m   � ����� 	: I  � ���	t��
�� .corecnte****       ****	t o   � ����� 0 thetimelist theTimeList��  ��  	7 	u	v	u l  � ���������  ��  ��  	v 	w	x	w Z   ��	y	z����	y A  �	{	|	{ l  �	}����	} I  ���	~��
�� .corecnte****       ****	~ n   � �		�	 2  � ���
�� 
cobj	� o   � ����� 0 thetimelist theTimeList��  ��  ��  	| m  ���� 	z Z  �	�	�	���	� = 	�	�	� l 	�����	� I ��	���
�� .corecnte****       ****	� n  	�	�	� 2 ��
�� 
cobj	� o  ���� 0 thetimelist theTimeList��  ��  ��  	� m  ���� 	� l �	�	�	�	� k  �	�	� 	�	�	� I ��	���
�� .ascrcmnt****      � ****	� o  ���� 0 thetimelist theTimeList��  	� 	�	�	� I %��	���
�� .ascrcmnt****      � ****	� n  !	�	�	� 4  !��	�
�� 
cobj	� m   ���� 	� o  ���� 0 thetimelist theTimeList��  	� 	�	�	� I &4��	���
�� .ascrcmnt****      � ****	� n  &0	�	�	� 1  ,0��
�� 
pcls	� n  &,	�	�	� 4  ',��	�
�� 
cobj	� m  *+���� 	� o  &'���� 0 thetimelist theTimeList��  	� 	�	�	� l 55��������  ��  ��  	� 	�	�	� r  5:	�	�	� m  58	�	� �	�	�  s	� o      ���� 	0 one_s  	� 	�	�	� Z ;S	�	�����	� = ;G	�	�	� c  ;E	�	�	� l ;A	�����	� n  ;A	�	�	� 4  <A��	�
�� 
cobj	� m  ?@���� 	� o  ;<���� 0 thetimelist theTimeList��  ��  	� m  AD��
�� 
long	� m  EF���� 	� r  JO	�	�	� m  JM	�	� �	�	�  	� o      ���� 	0 one_s  ��  ��  	� 	�	�	� l TT��������  ��  ��  	� 	�	�	� r  TY	�	�	� m  TW	�	� �	�	�  s	� o      ���� 	0 two_s  	� 	�	�	� Z Zp	�	�����	� = Zd	�	�	� l Z`	�����	� n  Z`	�	�	� 4  [`��	�
�� 
cobj	� m  ^_���� 	� o  Z[���� 0 thetimelist theTimeList��  ��  	� m  `c	�	� �	�	�  1	� r  gl	�	�	� m  gj	�	� �	�	�  	� o      ���� 	0 two_s  ��  ��  	� 	�	�	� l qq��������  ��  ��  	� 	�	�	� r  q�	�	�	� J  q�	�	� 	�	�	� c  q�	�	�	� b  q�	�	�	� b  q�	�	�	� b  q�	�	�	� b  q�	�	�	� b  q�	�	�	� b  q	�	�	� b  q{	�	�	� m  qt	�	� �	�	�  	� n  tz	�	�	� 4  uz��	�
�� 
cobj	� m  xy���� 	� o  tu���� 0 thetimelist theTimeList	� m  {~	�	� �	�	� 
   H o u r	� o  ����� 	0 one_s  	� m  ��	�	� �	�	�  ,  	� n  ��	�	�	� 4  ����	�
�� 
cobj	� m  ������ 	� o  ������ 0 thetimelist theTimeList	� m  ��	�	� �	�	�    M i n u t e	� o  ������ 	0 two_s  	� m  ����
�� 
ctxt	� 	���	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�
 	� b  ��


 b  ��


 l 	��
����
 m  ��

 �

  ��  ��  
 n  ��

	
 4  ����


�� 
cobj

 m  ������ 
	 o  ������ 0 thetimelist theTimeList
 m  ��

 �

    M i n u t e
  o  ������ 	0 one_s  	� m  ��

 �

  ,  	� n  ��


 4  ����

�� 
cobj
 m  ������ 
 o  ������ 0 thetimelist theTimeList	� m  ��

 �

    S e c o n d	� o  ������ 	0 two_s  ��  	� o      ���� 0 buttonlist2 buttonList2	� 


 l ������~��  �  �~  
 


 O ��


 I ���}


�} .sysodlogaskr        TEXT
 b  ��


 o  ���|�| ,0 dialogstring2prompt1 dialogString2Prompt1
 o  ���{�{ &0 thedirectionlabel theDirectionLabel
 �z


�z 
btns
 o  ���y�y 0 buttonlist2 buttonList2
 �x
 �w
�x 
dflt
  m  ���v�v �w  
 m  ��
!
!�                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  
 
"�u
" Z  ��
#
$�t
%
# = ��
&
'
& n  ��
(
)
( 1  ���s
�s 
bhit
) 1  ���r
�r 
rslt
' l ��
*�q�p
* n  ��
+
,
+ 4  ���o
-
�o 
cobj
- m  ���n�n 
, o  ���m�m 0 buttonlist2 buttonList2�q  �p  
$ l ��
.
/
0
. l ��
1
2
3
1 s  ��
4
5
4 m  ���l�l  
5 n      
6
7
6  ;  ��
7 o  ���k�k 0 thetimelist theTimeList
2   set zero seconds   
3 �
8
8 "   s e t   z e r o   s e c o n d s
/   hours:minutes   
0 �
9
9    h o u r s : m i n u t e s�t  
% l ��
:
;
<
: s  ��
=
>
= m  ���j�j  
> n      
?
@
?  :  ��
@ o  ���i�i 0 thetimelist theTimeList
;   set zero hours   
< �
A
A    s e t   z e r o   h o u r s�u  	�   two numbers entered   	� �
B
B (   t w o   n u m b e r s   e n t e r e d	� 
C
D
C = ��
E
F
E l ��
G�h�g
G I ���f
H�e
�f .corecnte****       ****
H n  ��
I
J
I 2 ���d
�d 
cobj
J o  ���c�c 0 thetimelist theTimeList�e  �h  �g  
F m  ���b�b 
D 
K�a
K k  ��
L
L 
M
N
M l ���`�_�^�`  �_  �^  
N 
O
P
O r  �
Q
R
Q m  ��
S
S �
T
T  s
R o      �]�] 	0 one_s  
P 
U
V
U Z 
W
X�\�[
W = 
Y
Z
Y c  
[
\
[ l 
]�Z�Y
] n  
^
_
^ 4  �X
`
�X 
cobj
` m  �W�W 
_ o  �V�V 0 thetimelist theTimeList�Z  �Y  
\ m  �U
�U 
long
Z m  �T�T 
X r  
a
b
a m  
c
c �
d
d  
b o      �S�S 	0 one_s  �\  �[  
V 
e
f
e l �R�Q�P�R  �Q  �P  
f 
g
h
g r  S
i
j
i J  Q
k
k 
l
m
l c  /
n
o
n b  +
p
q
p b  )
r
s
r b  %
t
u
t m  
v
v �
w
w  
u n  $
x
y
x l 	$
z�O�N
z 4  $�M
{
�M 
cobj
{ m  "#�L�L �O  �N  
y o  �K�K 0 thetimelist theTimeList
s m  %(
|
| �
}
} 
   H o u r
q o  )*�J�J 	0 one_s  
o m  +.�I
�I 
ctxt
m 
~

~ c  /?
�
�
� b  /;
�
�
� b  /9
�
�
� n  /5
�
�
� l 	05
��H�G
� 4  05�F
�
�F 
cobj
� m  34�E�E �H  �G  
� o  /0�D�D 0 thetimelist theTimeList
� m  58
�
� �
�
�    M i n u t e
� o  9:�C�C 	0 one_s  
� m  ;>�B
�B 
ctxt
 
��A
� c  ?O
�
�
� b  ?K
�
�
� b  ?I
�
�
� n  ?E
�
�
� l 	@E
��@�?
� 4  @E�>
�
�> 
cobj
� m  CD�=�= �@  �?  
� o  ?@�<�< 0 thetimelist theTimeList
� m  EH
�
� �
�
�    S e c o n d
� o  IJ�;�; 	0 one_s  
� m  KN�:
�: 
ctxt�A  
j o      �9�9 0 buttonlist3 buttonList3
h 
�
�
� l TT�8�7�6�8  �7  �6  
� 
�
�
� O Tf
�
�
� I Xe�5
�
�
�5 .sysodlogaskr        TEXT
� b  X[
�
�
� o  XY�4�4 ,0 dialogstring2prompt1 dialogString2Prompt1
� o  YZ�3�3 &0 thedirectionlabel theDirectionLabel
� �2
�
�
�2 
btns
� o  \]�1�1 0 buttonlist3 buttonList3
� �0
��/
�0 
dflt
� m  ^_�.�. �/  
� m  TU
�
��                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  
� 
��-
� Z  g�
�
�
�
�
� = gu
�
�
� n  gn
�
�
� 1  jn�,
�, 
bhit
� 1  gj�+
�+ 
rslt
� l nt
��*�)
� n  nt
�
�
� 4  ot�(
�
�( 
cobj
� m  rs�'�' 
� o  no�&�& 0 buttonlist3 buttonList3�*  �)  
� l x
�
�
�
� l x
�
�
�
� r  x
�
�
� J  x}
�
� 
�
�
� o  xy�%�% 0 thetimelist theTimeList
� 
�
�
� m  yz�$�$  
� 
��#
� m  z{�"�"  �#  
� o      �!�! 0 thetimelist theTimeList
�   zero minutes & seconds   
� �
�
� .   z e r o   m i n u t e s   &   s e c o n d s
�   hours   
� �
�
�    h o u r s
� 
�
�
� = ��
�
�
� n  ��
�
�
� 1  ��� 
�  
bhit
� 1  ���
� 
rslt
� l ��
���
� n  ��
�
�
� 4  ���
�
� 
cobj
� m  ���� 
� o  ���� 0 buttonlist3 buttonList3�  �  
� 
��
� l ��
�
�
�
� l ��
�
�
�
� r  ��
�
�
� J  ��
�
� 
�
�
� m  ����  
� 
�
�
� o  ���� 0 thetimelist theTimeList
� 
��
� m  ����  �  
� o      �� 0 thetimelist theTimeList
�   zero hours & seconds   
� �
�
� *   z e r o   h o u r s   &   s e c o n d s
�   minutes   
� �
�
�    m i n u t e s�  
� l ��
�
�
�
� l ��
�
�
�
� r  ��
�
�
� J  ��
�
� 
�
�
� m  ����  
� 
�
�
� m  ����  
� 
��
� o  ���� 0 thetimelist theTimeList�  
� o      �� 0 thetimelist theTimeList
�   zero hours & minutes   
� �
�
� *   z e r o   h o u r s   &   m i n u t e s
�   seconds   
� �
�
�    s e c o n d s�-  �a  ��  ��  ��  	x 
�
�
� l ���
�
��  
�  	log theTimeList   
� �
�
�   	 l o g   t h e T i m e L i s t
� 
��
� L  ��
�
� ]  ��
�
�
� o  ���� 0 thedirection theDirection
� l ��
���

� [  ��
�
�
� [  ��
�
�
� ]  ��
�
�
� l ��
��	�
� n  ��   4  ���
� 
cobj m  ����  o  ���� 0 thetimelist theTimeList�	  �  
� 1  ���
� 
hour
� ]  �� l ���� n  �� 4  ���
� 
cobj m  ��� �   o  ������ 0 thetimelist theTimeList�  �   1  ����
�� 
min 
� l ��	����	 n  ��

 4  ����
�� 
cobj m  ������  o  ������ 0 thetimelist theTimeList��  ��  �  �
  �  T s m asks the user to input a time, cleans up that time (1-3 numbers) and returns a directional offset in seconds   U � �   a s k s   t h e   u s e r   t o   i n p u t   a   t i m e ,   c l e a n s   u p   t h a t   t i m e   ( 1 - 3   n u m b e r s )   a n d   r e t u r n s   a   d i r e c t i o n a l   o f f s e t   i n   s e c o n d sP  l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    i   0 3 I      ������ 0 updatereport updateReport  o      ���� 0 totalimages totalImages   o      ���� 0 	timeshift 	timeShift  !��! o      ����  0 processingtime processingTime��  ��   k    �"" #$# l     ��������  ��  ��  $ %&% r     '(' J     )) *+* m     ,, �--  D o n a t e+ .��. m    // �00  O K��  ( o      ���� 0 
buttonlist 
buttonList& 121 r    
343 m    55 �66 d h t t p : / / w w w . j o e m a l l e r . c o m / i p h o t o / ? p l e a s e = c o n t r i b u t e4 o      ���� 0 	donateurl 	donateURL2 787 l   ��������  ��  ��  8 9:9 r    ;<; b    =>= b    ?@? o    ��
�� 
ret @ o    ��
�� 
ret > m    AA �BB Z T h a n k   y o u   f o r   u s i n g   J o e ' s   i P h o t o   A p p l e S c r i p t s< o      ����  0 thankyoustring thankYouString: CDC l   ��������  ��  ��  D EFE Z    0GH��IG ?    JKJ o    ���� 0 	timeshift 	timeShiftK m    ����  H k     LL MNM r    OPO m    QQ �RR  f o r w a r dP o      ���� 0 	direction  N S��S r     TUT m    VV �WW  +U o      ���� 0 directionsign directionSign��  ��  I k   # 0XX YZY r   # &[\[ m   # $]] �^^  b a c k\ o      ���� 0 	direction  Z _`_ r   ' *aba m   ' (cc �dd  -b o      ���� 0 directionsign directionSign` e��e l  + 0fghf r   + 0iji ]   + .klk o   + ,���� 0 	timeshift 	timeShiftl m   , -������j o      ���� 0 	timeshift 	timeShiftg E ? (reverse direction for reporting instead of abs()'s everywhere   h �mm ~   ( r e v e r s e   d i r e c t i o n   f o r   r e p o r t i n g   i n s t e a d   o f   a b s ( ) ' s   e v e r y w h e r e��  F non l  1 1��������  ��  ��  o pqp l  1 6rstr r   1 6uvu `   1 4wxw o   1 2���� 0 	timeshift 	timeShiftx m   2 3���� <v o      ���� 0 shiftseconds shiftSecondss   seconds   t �yy    s e c o n d sq z{z l  7 D|}~| r   7 D� l  7 B������ I  7 B����
�� .sysorondlong    ��� doub� l  7 <������ `   7 <��� l  7 :������ ^   7 :��� o   7 8���� 0 	timeshift 	timeShift� m   8 9���� <��  ��  � m   : ;���� <��  ��  � �����
�� 
dire� m   = >��
�� olierndZ��  ��  ��  � o      ���� 0 shiftminutes shiftMinutes}   minutes   ~ ���    m i n u t e s{ ��� l  E R���� r   E R��� l  E P������ I  E P����
�� .sysorondlong    ��� doub� l  E J������ l  E J������ ^   E J��� ^   E H��� o   E F���� 0 	timeshift 	timeShift� m   F G���� <� m   H I���� <��  ��  ��  ��  � �����
�� 
dire� m   K L��
�� olierndZ��  ��  ��  � o      ���� 0 
shifthours 
shiftHours�   hours   � ���    h o u r s� ��� l  S S��������  ��  ��  � ��� r   S V��� m   S T�� ��� 6   s e l e c t e d   p h o t o s   d a t e s   w e r e� o      ���� 0 totalimages_s totalImages_s� ��� l  W W��������  ��  ��  � ��� r   W Z��� m   W X�� ���    h o u r s� o      ���� 0 shifthours_s shiftHours_s� ��� r   [ ^��� m   [ \�� ���    m i n u t e s� o      ����  0 shiftminutes_s shiftMinutes_s� ��� r   _ d��� m   _ b�� ���    s e c o n d s� o      ����  0 shiftseconds_s shiftSeconds_s� ��� l  e e��������  ��  ��  � ��� l  e e������  � ; 5 handle plurals since I'm uptight about these things.   � ��� j   h a n d l e   p l u r a l s   s i n c e   I ' m   u p t i g h t   a b o u t   t h e s e   t h i n g s .� ��� Z  e t������� =  e h��� o   e f���� 0 
shifthours 
shiftHours� m   f g���� � r   k p��� m   k n�� ��� 
   h o u r� o      ���� 0 shifthours_s shiftHours_s��  ��  � ��� Z  u �������� =  u x��� o   u v���� 0 shiftminutes shiftMinutes� m   v w���� � r   { ���� m   { ~�� ���    m i n u t e� o      ����  0 shiftminutes_s shiftMinutes_s��  ��  � ��� Z  � �������� =  � ���� o   � ����� 0 shiftseconds shiftSeconds� m   � ����� � r   � ���� m   � ��� ���    s e c o n d� o      ����  0 shiftseconds_s shiftSeconds_s��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � ������� =  � ���� o   � ����� 0 totalimages totalImages� m   � ����� � r   � ���� l  � ������� b   � ���� b   � ���� m   � ��� ��� V T h e   d a t e   o f   t h e   s e l e c t e d   p h o t o   w a s   s h i f t e d  � o   � ����� 0 	direction  � m   � ��� ���   ��  ��  � o      ���� 0 ddtext ddText��  � r   � ���� l  � ����~� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  T h e  � o   � ��}�} 0 totalimages totalImages� m   � �   � J   s e l e c t e d   p h o t o s '   d a t e s   w e r e   s h i f t e d  � o   � ��|�| 0 	direction  � o   � ��{
�{ 
ret �  �~  � o      �z�z 0 ddtext ddText�  l  � ��y�x�w�y  �x  �w    Z   ��v�u >  � �	 o   � ��t�t 0 
shifthours 
shiftHours	 m   � ��s�s   k   � 

  r   � � c   � � b   � � b   � � o   � ��r�r 0 ddtext ddText o   � ��q�q 0 
shifthours 
shiftHours o   � ��p�p 0 shifthours_s shiftHours_s m   � ��o
�o 
ctxt o      �n�n 0 ddtext ddText �m Z   � �l F   � � >  � � o   � ��k�k 0 shiftminutes shiftMinutes m   � ��j�j   >  � � o   � ��i�i 0 shiftseconds shiftSeconds m   � ��h�h   l  � � ! r   � �"#" b   � �$%$ o   � ��g�g 0 ddtext ddText% m   � �&& �''  ,  # o      �f�f 0 ddtext ddText    two more items   ! �((    t w o   m o r e   i t e m s )*) G   � �+,+ >  � �-.- o   � ��e�e 0 shiftminutes shiftMinutes. m   � ��d�d  , >  � �/0/ o   � ��c�c 0 shiftseconds shiftSeconds0 m   � ��b�b  * 1�a1 l  � �2342 r   � �565 b   � �787 o   � ��`�` 0 ddtext ddText8 m   � �99 �:: 
   a n d  6 o      �_�_ 0 ddtext ddText3   one more item   4 �;;    o n e   m o r e   i t e m�a  �l  �m  �v  �u   <=< l �^�]�\�^  �]  �\  = >?> Z  ,@A�[�Z@ > BCB o  �Y�Y 0 shiftminutes shiftMinutesC m  �X�X  A k  (DD EFE r  GHG c  IJI b  KLK b  MNM o  �W�W 0 ddtext ddTextN o  �V�V 0 shiftminutes shiftMinutesL o  �U�U  0 shiftminutes_s shiftMinutes_sJ m  �T
�T 
ctxtH o      �S�S 0 ddtext ddTextF O�RO Z  (PQ�Q�PP > RSR o  �O�O 0 shiftseconds shiftSecondsS m  �N�N  Q r  $TUT b  "VWV o  �M�M 0 ddtext ddTextW m  !XX �YY 
   a n d  U o      �L�L 0 ddtext ddText�Q  �P  �R  �[  �Z  ? Z[Z l --�K�J�I�K  �J  �I  [ \]\ Z  -B^_�H�G^ > -0`a` o  -.�F�F 0 shiftseconds shiftSecondsa m  ./�E�E  _ r  3>bcb c  3<ded b  38fgf b  36hih o  34�D�D 0 ddtext ddTexti o  45�C�C 0 shiftseconds shiftSecondsg o  67�B�B  0 shiftseconds_s shiftSeconds_se m  8;�A
�A 
ctxtc o      �@�@ 0 ddtext ddText�H  �G  ] jkj l CC�?�>�=�?  �>  �=  k lml r  C�non c  C�pqp b  C}rsr b  C{tut b  Ctvwv b  Cpxyx b  Cnz{z b  Cj|}| b  Cb~~ b  C^��� b  CV��� b  CR��� b  CJ��� b  CH��� o  CD�<�< 0 ddtext ddText� m  DG�� ���    (� o  HI�;�; 0 directionsign directionSign� n JQ��� I  KQ�:��9�: 0 zeropad zeroPad� ��� o  KL�8�8 0 
shifthours 
shiftHours� ��7� m  LM�6�6 �7  �9  �  f  JK� m  RU�� ���  :� n V]��� I  W]�5��4�5 0 zeropad zeroPad� ��� o  WX�3�3 0 shiftminutes shiftMinutes� ��2� m  XY�1�1 �2  �4  �  f  VW m  ^a�� ���  :} n bi��� I  ci�0��/�0 0 zeropad zeroPad� ��� o  cd�.�. 0 shiftseconds shiftSeconds� ��-� m  de�,�, �-  �/  �  f  bc{ m  jm�� ���  )y o  no�+
�+ 
ret w m  ps�� ��� 4 T o t a l   p r o c e s s i n g   t i m e   w a s  u n tz��� I  uz�*��)�* 0 secondstohms secondsToHMS� ��(� o  uv�'�'  0 processingtime processingTime�(  �)  �  f  tus o  {|�&�&  0 thankyoustring thankYouStringq m  }��%
�% 
ctxto o      �$�$ 0 ddtext ddTextm ��� l ���#�"�!�#  �"  �!  � ��� I ��� ��
�  .miscactvnull��� ��� null�  �  � ��� O ����� r  ����� I �����
� .sysodlogaskr        TEXT� o  ���� 0 ddtext ddText� ���
� 
btns� o  ���� 0 
buttonlist 
buttonList� ���
� 
dflt� m  ���� �  � o      �� 0 dd  � m  �����                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  � ��� l ������  �  �  � ��� Z  ������� = ����� n  ����� 1  ���
� 
bhit� o  ���� 0 dd  � n  ����� 4  ����
� 
cobj� m  ���� � o  ���� 0 
buttonlist 
buttonList� I �����

� .GURLGURLnull��� ��� TEXT� o  ���	�	 0 	donateurl 	donateURL�
  �  �  � ��� L  ����  �   ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l  ) H������ Z   ) H������� A   ) ,��� o   ) *���� 0 iphotoversion iPhotoVersion� m   * +���� � k   / D�� ��� s   / 7��� I   / 4�������� 0 	uienabled 	UIEnabled��  ��  � o      ���� 0 uistate UIstate� ���� l  8 D���� Z  8 D������� =  8 ;��� o   8 9���� 0 uistate UIstate� m   9 :��
�� boovfals� L   > @����  ��  ��  � ' ! quit if UI Elements are disabled   � ��� B   q u i t   i f   U I   E l e m e n t s   a r e   d i s a b l e d��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l  I ������� O   I ���� k   M ��� ��� r   M R��� 1   M P��
�� 
selc� o      ���� 0 	photolist 	photoList� ���� Z   S ������� =  S a��� n   S ]��� 1   Y ]��
�� 
pcls� n   S Y��� 4   T Y���
�� 
cobj� m   W X���� � o   S T���� 0 	photolist 	photoList� m   ] `��
�� 
ipal� l  d k� � I  d k����
�� .sysodlogaskr        TEXT m   d g � � P l e a s e   s e l e c t   o n e   o r   m o r e   p h o t o s / m o v i e s   b e f o r e   r u n n i n g   t h i s   s c r i p t .��    F @ if class of item 1 is album, there is probably nothing selected    � �   i f   c l a s s   o f   i t e m   1   i s   a l b u m ,   t h e r e   i s   p r o b a b l y   n o t h i n g   s e l e c t e d��  � k   n �  n  n s	
	 I   o s�������� (0 iphotoshowinfopane iPhotoShowInfoPane��  ��  
  f   n o  r   t } n  t y I   u y�������� 0 gettimeoffset getTimeOffset��  ��    f   t u o      ���� 0 thetimeoffset theTimeOffset  l  ~ � Z  ~ ����� G   ~ � =  ~ � o   ~ ����� 0 thetimeoffset theTimeOffset m   � ���
�� boovfals =  � � o   � ����� 0 thetimeoffset theTimeOffset m   � �����   L   � �����  ��  ��     end script    �    e n d   s c r i p t   l  � ���������  ��  ��    !"! r   � �#$# I  � �������
�� .misccurdldt    ��� null��  ��  $ o      ���� 0 	starttime 	startTime" %&% l  � ���������  ��  ��  & '(' X   � �)��*) k   � �++ ,-, r   � �./. n  � �010 I   � ���2����  0 exifdatedecode EXIFDateDecode2 3��3 n   � �454 1   � ���
�� 
idat5 o   � ����� 0 thephoto thePhoto��  ��  1  f   � �/ o      ���� 0 thedate theDate- 6��6 n  � �787 I   � ���9���� 0 iphotosetdate iPhotoSetDate9 :;: o   � ����� 0 thephoto thePhoto; <��< [   � �=>= o   � ����� 0 thedate theDate> o   � ����� 0 thetimeoffset theTimeOffset��  ��  8  f   � ���  �� 0 thephoto thePhoto* o   � ����� 0 	photolist 	photoList( ?@? l  � ���������  ��  ��  @ ABA r   � �CDC l  � �E����E \   � �FGF l  � �H����H I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��  G o   � ����� 0 	starttime 	startTime��  ��  D o      ����  0 elapsedseconds elapsedSecondsB IJI l  � ���������  ��  ��  J K��K n  � �LML I   � ���N���� 0 updatereport updateReportN OPO I  � ���Q��
�� .corecnte****       ****Q o   � ����� 0 	photolist 	photoList��  P RSR o   � ����� 0 thetimeoffset theTimeOffsetS T��T o   � �����  0 elapsedseconds elapsedSeconds��  ��  M  f   � ���  ��  � m   I JUU�                                                                                  iPho   alis    L  Macintosh HD               ��*�H+   #�y
iPhoto.app                                                      ' ����        ����  	                Applications    ���      ����     #�y  $Macintosh HD:Applications:iPhoto.app   
 i P h o t o . a p p    M a c i n t o s h   H D  Applications/iPhoto.app   / ��  ��  ��  � VWV l     ��������  ��  ��  W XYX l  �	Z[\Z Z  �	]^����] A   � �_`_ o   � ����� 0 iphotoversion iPhotoVersion` m   � ����� ^ I   ���a���� 0 	uirestore 	UIRestorea b��b o   ���� 0 uistate UIstate��  ��  ��  ��  [ $  restore the UI Elements state   \ �cc <   r e s t o r e   t h e   U I   E l e m e n t s   s t a t eY ded l     ��������  ��  ��  e f��f l     ��������  ��  ��  ��       ��ghijklmnopqrstu����v��wx��������~�}�|�{��  g �z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�z 0 iphotosetdate iPhotoSetDate�y $0 formatdatestring formatDateString�x 0 zeropad zeroPad�w  0 exifdatedecode EXIFDateDecode�v 0 
monthtonum 
monthToNum�u (0 iphotoshowinfopane iPhotoShowInfoPane�t 0 	osversion 	OSVersion�s 0 	uienabled 	UIEnabled�r 0 	uirestore 	UIRestore�q 0 	restartse 	restartSE�p 0 secondstohms secondsToHMS�o 0 gettimeoffset getTimeOffset�n 0 updatereport updateReport
�m .aevtoappnull  �   � ****�l 0 
dateformat 
dateFormat�k 0 iphotoversion iPhotoVersion�j 0 	photolist 	photoList�i 0 thetimeoffset theTimeOffset�h 0 	starttime 	startTime�g 0 thedate theDate�f  0 elapsedseconds elapsedSeconds�e  �d  �c  �b  �a  �`  �_  h �^ r�]�\yz�[�^ 0 iphotosetdate iPhotoSetDate�] �Z{�Z {  �Y�X�Y 0 photoid photoID�X 0 thedate theDate�\  y 	�W�V�U�T�S�R�Q�P�O�W 0 photoid photoID�V 0 thedate theDate�U 0 iphotowindow iPhotoWindow�T 0 x  �S 0 thefield theField�R 0 testdate testDate�Q 0 	photodate 	photoDate�P 0 error_message  �O 0 error_number  z 0�N�M ��L�K ��J ��I�H�G�F�Eg�D�C�B�A�@�?�>��=�<�;�:�9�8�7��6�5�4�3�2�
4L�1|����0�N 0 iphotoversion iPhotoVersion�M 
�L .iPhoisalnull��� ��� obj 
�K 
idat
�J 
prcs
�I 
cwin
�H .corecnte****       ****�G �F  0 exifdatedecode EXIFDateDecode
�E .miscactvnull��� ��� null�D 
�C 
splg
�B 
sgrp
�A 
txtf�@ �? 0 
dateformat 
dateFormat
�> 
msng
�= .ascrcmnt****      � ****
�< 
day �; 
�: 
long�9 0 
monthtonum 
monthToNum
�8 
bool
�7 
attr
�6 
valL�5 $0 formatdatestring formatDateString
�4 
ret 
�3 .prcskprsnull��� ��� utxt�2 <�1 0 error_message  | �/�.�-
�/ 
errn�. 0 error_number  �-  �0 0 	restartse 	restartSE�[0��  %� �j O��,�  lY 
���,FOkUY hO� *��/ *�-j 	E�UUO�k�kh � !)��,k+ �  lY hO�j O*j UO���*��/���  *�/�k/�k/a k/a l/E�Y [��  *�/�k/�k/a k/a l/E�Y ;�a   *�/�k/�k/a k/E�Y �l  *�/�k/�k/a l/E�Y hO)a ,a   �a j O�EQ�O�a ,a 
 �a ,a &)�k+  a & )�k+ a #k�a ,FY hOe�a a /a ,FO)�k+ _  %j !Oa "n� )��,k+ E�UoOa #�%j Oa $�%j Oa %�%j O��  !a &j Oe)a ,FO��  kY hY a 'j Of)a ,FY hOe�a a (/a ,FO)�k+ _  %j !O� *j UOkUUW &X ) *a +�%a ,%�%a -%�%a .%j O*j+ /[OY�i �,��+�*}~�)�, $0 formatdatestring formatDateString�+ �(�(   �'�' 0 thedate theDate�*  } �&�%�$�#�"�& 0 thedate theDate�% 0 thehours theHours�$ 0 
theminutes 
theMinutes�# 0 
theseconds 
theSeconds�" 0 
timestring  ~ �!� ������������&�@DP
�! 
time
�  
hour
� 
min � <
� 
tab � 0 iphotoversion iPhotoVersion� � 0 zeropad zeroPad� 0 
dateformat 
dateFormat
� 
year
� 
day � 0 
monthtonum 
monthToNum�) ���,�"E�O��,�"�� E�O��,�#E�O�E�O�� �E�Y hO�)��,�"ll+ %�%)�ll+ %�%)�ll+ %E�O)�,f  *��,%�%)��,ll+ %a %))�k+ ll+ %�%Y +a ��,%a %))�k+ ll+ %a %)��,ll+ %�%j �d������ 0 zeropad zeroPad� ��� �  ��� 0 theval theVal� 0 	endlength 	endLength�  � ��� 0 theval theVal� 0 	endlength 	endLength� ��z�
� 

� 
long
�
 
ctxt� ) ��!�&kkh�%EQ�[OY��O�[�\[Z�i \Zi2Ek �	�������	  0 exifdatedecode EXIFDateDecode� ��� �  �� 0 
iphotodate 
iPhotoDate�  � ���� 0 
iphotodate 
iPhotoDate� 0 	monthlist 	monthList� 0 thedate theDate� #� ������������������������������������������������������������������
�  
pcls
�� 
ldt 
�� 
leng�� 
�� 
jan 
�� 
feb 
�� 
mar 
�� 
apr 
�� 
may 
�� 
jun 
�� 
jul 
�� 
aug 
�� 
sep 
�� 
oct 
�� 
nov 
�� 
dec �� 
�� 
cobj
�� 
ctxt�� �� 
�� 
mnth�� 	�� 

�� 
day �� 
�� 
year�� 
�� 
hour�� �� 
�� 
min �� 
�� 
time� ͠�,�  �Y hO��,� fY �������������a vE�Oa E�O*�/E�O�a �[a \[Za \Za 2E/�a ,FO�[a \[Za \Za 2�a ,FO�[a \[Zk\Za 2�a ,FO�[a \[Za \Za 2_  �[a \[Za \Za 2_   �[a \[Za !\Z�2�a ",FO�l ��g���������� 0 
monthtonum 
monthToNum�� ����� �  ���� 0 thedate theDate��  � ���� 0 thedate theDate� ��������������������������������������������
�� 
mnth
�� 
jan 
�� 
feb 
�� 
mar 
�� 
apr �� 
�� 
may �� 
�� 
jun �� 
�� 
jul �� 
�� 
aug �� 
�� 
sep �� 	
�� 
oct �� 

�� 
nov �� 
�� 
dec �� �� ���,�  kY hO��,�  lY hO��,�  mY hO��,�  �Y hO��,�  �Y hO��,�  �Y hO��,�  �Y hO��,�  �Y hO��,�  �Y hO��,a   	a Y hO��,a   	a Y hO��,a   	a Y hm ������������� (0 iphotoshowinfopane iPhotoShowInfoPane��  ��  � ������������ 0 x  �� 0 iphotowindow iPhotoWindow�� (0 infowindowcontents infoWindowContents�� 0 error_message  �� 0 error_number  � !������������*��(������$����l������e�����������������
�� .ascrcmnt****      � ****
�� .miscactvnull��� ��� null�� 0 iphotoversion iPhotoVersion�� �� 
�� 
prcs
�� 
cwin
�� .corecnte****       ****
�� 
attr
�� 
valL
�� 
bool
�� 
splg
�� 
sgrp
�� 
sttx
�� 
butT
�� .prcsclicnull���    obj �� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  �� 0 	restartse 	restartSE
�� .sysodlogaskr        TEXT�� ��j O� *j UO�� eY hO �k�kh   �� *��/ *�-j E�Oe*�/��/�,FUUO��	 ���& S� K*�a / A*�/ 9*a k/a k/a k/a -j E�O�l a j O*a �/j Y hUUUY hOeOPW &X  a �%a %�%a %�%a %j O*j+ OP[OY�FO� 	a j UO)ja  n ������������� 0 	osversion 	OSVersion��  ��  � ������ 0 hexdata hexData�� 0 	hexstring 	hexString� ���������
�� .fndrgstlns          type�� �� 
�� 
TEXT�� .�j E�OjvE�O �kh��#�&�%E�O��"E�[OY��O��&o ������������� 0 	uienabled 	UIEnabled��  ��  � ���������� 0 
os_version 
OS_version�� 0 x  �� 0 error_message  �� 0 error_number  �  �����������������5?P|����`��n��px������������� 0 	osversion 	OSVersion�� 
�� 
btns
�� 
dflt
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
uien
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp
�� 
ret �� 0 error_message  � �����
�� 
errn�� 0 error_number  �  
�� .ascrcmnt****      � ****�� 0 	restartse 	restartSE�� �*j+  EQ�O �k�kh �� ���kv�k�l� 	OfY � l� d*�,f  X�� ��kl 	Oe*�,FO�Y <� 4*j O*a a /*a ,FOa _ %_ %a %�k�a kv�k� 	UOfY hOeUW &X  a �%a %�%a %�%a %j O*j+ [OY�Pp �~��}�|���{�~ 0 	uirestore 	UIRestore�} �z��z �  �y�y 0 thestate theState�|  � �x�w�v�u�x 0 thestate theState�w 0 x  �v 0 error_message  �u 0 error_number  � ���t���s��r�q�p�o�n��m��l�k���j�i
�t 
btns
�s 
dflt
�r 
disp�q 
�p .sysodlogaskr        TEXT
�o 
rslt
�n 
bhit�m 
�l 
uien�k 0 error_message  � �h�g�f
�h 
errn�g 0 error_number  �f  
�j .ascrcmnt****      � ****�i 0 	restartse 	restartSE�{ n��  h����lv���k� 	O��,�  hY hO Dk�kh  � f*�,FUOW &X  a �%a %�%a %�%a %j O*j+ [OY��Y hq �e�d�c���b�e 0 	restartse 	restartSE�d  �c  � �a�`�a 0 errormsg errorMSG�` 0 errornum errorNUM� �_&�^*�]�\�9P�[X�Z�Y�Xx��_ 
�^ .aevtquitnull��� ��� null
�] .ascrcmnt****      � ****�\ 0 errormsg errorMSG� �W�V�U
�W 
errn�V 0 errornum errorNUM�U  
�[ .sysoexecTEXT���     TEXT�Z  �Y  
�X .aevtoappnull  �   � ****�b v -�kh �j O�j OW X  �%�lvj [OY��O �j 	O�j 	W X  hO  �kh�j O�j 	O[OY��W X  �%�lvj r �T��S�R���Q�T 0 secondstohms secondsToHMS�S �P��P �  �O�O 0 
theseconds 
theSeconds�R  � �N�M�L�K�J�N 0 
theseconds 
theSeconds�M 0 thehours theHours�L 0 
theminutes 
theMinutes�K 0 	outstring 	outString�J 0 s  � �I�H������&(�I�H <�Q ���"E�O��"�#E�O��#E�O�E�O�j  �E�O�k �E�Y hO��%�%�%E�Y hO�j  �E�O�k �E�Y hO��%�%�%E�Y hO�j "�E�O�k �E�Y hO��%�%�%�%E�Y hO�s �GR�F�E���D�G 0 gettimeoffset getTimeOffset�F  �E  � �C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�C *0 dialogstring1prompt dialogString1Prompt�B ,0 dialogstring1default dialogstring1Default�A 0 buttonlist1 buttonList1�@ 0 
parseerror 
ParseError�? ,0 dialogstring2prompt1 dialogString2Prompt1�> 0 buttonlist3 buttonList3�= 0 
timechange 
timeChange�< 0 thedirection theDirection�; &0 thedirectionlabel theDirectionLabel�: 0 	olddelims 	oldDelims�9 0 thetimelist theTimeList�8 0 i  �7 	0 one_s  �6 	0 two_s  �5 0 buttonlist2 buttonList2� ;gmvz}�������4�3�2�1�0�/�.�-�,�	�+	"�*�)�(	C	G	J	S�'�&�%	��$	�	�	�	�	�	�	�	��#



�"�!
S
c
v
|
�
�� �
�4 
dtxt
�3 
btns
�2 
dflt
�1 
disp�0 
�/ .sysodlogaskr        TEXT
�. 
bhit
�- .ascrcmnt****      � ****
�, 
cobj
�+ 
txdl
�* 
ttxt
�) 
citm
�( .corecnte****       ****�'  �&  
�% 
pcls
�$ 
long
�# 
ctxt�" 
�! 
rslt
�  
hour
� 
min �D��E�O�E�O���mvE�O�E�O�E�O���mvE�O� ����m�k� E�UO�a ,j O�a ,�a l/  iE�Oa E�OPY �a ,�a m/  kE�Oa E�Y hO*a ,EQ�Oa *a ,FO�a ,a -E�O�*a ,FO Wk�j kh a a a mv�a �/ a j Oj�a �/FY  �a �/jW X   ��ll Of[OY��O�a -j m��a -j l  ۪j O�a k/j O�a k/a !,j Oa "E�O�a k/a #&k  
a $E�Y hOa %E�O�a l/a &  
a 'E�Y hOa (�a k/%a )%�%a *%�a l/%a +%�%a ,&a -�a k/%a .%�%a /%�a l/%a 0%�%lvE�O� ��%��ka 1 UO_ 2a ,�a k/  	j�6GY j�5GY ��a -j k  �a 3E�O�a k/a #&k  
a 4E�Y hOa 5�a k/%a 6%�%a ,&�a k/a 7%�%a ,&�a k/a 8%�%a ,&mvE�O� ��%��ka 1 UO_ 2a ,�a k/  �jjmvE�Y $_ 2a ,�a l/  j�jmvE�Y 	jj�mvE�Y hY hO��a k/_ 9 �a l/_ : �a m/ t ������� 0 updatereport updateReport� ��� �  ���� 0 totalimages totalImages� 0 	timeshift 	timeShift�  0 processingtime processingTime�  � �������������
�	���� 0 totalimages totalImages� 0 	timeshift 	timeShift�  0 processingtime processingTime� 0 
buttonlist 
buttonList� 0 	donateurl 	donateURL�  0 thankyoustring thankYouString� 0 	direction  � 0 directionsign directionSign� 0 shiftseconds shiftSeconds� 0 shiftminutes shiftMinutes� 0 
shifthours 
shiftHours� 0 totalimages_s totalImages_s�
 0 shifthours_s shiftHours_s�	  0 shiftminutes_s shiftMinutes_s�  0 shiftseconds_s shiftSeconds_s� 0 ddtext ddText� 0 dd  � -,/5�AQV]c�������������� � ��&9X��������������������������
� 
ret � <
� 
dire
� olierndZ
� .sysorondlong    ��� doub
�  
ctxt
�� 
bool�� 0 zeropad zeroPad�� 0 secondstohms secondsToHMS
�� .miscactvnull��� ��� null
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
cobj
�� .GURLGURLnull��� ��� TEXT����lvE�O�E�O��%�%E�O�j �E�O�E�Y �E�O�E�O�i E�O��#E�O��!�#��l E�O��!�!��l E�O�E�O�E�O�E�Oa E�O�k  
a E�Y hO�k  
a E�Y hO�k  
a E�Y hO�k  a �%a %E�Y a �%a %�%�%E�O�j F��%�%a &E�O�j	 	�ja & �a %E�Y �j
 	�ja & �a %E�Y hY hO�j "��%�%a &E�O�j �a %E�Y hY hO�j ��%�%a &E�Y hO�a %�%)�ll+ %a %)�ll+ %a  %)�ll+ %a !%�%a "%)�k+ #%�%a &E�O*j $Oa % �a &�a 'la ( )E^ UO] a *,�a +k/  
�j ,Y hOhu �����������
�� .aevtoappnull  �   � ****� k    	��  >��  K��  _�� ��� ��� X����  ��  ��  � ���� 0 thephoto thePhoto� #���� ]������������ j������������������������������������������������
�� 
msng�� 0 
dateformat 
dateFormat
�� 
vers
�� 
ctxt
�� 
cha 
�� 
long�� 0 iphotoversion iPhotoVersion�� 
�� .sysodlogaskr        TEXT�� �� 0 	uienabled 	UIEnabled�� 0 uistate UIstate
�� 
selc�� 0 	photolist 	photoList
�� 
cobj
�� 
pcls
�� 
ipal�� (0 iphotoshowinfopane iPhotoShowInfoPane�� 0 gettimeoffset getTimeOffset�� 0 thetimeoffset theTimeOffset
�� 
bool
�� .misccurdldt    ��� null�� 0 	starttime 	startTime
�� 
kocl
�� .corecnte****       ****
�� 
idat��  0 exifdatedecode EXIFDateDecode�� 0 thedate theDate�� 0 iphotosetdate iPhotoSetDate��  0 elapsedseconds elapsedSeconds�� 0 updatereport updateReport�� 0 	uirestore 	UIRestore��
�E�O� *�,�&�k/�&E�UO�� �j 
OhY hO�� *j+ EQ�O�f  hY hY hO� �*�,E�O�a k/a ,a   a j 
Y �)j+ O)j+ E` O_ f 
 _ j a & hY hO*j E` O 4�[a a l kh  )�a ,k+ E` O)�_ _ l+ [OY��O*j _ E`  O)�j _ _  m+ !UO�� *�k+ "Y h
�� 
msng�� v ����� �  �� ��  ]�����
�� 
ipmr� A� ��  
�� kfrmID  ��8@w ldt     �w�x ldt     �vu$�� ��  ��  �  �~  �}  �|  �{  ascr  ��ޭ