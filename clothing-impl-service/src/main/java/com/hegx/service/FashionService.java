package com.hegx.service;

import com.hegx.dto.FashionDto;
import com.hegx.po.Fashion;

import java.util.List;

public interface FashionService {
	/**
	 * 查找所有未删除的数据
	 * @return
	 */
	public List<Fashion> getAll();

	public void insert(FashionDto fashionDto);

	public void update(FashionDto FashionDto);

	public void deleteById(Integer id);

	public FashionDto getById(Integer id);

	public FashionDto getByFashionName(FashionDto fashionDto);

}
