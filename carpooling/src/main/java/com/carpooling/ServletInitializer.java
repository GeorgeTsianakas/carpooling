package com.carpooling;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(CarpoolingApplication.class);
    }
//    @Configuration
//    public class ResourcesConfig implements WebMvcConfigurer {
//
//        @Override
//        public void addResourceHandlers(ResourceHandlerRegistry registry) {
//            registry.addResourceHandler("/**")
//                    .addResourceLocations("classpath:/static/")
//                    .setCachePeriod(0);
//            registry.addResourceHandler("/temps/**")
//                    .addResourceLocations("classpath:/templates/")
//                    .setCachePeriod(0);
//        }
//
//    }
}
