
* ��������� ���������� ������ ��������� *

IF ( MESSAGEBOX( "����� �� ���������?", 4+32, _screen.Caption ) = 6 )
	SET SAFETY OFF
	WAIT "C���������..." WINDOW AT 40,40 NOWAIT
	* ����������� ������ *
	COPY FILE "��������.dbf" 		TO "arch\��������.dbf"
	COPY FILE "����������.dbf" 		TO "arch\����������.dbf"
	COPY FILE "�������_�������.dbf" TO "arch\�������_�������.dbf"
	* �������� ����� *
	CLOSE ALL
	CLEAR EVENTS
	isReady = .F.
*	ExitCorrect = .T.
	SAVE TO "app"
	* ����� *
	QUIT
ENDIF

