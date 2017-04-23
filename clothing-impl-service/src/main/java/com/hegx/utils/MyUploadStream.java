package com.hegx.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * @author：段俊河; @date:2016年3月14日;
 * @description:上传文件的工具类
 * @version:
 */

public class MyUploadStream {
	private InputStream inputStream;
	private long fileSize = 0L;

	// 构造函数，参数为：输入流、文件大小
	public MyUploadStream(InputStream inputStream, long fileSize) {
		this.inputStream = inputStream;
		this.fileSize = fileSize;
	}

	/**
	 * 上传文件的方法
	 * 
	 * @param out：输出流
	 * @return
	 * @throws IOException
	 */
	public int send(OutputStream out) throws IOException {
		long remainBytes = this.fileSize;
		byte[] buff = new byte[262144];
		// 把文件读入内存（如果文件有残余，没有上传完，则一直read）
		while (remainBytes > 0L) {
			int bytes;
			try {
				if ((bytes = this.inputStream.read(buff, 0,
						remainBytes > buff.length ? buff.length : (int) remainBytes)) < 0)
					return -1;
			} catch (IOException ex) {
				ex.printStackTrace();
				return -1;
			}
			// 把内存中的字节数据写入输出流
			out.write(buff, 0, bytes);
			remainBytes -= bytes;
		}

		return 0;
	}
}
