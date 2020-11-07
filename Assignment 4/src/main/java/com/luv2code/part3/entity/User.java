package com.luv2code.part3.entity;

import org.springframework.stereotype.Component;

@Component
public class User {
    private String email;
    private String password;
    private String confirmPassword;
    private String pic;
    private String gender;
    private String country;
    private String[] hobby;
    private String addrss;

    public User() {
    }

    public User(String email, String password, String confirmPassword, String pic, String gender, String country, String[] hobby, String addrss) {
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.pic = pic;
        this.gender = gender;
        this.country = country;
        this.hobby = hobby;
        this.addrss = addrss;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }

    public String getAddrss() {
        return addrss;
    }

    public void setAddrss(String addrss) {
        this.addrss = addrss;
    }

    public String ho(){
        StringBuilder sb = new StringBuilder();
        for(String s:this.getHobby()){
            sb.append(s);
        }
        return sb.toString();
    }
    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", pic='" + pic + '\'' +
                ", gender='" + gender + '\'' +
                ", country='" + country + '\'' +
                ", hobby='" + ho() + '\'' +
                ", addrss='" + addrss + '\'' +
                '}';
    }
}
