package com.util;

import java.util.ArrayList;
import java.util.List;

public class Words {

	
	static List<String> list=new ArrayList<>();
	static {
		list.add("nmd");
		list.add("wdnmd");
		list.add("inm");
		list.add("<");
		list.add(">");
	}
	public static List<String> getList() {
		return list;
	}
	public static void setList(List<String> list) {
		Words.list = list;
	}
	


}
