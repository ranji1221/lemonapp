package org.ranji.lemon.system;

/**
 * Copyright [2017] [RanJi-China]
 * [Apache License] [ http://www.apache.org/licenses/LICENSE-2.0]
 * 系统常量类
 * @author RanJi
 * @date 2013-10-1
 */
public class SystemContext {

	private static ThreadLocal<Integer> offset = new ThreadLocal<Integer>();
	private static ThreadLocal<Integer> pageSize = new ThreadLocal<Integer>();

	/**
	 * 获取偏移量
	 */
	public static int getOffset() {
		Integer os = (Integer) offset.get();
		if (os == null)
			return 0;
		return os.intValue();
	}

	public static void setOffset(int offsetValue) {
		offset.set(offsetValue);
	}

	public static void removeOffset() {
		offset.remove();
	}

	/**
	 * 获取页大小
	 */
	public static int getPageSize() {
		Integer ps = pageSize.get();
		if (ps == null)
			return Integer.MAX_VALUE;
		return ps.intValue();
	}

	public static void setPageSize(int pageSizeValue) {
		pageSize.set(pageSizeValue);
	}

	public static void removePageSize() {
		pageSize.remove();
	}

}
