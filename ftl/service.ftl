package sinosoft.project.business.${namelower}.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import sinosoft.framework.core.base.BaseServiceImpl;
import sinosoft.framework.core.beans.PageParam;
import sinosoft.framework.core.beans.PageVo;
import sinosoft.framework.core.beans.ReturnInfoVo;
import sinosoft.framework.core.beans.SqlParam;
import sinosoft.platform.utils.PageUtil;
import sinosoft.project.business.base.dao.${fun}Mapper;
import sinosoft.project.business.base.beans.${fun};

@Service("${smname}Service")

public class ${name}Service extends BaseServiceImpl{
	
	@Resource
	private ${fun}Mapper ${smname}Mapper; 
	private static final String ${nameup}_SEQ_ID = "seq_${namelower}";
	
	public PageVo<${fun}> get${name}Page(${fun} ${smname},PageParam pageParam) throws Exception{
		SqlParam sqlParam = this.newSqlParam()
							.add("${smname}", ${smname})
							.add("pageParam", pageParam);
		List<${fun}> list=${smname}Mapper.selectAllByPage(sqlParam);
		return PageUtil.getPage(list, pageParam);
	}
	
	public ReturnInfoVo<Object> add${name}(${fun} ${smname}) throws Exception{
		${smname}.setId(this.getMaxNo(${nameup}_SEQ_ID));
		${smname}.setOperator(this.getUserSession().getUserNo());
		${smname}.setCreateDatetime(new Date());
		${smname}.setModifyDatetime(new Date());
		${smname}Mapper.insertSelective(${smname});
		return this.getReturnInfoVo();
	}
	
	public ReturnInfoVo<Object> update${name}(${fun} ${smname}) throws Exception{
		${smname}Mapper.updateByPrimaryKeySelective(${smname});
		return this.getReturnInfoVo();
	}
	
	public ReturnInfoVo<Object> delete${name}(String ids) throws Exception{
		String[] idArr = ids.split(",");
		for(String id:idArr){
			${smname}Mapper.deleteByPrimaryKey(id);
		}
		return this.getReturnInfoVo();
	}
	
	public ${fun} getById(String id) throws Exception{
		return ${smname}Mapper.selectByPrimaryKey(id);
	}
	
}
