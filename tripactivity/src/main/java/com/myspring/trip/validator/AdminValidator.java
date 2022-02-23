package com.myspring.trip.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.myspring.trip.model.AdminVO;

public class AdminValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		
		return AdminVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		AdminVO adminvo = (AdminVO)target;
		
		String beanName = errors.getObjectName();
		System.out.println(beanName);
		
		if(beanName.equals("joinAdminVo") || beanName.equals("admin_info_modify_AdminVO")) {
			if(adminvo.getAdmin_pw().equals(adminvo.getAdmin_pw2()) ==false) {
				
				errors.rejectValue("admin_pw", "NotEquals");
				errors.rejectValue("admin_pw2","NotEquals");
			}
		}
			
		if(beanName.equals("joinAdminVo")) {
			
			if(adminvo.isAdminIdExist() == false) {
				errors.rejectValue("admin_Id", "DontCheckAdminIdExist");
			}
			}
		
		}
		

}
