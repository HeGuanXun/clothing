package com.hegx.dao;

import com.hegx.dto.FashionDto;
import com.hegx.po.Fashion;

import java.util.List;

public interface FashionDao {
	/**
	 * 查找所有未删除的数据
	 * @return
	 */
	public List<Fashion> getAll();

	public void insert(FashionDto fashionDto);

	public void update(FashionDto fashionDto);

	public void deleteById(Integer id);

	public FashionDto getById(Integer id);

	public FashionDto getByFashionName(FashionDto fashionDto);
}
