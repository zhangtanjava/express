package express;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhangtan.config.AspectConfig;
import com.zhangtan.service.intface.ComService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=AspectConfig.class)
public class AspectTest {
	@Autowired
	ComService comService;
	
	@Test
	public void test() {
		comService.comMethod(1);
	}
}
