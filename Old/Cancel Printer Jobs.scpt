FasdUAS 1.101.10   ��   ��    k             l     �� ��    C = � Copyright 2005, Red Sweater Software. All Rights Reserved.       	  l     �� 
��   
 R L Permission to copy granted for personal use only. All copies of this script    	     l     �� ��    T N must retain this copyright information and all lines of comments below, up to         l     �� ��    H B and including the line indicating "End of Red Sweater Comments".          l     ������  ��        l     �� ��    J D Any commercial use of this code must be licensed from the Copyright         l     �� ��    #  owner, Red Sweater Software.         l     ������  ��        l     �� ��      SCRIPT DESCRIPTION:         l     ������  ��       !   l     �� "��   " [ U This script makes it possible to quickly and easily cancel any pending printer jobs.    !  # $ # l     �� %��   % W Q Unfortunately, this functionality is not exposed by the Apple Printer Utility's     $  & ' & l     �� (��   ( [ U AppleScript dictionary, but can be easily manipulated through the command line tools    '  ) * ) l     �� +��   + 8 2 included as part of Apple's CUPS printer support.    *  , - , l     ������  ��   -  . / . l     �� 0��   0   Current Version: 1.0    /  1 2 1 l     ������  ��   2  3 4 3 l     �� 5��   5 M G The latest version of this and other Red Sweater Software scripts can     4  6 7 6 l     �� 8��   8 4 . be found at the Red Sweater AppleScript page:    7  9 : 9 l     ������  ��   :  ; < ; l     �� =��   = . ( http://www.red-sweater.com/AppleScript/    <  > ? > l     ������  ��   ?  @ A @ l     �� B��   B "  End of Red Sweater Comments    A  C D C l     ������  ��   D  E F E i      G H G I     ������
�� .aevtoappnull  �   � ****��  ��   H k     $ I I  J K J r      L M L I     �������� (0 getprinterqueueids GetPrinterQueueIDs��  ��   M o      ���� 0 myjobs myJobs K  N�� N X    $ O�� P O I   �� Q��
�� .sysoexecTEXT���     TEXT Q b     R S R m     T T  cancel     S o    ���� 0 	thisjobid 	thisJobID��  �� 0 	thisjobid 	thisJobID P o    ���� 0 myjobs myJobs��   F  U V U l     ������  ��   V  W�� W i     X Y X I      �������� (0 getprinterqueueids GetPrinterQueueIDs��  ��   Y k     = Z Z  [ \ [ r      ] ^ ] J     ����   ^ o      ���� 0 myjobs myJobs \  _ ` _ r     a b a n     c d c 2   
 ��
�� 
cpar d l   
 e�� e I   
�� f��
�� .sysoexecTEXT���     TEXT f m     g g 	 lpq   ��  ��   b o      ���� 0 jobdata jobData `  h i h l   ������  ��   i  j k j l   �� l��   l @ : Skip the first two lines of the output, which aren't jobs    k  m n m r     o p o l    q�� q I   �� r��
�� .corecnte****       **** r o    ���� 0 jobdata jobData��  ��   p o      ���� 0 	linecount 	lineCount n  s t s Z    : u v���� u l    w�� w ?    x y x o    ���� 0 	linecount 	lineCount y m    ���� ��   v Y    6 z�� { |�� z r   ' 1 } ~ } n   ' .  �  4  + .�� �
�� 
cwor � m   , -����  � l  ' + ��� � n   ' + � � � 4   ( +�� �
�� 
cobj � o   ) *���� 0 jobindex jobIndex � o   ' (���� 0 jobdata jobData��   ~ n       � � �  ;   / 0 � o   . /���� 0 myjobs myJobs�� 0 jobindex jobIndex { m     !����  | o   ! "���� 0 	linecount 	lineCount��  ��  ��   t  ��� � L   ; = � � o   ; <���� 0 myjobs myJobs��  ��       �� � � ���   � ����
�� .aevtoappnull  �   � ****�� (0 getprinterqueueids GetPrinterQueueIDs � �� H���� � ���
�� .aevtoappnull  �   � ****��  ��   � ���� 0 	thisjobid 	thisJobID � ���������� T���� (0 getprinterqueueids GetPrinterQueueIDs�� 0 myjobs myJobs
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .sysoexecTEXT���     TEXT�� %*j+  E�O �[��l kh  �%j [OY�� � �� Y���� � ����� (0 getprinterqueueids GetPrinterQueueIDs��  ��   � ���������� 0 myjobs myJobs�� 0 jobdata jobData�� 0 	linecount 	lineCount�� 0 jobindex jobIndex �  g����������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� .corecnte****       ****
�� 
cobj
�� 
cwor�� >jvE�O�j �-E�O�j E�O�l  m�kh ��/�m/�6F[OY��Y hO� ascr  ��ޭ