import com.hegx.po.Fashion;
import com.hegx.service.FashionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by hegx on 2017/4/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class FashionTest {

    @Autowired
    private FashionService fashionService;

    @Test
    public void getAll()
    {
        List<Fashion> list = fashionService.getAll();
        if (list.size()!=0)
        {
            for (Fashion fashion:list)
            {
                System.out.println(fashion.getId()+"\t"+"款式名称："+fashion.getFashionName());
            }
        }
    }

}
