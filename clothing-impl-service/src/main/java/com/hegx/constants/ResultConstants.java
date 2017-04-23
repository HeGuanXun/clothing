package com.hegx.constants;

/**
 * @author：何冠勋;
 * @date:2017年2月18日;
 * @description:有关用户的常量
 * @version:
 */
public class ResultConstants {
	
	public static final Byte FALSE=0;//未删除
	public static final Byte TRUE = 1;//软删除
	// 软删除
	public static final String DELETE_FAILURE = "删除失败，未发现要删除的记录";
	public static final String DELETE_SUCCESS = "删除成功";
	// 真删除
	public static final String DELETEBYID_FAILURE = "删除失败，未发现要删除的记录";
	public static final String DELETEBYID_SUCCESS = "删除成功";
	// 修改
	public static final String UPDATE_FAILURE = "编辑失败，未发现要编辑的记录";
	public static final String UPDATE_SUCCESS = "编辑成功";
	// 添加
	public static final String INSERT_SUCCESS = "添加成功";
	public static final String INSERT_FAILURE = "添加失败,发现有相同的记录";
	
	public static final String DEL_FAIL = "删除失败，该记录已被引用，请先删除引用";
	

	

}
