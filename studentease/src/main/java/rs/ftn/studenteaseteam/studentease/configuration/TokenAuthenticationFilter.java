package rs.ftn.studenteaseteam.studentease.configuration;

import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.filter.OncePerRequestFilter;
import rs.ftn.studenteaseteam.studentease.util.TokenUtils;

import java.io.IOException;

public class TokenAuthenticationFilter extends OncePerRequestFilter {

    private final TokenUtils tokenUtils;
    private final UserDetailsService userDetailsService;
    private static final Logger logger = LoggerFactory.getLogger(TokenAuthenticationFilter.class);

    public TokenAuthenticationFilter(TokenUtils tokenHelper, UserDetailsService userDetailsService) {
        this.tokenUtils = tokenHelper;
        this.userDetailsService = userDetailsService;
    }

    @Override
    public void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)  throws IOException, ServletException {

        String email = null;
        String authToken = tokenUtils.getToken(request);

        try {
            if (authToken != null) {
                logger.info("Token found: {}", authToken);
                email = tokenUtils.getEmailFromToken(authToken);
                logger.info("Extracted email from token: {}", email);

                if (email != null) {
                    UserDetails userDetails = userDetailsService.loadUserByUsername(email);
                    if (tokenUtils.validateToken(authToken, userDetails)) {
                        logger.info("Token is valid for user: {}", email);
                        TokenBasedAuthentication authentication = new TokenBasedAuthentication(userDetails);
                        authentication.setToken(authToken);
                        SecurityContextHolder.getContext().setAuthentication(authentication);
                        logger.info("Authentication set in SecurityContext for user: {}", email);
                    } else {
                        logger.warn("Invalid token for user: {}", email);
                    }
                }
            }
        } catch (ExpiredJwtException ex) {
            logger.warn("Token expired for user: {}", email);
        } catch (Exception ex) {
            logger.error("Error during token authentication", ex);
        }

        chain.doFilter(request, response);
    }
}
