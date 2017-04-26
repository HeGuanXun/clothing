package com.hegx.base.service;

import java.util.List;


/**
 * @author： 何冠勋 @date： 2017年4月24日
 * 
 * @description：业务层，基础支撑接口
 */
public interface BaseService<T> {

	// 新增记录
	public long insert(T entity);

	// 更新记录
	public int update(T entity);

	// 根据id查询记录
	public T getById(Integer id);

	// 根据id删除记录
	public int deleteById(Integer id);

	//查询全部信息
	public List<T> getAll();
}
