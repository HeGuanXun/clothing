package com.hegx.base.dao;


import java.util.List;
import java.util.Map;


/**
 * 
 * @描述: 数据访问层基础支撑接口.
 * @作者: 何冠勋 .
 * @创建时间: 2016-3-14,下午4:52:52 .
 * @param <T>dto
 */
public interface BaseDao<T> {

	// 根据实体对象新增记录.
	public long insert(T entity);

	// 更新实体对应的记录.
	public int update(T entity);

	// 根据ID查找记录
	public T getById(Integer id);

	// 根据ID删除记录
	public int deleteById(Integer id);

	//查询全部信息
	public List<T> getAll();

}
