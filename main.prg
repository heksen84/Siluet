*======================================
* Siluet v1.0
* main.prg
* Bobkov Ilya
*======================================
*�������
#define APP_NAME '������'

*���������� ����������
PUBLIC _ActiveForm 			as Form
PUBLIC IsReady 				as Boolean
PUBLIC date1 				as Date
PUBLIC date2 				as Date
PUBLIC excel_report_type 	as Number

nDay 	= DAY	(DATE())
nMonth	= MONTH	(DATE())
nYear	= YEAR	(DATE())

*��������� �������� �� ���������� ������
SET SAFETY OFF

*��������� ���������
SET EXACT OFF
SET DATE BRITISH
SET DELETED ON
SET EXCLUSIVE ON
SET COLLATE TO "RUSSIAN"
SET PROCEDURE TO "reports.prg"
SET FIELDS ON

IF FILE( "app.mem" ) = .F.
	IsReady = .F.
*	ExitCorrect = .F.
	SAVE TO "app.mem"
	ELSE
		RESTORE FROM "app.mem"
ENDIF

*IF ( ExitCorrect = .F. )
*	MESSAGEBOX( "��������� ��������� �� ���������." )
*	IsReady = .F.
*	ExitCorrect = .T.
*	SAVE TO "app.mem"
*ENDIF

*�������� �� ��������� ������. 
IF (IsReady = .T.)
	MESSAGEBOX( "���������� ��� ��������", 0, "msg" )
	QUIT
ENDIF

IsReady = .F.

*��������� ������
WITH _screen
	.Caption 		= "c�����"
	.WindowState 	= 2
	.Picture 		= '���.bmp'
	.Closable		= .F.
ENDWITH

*���������� ����������
IsReady =.T.
SAVE TO "app"

*������ ����� ����
*DO "��������_����.mpr"
DO FORM "���_�������" 
READ EVENTS