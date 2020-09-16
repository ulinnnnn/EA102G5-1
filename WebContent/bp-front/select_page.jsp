<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mem.model.*"%>
<%
 MemVO memVO = (MemVO) session.getAttribute("memVO");
%>


<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<title>bp:Home</title>


<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>bp: Home</h3><h4><a href='<%=request.getContextPath()%>/Front-mem/login.jsp'>( �n�J )</a></h4></td></tr>
</table>

<p>This is the bp Home</p>

<h3>�q��d��:</h3>

�z�n:${memVO.mem_name}<br>
�A���s��:${memVO.mem_no}
	
	
<%-- ���~���C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:orange">${message}</li>
		</c:forEach>
	</ul>
</c:if>
<ul>
  <li><a href='<%=request.getContextPath()%>/bpclass-back/listbackbp.jsp'>List</a> all bps.  <br><br></li>
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/bp-front/BpServlet" >
        <b>��J�ӫ~�W:</b>
        <input type="text" name="head" >
        <input type="hidden" name="action" value="get_head">
        <input type="submit" value="�ӫ~�d��">
    </FORM>
  </li>
   <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/bp-front/BpServlet" >
        <b>��J�ӫ~�s�� (�p800020):</b>
        <input type="text" name="bp_no" value="800002">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="�e�X">
    </FORM>
  </li>
<%--   <jsp:useBean id="bpSvc" scope="page" class="com.bp.model.BpService" /> --%>
<!--   <li> -->
<%--      <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/bp-front/BpServlet" > --%>
<!--        <b>��ܰӫ~�s��:</b> -->
<!--        <select size="1" name="bp_no"> -->
<%--          <c:forEach var="bpVO" items="${bpSvc.back}" >  --%>
<%--           <option value="${bpVO.bp_no}">${bpVO.bp_no} --%>
<%--          </c:forEach>    --%>
<!--        </select> -->
<!--        <input type="hidden" name="action" value="getOne_For_Display"> -->
<!--        <input type="submit" value="�e�X"> -->
<!--     </FORM> -->
<!--   </li> -->
  
<!--   <li> -->
<%--      <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/bp-front/BpServlet" > --%>
<!--        <b>��ܰӫ~���D:</b> -->
<!--        <select size="1" name="bp_no"> -->
<%--          <c:forEach var="bpVO" items="${bpSvc.back}" >  --%>
<%--           <option value="${bpVO.bp_no}">${bpVO.bp_head} --%>
<%--          </c:forEach>    --%>
<!--        </select> -->
<!--        <input type="hidden" name="action" value="getOne_For_Display"> -->
<!--        <input type="submit" value="�e�X"> -->
<!--      </FORM> -->
<!--   </li> -->
<!-- </ul> -->
<h3>��L�\��</h3>
<ul>

  <li><a href='<%=request.getContextPath()%>/bp-front/TRY2.jsp'>Add</a> a new bp.</li>

  <li><a href='<%=request.getContextPath()%>/bpclass-back/listbackbp.jsp'>Add</a>���|�`��</li>

  <li><a href='<%=request.getContextPath()%>/bp-front/mybp.jsp'>Add</a>�dM0001�|������</li>
  
</ul>
</body>
</html>