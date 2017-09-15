package org.ranji.lemon.common;

import java.util.List;

import org.junit.Test;
import org.ranji.lemon.util.DataBaseType;
import org.ranji.lemon.util.JdbcUtil;

public class JdbcUtilTest {
	
	@Test
	public void testConn()throws Exception{
		//-- 1.  创建数据库连接
		JdbcUtil  jdbcUtil = JdbcUtil.getInstance(DataBaseType.MYSQL,"127.0.0.1","3306","lemon","root","123456");
		System.out.println(jdbcUtil.getConnection().isClosed());
		//-- 2. 获取lemon数据库的表
			int count = 0;
			for(String table : jdbcUtil.getTables("lemon")){
				System.out.println("--"+table);
				count++;
				for(String column: jdbcUtil.getColumns(table,"lemon")){
					System.out.println("----"+column);
				}
			}
			System.out.println("lemon"+"中共有"+count+"张表");
			System.out.println("==============================");
		
		
		//-- 2. 关闭链接
		jdbcUtil.close();
		System.out.println(jdbcUtil.getConnection().isClosed());
	}
}
