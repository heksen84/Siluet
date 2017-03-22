
* процедура завершения работы программы *

IF ( MESSAGEBOX( "Выйти из программы?", 4+32, _screen.Caption ) = 6 )
	SET SAFETY OFF
	WAIT "Cохранение..." WINDOW AT 40,40 NOWAIT
	* копирование файлов *
	COPY FILE "телефоны.dbf" 		TO "arch\телефоны.dbf"
	COPY FILE "компьютеры.dbf" 		TO "arch\компьютеры.dbf"
	COPY FILE "бытовая_техника.dbf" TO "arch\бытовая_техника.dbf"
	* закрытие всего *
	CLOSE ALL
	CLEAR EVENTS
	isReady = .F.
*	ExitCorrect = .T.
	SAVE TO "app"
	* выход *
	QUIT
ENDIF

