import com.hegx.po.Delivery;
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
public class DeliveryTest {

    private static final Logger logger = Logger.getLogger(DeliveryTest.class);

    @Autowired
    private DeliveryService deliveryService;

    @Test
    public void  insert()
    {
        Delivery delivery = new Delivery();
        delivery.setWay("快递");
        delivery.setPersonName("何冠勋");
        delivery.setRelationPhone("17770067860");
        delivery.setSs_province("海南省");
        delivery.setSs_county("儋州市");
        delivery.setSs_city("那大镇");
        delivery.setAddress("儋州市第一中学");
        deliveryService.insert(delivery);
    }

    @Test
    public void getById()
    {
        Delivery delivery =  deliveryService.getById(1);
        System.out.println(delivery.getId()+"\t"+delivery.getSs_province()+delivery.getSs_county()+delivery.getSs_city());
    }


}
