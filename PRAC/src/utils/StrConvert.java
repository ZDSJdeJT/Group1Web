package utils;

public class StrConvert {
	public static String convertNull(String str) {
		if(str == null ||  str.isEmpty()) {
			return "ÄúÉĞÎ´ÌîĞ´´ËĞÅÏ¢";
		}
		return str;
	}
}
