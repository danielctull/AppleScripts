FasdUAS 1.101.10   ��   ��    k             l     �� ��    = 7 original code by Joe Maller <http://www.joemaller.com>       	  l     �� 
��   
   authored March 2005    	     l     �� ��    P J licensed under Creative Commons Attribution Non Commercial ShareAlike 2.0         l     �� ��    8 2 http://creativecommons.org/licenses/by-nc-sa/2.0/         l     ������  ��        l     ������  ��        p         ������ 0 iphotoversion iPhotoVersion��        l        O        r        c       !   l    "�� " n     # $ # 4   	 �� %
�� 
cha  % m   
 ����  $ l   	 &�� & c    	 ' ( ' 1    ��
�� 
vers ( m    ��
�� 
ctxt��  ��   ! m    ��
�� 
long  o      ���� 0 iphotoversion iPhotoVersion  m      ) )�null     � �� \�
iPhoto.app���    ����>�����   ��   )       �.(�����liPho   alis    ^  Joe's PowerBook HD         �t��H+   \�
iPhoto.app                                                      ����- �K �;����  	                Applications    �t��      ��m     \�  *Joe's PowerBook HD:Applications:iPhoto.app   
 i P h o t o . a p p  &  J o e ' s   P o w e r B o o k   H D  Applications/iPhoto.app   / ��      get iPhoto version      * + * l   $ ,�� , Z    $ - .���� - A     / 0 / o    ���� 0 iphotoversion iPhotoVersion 0 m    ����  . k      1 1  2 3 2 I   �� 4��
�� .sysodlogaskr        TEXT 4 m     5 5 6 0These scripts require iPhoto version 4 or later.   ��   3  6�� 6 L     ����  ��  ��  ��  ��   +  7 8 7 l     ������  ��   8  9 : 9 l     ������  ��   :  ; < ; l     ������  ��   <  = > = l     ������  ��   >  ? @ ? l     ������  ��   @  A B A i      C D C I      �� E����  0 revealinfinder revealInFinder E  F�� F o      ���� 0 thefile theFile��  ��   D k      G G  H I H l     �� J��   J N H reveals a file in the Finder, takes an alias or file reference as input    I  K L K l     ������  ��   L  M N M O      O P O k     Q Q  R S R I   	������
�� .miscactvnull��� ��� null��  ��   S  T U T I  
 �� V��
�� .aevtodocnull  �    alis V n   
  W X W m    ��
�� 
ctnr X l  
  Y�� Y c   
  Z [ Z o   
 ���� 0 thefile theFile [ m    ��
�� 
alis��  ��   U  \�� \ I   �� ]��
�� .miscslctnull���    obj  ] o    ���� 0 thefile theFile��  ��   P m      ^ ^�null     #ߩ��  gv
Finder.app��    ����>����0   ��T   )       �.(�����`�MACS   alis    �  Joe's PowerBook HD         �t��H+    gv
Finder.app                                                       gw�t        ����  	                CoreServices    �t��      �tLQ      gv        9Joe's PowerBook HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p  &  J o e ' s   P o w e r B o o k   H D  &System/Library/CoreServices/Finder.app  / ��   N  _�� _ l   ������  ��  ��   B  ` a ` l     ������  ��   a  b c b l     ������  ��   c  d e d l  %� f�� f O   %� g h g k   )� i i  j k j r   ) . l m l 1   ) ,��
�� 
selc m o      ���� 0 	photolist 	photoList k  n�� n Z   /� o p�� q o =  / 7 r s r n   / 5 t u t 1   3 5��
�� 
pcls u n   / 3 v w v 4   0 3�� x
�� 
cobj x m   1 2����  w o   / 0���� 0 	photolist 	photoList s m   5 6��
�� 
ipal p l  : ? y z y I  : ?�� {��
�� .sysodlogaskr        TEXT { m   : ; | | I CPlease select one or more photos/movies before running this script.   ��   z F @ if class of item 1 is album, there is probably nothing selected   ��   q k   B� } }  ~  ~ l  B B������  ��     � � � Z   B ] � ��� � � ?   B I � � � l  B G ��� � I  B G�� ���
�� .corecnte****       **** � o   B C���� 0 	photolist 	photoList��  ��   � m   G H����  � l  L S � � � r   L S � � � m   L O � � ' !Reveal the first selected image:     � o      ���� 0 reportstring reportString � &   set up plural reporting strings   ��   � r   V ] � � � m   V Y � �  Reveal selected image:     � o      ���� 0 reportstring reportString �  � � � l  ^ ^������  ��   �  � � � r   ^ r � � � c   ^ n � � � c   ^ j � � � n   ^ f � � � 1   b f��
�� 
ipth � n   ^ b � � � 4   _ b�� �
�� 
cobj � m   ` a����  � o   ^ _���� 0 	photolist 	photoList � m   f i��
�� 
psxf � m   j m��
�� 
alis � o      ���� 0 thepath thePath �  � � � r   s  � � � n   s { � � � 1   w {��
�� 
filn � n   s w � � � 4   t w�� �
�� 
cobj � m   u v����  � o   s t���� 0 	photolist 	photoList � o      ���� 0 thefile theFile �  � � � l  � � � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � �  echo  "    � l  � � ��� � c   � � � � � o   � ����� 0 thefile theFile � m   � ���
�� 
ctxt��   � m   � � � � &  " |  sed -n 's/\(.*\)\..*$/\1/p'   ��   � o      ���� 0 fileroot fileRoot � 3 - strip text after last period in the filename    �  � � � l  � ��� ���   � 9 3set fileRoot to text 1 thru -5 of (theFile as text)    �  � � � l  � �������  ��   �  � � � Z   �	 � ��� � � A   � � � � � o   � ����� 0 iphotoversion iPhotoVersion � m   � �����  � O  � � � � � r   � � � � � b   � � � � � l  � � ��� � c   � � � � � n   � � � � � m   � ���
�� 
ctnr � o   � ����� 0 thepath thePath � m   � ���
�� 
ctxt��   � m   � � � �  
Originals:    � o      ���� 0 originalpath originalPath � m   � � ^��   � l  �	 � � � k   �	 � �  � � � O  � � � � � r   � � � � � l  � � ��� � c   � � � � � n   � � � � � m   � ���
�� 
ctnr � o   � ����� 0 thepath thePath � m   � ���
�� 
ctxt��   � o      ���� 0 originalpath originalPath � m   � � ^ �  ��� � Z   �	 � ��� � � E  � � � � � o   � ����� 0 originalpath originalPath � m   � � � �  	Originals    � l  � � � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � �  echo     � n   � � � � � 1   � ��
� 
strq � o   � ��~�~ 0 originalpath originalPath � m   � � � � "  | sed s/Originals/Modified/   ��   � o      �}�} 0 originalpath originalPath � [ U this should probably bail out completely instead of forcing the shell script to fail   ��   � r   �	 � � � I  ��| ��{
�| .sysoexecTEXT���     TEXT � b   � � � � b   � � � � � m   � � � �  echo     � n   � � � � � 1   � ��z
�z 
strq � o   � ��y�y 0 originalpath originalPath � m   �  � � "  | sed s/Modified/Originals/   �{   � o      �x�x 0 originalpath originalPath��   �  iPhoto Version 6+    �  � � � l 

�w�v�w  �v   �  �u  Q  
��t l } k  }  l �s�r�s  �r   	 l ,

 r  , I (�q�p
�q .sysoexecTEXT���     TEXT b  $ b    b   m   	 ls     l �o n   1  �n
�n 
strq n   1  �m
�m 
psxp o  �l�l 0 originalpath originalPath�o   m     | grep     o   #�k�k 0 fileroot fileRoot�p   o      �j�j 0 originalfile originalFile   modifications in library   	  l -< r  -< !  J  -8"" #$# m  -0%%  Cancel   $ &'& m  03((  Reveal Active   ' )�i) m  36**  Reveal Original   �i  ! o      �h�h 0 
buttonlist 
buttonList 0 * present choice of original or active file    +,+ I =T�g-.
�g .sysodlogaskr        TEXT- l =F/�f/ c  =F010 b  =D232 o  =@�e�e 0 reportstring reportString3 o  @C�d�d 0 thefile theFile1 m  DE�c
�c 
ctxt�f  . �b45
�b 
btns4 o  IL�a�a 0 
buttonlist 
buttonList5 �`6�_
�` 
dflt6 m  OP�^�^ �_  , 787 l UU�]�\�]  �\  8 9�[9 Z  U}:;�Z�Y: = Uc<=< n  U\>?> 1  X\�X
�X 
bhit? l UX@�W@ 1  UX�V
�V 
rslt�W  = n  \bABA 4  _b�UC
�U 
cobjC m  `a�T�T B o  \_�S�S 0 
buttonlist 
buttonList; k  fyDD EFE r  fwGHG c  fsIJI l foK�RK c  foLML b  fmNON o  fi�Q�Q 0 originalpath originalPathO o  il�P�P 0 originalfile originalFileM m  mn�O
�O 
ctxt�R  J m  or�N
�N 
alisH o      �M�M 0 thepath thePathF P�LP l xx�KQ�K  Q / ) else path is already set from before try   �L  �Z  �Y  �[   i c if shell script failure indicates no modifications to the original file, reveals active by default    R      �J�I�H
�J .ascrerr ****      � ****�I  �H  �t  �u  ��   h m   % & )��   e RSR l     �G�F�G  �F  S TUT l ��V�EV I  ���DW�C�D  0 revealinfinder revealInFinderW X�BX o  ���A�A 0 thepath thePath�B  �C  �E  U YZY l     �@�?�@  �?  Z [\[ l     �>�=�>  �=  \ ]^] l     �<�;�<  �;  ^ _`_ l     �:�9�:  �9  ` a�8a l     �7�6�7  �6  �8       �5bcd�4e �fghijk�3�2�1�0�/�5  b �.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��.  0 revealinfinder revealInFinder
�- .aevtoappnull  �   � ****�, 0 iphotoversion iPhotoVersion�+ 0 	photolist 	photoList�* 0 reportstring reportString�) 0 thepath thePath�( 0 thefile theFile�' 0 fileroot fileRoot�& 0 originalpath originalPath�% 0 originalfile originalFile�$ 0 
buttonlist 
buttonList�#  �"  �!  �   �  c � D��lm��  0 revealinfinder revealInFinder� �n� n  �� 0 thefile theFile�  l �� 0 thefile theFilem  ^�����
� .miscactvnull��� ��� null
� 
alis
� 
ctnr
� .aevtodocnull  �    alis
� .miscslctnull���    obj � � *j O��&�,j O�j UOPd �o��pq�
� .aevtoappnull  �   � ****o k    �rr  ss  *tt  duu T��  �  �  p  q 7 )����
�	� 5������ |� ��  ������������� � ������� ^�� ��� � ��� � � �����%(*����������������
� 
vers
� 
ctxt
� 
cha 
�
 
long�	 0 iphotoversion iPhotoVersion� 
� .sysodlogaskr        TEXT
� 
selc� 0 	photolist 	photoList
� 
cobj
� 
pcls
� 
ipal
� .corecnte****       ****�  0 reportstring reportString
�� 
ipth
�� 
psxf
�� 
alis�� 0 thepath thePath
�� 
filn�� 0 thefile theFile
�� .sysoexecTEXT���     TEXT�� 0 fileroot fileRoot�� 
�� 
ctnr�� 0 originalpath originalPath
�� 
strq
�� 
psxp�� 0 originalfile originalFile�� 0 
buttonlist 
buttonList
�� 
btns
�� 
dflt
�� 
rslt
�� 
bhit��  ��  ��  0 revealinfinder revealInFinder��� *�,�&�k/�&E�UO�� �j OhY hO�_*�,E�O��k/�,�  
�j YF�j k a E` Y 	a E` O��k/a ,a &a &E` O��k/a ,E` Oa _ �&%a %j E` O�a  a  _ a ,�&a  %E` !UY Ra  _ a ,�&E` !UO_ !a " a #_ !a $,%a %%j E` !Y a &_ !a $,%a '%j E` !O ua (_ !a ),a $,%a *%_ %j E` +Oa ,a -a .mvE` /O_ _ %�&a 0_ /a 1m� O_ 2a 3,_ /�m/  _ !_ +%�&a &E` OPY hW X 4 5hUO*_ k+ 6�4 e ��v�� v  ww xx  )��y��
�� 
ipmry A� Ҁ  
�� kfrmID  f �alis     �   Joe's PowerBook HD         �t��H+   ��DSCF0937.jpg                                                    늿�S�JPEG    ����  	                 �t��      ���      D S C F 0 9 3 7 . j p g  &  J o e ' s   P o w e r B o o k   H D��  g �zz  D S C F 0 9 3 7 . j p gh �{{  D S C F 0 9 3 7i �|| � J o e ' s   P o w e r B o o k   H D : U s e r s : j o e : P i c t u r e s : i P h o t o   L i b r a r y _ 1 : O r i g i n a l s : 2 0 0 5 : R o l l   2 3 3 :j �}}  D S C F 0 9 3 7 . A V Ik ��~�� ~  %(*�3  �2  �1  �0  �/   ascr  ��ޭ