package cn.com.project.test;

import java.util.HashMap;
import java.util.Map;

public class TestMap {
	
	public static void main(String[] args) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("name", "wangming");
		map.put("age", 12);
		map.put("class","105");
		map.put("number", 101);
		
		
		System.err.println(map.containsValue("105"));
	}

}
