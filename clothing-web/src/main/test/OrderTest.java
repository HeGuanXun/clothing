
import com.hegx.controller.util.Permission;
import com.hegx.controller.util.Status;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.Code;
import com.hegx.po.OrderEntity;
import com.hegx.service.CodeService;
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

    private LocalDate localDate = LocalDate.now();

    @Test
    public void getAll()
    {
         List<OrderEntityDto> list = orderService.getAll();
        if (!CollectionUtils.isEmpty(list))
        {
            for (OrderEntity orderEntity:list)
            {
                System.out.println("客户名："+orderEntity.getCustomName()+"\t"+orderEntity.getAddress()+"\t"+orderEntity.getClassName());
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

        OrderEntityDto orderEntity  = new OrderEntityDto();
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

        orderEntity.setPhoneNumber("13697504511");
        orderEntity.setGetOrderDate(new Date());
        orderEntity.setAddress("深圳市泰然九路海松大厦701深圳达富金融互联网公司");
        orderEntity.setBelong("江西省上饶市临川一中");
        orderEntity.setCustomName("李珍娇");
        orderEntity.setClassName("高三一班");
        orderEntity.setCodeId(1);
        orderEntity.setCreateDate(new Date());
        orderEntity.setColor("红色");
        orderEntity.setEndDate(new Date());
        orderEntity.setEarnest("500");
        orderEntity.setQq("751762100");
        orderEntity.setEndDate(new Date());
        orderEntity.setEndReason("用户取消订单");
        orderEntity.setStatus(Status.check);
        orderEntity.setUserId(1);
        orderEntity.setRemarks("改订单很急，请客服早点通过");
        orderEntity.setRelationPhone("17770067860");
        orderEntity.setPrint("一个丝网印一个烫画");
        orderEntity.setFashionId(1);
        orderEntity.setOtherFashion("帝峰衫国款式");
        orderEntity.setMoney("5200");
        orderEntity.setWay("快递");
        orderEntity.setOrderNumber("2017042601");
        orderEntity.setPersonName("heguanxun");
        codeService.insert(code);
        orderService.insert(orderEntity);
    }


    @Test
    public  void  update()
    {
        OrderEntityDto orderEntity  = new OrderEntityDto();
        orderEntity.setAddress("江西省南昌市上海路");
       orderEntity.setBelong("江西省上饶市临川一中");
         orderEntity.setCustomName("符亚敏");
        orderEntity.setOrderId(Long.valueOf(6));
        //orderService.update(orderEntity);
    }


}
