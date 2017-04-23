package com.hegx.utils;

import java.io.IOException;
import java.io.OutputStream;

/**
 * @author：段俊河; @date:2016年3月14日;
 * @description:下载文件工具类
 * @version:
 */
public class DownloadStream {

	private OutputStream out;
	private long currentBytes = 0L;// 下载初始阶段，字节数为0

	public DownloadStream(OutputStream out) {
		this.out = out;
	}

	/**
	 * 下载文件的方法
	 * 
	 * @param fileSize：文件大小
	 * @param data：文件数据
	 * @param bytes：文件字节数，用来判断文件是否下载完成
	 * @return
	 */
	public int recv(long fileSize, byte[] data, int bytes) {
		try {
			this.out.write(data, 0, bytes);
		} catch (IOException ex) {
			ex.printStackTrace();
			return -1;
		}

		this.currentBytes += bytes;
		// 下载完成
		if (this.currentBytes == fileSize) {
			this.currentBytes = 0L;
		}

		return 0;
	}
}
