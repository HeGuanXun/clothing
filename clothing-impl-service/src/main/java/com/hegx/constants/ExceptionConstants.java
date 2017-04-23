package com.hegx.constants;
/**
 * @author：何冠勋;
 * @date:2017年2月18日;
 * @description:有关用户的常量
 * @version:
 */
public class ExceptionConstants {
	public static final String INSERT_MESSAGE = "添加失败!"; // controller调用service，操作数据库发生异常
	public static final String UPDATE_MESSAGE = "修改失败!";
	public static final String DELETE_MESSAGE = "删除失败!"; // 软删除
	public static final String DELETEBYID_MESSAGE = "删除失败!"; // 真删除
	public static final String FILENOTFOUND_MESSAGE = "您下载的文件不存在!";
	public static final String MAXUPLOADSIZE_MESSAGE="您上传的文件太大！";
	public static final String UNKNOWN_MESSAGE = "未知错误，请联系管理员！";

	public static final int INSERT_CODE = 100;
	public static final int UPDATE_CODE = 200;
	public static final int DELETE_CODE = 300;
	public static final int DELETEBYID_CODE = 400;
	public static final int UNKNOWN_CODE = 500;
	public static final int FILENOTFOUND_CODE = 404;
    public static final int MAXUPLOADSIZE_CODE=505;
    public static final int RPC_CODE=606;
    public static final int NUMBERFORMAT_CODE=707;
    public static final int NULLPOINTER_CODE=808;
}
