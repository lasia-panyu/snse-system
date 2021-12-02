package com.fxbank.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.fxbank.model.Weibos;
import com.fxbank.model.Weiboss;

public class InsertWeibos {
	public static void main(String[] args) throws IOException {
		SqlSession sqlSession = null;
		DBAccess dbAccess = new DBAccess();
		sqlSession = dbAccess.getSqlSession();
		File file;
		
		BufferedReader bf ;
		String line;
		Weiboss weibos = new Weiboss();
		String[] tmp;
		int lenth;
		for(int z=12;z<=12;z++){
			file = new File("src/main/java/20160430"+".txt");
			bf = new BufferedReader(new FileReader(file));
		while ((line = bf.readLine()) != null) {
			tmp = line.split("~");
			lenth = tmp.length;

			weibos.setAccountId(tmp[0]);
			weibos.setAccountName(tmp[1]);
			String a = "";
			// System.out.println(lenth-7);
			for (int i = 2; i < lenth - 8; i++) {
				a += tmp[i];
			};
			weibos.setContent(a);
			weibos.setAttitude(Integer.valueOf(tmp[lenth - 8]));
			weibos.setRepost(Integer.valueOf(tmp[lenth - 7]));
			weibos.setComment(Integer.valueOf(tmp[lenth - 6]));
			weibos.setPhoneType(tmp[lenth - 5]);
			weibos.setDate("20160430");
			weibos.setType(Integer.valueOf(tmp[lenth - 3]));
			weibos.setClassify(Integer.valueOf(tmp[lenth - 2]));
			sqlSession.insert("com.fxbank.dao.WeibossMapper.insert",weibos);
			sqlSession.commit();
		}
		System.out.println("一个文件完活");
		bf.close();
		}
	}
}
