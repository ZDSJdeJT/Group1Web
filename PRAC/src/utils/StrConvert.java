package utils;

public class StrConvert {
	public static String convertNull(String str) {
		if(str == null ||  str.isEmpty()) {
			return "����δ��д����Ϣ";
		}
		return str;
	}
}
