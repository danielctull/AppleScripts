FasdUAS 1.101.10   ��   ��    k             i         I      �������� 40 gettimeinhoursandminutes getTimeInHoursAndMinutes��  ��    k     p 	 	  
  
 l     ��  ��      Get the "hour"     �      G e t   t h e   " h o u r "      r     	    n         1    ��
�� 
tstr  l     ����  I    ������
�� .misccurdldt    ��� null��  ��  ��  ��    o      ���� 0 timestr timeStr      r   
     I  
 ���� 
�� .sysooffslong    ��� null��    ��  
�� 
psof  m       �    :  �� ��
�� 
psin  o    ���� 0 timestr timeStr��    o      ���� 
0 pos Pos     !   r    ' " # " c    % $ % $ n    # & ' & 7   #�� ( )
�� 
cha  ( m    ����  ) l   " *���� * \    " + , + o     ���� 
0 pos Pos , m     !���� ��  ��   ' o    ���� 0 timestr timeStr % m   # $��
�� 
TEXT # o      ���� 0 thehour theHour !  - . - r   ( 8 / 0 / c   ( 6 1 2 1 n   ( 4 3 4 3 7 ) 4�� 5 6
�� 
cha  5 l  - 1 7���� 7 [   - 1 8 9 8 o   . /���� 
0 pos Pos 9 m   / 0���� ��  ��   6  ;   2 3 4 o   ( )���� 0 timestr timeStr 2 m   4 5��
�� 
TEXT 0 o      ���� 0 timestr timeStr .  : ; : l  9 9��������  ��  ��   ;  < = < l  9 9�� > ?��   >   Get the "minute"    ? � @ @ "   G e t   t h e   " m i n u t e " =  A B A r   9 D C D C I  9 B���� E
�� .sysooffslong    ��� null��   E �� F G
�� 
psof F m   ; < H H � I I  : G �� J��
�� 
psin J o   = >���� 0 timestr timeStr��   D o      ���� 
0 pos Pos B  K L K r   E V M N M c   E T O P O n   E R Q R Q 7  F R�� S T
�� 
cha  S m   J L����  T l  M Q U���� U \   M Q V W V o   N O���� 
0 pos Pos W m   O P���� ��  ��   R o   E F���� 0 timestr timeStr P m   R S��
�� 
TEXT N o      ���� 0 themin theMin L  X Y X r   W g Z [ Z c   W e \ ] \ n   W c ^ _ ^ 7 X c�� ` a
�� 
cha  ` l  \ ` b���� b [   \ ` c d c o   ] ^���� 
0 pos Pos d m   ^ _���� ��  ��   a  ;   a b _ o   W X���� 0 timestr timeStr ] m   c d��
�� 
TEXT [ o      ���� 0 timestr timeStr Y  e f e l  h h��������  ��  ��   f  g h g l  h h�� i j��   i  Get "AM or PM"    j � k k  G e t   " A M   o r   P M " h  l m l l  h h�� n o��   n ) #set Pos to offset of " " in timeStr    o � p p F s e t   P o s   t o   o f f s e t   o f   "   "   i n   t i m e S t r m  q r q l  h h�� s t��   s L Fset theSfx to characters (Pos + 1) thru (Pos + 2) of timeStr as string    t � u u � s e t   t h e S f x   t o   c h a r a c t e r s   ( P o s   +   1 )   t h r u   ( P o s   +   2 )   o f   t i m e S t r   a s   s t r i n g r  v w v l  h h�� x y��   x  theMin    y � z z  t h e M i n w  { | { l  h h��������  ��  ��   |  }�� } L   h p ~ ~ c   h o  �  l  h m ����� � b   h m � � � b   h k � � � o   h i���� 0 thehour theHour � m   i j � � � � �  : � o   k l���� 0 themin theMin��  ��   � m   m n��
�� 
TEXT��     � � � l     ��������  ��  ��   �  � � � l     ����� � I     �������� 40 gettimeinhoursandminutes getTimeInHoursAndMinutes��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l    ����� � I   �� � �
�� .sysottosnull���     TEXT � b     � � � m     � � � � � ( T h e   c u r r e n t   t i m e   i s   � I    �������� 40 gettimeinhoursandminutes getTimeInHoursAndMinutes��  ��   � �� ���
�� 
VOIC � m     � � � � �  A l e x��  ��  ��  ��       �� � � ���   � ������ 40 gettimeinhoursandminutes getTimeInHoursAndMinutes
�� .aevtoappnull  �   � **** � �� ���� � ����� 40 gettimeinhoursandminutes getTimeInHoursAndMinutes��  ��   � ���������� 0 timestr timeStr�� 
0 pos Pos�� 0 thehour theHour�� 0 themin theMin � ������ ���������� H �
�� .misccurdldt    ��� null
�� 
tstr
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
TEXT�� q*j  �,E�O*���� E�O�[�\[Zk\Z�k2�&E�O�[�\[Z�k\62�&E�O*���� E�O�[�\[Zk\Z�k2�&E�O�[�\[Z�k\62�&E�O��%�%�& � �� ����� � ���
�� .aevtoappnull  �   � **** � k      � �  � � �  �����  ��  ��   �   � �� ��� ����� 40 gettimeinhoursandminutes getTimeInHoursAndMinutes
�� 
VOIC
�� .sysottosnull���     TEXT�� *j+  O�*j+  %��l ascr  ��ޭ