/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mii.co.id.clientappmcc.services;

import java.util.List;
import java.util.stream.Collectors;
import mii.co.id.clientappmcc.models.AuthRequest;
import mii.co.id.clientappmcc.models.AuthResponse;
import mii.co.id.clientappmcc.models.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author WAHYUK
 */
@Service
public class AuthService {

    @Autowired
    private RestTemplate restTemplate;

    private final String URL = "http://localhost:8089/api/login";

    public boolean loginProcess(AuthRequest request) {
        boolean isLoginSuccess = false;
        /* use try catch for error handling */
        try {
            HttpEntity entity = new HttpEntity(request);
            ResponseEntity<ResponseData<AuthResponse>> response = restTemplate
                    .exchange(URL, HttpMethod.POST, entity,
                            new ParameterizedTypeReference<ResponseData<AuthResponse>>() {
                    });
            
            /* call method for set session */
            setAuthorization(request.getUsername(), request.getPassword(), 
                    response.getBody().getData().getAuthorities());
            
            isLoginSuccess = true;
        } catch (RestClientException e) {
            e.printStackTrace();
        }
        
        return isLoginSuccess;
    }
    
    /* Set spring security session */
    private void setAuthorization(String username, String password, List<String> authorities) {
        UsernamePasswordAuthenticationToken authToken = 
                new UsernamePasswordAuthenticationToken(username, password, getListAthorities(authorities));
        
        SecurityContextHolder.getContext().setAuthentication(authToken);
    }
    
    /* Set list of authothorities */
    private List<GrantedAuthority> getListAthorities(List<String> authorities) {
        return authorities.stream()
                .map(auth -> new SimpleGrantedAuthority(auth))
                .collect(Collectors.toList());
    }
}
