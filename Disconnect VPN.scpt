FasdUAS 1.101.10   ��   ��    l    � ����  O     �    O    �    k    � 	 	  
  
 l        r        4    �� 
�� 
svce  m       �    V P N   ( P P T P )  o      ���� 0 
vpnservice 
VPNservice    name of the VPN service     �   0   n a m e   o f   t h e   V P N   s e r v i c e      Z   $  ����  I   �� ��
�� .coredoexbool       obj   o    ���� 0 
vpnservice 
VPNservice��    I    �� ��
�� .netzdconconF       ****  o    ���� 0 
vpnservice 
VPNservice��  ��  ��        O   % D    k   ) C      !   l  ) )�� " #��   " 1 + Make a list of all the notification types     # � $ $ V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   !  % & % l  ) )�� ' (��   ' ' ! that this script will ever send:    ( � ) ) B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : &  * + * r   ) / , - , J   ) - . .  / 0 / m   ) * 1 1 � 2 2  D i s c o n n e c t e d 0  3�� 3 m   * + 4 4 � 5 5   N o t   D i s c o n n e c t e d��   - l      6���� 6 o      ���� ,0 allnotificationslist allNotificationsList��  ��   +  7 8 7 l  0 0��������  ��  ��   8  9 : 9 l  0 0�� ; <��   ; &   Register our script with growl.    < � = = @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . :  > ? > l  0 0�� @ A��   @ 7 1 You can optionally (as here) set a default icon     A � B B b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   ?  C D C l  0 0�� E F��   E ' ! for this script's notifications.    F � G G B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . D  H�� H I  0 C���� I
�� .registernull��� ��� null��   I �� J K
�� 
appl J l 	 2 3 L���� L m   2 3 M M � N N  D i s c o n n e c t   V P N��  ��   K �� O P
�� 
anot O l 
 4 5 Q���� Q o   4 5���� ,0 allnotificationslist allNotificationsList��  ��   P �� R S
�� 
dnot R l 
 6 7 T���� T o   6 7���� ,0 allnotificationslist allNotificationsList��  ��   S �� U��
�� 
iapp U m   : = V V � W W $ S y s t e m   P r e f e r e n c e s��  ��    m   % & X X2                                                                                  GRRR   alis    �  Macintosh HD               ��*�H+   +�[GrowlHelperApp.app                                              +���Rˍ        ����  	                	Resources     ���      �Rˍ     +�[ +�W +�V $tb #�  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��     Y Z Y I  E L�� [��
�� .sysodelanull��� ��� nmbr [ m   E H���� ��   Z  \ ] \ r   M Z ^ _ ^ n   M V ` a ` 1   R V��
�� 
conn a n   M R b c b 1   N R��
�� 
cnfg c o   M N���� 0 
vpnservice 
VPNservice _ o      ���� 0 isconnected isConnected ]  d�� d Z   [ � e f�� g e o   [ ^���� 0 isconnected isConnected f O   a � h i h I  e ����� j
�� .notifygrnull��� ��� null��   j �� k l
�� 
name k l 	 i l m���� m m   i l n n � o o   N o t   D i s c o n n e c t e d��  ��   l �� p q
�� 
titl p l 	 o r r���� r m   o r s s � t t ( V P N   N o t   D i s c o n n e c t e d��  ��   q �� u v
�� 
desc u l 	 u x w���� w m   u x x x � y y 2 T h e   V P N   r e m a i n s   c o n n e c t e d��  ��   v �� z��
�� 
appl z m   y | { { � | |  D i s c o n n e c t   V P N��   i m   a b } }2                                                                                  GRRR   alis    �  Macintosh HD               ��*�H+   +�[GrowlHelperApp.app                                              +���Rˍ        ����  	                	Resources     ���      �Rˍ     +�[ +�W +�V $tb #�  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��   g O   � � ~  ~ I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � �  D i s c o n n e c t e d��  ��   � �� � �
�� 
titl � l 	 � � ����� � m   � � � � � � �   V P N   D i s c o n n e c t e d��  ��   � �� � �
�� 
desc � l 	 � � ����� � m   � � � � � � � : V P N   s u c c e s s f u l l y   d i s c o n n e c t e d��  ��   � �� ���
�� 
appl � m   � � � � � � �  D i s c o n n e c t   V P N��    m   � � � �2                                                                                  GRRR   alis    �  Macintosh HD               ��*�H+   +�[GrowlHelperApp.app                                              +���Rˍ        ����  	                	Resources     ���      �Rˍ     +�[ +�W +�V $tb #�  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��    n    	 � � � 1    	��
�� 
locc � 1    ��
�� 
netp  m      � ��                                                                                  sevs   alis    �  Macintosh HD               ��*�H+   #�nSystem Events.app                                               $f��S        ����  	                CoreServices    ���      ��C     #�n #�* #�)  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��       �� � � � �����   � ��������
�� .aevtoappnull  �   � ****�� 0 
vpnservice 
VPNservice�� ,0 allnotificationslist allNotificationsList�� 0 isconnected isConnected � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   �   � % ������� ������ X 1 4���� M������ V���������������� n�� s�� x {�� � � � �
�� 
netp
�� 
locc
�� 
svce�� 0 
vpnservice 
VPNservice
�� .coredoexbool       obj 
�� .netzdconconF       ****�� ,0 allnotificationslist allNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� 
�� .sysodelanull��� ��� nmbr
�� 
cnfg
�� 
conn�� 0 isconnected isConnected
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� �� �*�,�, �*��/E�O�j  
�j Y hO� ��lvE�O*������a a a  UOa j O�a ,a ,E` O_  '� *a a a a a a �a a   UY $� *a a !a a "a a #�a $a   UUU �  � �  ��� ��� �  ���
�� 
netp
�� 
svce � � � � H C A 2 B 0 F 9 8 - C D 1 7 - 4 6 B 1 - A B 9 C - 2 E C E 7 9 1 D 4 1 4 A
�� kfrmID   � �� ���  �   1 4
�� boovfals ascr  ��ޭ