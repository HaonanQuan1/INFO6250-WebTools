package com.luv2code.part7.entity;

public class Utility {
    private String mes;

    public Utility() {
        mes = "part7";
    }

    public Utility(String mes) {
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
