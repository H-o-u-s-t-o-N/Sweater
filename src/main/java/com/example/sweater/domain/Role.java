package com.example.sweater.domain;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created by HoustoN
 * Date: 9/27/2020
 */
public enum Role implements GrantedAuthority {
    USER;

    @Override
    public String getAuthority() {
        return name();
    }
}
