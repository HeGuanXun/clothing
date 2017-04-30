import com.hegx.po.Belong;
import com.hegx.po.Delivery;
import com.hegx.service.BelongService;
import com.hegx.service.DeliveryService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by Administrator on 2017/4/30 0030.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class BelongTest {

    private static final Logger logger = Logger.getLogger(BelongTest.class);

    @Autowired
    private BelongService belongService;

    Belong belong = new Belong();

    @Test
    public void  insert()
    {

        belong.setS_province("海南省");
        belong.setS_city("儋州市");
        belong.setS_county("那大镇");
        belong.setSchool("那大第一中学");
        belongService.insert(belong);

    }

    @Test
    public void getById()
    {
        belong =  belongService.getById(1);
        System.out.println(belong.getId()+"\t"+belong.getS_province()+belong.getS_city()+belong.getS_county());
    }


}
