package com.gmail.merikbest2015.ecommerce.domain;

import org.springframework.security.core.GrantedAuthority;


public enum Role implements GrantedAuthority {

    USER,

    PRODA,


    ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}