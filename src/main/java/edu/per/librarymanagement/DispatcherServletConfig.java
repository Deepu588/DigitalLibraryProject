package edu.per.librarymanagement;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		
		Class[] arr= {AppConfig.class};
		return arr;
	}

	@Override
	protected String[] getServletMappings() {
//		// TODO Auto-generated method stub
	String[] ar= {"/"};
		return ar;
//		
//		
//		
	}
	
	


}
