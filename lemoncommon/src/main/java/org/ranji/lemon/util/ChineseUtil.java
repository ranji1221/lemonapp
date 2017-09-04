package org.ranji.lemon.util;

/**
 * Copyright [2017] [RanJi-China]
 * [Apache License] [ http://www.apache.org/licenses/LICENSE-2.0]
 * 中文判断工具类
 * ChineseUtil
 * @author RanJi
 * @date 2015-2-22
 */
public class ChineseUtil {

	public static boolean isChinese(String s) {
		boolean flag = false;
		for (char c : s.toCharArray()) {
			if (("" + c).matches("[\u4e00-\u9fa5]")) {
				flag = true;
				break;
			}
		}
		return flag;
	}

}
