package com.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class WordFilter extends HttpServletRequestWrapper{

	public WordFilter(HttpServletRequest request) {
		super(request);
		
	}
	@Override
	public String getParameter(String name) {
		String words=super.getParameter(name);
		
		@SuppressWarnings("static-access")
		List<String> list=new Words().getList();
		
		for (String string : list) {
			if (string.equals(words)) {
				words=words.replace(string, "*");
			}
		}
		
		
		return words;
	}
}
