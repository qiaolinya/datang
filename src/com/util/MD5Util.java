package com.util;

import java.security.MessageDigest;

public class MD5Util {

	/**
	 * 生成MD5
	 * 
	 * @param message
	 * @return
	 */
	public static String getMD5(String message) {
		String md5 = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5"); // 创建一个md5算法对象
			byte[] messageByte = message.getBytes("UTF-8");
			byte[] md5Byte = md.digest(messageByte); // 获得MD5字节数组,16*8=128位
//			for (int i = 0; i < md5Byte.length; i++) {
//				System.out.println(md5Byte[i]);
//			}
			md5 = bytesToHex(md5Byte); // 转换为16进制字符串
		} catch (Exception e) {
			e.printStackTrace();
		}
		return md5;
	}

	/**
	 * 二进制转十六进制
	 * 
	 * @param bytes
	 * @return
	 */
	public static String bytesToHex(byte[] bytes) {
		StringBuffer hexStr = new StringBuffer();
		int num;
		for (int i = 0; i < bytes.length; i++) {
			num = bytes[i];
			if (num < 0) {
				num += 256;
			}
			if (num < 16) {
				hexStr.append("0");
			}
			hexStr.append(Integer.toHexString(num));
		}
		return hexStr.toString().toUpperCase();
	}

	/**
	 * 测试方法
	 * 
	 * @param args
	 */

	public static void main(String[] args) {
		String pwd = getMD5("123");
		System.out.println(pwd);
	}
}