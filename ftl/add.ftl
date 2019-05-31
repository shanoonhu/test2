<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/platform/common/jsp/pagecommon.jsp"%>
<html>
<head>
	<%@ include file="/platform/common/jsp/headcommon.jsp" %>
</head>
<body>
<body>
<form id="a_frm">
	<ss:div_add>
	    <ss:atable>
		   <ss:tr>
	       <ss:th><spring:message code="${namelower}."/></ss:th>
	       <ss:td><ss:text id="a_" name=""  required="true"/></ss:td>
	       <ss:th><spring:message code="${namelower}."/></ss:th>
	       <ss:td><ss:text id="a_" name=""/></ss:td>
		   </ss:tr>
		   <ss:tr>
	       <ss:th><spring:message code="${namelower}."/></ss:th>
	       <ss:td><ss:date id="a_" name="" /></ss:td>
	       <ss:th><spring:message code="${namelower}."/></ss:th>
	       <ss:td><ss:select url="${r'${path }'}/basec/dict/.html" id="a_" name=""/></ss:td>
		   </ss:tr>
	    </ss:atable>
	</ss:div_add>
</form>
<ss:div_addbutton>
	<label><input class="query_button" type="button" value='<spring:message code="common.addbutton"/>' onClick="addData('/${smname}/add.html','a_frm','grid')"/></label>
	<label><input class="query_button" type="button" onClick="javascript:closeDlg('dd');" value='<spring:message code="common.closebutton"/>'></label>
</ss:div_addbutton>
</body>
</html>