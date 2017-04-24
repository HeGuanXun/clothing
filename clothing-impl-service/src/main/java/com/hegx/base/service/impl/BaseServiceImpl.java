package com.hegx.base.service.impl;

import com.hegx.base.dao.BaseDao;
import com.hegx.base.service.BaseService;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


public abstract class BaseServiceImpl<T> implements BaseService<T> {

	protected abstract BaseDao<T> getBaseDao();

	// 新增记录
	@Transactional
	public long insert(T entity) {
		return getBaseDao().insert(entity);
	}

	// 批量新增记录,返回受影响的行数
	@Transactional
	public long insert(List<T> list) {
		int count = 0;
		for (T t : list) {
			long result = getBaseDao().insert(t);
			if (result > 0)
				count++;
		}
		return count;
	}

	// 更新记录
	@Transactional
	public int update(T entity) {
		int resultCount;
		resultCount = getBaseDao().update(entity);
		return resultCount;
	}


	// 根据id查找记录
	public T getById(Integer id) {
		return getBaseDao().getById(id);
	}

	// 根据id真删除记录
	@Transactional
	public int deleteById(Integer id) {
		int resultCount;
		resultCount = getBaseDao().deleteById(id);
		return resultCount;
	}


}
