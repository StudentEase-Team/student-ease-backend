package rs.ftn.studenteaseteam.studentease.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebConfiguration implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                //.allowedOrigins("http://localhost:8081", "http://192.168.0.19:8081")
                .allowedOrigins("*")
                .allowedMethods("*")
                .allowedHeaders("*");
                //.allowCredentials(true);
    }
}
