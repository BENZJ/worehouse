package webwarehouse.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Administrator on 2017/1/24 0024.
 */
@Controller
@RequestMapping("/")
public class LoginController {
    @RequestMapping(method = GET)
    public String home(Model model) {
        return "login";
    }
}
