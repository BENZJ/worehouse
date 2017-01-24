package webwarehouse.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.Import;
import org.springframework.core.type.filter.RegexPatternTypeFilter;

import java.util.regex.Pattern;
import webwarehouse.config.RootConfig.WebPackage;


/**
 * Created by Administrator on 2017/1/24 0024.
 */
@Configuration
//@Import(DataConfig.class)
@ComponentScan(basePackages={"webwarehouse"},
        excludeFilters={
                @ComponentScan.Filter(type= FilterType.CUSTOM, value= WebPackage.class)
        })
public class RootConfig {
    public static class WebPackage extends RegexPatternTypeFilter {
        public WebPackage() {
            super(Pattern.compile("webwarehouse\\.web"));
        }
    }
}
