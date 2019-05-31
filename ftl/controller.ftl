package sinosoft.project.business.${smname}.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sinosoft.framework.core.base.BaseControllerImpl;
import sinosoft.framework.core.beans.PageParam;
import sinosoft.framework.core.beans.PageVo;
import sinosoft.framework.core.beans.ReturnInfoVo;
import sinosoft.project.business.base.beans.${fun};
import sinosoft.project.business.${namelower}.service.${name}Service;

@Controller("${smname}Controller")

@RequestMapping("/${smname}")
public class ${name}Controller extends BaseControllerImpl {

	@Resource
	private ${name}Service ${smname}Service;

	@RequestMapping("/list")
	@ResponseBody
	public PageVo<${fun}> ${fun}List(${fun} ${smname},PageParam pageParam) throws Exception{
		return ${smname}Service.get${name}Page(${smname}, pageParam);
	}
	
	@RequestMapping("/toupdate")
	public String toUpdate(String id) throws Exception {
		this.setRequestAttribute("${smname}",${smname}Service.getById(id));
		return "/project/${smname}/${fun}Update.jsp";
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ReturnInfoVo<Object> update${smname}(${fun} ${smname}) throws Exception {
		return this.returnInfoVoParser(${smname}Service.update${name}(${smname}));
	}

	@RequestMapping("/add")
	@ResponseBody
	public ReturnInfoVo<Object> ${fun}Add(${fun} ${smname}) throws Exception {
		return this.returnInfoVoParser(${smname}Service.add${name}(${smname}));
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ReturnInfoVo<Object> ${fun}Delete(String ids) throws Exception {
		return this.returnInfoVoParser(${smname}Service.delete${name}(ids));
	}
}
