<%@ page language="java" contentType="text/html; charset=euc-kr"%>
<%@ page import="net.board.db.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>

<html>
<head>
	<title>MVC 게시판</title>
</head>

<body>
<!-- 게시판 수정 -->
<table>
	<tr>
		<td colspan="5">MVC 게시판</td>
	</tr>
	
	<tr>
		<td>제 목&nbsp;&nbsp;</td>
		<td><%=board.getBOARD_SUBJECT()%></td>
	</tr>
	
	<tr>
		<td colspan="2"></td><!-- 빈 줄 삽입 -->
	</tr>
	
	<tr>
		<td>내 용</td>
		<td><%=board.getBOARD_CONTENT() %></td>
	</tr>
	
	<tr>
		<td>첨부파일</td>
		<td>
			<%if( board.getBOARD_FILE()!=null ){ %> <!-- 첨부파일이 있으면 -->
				<a href="./boardupload/<%=board.getBOARD_FILE()%>">
					<%=board.getBOARD_FILE() %>
				</a>
			<%} %>
		</td>
	</tr>
	
	<tr><td colspan="2">&nbsp;</td></tr> <!-- 빈줄 삽입 -->
	
	<tr>
		<td colspan="2">
			<a href="./BoardReplyView.bo?num=<%=board.getBOARD_NUM() %>">[답변]</a>&nbsp;&nbsp;
			<a href="./BoardModify.bo?num=<%=board.getBOARD_NUM() %>">[수정]</a>&nbsp;&nbsp;
			<a href="./BoardDelete.bo?num=<%=board.getBOARD_NUM() %>">[삭제]</a>&nbsp;&nbsp;
			<a href="./BoardList.bo">[목록]</a>
		</td>
	</tr>
</table>
<!-- 게시판 수정 -->
</body>
</html>