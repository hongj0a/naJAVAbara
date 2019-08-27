package njb.md.customer.common.util;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.ObjectUtils;
import org.codehaus.jackson.map.ObjectMapper;

public class ObjectUtil extends ObjectUtils {

	/**
	 * map to Int
	 * @param obj
	 * @return
	 */
	public static int mapToInt(final Map<String,Object> map, final String key){
		return objToInt(map.get(key),0);
	}
	
	/**
	 * map to Int
	 * @param map
	 * @param key
	 * @param number
	 * @return
	 */
	public static int mapToInt(final Map<String,Object> map, final String key, final int number){
		return objToInt(map.get(key),number);
	}
	
	/**
	 * Object to Int
	 * @param obj
	 * @return
	 */
	public static int objToInt(final Object obj){
		return objToInt(obj,0);
	}
	
	/**
	 * Object To Int
	 * @param obj
	 * @param number
	 * @return
	 */
	public static int objToInt(final Object obj, final int number){
		int nRet = number;
		if(obj  == null) return nRet;
		
		if(obj instanceof Integer){
			nRet = (Integer)obj;
		}
		
		return nRet;
	}
	
	public static boolean isEmpty(final Object obj){
		if(obj instanceof List){
			if(obj == null || ((List<?>)obj).size() == 0) return true;
		}else if(obj instanceof int[]){
			if(obj == null || ((int[])obj).length == 0) return true;
		}else if(obj instanceof String[]){
			if(obj == null || ((String[])obj).length == 0) return true;
		}else{
			if(obj == null) return true;
		}
		
		return false;
	}
	
	public static boolean isNotEmpty(final Object obj){
		return !isEmpty(obj);
	}
	
    @SuppressWarnings("unchecked")
	public static Map<String, Object> convertObject2Map(Object vo){
    	return new ObjectMapper().convertValue(vo, Map.class);
    } 
}
