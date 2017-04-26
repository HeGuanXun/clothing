package com.hegx.service;

import com.hegx.dto.UserEntityDto;

import java.util.List;

public interface UserService{
	/**
	 * 查找所有未删除的数据
	 * @return
	 */
	public List<UserEntityDto> getAll();

	/**
	 * 检验用户是否存在
	 */
	public UserEntityDto checkUser(UserEntityDto userEntityDto);

	/**验证用户名跟密码*/
	public UserEntityDto checkLogin(UserEntityDto userEntityDto);

	public void insert(UserEntityDto userEntityDto);

	public void update(UserEntityDto userEntityDto);

	public void deleteById(Integer id);

	public UserEntityDto getById(Integer id);

}
