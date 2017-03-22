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
* �����_��_���������
*-----------------------------------
PROCEDURE �����_��_���������

LOCAL lcPath, loExcel, lnRow

SELECT 	����_������,;
		�����_�������,;
		������,;
		�����_�������;
		FROM �������� where;
		between(����_������, date1, date2);
		INTO CURSOR phones
 
	loExcel = CreateObject("Excel.Application")
	*���� ������, ����� �������, ������ ��������, �����
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ������ �������
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
		.Value = "��������"
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

	.Cells[2,1].value = "���� ������"
	.Cells[2,2].value = "����� �������"
	.Cells[2,3].value = "������"
	.Cells[2,4].value = "����� �������"
	
	lnRow = 2
	��������_����� = 0
	SELECT phones
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(phones.����_������)
		.Cells(lnRow,2).value = phones.�����_�������
		.Cells(lnRow,3).value = ALLTRIM(phones.������)
		.Cells(lnRow,4).value = phones.�����_�������
		��������_����� = phones.�����_������� + ��������_�����
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "�����:"
		.Cells(lnRow+1,4).value = ��������_�����;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT ��������
ENDWITH
ENDPROC
*-----------------------------------
* �����_��_�����������
*-----------------------------------
PROCEDURE �����_��_�����������

LOCAL lcPath, loExcel, lnRow

SELECT 	����_������,;
		�����_�������,;
		�������,;
		�����_�������;
		FROM ���������� where;
		between(����_������, date1, date2);
		INTO CURSOR comps
 
	loExcel = CreateObject("Excel.Application")
	*���� ������, ����� �������, ������ ��������, �����
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ������ �������
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
		.Value = "����������"
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

	.Cells[2,1].value = "���� ������"
	.Cells[2,2].value = "����� �������"
	.Cells[2,3].value = "�������"
	.Cells[2,4].value = "����� �������"
	
	lnRow = 2
	��������_����� = 0
	SELECT comps
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(comps.����_������)
		.Cells(lnRow,2).value = comps.�����_�������
		.Cells(lnRow,3).value = ALLTRIM(comps.�������)
		.Cells(lnRow,4).value = comps.�����_�������
		��������_����� = comps.�����_������� + ��������_�����
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "�����:"
		.Cells(lnRow+1,4).value = ��������_�����;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT ����������
ENDWITH
ENDPROC
*-----------------------------------
* �����_��_�������_�������
*-----------------------------------
PROCEDURE �����_��_�������_�������

LOCAL lcPath, loExcel, lnRow

SELECT 	����_������,;
		�����_�������,;
		�������,;
		�����_�������;
		FROM �������_������� where;
		between(����_������, date1, date2);
		INTO CURSOR bt
 
	loExcel = CreateObject("Excel.Application")
	*���� ������, ����� �������, ������ ��������, �����
	WITH loExcel
	.Visible = .T.
	.WorkBooks.Add
	
	* ������ �������
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
		.Value = "������� �������"
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

	.Cells[2,1].value = "���� ������"
	.Cells[2,2].value = "����� �������"
	.Cells[2,3].value = "�������"
	.Cells[2,4].value = "����� �������"
	
	lnRow = 2
	��������_����� = 0
	SELECT bt
	SCAN 
		lnRow = lnRow + 1
		.Cells(lnRow,1).value = DTOC(bt.����_������)
		.Cells(lnRow,2).value = bt.�����_�������
		.Cells(lnRow,3).value = ALLTRIM(bt.�������)
		.Cells(lnRow,4).value = bt.�����_�������
		��������_����� = bt.�����_������� + ��������_�����
	ENDSCAN
	
		.Cells(lnRow+1,3).value = "�����:"
		.Cells(lnRow+1,4).value = ��������_�����;
		
			.Range(.Cells(2,1), .Cells(lnRow,4)).Select
			WITH .Selection
			.Borders(xlEdgeLeft).Weight = xlMedium
			.Borders(xlEdgeTop).Weight = xlMedium
			.Borders(xlEdgeBottom).Weight = xlMedium
			.Borders(xlEdgeRight).Weight = xlMedium
			.Borders(xlInsideVertical).Weight = xlThin
			.Borders(xlInsideHorizontal).Weight = xlThin
			ENDWITH
	SELECT �������_�������
ENDWITH
ENDPROC