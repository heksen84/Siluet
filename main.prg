*======================================
* Siluet v1.0
* main.prg
* Bobkov Ilya
*======================================
*макросы
#define APP_NAME 'силуэт'

*глобальные переменные
PUBLIC _ActiveForm 			as Form
PUBLIC IsReady 				as Boolean
PUBLIC date1 				as Date
PUBLIC date2 				as Date
PUBLIC excel_report_type 	as Number

nDay 	= DAY	(DATE())
nMonth	= MONTH	(DATE())
nYear	= YEAR	(DATE())

*отключить проверку на перезапись файлов
SET SAFETY OFF

*системные настройки
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
*	MESSAGEBOX( "Программа завершена не корректно." )
*	IsReady = .F.
*	ExitCorrect = .T.
*	SAVE TO "app.mem"
*ENDIF

*проверка на повторный запуск. 
IF (IsReady = .T.)
	MESSAGEBOX( "приложение уже запущено", 0, "msg" )
	QUIT
ENDIF

IsReady = .F.

*установки экрана
WITH _screen
	.Caption 		= "cилуэт"
	.WindowState 	= 2
	.Picture 		= 'фон.bmp'
	.Closable		= .F.
ENDWITH

*сохранение переменных
IsReady =.T.
SAVE TO "app"

*запуск формы вида
*DO "основное_меню.mpr"
DO FORM "вид_ремонта" 
READ EVENTS