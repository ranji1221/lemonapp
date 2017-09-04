package org.ranji.lemon.util;

import java.security.MessageDigest;
/**
 * Copyright [2017] [RanJi-China]
 * [Apache License] [ http://www.apache.org/licenses/LICENSE-2.0]
 * MD5摘要工具类
 * @author RanJi
 * @date 2013-10-1
 */
public class MD5Util {

	public static final String PREFIX = "org.ranji.lemon-";

	public final static String getValue(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] btInput = s.getBytes();
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) {
		System.out.println(MD5Util.getValue("test"));
		System.out.println(MD5Util.getValue(MD5Util.PREFIX + "admin"));
	}

}