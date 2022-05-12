<%@ page language="java" contentType="text/html; charset=euc-kr"%>
<%@ page import="net.board.db.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>

<html>
<head>
	<title>MVC �Խ���</title>
</head>

<body>
<!-- �Խ��� ���� -->
<table>
	<tr>
		<td colspan="5">MVC �Խ���</td>
	</tr>
	
	<tr>
		<td>�� ��&nbsp;&nbsp;</td>
		<td><%=board.getBOARD_SUBJECT()%></td>
	</tr>
	
	<tr>
		<td colspan="2"></td><!-- �� �� ���� -->
	</tr>
	
	<tr>
		<td>�� ��</td>
		<td><%=board.getBOARD_CONTENT() %></td>
	</tr>
	
	<tr>
		<td>÷������</td>
		<td>
			<%if( board.getBOARD_FILE()!=null ){ %> <!-- ÷�������� ������ -->
				<a href="./boardupload/<%=board.getBOARD_FILE()%>">
					<%=board.getBOARD_FILE() %>
				</a>
			<%} %>
		</td>
	</tr>
	
	<tr><td colspan="2">&nbsp;</td></tr> <!-- ���� ���� -->
	
	<tr>
		<td colspan="2">
			<a href="./BoardReplyView.bo?num=<%=board.getBOARD_NUM() %>">[�亯]</a>&nbsp;&nbsp;
			<a href="./BoardModify.bo?num=<%=board.getBOARD_NUM() %>">[����]</a>&nbsp;&nbsp;
			<a href="./BoardDelete.bo?num=<%=board.getBOARD_NUM() %>">[����]</a>&nbsp;&nbsp;
			<a href="./BoardList.bo">[���]</a>
		</td>
	</tr>
</table>
<!-- �Խ��� ���� -->
</body>
</html>