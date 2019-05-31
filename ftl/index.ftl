<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@ include file="/platform/common/jsp/pagecommon.jsp"%>
<html>
<head>
<title><spring:message code="sys.config.systitle"/></title>
<%@ include file="/platform/common/jsp/headcommon.jsp"%>
<script type="text/javascript" src="${js}"></script>
<script type="text/javascript">
	var updateTitle = '<spring:message code="${namelower}."/>';
	var addTitle = '<spring:message code="${namelower}."/>';
</script>	
</head>
<body>

<form id="q_frm">
  	<ss:div_querytitle>查询条件</ss:div_querytitle>
  	<ss:div>
	    <ss:qtable>
	    	<ss:tr>
		    	<ss:th><spring:message code="${namelower}."/></ss:th>
		        <ss:td><ss:text id="q_" name="" /></ss:td>
		        <ss:th><spring:message code="${namelower}."/></ss:th>
		        <ss:td><ss:date id="q_" name="" /></ss:td>
		        <ss:th><spring:message code="${namelower}."/></ss:th>
		        <ss:td><ss:select url="${r'${path }'}/basec/dict/.html" id="q_" name="" /></ss:td>
	        </ss:tr>
	    </ss:qtable>
	    <div class="button_query">
	        <label>
	            <input class="query_button" type="button" value='<spring:message code="common.querybutton"/>' onclick="queryData('/${smname}/list.html','q_frm','grid','getQueryParams')"/>
	        </label>
	    </div>
	</ss:div>
</form>

<ss:div_grid>
	<ss:div_gridtitle>查询结果</ss:div_gridtitle>	
    <ss:div_gridbutton>
	  	<label><input class="width_button" type="button" value='<spring:message code="common.addbutton"/>' onclick="toJsp('/basec/menu/project/${namelower}/${smname}Add.html', '<spring:message code="${namelower}."/>')')"/></label>
	    <label><input class="width_button" type="button" value='<spring:message code="common.updatebutton"/>' onclick="updateBizData()"/></label>
	    <label><input class="width_button" type="button" value='<spring:message code="common.deletebutton"/>' onclick="deleteBizData()"/></label>
   	</ss:div_gridbutton>
   	<ss:div_gridcontent>
	    <ss:grid singleSelect="false">
	    	<ss:thead>
		    	<ss:gridtr>
		    	<ss:gridth fn="id" checkbox="true"></ss:gridth>
		    	<ss:gridth fn="" width="50" ><spring:message code="${namelower}."/></ss:gridth>
		    	<ss:gridth fn="" width="50"><spring:message code="${namelower}."/></ss:gridth>
		    	<ss:gridth fn="" width="50"><spring:message code="${namelower}."/></ss:gridth>
		    	<ss:gridth fn="" width="30" align="center"><spring:message code="${namelower}."/></ss:gridth>
		    	<ss:gridth fn="" width="50" align="center"><spring:message code="${namelower}."/></ss:gridth>
		    	<ss:gridth fn="" width="50" align="center"><spring:message code="${namelower}."/></ss:gridth>
		    	</ss:gridtr>
	    	</ss:thead>
	    </ss:grid>
	</ss:div_gridcontent>
</ss:div_grid>
</body>
</html>