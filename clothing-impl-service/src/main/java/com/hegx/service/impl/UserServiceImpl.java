package com.hegx.service.impl;
import com.hegx.dao.UserDao;
import com.hegx.dto.UserEntityDto;
import com.hegx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class UserServiceImpl  implements UserService {

		@Autowired
		private UserDao userDao;

		@Override
		public List<UserEntityDto> getAll() {
			return userDao.getAll();
		}

		@Override
		public UserEntityDto checkUser(UserEntityDto userEntityDto) {

			return userDao.checkUser(userEntityDto);
		}

	@Override
	public void insert(UserEntityDto userEntityDto) {
		userDao.insert(userEntityDto);
	}

	@Override
	public void deleteById(Integer id) {
		userDao.deleteById(id);
	}

	@Override
	public void update(UserEntityDto userEntityDto) {
		userDao.update(userEntityDto);
	}

	@Override
	public UserEntityDto getById(Integer id) {
		return userDao.getById(id);
	}
}
