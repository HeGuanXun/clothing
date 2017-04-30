
import com.hegx.controller.util.Permission;
import com.hegx.controller.util.Status;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.Belong;
import com.hegx.po.Code;
import com.hegx.po.Delivery;
import com.hegx.po.OrderEntity;
import com.hegx.service.BelongService;
import com.hegx.service.CodeService;
import com.hegx.service.DeliveryService;
import com.hegx.service.OrderService;
import org.apache.commons.collections.CollectionUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.apache.log4j.Logger;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;


/**
 * Created by hegx on 2017/4/26.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class OrderTest {

    private static final Logger logger = Logger.getLogger(OrderTest.class);

    @Autowired
    private OrderService orderService;
    @Autowired
    private CodeService codeService;
    @Autowired
    private DeliveryService deliveryService;
    @Autowired
    private BelongService belongService;

    @Test
    public void getAll()
    {
         List<OrderEntityDto> list = orderService.getAll();
        if (!CollectionUtils.isEmpty(list))
        {
            for (OrderEntity orderEntity:list)
            {
                //System.out.println("客户名："+orderEntity.getCustomName()+"\t"+orderEntity.getAddress()+"\t"+orderEntity.getClassName());
            }
        }
    }

    @Test
    public void getByLongId()
    {
        OrderEntity orderEntity = orderService.getByOrderId(Long.valueOf(6));
        System.out.println("订单信息:"+orderEntity.getCustomName()+"\t"+orderEntity.getClassName()+"\t"+orderEntity.getCreateDate());
    }

    @Test
    public void  insert()
    {
        Belong belong = new Belong();
        belong.setS_province("海南省");
        belong.setS_city("儋州市");
        belong.setS_county("那大镇");
        belong.setSchool("那大第一中学");

        Delivery delivery = new Delivery();
        delivery.setWay("快递");
        delivery.setPersonName("何冠勋");
        delivery.setRelationPhone("17770067860");
        delivery.setSs_province("海南省");
        delivery.setSs_county("儋州市");
        delivery.setSs_city("那大镇");
        delivery.setAddress("儋州市第一中学");

        Code code = new Code();
        code.setMxl(20);
        code.setMs(25);
        code.setMl(25);
        code.setMm(18);
        code.setMl(9);
        code.setMxxl(5);
        code.setMxxxl(16);
        code.setMxs(7);
        code.setTotalCount(120);

        OrderEntityDto orderEntity  = new OrderEntityDto();
        orderEntity.setCodeId(100);
        orderEntity.setUserId(100);
        orderEntity.setDeliveryId(100);
        orderEntity.setBelongId(100);
        orderEntity.setPhoneNumber("13697504511");
        orderEntity.setGetOrderDate(new Date());
        orderEntity.setCustomName("李珍娇");
        orderEntity.setClassName("高三一班");
        orderEntity.setCreateDate(new Date());
        orderEntity.setColor("红色");
        orderEntity.setEndDate(new Date());
        orderEntity.setEarnest("500");
        orderEntity.setQq("751762100");
        orderEntity.setEndDate(new Date());
        orderEntity.setEndReason("用户取消订单");
        orderEntity.setStatus(Status.check);
        orderEntity.setRemarks("改订单很急，请客服早点通过");
        orderEntity.setPrint("一个丝网印一个烫画");
        orderEntity.setFashionName("暴走时代A款");
        orderEntity.setOtherFashion("帝峰衫国款式");
        orderEntity.setMoney("5200");
        orderEntity.setOrderNumber("2017042601");

        deliveryService.insert(delivery);
        belongService.insert(belong);
        codeService.insert(code);
        orderService.insert(orderEntity);
    }


    @Test
    public  void  update()
    {
        OrderEntityDto orderEntity  = new OrderEntityDto();
         orderEntity.setCustomName("符亚敏");
        orderEntity.setOrderId(Long.valueOf(6));
        orderService.update(orderEntity);
    }


}
