queryparamsfunc.getQueryParams = function(queryParams) {
	queryParams.xxx1 = $('#q_').textbox('getValue');
	queryParams.xxx2 = $('#q_').datebox('getValue');
	queryParams.xxx3 = $("#q_").combobox('getValue');
};

//修改
function updateBizData() {
	var data = isSelected('grid', true);
	if(data!=null){
		toJsp('/${smname}/toupdate.html?id='+data.id,updateTitle);
	}
}

//删除
function deleteBizData() {
	var data = isChecked('grid');
	if(data!=null){
		var ids = '';
		if(data instanceof Array){			
			$(data).each(function(i,d){
				ids = ids + d.id;
				if(i!=data.length-1){
					ids = ids + ',';
				}
			});
		}else{
			ids = data.id;
		}
		
		deleteData('/${smname}/delete.html?id='+ids,'grid');
	}	
}