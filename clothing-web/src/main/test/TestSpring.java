import com.hegx.service.UserService;
import org.springframework.context.support.GenericXmlApplicationContext;

/**
 * Created by hegx on 2017/3/13.
 */
public class TestSpring {
    private static UserService userService;

    public static void main(String[] args) throws InterruptedException {
        GenericXmlApplicationContext context = new GenericXmlApplicationContext();
        context.setValidating(false);
        context.load("classpath:spring.xml");
        context.refresh();
        System.out.println(TestSpring.userService);
            System.out.println(TestSpring.userService);
    }
}
