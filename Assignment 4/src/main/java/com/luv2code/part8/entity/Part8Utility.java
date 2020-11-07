package com.luv2code.part8.entity;

import org.springframework.stereotype.Component;

@Component
public class Part8Utility {
    private String mes;

    public Part8Utility() {
        mes = "part8";
    }

    public Part8Utility(String mes) {
        this.mes = mes;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    @Override
    public String toString() {
        return "Utility{" +
                "mes='" + mes + '\'' +
                '}';
    }
}
