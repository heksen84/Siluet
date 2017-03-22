#define xlCenter 		-4108
#define xlSolid 			1
#define xlEdgeLeft			7
#define xlEdgeTop			8
#define xlEdgeBottom		9
#define xlEdgeRight			10
#define xlInsideVertical 	11
#define xlInsideHorizontal 	12
#define xlMedium 		-4138
#define xlDouble 		-4119
#define xlThin 				2

*-----------------------------------
* отчет_по_телефонам
*-----------------------------------
PROCEDURE отчет_по_телефонам

LOCAL lcPath, loExcel, lnRow

SELECT 	дата_выдачи,;
		номер_ремонта,;
		модель,;
		сумма_ремонта;
		FROM телефоны where;
		between(дата_выдачи, date1, date2);
		INTO CURSOR phones
 
	loExcel = CreateObject("Excel.Application")
	*Дата выдачи, Номер ремонта, Модель телефона, Сумма
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ширина стобцов
	.Columns[1].ColumnWidth = 13
	.Columns[2].ColumnWidth = 15
	.Columns[3].ColumnWidth = 40	
	.Columns[4].ColumnWidth = 15
	
	.Range("A1:E1").Select
	
	WITH .Selection
		.MergeCells = .T.
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
	ENDWITH

	WITH .ActiveCell
		.Value = "Телефоны"
		.Font.Size = 14
		.Font.Bold = .T.
	ENDWITH
	
	.Rows("2:2").RowHeight = 18
	.Range("A2:E2").Select

	WITH .Selection
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
		.Interior.Pattern = xlSolid
		.Interior.Color = RGB(255,255,254)
	ENDWITH

	.Cells[2,1].value = "Дата выдачи"
	.Cells[2,2].value = "Номер ремонта"
	.Cells[2,3].value = "Модель"
	.Cells[2,4].value = "Сумма ремонта"
	
	lnRow = 2
	конечная_сумма = 0
	SELECT phones
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(phones.дата_выдачи)
		.Cells(lnRow,2).value = phones.номер_ремонта
		.Cells(lnRow,3).value = ALLTRIM(phones.модель)
		.Cells(lnRow,4).value = phones.сумма_ремонта
		конечная_сумма = phones.сумма_ремонта + конечная_сумма
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "Итого:"
		.Cells(lnRow+1,4).value = конечная_сумма;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT телефоны
ENDWITH
ENDPROC
*-----------------------------------
* отчет_по_компьютерам
*-----------------------------------
PROCEDURE отчет_по_компьютерам

LOCAL lcPath, loExcel, lnRow

SELECT 	дата_выдачи,;
		номер_ремонта,;
		изделие,;
		сумма_ремонта;
		FROM компьютеры where;
		between(дата_выдачи, date1, date2);
		INTO CURSOR comps
 
	loExcel = CreateObject("Excel.Application")
	*Дата выдачи, Номер ремонта, Модель телефона, Сумма
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ширина стобцов
	.Columns[1].ColumnWidth = 13
	.Columns[2].ColumnWidth = 15
	.Columns[3].ColumnWidth = 40	
	.Columns[4].ColumnWidth = 15
	
	.Range("A1:E1").Select
	
	WITH .Selection
		.MergeCells = .T.
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
	ENDWITH

	WITH .ActiveCell
		.Value = "Компьютеры"
		.Font.Size = 14
		.Font.Bold = .T.
	ENDWITH
	
	.Rows("2:2").RowHeight = 18
	.Range("A2:E2").Select

	WITH .Selection
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
		.Interior.Pattern = xlSolid
		.Interior.Color = RGB(255,255,254)
	ENDWITH

	.Cells[2,1].value = "Дата выдачи"
	.Cells[2,2].value = "Номер ремонта"
	.Cells[2,3].value = "Изделие"
	.Cells[2,4].value = "Сумма ремонта"
	
	lnRow = 2
	конечная_сумма = 0
	SELECT comps
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(comps.дата_выдачи)
		.Cells(lnRow,2).value = comps.номер_ремонта
		.Cells(lnRow,3).value = ALLTRIM(comps.изделие)
		.Cells(lnRow,4).value = comps.сумма_ремонта
		конечная_сумма = comps.сумма_ремонта + конечная_сумма
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "Итого:"
		.Cells(lnRow+1,4).value = конечная_сумма;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT компьютеры
ENDWITH
ENDPROC
*-----------------------------------
* отчет_по_бытовой_технике
*-----------------------------------
PROCEDURE отчет_по_бытовой_технике

LOCAL lcPath, loExcel, lnRow

SELECT 	дата_выдачи,;
		номер_ремонта,;
		изделие,;
		сумма_ремонта;
		FROM бытовая_техника where;
		between(дата_выдачи, date1, date2);
		INTO CURSOR bt
 
	loExcel = CreateObject("Excel.Application")
	*Дата выдачи, Номер ремонта, Модель телефона, Сумма
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ширина стобцов
	.Columns[1].ColumnWidth = 13
	.Columns[2].ColumnWidth = 15
	.Columns[3].ColumnWidth = 40	
	.Columns[4].ColumnWidth = 15
	
	.Range("A1:E1").Select
	
	WITH .Selection
		.MergeCells = .T.
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
	ENDWITH

	WITH .ActiveCell
		.Value = "Бытовая техника"
		.Font.Size = 14
		.Font.Bold = .T.
	ENDWITH
	
	.Rows("2:2").RowHeight = 18
	.Range("A2:E2").Select

	WITH .Selection
		.HorizontalAlignment 	= xlCenter
		.VerticalAlignment		= xlCenter
		.Interior.Pattern = xlSolid
		.Interior.Color = RGB(255,255,254)
	ENDWITH

	.Cells[2,1].value = "Дата выдачи"
	.Cells[2,2].value = "Номер ремонта"
	.Cells[2,3].value = "Изделие"
	.Cells[2,4].value = "Сумма ремонта"
	
	lnRow = 2
	конечная_сумма = 0
	SELECT bt
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(bt.дата_выдачи)
		.Cells(lnRow,2).value = bt.номер_ремонта
		.Cells(lnRow,3).value = ALLTRIM(bt.изделие)
		.Cells(lnRow,4).value = bt.сумма_ремонта
		конечная_сумма = bt.сумма_ремонта + конечная_сумма
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "Итого:"
		.Cells(lnRow+1,4).value = конечная_сумма;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT бытовая_техника
ENDWITH
ENDPROC