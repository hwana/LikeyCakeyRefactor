package com.dal.likeycakey.naver;

import com.github.scribejava.core.builder.api.DefaultApi20;

// Naver 로그인 구현을 위한 구현체 생성
public class NaverLoginApi extends DefaultApi20{

    protected NaverLoginApi(){
    }

    private static class InstanceHolder{
        private static final NaverLoginApi INSTANCE = new NaverLoginApi();
    }


    public static NaverLoginApi instance(){
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String getAccessTokenEndpoint() {
        return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
    }                   

    @Override
    protected String getAuthorizationBaseUrl() {
        return "https://nid.naver.com/oauth2.0/authorize";
    }   

}
