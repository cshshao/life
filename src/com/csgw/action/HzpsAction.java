/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.csgw.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.bean.HzpBean;
import com.util.Constant;

/** 
 * MyEclipse Struts
 * Creation date: 05-05-2010
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class HzpsAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		HzpBean tb=new HzpBean();
		String method=request.getParameter("method").trim();
		///////////////////////////////////////////////////////////////////////��Ʒ
		if(method.equals("deltrave")){
			String id=request.getParameter("id").trim();
			int flag = tb.delTrave(id);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/index.jsp"));  
			}
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/index.jsp"));  
			}
		}
		else if(method.equals("hotdeltrave")){
			String id=request.getParameter("id").trim();
			int flag = tb.delTrave(id);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/hot.jsp"));  
			}
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/hot.jsp"));  
			}
		}
		else if(method.equals("tejiadeltrave")){
			String id=request.getParameter("id").trim();
			int flag = tb.delTrave(id);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/tejia.jsp"));  
			}
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/tejia.jsp"));  
			}
		}
		else if(method.equals("tuijiandeltrave")){
			String id=request.getParameter("id").trim();
			int flag = tb.delTrave(id);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/tuijian.jsp"));   
			}
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/tuijian.jsp"));   
			}
		}
		 
		else if(method.equals("addType")){
			String type=request.getParameter("type").trim();
			int flag=tb.addType(type);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/type.jsp"));   
			}
			else if(flag==Constant.DEFAULT_ERROR){
				request.setAttribute("message", "�÷����Ѵ��ڣ�");
				return (mapping.findForward("admin/hzp/type.jsp"));   
			}
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/type.jsp"));   
			}
		}
		else if(method.equals("delType")){
			String id=request.getParameter("id").trim();
			int flag=tb.delType(id);
			if(flag == Constant.SUCCESS){
				request.setAttribute("message", "�����ɹ���");
				return (mapping.findForward("admin/hzp/type.jsp"));   
			}
			
			else{
				request.setAttribute("message", "ϵͳά���У����Ժ����ԣ�");
				return (mapping.findForward("admin/hzp/type.jsp"));   
			}
		}
		 
		else{
			return (mapping.findForward("index.jsp"));
		}
	}
}