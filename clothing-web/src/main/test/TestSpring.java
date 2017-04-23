import com.hegx.service.FashionService;
import com.hegx.service.UserService;
import org.springframework.context.support.GenericXmlApplicationContext;

/**
 * Created by hegx on 2017/3/13.
 */
public class TestSpring {
    private static UserService userService;
    private static FashionService fashionService;

    public static void main(String[] args) throws InterruptedException {
        GenericXmlApplicationContext context = new GenericXmlApplicationContext();
        context.setValidating(false);
        context.load("classpath:spring.xml");
        context.refresh();
        TestSpring.userService = context.getBean(UserService.class);
        TestSpring.fashionService = context.getBean(FashionService.class);
        System.out.println(TestSpring.fashionService);
            System.out.println(TestSpring.fashionService);
    }
}
