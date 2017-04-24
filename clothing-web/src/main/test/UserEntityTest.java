import java.util.*;
import com.hegx.dto.UserEntityDto;

import com.hegx.service.UserService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class UserEntityTest {

	private static final Logger logger = Logger.getLogger(UserEntityTest.class);

	@Autowired
	private UserService userService;
	
	// 新增
	@Test
	public void insertTest()
	{
			UserEntityDto userEntity = new UserEntityDto();
					userEntity.setUserName("Json");
					userEntity.setPassWord("123");
 			userService.insert(userEntity);
	}


	//根据ID查找对象
	@Test
	public void findById()
	{
		//UserEntityDto userEntity = userService.getById(8);
		//System.out.println(userEntity.getId());
	}
	


	//查询所有未删除数据
	@Test
	public void getAllTest(){
		List<UserEntityDto> userEntities =	userService.getAll();
		for(UserEntityDto userEntity:userEntities)
		{
		}
	}



	//测试验证用户是否已经存在数据库中了
	@Test
	public void checkUser()
	{
		UserEntityDto userEntityDto = new UserEntityDto();
					userEntityDto.setUserName("Tom");
					userEntityDto.setPassWord("123");
					//userEntityDto.setUserTypeId(1);
					userEntityDto =	userService.checkUser(userEntityDto);		if (userEntityDto!=null)
					{
					//	userEntityDto.setUserTypeId(1);
						//System.out.println(userEntityDto.getCreateBy()+"\t"+userEntityDto.getUserName()+"\t"+userEntityDto.getUserTypeId());
					}else {
						System.out.println("数据库中不存在这个人！");
					}
	}

}
