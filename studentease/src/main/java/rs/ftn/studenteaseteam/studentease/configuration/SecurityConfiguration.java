package rs.ftn.studenteaseteam.studentease.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;
import rs.ftn.studenteaseteam.studentease.service.UserService;
import rs.ftn.studenteaseteam.studentease.util.TokenUtils;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class SecurityConfiguration {

    private final UserService userService;
    private final TokenUtils tokenUtils;

    @Autowired
    public SecurityConfiguration(UserService userService, TokenUtils tokenUtils) {
        this.userService = userService;
        this.tokenUtils = tokenUtils;
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userService);
        authProvider.setPasswordEncoder(passwordEncoder());

        return authProvider;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        return httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .sessionManagement(sess -> sess.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers(HttpMethod.POST, "/api/noticeboard/item").hasAnyAuthority("ROLE_ADMIN", "ROLE_PROFESSOR")
                        .requestMatchers(HttpMethod.GET, "/api/college").authenticated()
                        .requestMatchers(HttpMethod.GET, "/api/noticeboard/items/all").authenticated()
                        .requestMatchers(HttpMethod.GET, "/api/noticeboard/items").authenticated()
                        .requestMatchers(HttpMethod.GET, "/api/faq/items").authenticated()
                        .requestMatchers(HttpMethod.GET, "/api/faq/items/unanswered").authenticated()
                        .requestMatchers(HttpMethod.POST, "/api/faq/item").authenticated()
                        .requestMatchers(HttpMethod.DELETE, "/api/faq/item/{id}").hasAnyAuthority("ROLE_ADMIN", "ROLE_PROFESSOR")
                        .requestMatchers(HttpMethod.PUT, "/api/faq/item").hasAnyAuthority("ROLE_ADMIN", "ROLE_PROFESSOR")
                        .requestMatchers(HttpMethod.POST, "/api/login").anonymous()
                        .requestMatchers(HttpMethod.GET, "/api/whoami").authenticated()
                )
                .headers(headers -> headers
                        .contentSecurityPolicy(csp -> csp
                                .policyDirectives("script-src 'self' ; script-src 'self'; frame-ancestors 'self';"))
                )
                .addFilterBefore(new TokenAuthenticationFilter(tokenUtils, userService), UsernamePasswordAuthenticationFilter.class)
                .build();
    }
}
